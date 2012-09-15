package fonttheater.config

import application.config.ApplicationParameters
import application.templateengine.TemplateEngine
import application.templateengine.scalate.ScalateBasedTemplateEngine.Builder

case class ApplicationConfig(val templateEngine: TemplateEngine)

object ApplicationConfig {
  private val KEY_CONFIG_FILE_NAME = "env_config_file"
  private val CONFIG_KEY_TEMPLATES_SOURCE_DIRECTORY = "templates.sourceDirectory"
  
  def intialize(): ApplicationConfig = {
     val applicationParameters = new ApplicationParameters(KEY_CONFIG_FILE_NAME)
     
     val templateEngine: TemplateEngine = initTemplateEngine(applicationParameters)
     
     new ApplicationConfig(templateEngine)
  }

  private def initTemplateEngine(applicationParameters: ApplicationParameters): TemplateEngine = {
    val templatesSourceDirectory =
      applicationParameters.getRequiredDirectory(CONFIG_KEY_TEMPLATES_SOURCE_DIRECTORY, requiredDirectoryExistence = true)
    val classLoader = play.Play.application().classloader()

    new Builder(templatesSourceDirectory, classLoader).build(allowReload = true, allowCaching = true)
  }
}