<%@ val parameters: application.controller.Parameters %>
<%@ val viewTemplate: String %>

#use (/model/fontlibrary.tpl) as fontLibrary

#{
	private val model = fonttheater.models.FontTheatreModel(
		parameters = parameters, 
		fontDemoTemplateName = viewTemplate, 
		fontLibrary = fontLibrary.fontLibrary)

	private val viewTemplatePath = 
		"/pages/" + viewTemplate + ".tpl"
}#

${render(viewTemplatePath, Map("model" -> model))}