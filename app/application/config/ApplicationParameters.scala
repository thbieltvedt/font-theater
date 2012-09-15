package application.config

import play.api.{Configuration, Play}
import com.typesafe.config.ConfigFactory
import java.io.File
import play.api.Play.current

class ApplicationParameters(keyConfigFileName: String) {
  private val config = new Configuration(new Factory(keyConfigFileName).config())

  private[config] def getRequiredString(configKey: String, validValues: Option[Set[String]] = None): String = {
    val value: Option[String] = config.getString(configKey, validValues)

    value.getOrElse(throw ConfigurationException("Missing mandatory configuration key '" + configKey + "'"))
  }

  def getRequiredDirectory(configKey: String, requiredDirectoryExistence: Boolean = true): File = {
    val path: Option[String] = config.getString(configKey)
    val directory =
      new File(path.getOrElse(throw ConfigurationException("Missing mandatory configuration key '" + configKey + "'")))

    if (requiredDirectoryExistence) {
      if (!directory.exists) throw ConfigurationException("Directory '" + directory.getAbsolutePath + "' denoted by config key '" + configKey + "' does not exist.")
      if (!directory.isDirectory) throw ConfigurationException("Directory '" + directory.getAbsolutePath + "' denoted by config key '" + configKey + "' is not a directory.")
    }

    directory
  }
}

private class Factory(keyConfigFileName: String) {
  def config(): com.typesafe.config.Config = {
    val confFileName = resolveConfigFileName()

    ConfigFactory.parseURL(Play.application.resource(confFileName).getOrElse(throw new ConfigurationException("No config file named '" + confFileName + "' found.")))
  }

  private def resolveConfigFileName(): String = {
    val value = Option(System.getProperty(keyConfigFileName))

    value match {
      case Some("") => throw new RuntimeException("Empty value for config filename system property '" + keyConfigFileName + "'.")
      case Some(_) => value.get
      case None => throw new RuntimeException("Missing config filename system property '" + keyConfigFileName + "'.")
    }
  }
}