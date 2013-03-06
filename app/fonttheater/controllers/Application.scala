package fonttheater.controllers

import application.controller.Parameters
import application.templateengine.TemplateEngine
import play.api.mvc._
import play.api.templates.Html
import fonttheater.config.ApplicationConfig
import application.config.ConfigurationException
import application.logging.Logger

object Application {
  private val name = "Font Theater"
  Logger.info("~~~~~   Starting " + name + " application...   ~~~~~~")
  private val controller: ControllerInterface = initController()
  Logger.info("~~~~~   " + name + " application started.   ~~~~~")

  def fontDemo(fontDemoTemplateName: String) =
    Action{request => controller.execute(fontDemoTemplateName, request)}

  private trait ControllerInterface extends Controller {
    def execute(fontDemoTemplateName: String, request: Request[AnyContent]): Result
  }

  private def initController(): ControllerInterface = {
    try {
      val appConfig = ApplicationConfig.intialize
      new ApplicationController(appConfig.templateEngine)
    }
    catch {
      case e: Throwable => {
        Logger.fatal("Initialization failed" + (if (e.getMessage != null) ": " + e.getMessage), throwable = if (!e.isInstanceOf[ConfigurationException]) e else null)
        ApplicationServiceUnavailableController
      }
    }
  }

  private class ApplicationController(val templateEngine: TemplateEngine) extends ControllerInterface {
    def execute(fontDemoTemplateName: String, request: Request[AnyContent]): Result = {
      val startTime = System.currentTimeMillis()
      
      val parameters = new Parameters(request.queryString)
      
      val output =
        templateEngine.executeTemplate("/controller/controller.tpl", Map("viewTemplate" -> fontDemoTemplateName, "parameters" -> parameters))
        
      val endTime = System.currentTimeMillis()
      Logger.debug("Time " + fontDemoTemplateName + ": " + (endTime - startTime) + " ms")

      // TODO
      if (output == null) {
        return NotFound("Page not found")
      }

      val html = new Html(new StringBuilder(output))

      Ok(html)
    }
  }

  private object ApplicationServiceUnavailableController extends ControllerInterface {
    def execute(fontDemoTemplateName: String, request: Request[AnyContent]) =
      ServiceUnavailable(new Html(new StringBuilder("Service initialization failed. See log for details.")))
  }

}