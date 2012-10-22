<%@ val body: String %>
<%@ val model: fonttheater.models.FontTheatreModel %>

<%@ val textLines: Seq[String] %>

<%@ val posterFontSize: String = "[adjust-to-canvas-width]" %>
<%@ val posterBackgroundColor: String = "black" %>
<%@ val posterTextColor: String = "silver" %>
<%@ val pageBackgroundColor: String = "white" %>
<%@ val pageTextColor: String = "#424242" %>
<%@ val canvasWidth: String = "480" %>
<%@ val canvasHeight: String = "600" %>
<%@ val posterBoxPadding: String = "50" %>
<%@ val lineSpaceFactor: String = "1.3" %>


#use (config/config.tpl) as config

#{
	val fontCollection = Seq("atrament-web","VafleClassic", "OSPDIN", "Urbano Lt Cond", "Urbano Cond", "HelveticaNeueW01-57Cn", "HelveticaNeueW01-ThinCn 673383", "DIN Next W02 Cond", "TradeGothicNextW01-Heav 693241", "EurostileNextW01-Regula", "FrutigerNeueW01-Regular")
	def canvasId(font: String) = "qdemoPosterCanvas_" + font.replace(" ", "_")
}#

<html dir="ltr" lang="en-US" xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Font demo poster</title>
		${render("/includes/fontTheatreHtmlHead.tpl", Map("model" -> model))}		
		<script>
			var textLines = [
			#for(textLine <- textLines)
				'${textLine}'#if(!(textLine == textLines.last)), #end
			#end
			];
			
			function measureTextWidth(canvasContext, text, fontSizePx, fontFamilyQuoted, fontWeight) {	
				canvasContext.save();
				canvasContext.font = fontWeight + ' ' + fontSizePx + 'px ' + fontFamilyQuoted;
				var dim = canvasContext.measureText(text);
				canvasContext.restore();
				
				return dim.width;
			}		
		
			function writeTextToCanvas(canvas, text, fontSizePx, fontFamilyQuoted, fontWeight, color, scale, yCoordinate) {	
			  // Make sure we don't execute when canvas isn't supported
			  if (canvas.getContext){
				// use getContext to use the canvas for drawing
				var ctx = canvas.getContext('2d');
				ctx.save();
				
				ctx.fillStyle    = color;
				ctx.font         = fontWeight + ' ' + fontSizePx + 'px ' + fontFamilyQuoted;
				ctx.textBaseline = 'top';
				ctx.scale(scale, scale);
				ctx.fillText(text, 0, yCoordinate);
				
				ctx.restore();
				
				return fontSizePx;
			  } else {
				alert('You need Safari or Firefox 1.5+ to see this demo.');
			  }
			}			
			
			function writeTextToCanvasWidthAdjusted(canvas, text, fontSizePx, fontFamilyQuoted, fontWeight, color, yCoordinate) {	
			  // Make sure we don't execute when canvas isn't supported
			  if (canvas.getContext){
				// use getContext to use the canvas for drawing
				var ctx = canvas.getContext('2d');
				var textWidth = measureTextWidth(ctx, text, fontSizePx, fontFamilyQuoted, fontWeight);
				var scale = canvas.width / textWidth;
				var scaleAdjustedYCoordinate = (yCoordinate / scale);
				
				writeTextToCanvas(canvas, text, fontSizePx, fontFamilyQuoted, fontWeight, color, scale, scaleAdjustedYCoordinate);
				
				return (fontSizePx * scale);
				
			  } else {
				alert('You need Safari or Firefox 1.5+ to see this demo.');
			  }
			}
			
			function drawDemoPosterCanvasForFont(font, canvasId) {
				var canvas = document.getElementById(canvasId);
				var fontFamilyQuoted = '"' + font + '"';
				var yCoordinate = 0;
				var lineSpaceFactor = ${lineSpaceFactor};
				for (var i = 0; i < textLines.length; i++) {
					#if(posterFontSize == "[adjust-to-canvas-width]")
						yCoordinate += writeTextToCanvasWidthAdjusted(canvas, textLines[i], 100, fontFamilyQuoted, 'Normal', '${posterTextColor}', yCoordinate) * lineSpaceFactor;
					#else
						yCoordinate += writeTextToCanvas(canvas, textLines[i], ${posterFontSize}, fontFamilyQuoted, 'Normal', '${posterTextColor}', 1, yCoordinate) * lineSpaceFactor;
					#end
				}
				//yCoordinate += writeTextToCanvas(canvas, font, 40, fontFamilyQuoted, 'Normal', '${posterTextColor}', 1, yCoordinate + 30);
			}
			
			function drawDemoPoster() {
				try {
					#for(font <- model.fontNavigatorHeadingsText.fontCollection.fonts)
						drawDemoPosterCanvasForFont('${font.name}', '${canvasId(font.name)}');
					#end
				}
				catch(error) {
					alert("Javascript error: \n" + error.message);
				}
			}
			
			function onBodyLoad() {
				//if (!fontCollectionContainsGoogleWebFonts) {
					drawDemoPoster();
				//}
			}
		</script>
	</head>
	
	<body onload="onBodyLoad()">
		#for(font <- model.fontNavigatorHeadingsText.fontCollection.fonts)
			<div style="margin-top: 80px; margin-left: 50px;">
				<h2 style="font-family: '${font}'; font-size: 24px; font-weight: normal; letter-spacing: 2px;">${font.displayName}</h2>
				<div style="margin: 0px; padding: 0px; float: left; clear: both; background-color: ${posterBackgroundColor};">
					<div style="padding: ${posterBoxPadding}px;">
						<div><a href="javascript:return document.getElementById('${canvasId(font.name)}').toDataURL()" onclick="window.location.href=document.getElementById('${canvasId(font.name)}').toDataURL()"><canvas id="${canvasId(font.name)}" height="${canvasHeight}" width="${canvasWidth}" /></a></div>
					</div>
				</div>
			</div>
			<div style="height: 20px; float: left; clear: both;"/>
		#end
	</body>
</html>
