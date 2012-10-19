<%@ val model: fonttheater.models.FontTheatreModel %>

#use (config/config.tpl) as config

#{
	val font = model.fontNavigatorHeadingsText.current
}#

<html dir="ltr" lang="en-US" xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<title>Font demo poster</title>
<!-- Stylesheets -->
<link href="http://beta.typecastapp.com/js/src/css/chosen.css?1390"	rel="stylesheet" />
<link href="http://beta.typecastapp.com/js/src/css/global.css?1390"	rel="stylesheet" />
<link href="http://beta.typecastapp.com/js/src/css/app.css?1390" rel="stylesheet" />

		<link rel="stylesheet" href="${config.baseUriResources}/font-face-crete-rounded-web.css"/>
		<link rel="stylesheet" href="${config.baseUriResources}/font-face-${model.fontNavigatorNormalText.current.name}.css"/>

		<style>
			html, body, div, span, table, caption, tbody, tfoot, thead, tr, th, td {
				margin: 		0;
				padding: 		0;
				border: 		0;
				outline: 		0;
				font-weight: 	inherit;
				font-style: 	inherit;
				font-size: 		100%;
				font-family: 	inherit;
				vertical-align:	baseline;
			}
			
			body {
				font-family:	${model.fontNavigatorNormalText.current.name}, courier;
				font-size:		14px;
				font-style:		bold;
				font-weight:	400;
			}
			
			p.font-links {
				font-family: crete-rounded-web;
			}
			
			p.bodytext {
				font-size: 16px;
			}
			
			h1, h2, h3, h4, h5 {
				margin: 0px;
				padding-bottom: 20px;
			}
		</style>
		
		<script>
			function toggleFontSelector() {
				
			}
		</script>	
	</head>

	<body>
		<div>	
			<p class="font-links">
				<a href="?fontFamilyNormalText=atrament-web">atrament-web</a>&nbsp;| 
				<a href="?fontFamilyNormalText=atrament-web_light&fontName=atrament-web">atrament-web_light</a>&nbsp;|
				<a href="?fontFamilyNormalText=etica">etica</a>&nbsp;|
				<a href="?fontFamilyNormalText=nudista-web">nudista-web</a>&nbsp;| 
				<a href="?fontFamilyNormalText=obliqua">obliqua</a>&nbsp;| 
				<a href="?fontFamilyNormalText=ronnia-condensed">ronnia-condensed</a>&nbsp;|
				<a href="?fontFamilyNormalText=alternate-gothic-no-3-d">alternate-gothic-no-3-d</a>&nbsp;|
				<a href="?fontFamilyNormalText=franklin-gothic-comp-urw">franklin-gothic-comp-urw</a>&nbsp;|
				<a href="?fontFamilyNormalText=franklin-gothic-ext-comp-urw">franklin-gothic-ext-comp-urw</a>&nbsp;|
				<a href="?fontFamilyNormalText=ratio-display">ratio-display</a>&nbsp;|
				<a href="?fontFamilyNormalText=runda">runda</a>&nbsp;|   
				<a href="?fontFamilyNormalText=ronnia">ronnia</a>&nbsp;| 
				<a href="?fontFamilyNormalText=prenton-condensed">prenton-condensed</a>&nbsp;|
				<a href="?fontFamilyNormalText=comenia-sans-web">comenia-sans-web</a>&nbsp;| 
				<a href="?fontFamilyNormalText=katarine-web">katarine-web</a>&nbsp;| 
				<a href="?fontFamilyNormalText=adelle">adelle</a>&nbsp;|
				<a href="?fontFamilyNormalText=republic-web-condensed">republic-web-condensed</a>&nbsp;| 
				<a href="?fontFamilyNormalText=crete-rounded-web">crete-rounded-web</a>&nbsp;| 
				<a href="?fontFamilyNormalText=league-gothic">league-gothic</a>&nbsp;|
				<a href="?fontFamilyNormalText=bebas-neue">bebas-neue</a>&nbsp;|
				<a href="?fontFamilyNormalText=vinyl">vinyl</a>&nbsp;|   
				<a href="?fontFamilyNormalText=p22-underground-pc">p22-underground-pc</a>&nbsp;| 
				<a href="?fontFamilyNormalText=gnuolane">gnuolane</a>&nbsp;|
				<a href="?fontFamilyNormalText=allumi-std-extended">allumi-std-extended</a>&nbsp;| 
				<a href="?fontFamilyNormalText=etica-display">etica-display</a>&nbsp;| 
				<a href="?fontFamilyNormalText=sommet">sommet</a>&nbsp;|
				<a href="?fontFamilyNormalText=t26-carbon">t26-carbon</a>&nbsp;|
				<a href="?fontFamilyNormalText=purista-web">purista-web</a>&nbsp;|  
				<a href="?fontFamilyNormalText=sirba-web">sirba-web</a>&nbsp;|
				<a href="?fontFamilyNormalText=apolline">apolline</a>&nbsp;|
				<a href="?fontFamilyNormalText=lemonde-journal">lemonde-journal</a>&nbsp;|   
			</p>
		</div>
		<div class="dialog no-selection closed" id="dialog-main-wrapper">
			<div id="dialog-main">
				<div id="format-selector">
					<h4><span id="current-element-type">p</span><span id="show-dialog-format" title="Choose element"></span></h4>
				</div><!--/format-selector -->
				
				<div id="font-selector">
				
					<div id="font-selector-name" title="Choose font family">
						<h3 data-provider="fontdeck" style="font-family: 'Beau Sans Pro Regular'; ">Beau Sans Pro</h3><span id="show-dialog-font">show palette font</span>
					</div>
					<p id="previous-font" title="Select previous font" style="display: block; ">was: <a href="" data-provider="system">Arial</a>, <a href=""></a></p>
				
					<div id="font-selector-color" title="Choose font colour" class="" style="background-color: rgb(102, 102, 102); "><div></div></div>
		
						<div id="font-selector-weight" title="Choose font weight">
						<select data-placeholder="Weight:  " class="chzn-select chzn-done" tabindex="-1" id="sel0ZA" style="display: none; ">
						
							<option value="Thin">Thin</option>
						
							<option value="Thin Italic">Thin Italic</option>
						
							<option value="Light">Light</option>
						
							<option value="Light Italic">Light Italic</option>
						
							<option class="selectedFontVariation" selected="selected" value="Regular">Regular</option>
						
							<option value="Regular Italic">Regular Italic</option>
						
							<option value="Book">Book</option>
						
							<option value="Book Italic">Book Italic</option>
						
							<option value="Semibold">Semibold</option>
						
							<option value="Semibold Italic">Semibold Italic</option>
						
							<option value="Bold">Bold</option>
						
							<option value="Bold Italic">Bold Italic</option>
						
							<option value="Black">Black</option>
						
							<option value="Black Italic">Black Italic</option>
						
					</select>
					<div id="sel0ZA_chzn" class="chzn-container  chzn-container-single" style="width: 183px;">
						<a href="javascript:void(0)" class="chzn-single" tabindex="2"><span>Regular</span><div><b></b></div></a><div class="chzn-drop" style="left: -9000px; width: 181px; top: 32px; "><div class="chzn-search" style=""><input type="text" autocomplete="off" style="width: 148px; " tabindex="-1"></div><ul class="chzn-results"><li id="sel0ZA_chzn_o_0" class="active-result">Thin</li><li id="sel0ZA_chzn_o_1" class="active-result">Thin Italic</li><li id="sel0ZA_chzn_o_2" class="active-result">Light</li><li id="sel0ZA_chzn_o_3" class="active-result">Light Italic</li><li id="sel0ZA_chzn_o_4" class="active-result result-selected">Regular</li><li id="sel0ZA_chzn_o_5" class="active-result">Regular Italic</li><li id="sel0ZA_chzn_o_6" class="active-result">Book</li><li id="sel0ZA_chzn_o_7" class="active-result">Book Italic</li><li id="sel0ZA_chzn_o_8" class="active-result">Semibold</li><li id="sel0ZA_chzn_o_9" class="active-result">Semibold Italic</li><li id="sel0ZA_chzn_o_10" class="active-result">Bold</li><li id="sel0ZA_chzn_o_11" class="active-result">Bold Italic</li><li id="sel0ZA_chzn_o_12" class="active-result">Black</li><li id="sel0ZA_chzn_o_13" class="active-result">Black Italic</li></ul></div></div>
					</div>
					<div class="clear-both"></div>
					<div id="active-colors">
					<ul class="pallette swatch">
		
					<li class="active">
					
						<div style="background-color: rgb(0, 102, 204);"></div>
					
					</li>
		
					<li class="active">
					
						<div style="background-color: rgb(153, 0, 153);"></div>
					
					</li>
		
					<li class="active">
					
						<div style="background-color: rgb(102, 102, 102);"></div>
					
					</li>
		
					<li class="active">
					
						<div style="background-color: rgb(0, 102, 255);"></div>
					
					</li>
		
				</ul></div>
				</div>
					<div id="sliders-container">
					
					<div id="font-size-selector">
					<h5>Text Size</h5>
					<p class="stepper">
						<span class="decrease" title="Decrease value">-</span>
						<input type="text" value="0" title="Click to edit">
						<span class="increase" title="Increase value">+</span>
					<div id="font-size-unit-select">
					<select class="chzn-done" id="selNRN" style="display: none; ">
					
						<option value="px" selected="selected">px</option> 
					
						<option value="em">em</option> 
					
						<option value="%">%</option> 
					
					</select><div id="selNRN_chzn" class="chzn-container  chzn-container-single" style="width: 35px;"><a href="javascript:void(0)" class="chzn-single"><span>px</span><div><b></b></div></a><div class="chzn-drop" style="left: -9000px; width: 35px; top: 17px; "><div class="chzn-search" style=""><input type="text" autocomplete="off" style="width: 2px; "></div><ul class="chzn-results"><li id="selNRN_chzn_o_0" class="active-result result-selected">px</li><li id="selNRN_chzn_o_1" class="active-result">em</li><li id="selNRN_chzn_o_2" class="active-result">%</li></ul></div></div>
				</div></p>
					<div class="clearBoth">
					</div>
				<div id="font-size-slider">
					<input class="slider" max="120" min="8" step="1" type="range" title="Click and drag to adjust settings">
				</div></div><div id="line-height-selector">
					<h5>Line Height</h5>
					<p class="stepper">
						<span class="decrease" title="Decrease value">-</span>
						<input type="text" value="0" title="Click to edit">
						<span class="increase" title="Increase value">+</span>
					<div id="line-height-unit-select">
					<select class="chzn-done" id="selG64" style="display: none; ">
					
						<option value="px" selected="selected">px</option> 
					
						<option value="em">em</option> 
					
						<option value="%">%</option> 
					
					</select><div id="selG64_chzn" class="chzn-container  chzn-container-single" style="width: 35px;"><a href="javascript:void(0)" class="chzn-single"><span>px</span><div><b></b></div></a><div class="chzn-drop" style="left: -9000px; width: 35px; top: 17px; "><div class="chzn-search" style=""><input type="text" autocomplete="off" style="width: 2px; "></div><ul class="chzn-results"><li id="selG64_chzn_o_0" class="active-result result-selected">px</li><li id="selG64_chzn_o_1" class="active-result">em</li><li id="selG64_chzn_o_2" class="active-result">%</li></ul></div></div>
				</div></p>
					<div class="clearBoth">
					</div>
				<div id="line-height-slider">
					<input class="slider" max="200" min="10" step="1" type="range" title="Click and drag to adjust settings">
				</div></div><div id="spacing-selector">
					<h5>Spacing</h5>
					<p class="stepper">
						<span class="decrease" title="Decrease value">-</span>
						<input type="text" value="0" title="Click to edit">
						<span class="increase" title="Increase value">+</span>
					<div id="letter-spacing-unit-select">
					<select class="chzn-done" id="selJX5" style="display: none; ">
					
						<option value="px" selected="selected">px</option> 
					
						<option value="em">em</option> 
					
					</select><div id="selJX5_chzn" class="chzn-container  chzn-container-single" style="width: 35px;"><a href="javascript:void(0)" class="chzn-single"><span>px</span><div><b></b></div></a><div class="chzn-drop" style="left: -9000px; width: 35px; top: 17px; "><div class="chzn-search" style=""><input type="text" autocomplete="off" style="width: 2px; "></div><ul class="chzn-results"><li id="selJX5_chzn_o_0" class="active-result result-selected">px</li><li id="selJX5_chzn_o_1" class="active-result">em</li></ul></div></div>
				</div></p>
					<div class="clearBoth">
					</div>
				<div id="letter-spacing-slider">
					<input class="slider" max="8" min="-8" step="1" type="range" title="Click and drag to adjust settings">
				</div></div></div>
		
					<div class="footer" id="main-dialog-footer">
					<div id="text-alignment">
							   <ul class="text-alignment"> 
									<li title="Left align text"><label id="align-left">#</label></li> 
									<li title="Centre align text"><label id="align-center" class="">#</label></li> 
									<li title="Right align text"><label id="align-right">#</label></li> 
									<li title="Justify text"><label id="align-justify">#</label></li> 
								</ul>
		
					</div><div id="text-transform">
							  <ul class="text-alignment clearfix"> 
									<li title="Transform text case"><label id="uppercase" class="selected-icon">#</label></li> 
							  </ul>
				</div><!-- /text-transform --></div>
		
			</div>    
		</div>	

		<div id="content" style="margin-left: 200px;">
			<h3 style="font-weight: normal; font-size: 72px;">${model.fontNavigatorNormalText.current.name}: Dette er en test 1234567890...</h2>
			<h3 style="font-weight: normal; font-size: 60px;">${model.fontNavigatorNormalText.current.name}: Dette er en test...</h2>
			<h3 style="font-weight: normal; font-size: 48px;">${model.fontNavigatorNormalText.current.name}: Dette er en test...</h2>
			<h3 style="font-weight: 300; font-size: 48px;">${model.fontNavigatorNormalText.current.name}: <b>Light</b>. Dette er en test...</h2>
			<h3 style="font-weight: normal; font-size: 32px;">${model.fontNavigatorNormalText.current.name}: Dette er en test...</h2>
			<h3 style="font-weight: normal; font-size: 24px;">${model.fontNavigatorNormalText.current.name}: Dette er en test...</h2>
			<h3 style="font-weight: normal; font-size: 20px;">${model.fontNavigatorNormalText.current.name}: Dette er en test...</h2>
			<h3 style="font-weight: normal; font-size: 16px;">${model.fontNavigatorNormalText.current.name}: Dette er en test...</h2>
			<h3 style="font-weight: normal; font-size: 14px;">${model.fontNavigatorNormalText.current.name}: Dette er en test...</h2>
			<h3 style="font-weight: normal; font-size: 13px;">${model.fontNavigatorNormalText.current.name}: Dette er en test...</h2>
			<h3 style="font-weight: normal; font-size: 12px;">${model.fontNavigatorNormalText.current.name}: Dette er en test...</h2>
			<p class="bodytext">
				The highways jammed with broken heroes on a last chance power drive
				Everybodys out on the run tonight but there's no place left to hide
				Together wendy well live with the sadness
				Ill love you with all the madness in my soul
				Someday girl I don't know when were gonna get to that place
				Where we really want to go and well walk in the sun
				But till then tramps like us baby we were born to run
			</p>
		</div>		
	</body>
</html>
