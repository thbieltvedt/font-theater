<%@ val body: String %>
<%@ val model: fonttheater.models.FontTheatreModel %>
<%@ val style: String = "" %>

<%@ val posterBackgroundColor: String = "black" %>
<%@ val posterTextColor: String = "silver" %>
<%@ val pageBackgroundColor: String = "white" %>
<%@ val pageTextColor: String = "#424242" %>
<%@ val canvasWidth: String = "800" %>
<%@ val canvasHeight: String = "600" %>
<%@ val posterBoxPadding: String = "0" %>
<%@ val lineSpaceFactor: String = "1.3" %>


#use (config/config.tpl) as config

#{
	val fontCollection = Seq("atrament-web","VafleClassic", "OSPDIN", "Urbano Lt Cond", "Urbano Cond", "HelveticaNeueW01-57Cn", "HelveticaNeueW01-ThinCn 673383", "DIN Next W02 Cond", "TradeGothicNextW01-Heav 693241", "EurostileNextW01-Regula", "FrutigerNeueW01-Regular")
	def canvasId(font: String) = "qdemoPosterCanvas_" + font.replace(" ", "_")
}#

<html dir="ltr" lang="en-US" xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Font demo poster</title>
		${render("/includes/fontTheatreHtmlHeadMulti.tpl", Map("model" -> model))}
		<style>
			${unescape(style)}
			body {
				background-color: ${pageBackgroundColor};
				color: ${pageTextColor};
			}
		</style>
	</head>
	
	<body onload="onBodyLoad()">
		${render("/includes/controllerBar.tpl", Map("model" -> model, "backgroundColor" -> pageBackgroundColor))}
		<table>
			<tbody>			
			<tr><td></td></tr>
			<tr>
			#for(font <- model.fontNavigatorHeadingsText.fontCollection.fonts)
				<td style="vertical-align: top;">
					<div style="font-family: ${font.name}; margin-top: 80px; margin-left: 50px; width: ${canvasWidth}">
						<span style="font-size: 24px; font-weight: normal; letter-spacing: 2px;">${font.displayName}</span>
						<div style="margin: 0px; padding: 0px; float: left; clear: both; background-color: ${posterBackgroundColor}; width: 100%">
							<div style="padding: ${posterBoxPadding}px;">
								${unescape(body)}
							</div>
						</div>
					</div>
				</td>
			#end
			</tr>
			<tr><td></td></tr>			
			</tbody>
		</table>
	</body>
</html>
