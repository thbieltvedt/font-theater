<%@ val body: String %>
<%@ val model: fonttheater.models.FontTheatreModel %>

<html dir="ltr" lang="en-US" xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Font demo poster</title>
		${render("/includes/fontTheatreHtmlHead.tpl", Map("model" -> model))}
	</head>
	<body>
	    ${render("/includes/controllerBar.tpl", Map("model" -> model))}
	    ${render("/includes/fontNavigationPanelType2.tpl", Map("model" -> model))}
		${unescape(body)}
		#if(model.fontNavigatorHeadingsText.current.isCufonFont)
			<script type="text/javascript"> Cufon.now(); </script>
		#end
	</body>
</html>