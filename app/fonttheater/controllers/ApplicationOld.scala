package fonttheater.controllers

import java.lang.reflect.InvocationTargetException
import java.lang.reflect.Method
import play.api.mvc.Request
import play.api.mvc.Action
import play.api.mvc.AnyContent
import play.api.mvc.Controller
import play.api.mvc.Result
import play.api.templates.Html
import play.api.templates.Template1
import fonttheater.config.ApplicationConfig
import fonttheater.models.{FontDemoTemplateInfo, FontTheatreModel}
import application.controller.Parameters
import application.logging.Logger
import fonttheater.models.DefaultFontLibrary


object ApplicationOld extends Controller {
  private val PACKAGE_PAGE_VIEW = "views.html.pages"

  //  private val templateEngine =
  //    new TemplateEngine(List(new File("c:/Users/THB/Development/inphra-dev-projects/play2-font-theatre/conf/templates/")))
  //  templateEngine.classLoader = play.Play.application().classloader()
  //  templateEngine.allowReload = false
  //  templateEngine.allowCaching = true

  private val templateEngine = ApplicationConfig.intialize.templateEngine


  //  def fontDemo(fontDemoTemplateName: String) = Action { request =>
  //    val parameters = new Parameters(request.queryString)
  //
  //    val model: FontTheatreModel = parseFontDemoParameters(parameters, fontDemoTemplateName)
  //
  //    val template: Template1[FontTheatreModel, Html] = resolveTemplate(fontDemoTemplateName)
  //
  //    def html(): Html = template.render(model)
  //
  //    val result: Result =
  //      if (template == null) NotFound("Page not found") else Ok(html())
  //
  //    result
  //  }

  def fontDemo(fontDemoTemplateName: String) = Action {
    request => execute(fontDemoTemplateName, request)
  }

  private def executeOld(fontDemoTemplateName: String, request: Request[AnyContent]): Result = {
    val parameters = new Parameters(request.queryString)

    val model: FontTheatreModel = parseFontDemoParameters(parameters, fontDemoTemplateName)

    val template: Template1[FontTheatreModel, Html] = resolveTemplate(fontDemoTemplateName)

    if (template == null) {
      return NotFound("Page not found")
    }

    val html: Html = template.render(model)

    Ok(html)
  }

  private def execute(fontDemoTemplateName: String, request: Request[AnyContent]): Result = {
    val parameters = new Parameters(request.queryString)

    val model: FontTheatreModel = parseFontDemoParameters(parameters, fontDemoTemplateName)

    val scalateSspTemplatePath =
      "/pages/" + fontDemoTemplateName + ".ssp"

    val startTime = System.currentTimeMillis()
    val output =
    //templateEngine.layout(scalateSspTemplatePath, Map("model" -> model))
      templateEngine.executeTemplate(scalateSspTemplatePath, Map("model" -> model))
    val endTime = System.currentTimeMillis()
    Logger.debug("Time " + fontDemoTemplateName + ": " + (endTime - startTime) + " ms")


    // TODO
    if (output == null) {
      return NotFound("Page not found")
    }

    val html = new Html(new StringBuilder(output))


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
      parameters,
      DefaultFontLibrary)

    model
  }

  private def resolveTemplate(fontDemoTemplateName: String): Template1[FontTheatreModel, Html] = {
    try {
      val templateClass: Class[_] = resolveTemplateClass(fontDemoTemplateName)

      if (templateClass == null) {
        return null
      }

      val refMethod: Method = templateClass.getMethod("ref")

      val template: Template1[FontTheatreModel, Html] =
        refMethod.invoke(null).asInstanceOf[Template1[FontTheatreModel, Html]]

      template
    } catch {
      case nsme: NoSuchMethodException => throw new RuntimeException(nsme)
      case ite: InvocationTargetException => throw new RuntimeException(ite)
      case iae: IllegalAccessException => throw new RuntimeException(iae)
    }
  }

  private def resolveTemplateClass(fontDemoTemplateName: String): Class[_] = {
    try {
      val templateClass: Class[_] =
        Class.forName(PACKAGE_PAGE_VIEW + "." + fontDemoTemplateName)

      templateClass
    } catch {
      case cnfe: ClassNotFoundException => return null
    }
  }
}