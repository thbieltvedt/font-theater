package fonttheater.controllers

import application.controller.Parameters
import application.templateengine.TemplateEngine
import fonttheater.models.FontDemoTemplateInfo
import fonttheater.models.FontTheatreModel
import play.api.mvc._
import play.api.templates.Html
import fonttheater.config.ApplicationConfig
import application.config.ConfigurationException
import application.logging.Logger$
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
      val parameters = new Parameters(request.queryString)

      val model: FontTheatreModel = parseFontDemoParameters(parameters, fontDemoTemplateName)

      val scalateSspTemplatePath =
        "/pages/" + fontDemoTemplateName + ".ssp"

      val startTime = System.currentTimeMillis()
      val output =
        templateEngine.executeTemplate(scalateSspTemplatePath, Map("model" -> model))
      val endTime = System.currentTimeMillis()
      Logger.debug("Time " + fontDemoTemplateName + ": " + (endTime - startTime) + " ms")

      // TODO
      if (output == null) {
        return NotFound("Page not found")
      }

      val html = new Html(output)

      Ok(html)
    }

    private def parseFontDemoParameters(parameters: Parameters, fontDemoTemplateName: String): FontTheatreModel = {
      val parameterFontCollectionHeadings: String = parameters.getSingleValue(FontTheatreModel.PARAMETER_NAME_FONT_COLLECTION_HEADINGS)
      val parameterFontFamilyDefault: String = parameters.getSingleValue(FontTheatreModel.PARAMETER_NAME_FONT_DEFAULT_TEXT)
      val parameterFontFamilyNormalText: String = parameters.getSingleValue(FontTheatreModel.PARAMETER_NAME_FONT_NORMAL_TEXT)
      val parameterFontFamilyHeadings: String = parameters.getSingleValue(FontTheatreModel.PARAMETER_NAME_FONT_HEADINGS_TEXT)
      val parameterFontFamilySmallText: String = parameters.getSingleValue(FontTheatreModel.PARAMETER_NAME_FONT_SMALL_TEXT)
      val parameterFontFamilyLargeText: String = parameters.getSingleValue(FontTheatreModel.PARAMETER_NAME_FONT_LARGE_TEXT)
      val parameterFontFamilyMenu: String = parameters.getSingleValue(FontTheatreModel.PARAMETER_NAME_FONT_MENU_TEXT)
      val parameterFontFamilyBanner: String = parameters.getSingleValue(FontTheatreModel.PARAMETER_NAME_FONT_BANNER_TEXT)
      val parameterFontFamilyButtons: String = parameters.getSingleValue(FontTheatreModel.PARAMETER_NAME_FONT_BUTTONS_TEXT)
      val parameterFontFamilyLogo: String = parameters.getSingleValue(FontTheatreModel.PARAMETER_NAME_FONT_LOGO_TEXT)

      val model = new FontTheatreModel(
        new FontDemoTemplateInfo(fontDemoTemplateName),
        parameterFontCollectionHeadings,
        parameterFontFamilyDefault,
        parameterFontFamilyNormalText,
        parameterFontFamilyHeadings,
        parameterFontFamilySmallText,
        parameterFontFamilyLargeText,
        parameterFontFamilyMenu,
        parameterFontFamilyBanner,
        parameterFontFamilyButtons,
        parameterFontFamilyLogo,
        parameters)

      model
    }
  }

  private object ApplicationServiceUnavailableController extends ControllerInterface {
    def execute(fontDemoTemplateName: String, request: Request[AnyContent]) =
      ServiceUnavailable(new Html("Service initialization failed. See log for details."))
  }

}