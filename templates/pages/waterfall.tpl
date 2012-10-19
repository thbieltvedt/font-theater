<%@ val model: fonttheater.models.FontTheatreModel %>

#{
	val font = model.fontNavigatorHeadingsText.current
}#
 
#do(layout("/layout/layout-font-theater.tpl", Map("model" -> model)))
	<style>
		.font-links {
			font-family: 'Lucida Sans Unicode';
			font-size: 11px;		
		}
		
		.font-links a {
			color: slategray;		
		}
		
		h1, h2, h3, h4, h5, h6 {
			margin: 		0px;
			padding-bottom: 10px;
			padding-top: 	10px;
		}
		
		p.bodytext {
			font-family: '${font.name}'
		}
	</style>
	
	<div id="content" style="margin-left: 200px;">
		<h3 style="font-weight: ${font.weight}; font-size: 72px;">${font.displayName}</h3>
		<h3 style="font-weight: normal; font-size: 72px;">ENTIOLAB</h3>
		<h3 style="font-weight: normal; font-size: 72px;">Dette er en test 1234567890...</h3>
		<h3 style="font-weight: normal; font-size: 60px;">Dette er en test...</h3>
		<h3 style="font-weight: normal; font-size: 48px;">Dette er en test...</h3>
		<h3 style="font-weight: 300; font-size: 48px;"><b>Light</b>. Dette er en test...</h3>
		<h3 style="font-weight: normal; font-size: 32px;">Send MOBILTV til 1984</h3>
		<h3 style="font-weight: normal; font-size: 24px;">Dette er en test...</h3>
		<h3 style="font-weight: normal; font-size: 20px;">Suksess i Finland!</h3>
		<h3 style="font-weight: normal; font-size: 16px;">Dette er en test...</h3>
		<h3 style="font-weight: normal; font-size: 14px;">Dette er en test...</h3>
		<h3 style="font-weight: normal; font-size: 13px;">Dette er en test...</h3>
		<h3 style="font-weight: normal; font-size: 12px;">Dette er en test...</h3>
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
#end