<%@ val model: fonttheater.models.FontTheatreModel %>

#do(layout(
	"/layout/layout-font-posters.tpl", 
	Map(
		"model" -> model, 
		"posterFontSize" -> "[adjust-to-canvas-width]", 
		"posterBackgroundColor" -> "#008DD0", 
		"posterTextColor" -> "white", 
		"pageBackgroundColor" -> "#008DD0", 
		"pageTextColor" -> "#00476E", 
		"canvasWidth" -> "900", 
		"canvasHeight" -> "600", 
		"posterBoxPadding" -> "50", 
		"lineSpaceFactor" -> "1.3")))
	<span style="line-height: 150%;">SISTE PROGRAMMER - Norge sørger</span>
	<span style="line-height: 150%;">The English channel</span>
	<span style="line-height: 150%;">Trondheim</span>
	<span style="line-height: 150%;">Travelling by train in the northern parts og Goeteborg</span>
	<span style="line-height: 150%;">GO LEFT, GO RIGHT, THEN FORWARD</span>
	<span style="line-height: 150%;">By plane from Helsinki to Dehli</span>
	<span style="line-height: 150%;">NICE, CANNES, ET LYON</span>
#end