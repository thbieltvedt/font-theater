<%@ val model: fonttheater.models.FontTheatreModel %>

#{
	val fontCollection = model.fontNavigatorHeadingsText.fontCollection
	val parameterNameFontFamily = fonttheater.models.FontTheatreModel.PARAMETER_NAME_FONT_HEADINGS_TEXT
	val parameterNameFontCollection = fonttheater.models.FontTheatreModel.PARAMETER_NAME_FONT_COLLECTION_HEADINGS
}#

<div>	
	<p class="font-links" style="">
		#for (font <- fontCollection.fonts)
			<a href="?${parameterNameFontFamily}=${font.name}:${font.weight}&${parameterNameFontCollection}=${fontCollection.id}">${font.displayName} #if (font.weight != 400) font.weightName #end</a>&nbsp;| 
		#end
	</p>
</div>