package application.config

import play.api.{Configuration, Play}
import com.typesafe.config.ConfigFactory
import java.io.File
import play.api.Play.current
import application.logging.Logger
import java.net.URL
import org.apache.commons.lang.StringUtils

class ApplicationParameters(keyConfigFilePath: String) {  
  private val config = new Configuration(new Factory(keyConfigFilePath).config())

  private[config] def getRequiredString(configKey: String, validValues: Option[Set[String]] = None, trim: Boolean = true): String = {
    val valueOption: Option[String] = config.getString(configKey, validValues)
    if (valueOption == None) throw ConfigurationException("Missing mandatory configuration key '" + configKey + "'")
    
    if (trim) valueOption.get.trim() else valueOption.get
  }

  def getRequiredDirectory(configKey: String, requiredDirectoryExistence: Boolean = true): File = {
    val path: String = getRequiredString(configKey)    
    val directory = new File(path)

    if (requiredDirectoryExistence) {
      if (!directory.exists) throw ConfigurationException("Directory '" + directory.getAbsolutePath + "' denoted by config key '" + configKey + "' does not exist.")
      if (!directory.isDirectory) throw ConfigurationException("Directory '" + directory.getAbsolutePath + "' denoted by config key '" + configKey + "' is not a directory.")
    }

    directory
  }
}

private class Factory(keyConfigFilePath: String) {
  
  def config(): com.typesafe.config.Config = {
    val confFilePath = resolveConfigFilePath()

    val configFileUrl: URL = resolveConfigFileUrl(confFilePath)
    val config = ConfigFactory.parseURL(configFileUrl)
    Logger.info("Configuration file '" + confFilePath + "' loaded.")
    
    config
  }

  private def resolveConfigFilePath(): String = {
    val value = List(
        Option(System.getProperty(keyConfigFilePath)),
        Option(System.getenv(keyConfigFilePath)))
        .find(_ != None).getOrElse(None)

    value match {
      case Some("") => throw new ConfigurationException("Empty value for config file system property '" + keyConfigFilePath + "'.")
      case Some(_) => value.get
      case None => throw new ConfigurationException("Missing config file system property '" + keyConfigFilePath + "'.")
    }
  }
  
  private def resolveConfigFileUrl(confFilePath: String): URL = {
    val fromFileSystem: Option[URL] = fromFileSystemConfigFileCandidateUrl(confFilePath)
    val fromClasspath: Option[URL] = Option(getClass().getClassLoader().getResource(confFilePath.stripPrefix("/")))
    
    val configFileUrl: Option[URL] = List(fromClasspath, fromFileSystem).find(_ != None).getOrElse(None)
    if (configFileUrl == None) throw new ConfigurationException("No config file named '" + confFilePath + "' found.")
    
    configFileUrl.get
  }
  
  private def fromFileSystemConfigFileCandidateUrl(confFilePath: String): Option[URL] = {
    fileResourceUrl(fromFileSystemConfigFileCandidate(confFilePath).getOrElse(null))
  }
  
  private def fromFileSystemConfigFileCandidate(confFilePath: String): Option[File] = 
    if (confFilePath.startsWith("/") || confFilePath.contains(":")) Some(new File(confFilePath)) else None
  
  private def fileResourceUrl(file: File): Option[URL] = {
    if (file != null && file.exists()) Some(file.toURI().toURL()) else None
  }
  
}