package application.templateengine

trait TemplateEngine {
  def executeTemplate(templatePath: String, attributes: Map[String, Any]): String
}