<%@ val model: fonttheater.models.FontTheatreModel %>
<%@ val backgroundColor: String = "black" %>

#{
	val fontDemoTemplates = Seq(
		"text-page-1", 
		"page1-multi", 
		"page1", 
		"page2", 
		"page3", 
		"page4", 
		"demo-poster-1", 
		"demo-poster-2", 
		"demo-poster-3", 
		"demo-poster-4", 
		"demo-poster-5", 
		"waterfall", 
		"waterfall1", 
		"colors", 
		"small-headings")
}#

<script>

	function buildUrl() {
		var templateSelect = location.href=document.getElementById('templateSelect');
		var fontCollectionSelect = location.href=document.getElementById('fontCollectionSelect');
		
		return selectedValue(templateSelect) + '?fontcollection.headings=' + selectedValue(fontCollectionSelect);
	}
	
	function selectedValue(select) {
		return select.options[select.selectedIndex].value;		
	}	

</script>

<div style="background: ${backgroundColor}; color: slategray; padding: 20px;">
	<select id="templateSelect" onchange="location.href=buildUrl();" style="font-family: 'Lucida Sans Unicode', sans-serif; font-size: 12px;">
		#for(fontDemoTemplate <- fontDemoTemplates)
		<option value="${fontDemoTemplate}" #if(fontDemoTemplate == model.currentFontDemoTemplate.id) selected="selected"#end>${fontDemoTemplate}</option>
		#end
	</select>
	<select id="fontCollectionSelect" onchange="location.href=buildUrl();" style="font-family: 'Lucida Sans Unicode', sans-serif; font-size: 12px;">
		#for(fontCollection <- model.fontCollectionList)
		<option value="${fontCollection.id}" #if(fontCollection.id == model.fontNavigatorHeadingsText.fontCollection.id) selected="selected"#end>${fontCollection.id}</option>
		#end
	</select>
</div>