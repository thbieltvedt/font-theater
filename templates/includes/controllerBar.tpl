<%@ val model: fonttheater.models.FontTheatreModel %>

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

<div style="width: 100%; background: black; color: slategray; padding: 20px;">
	<select id="templateSelect" onchange="location.href=buildUrl();">
		#for(fontDemoTemplate <- model.fontDemoTemplateInfoList)
		<option value="${fontDemoTemplate.id}" #if(fontDemoTemplate.id == model.currentFontDemoTemplate.id) selected="selected"#end>${fontDemoTemplate.id}</option>
		#end
	</select>
	<select id="fontCollectionSelect" onchange="location.href=buildUrl();">
		#for(fontCollection <- model.fontCollectionList)
		<option value="${fontCollection.id}" #if(fontCollection.id == model.fontNavigatorHeadingsText.fontCollection.id) selected="selected"#end>${fontCollection.id}</option>
		#end
	</select>

</div>