<%@ val model: fonttheater.models.FontTheatreModel %>

#{
  val backgroundColors          = Seq("#8BC752", "#F58221", "#EE1451", "#E93D24", "#008DD0", "#BFD32C", "#231F20", "#F0E817", "#EE1C25", "#487897", "#F0E817", "#FFFFFF")
  val secondaryBackgroundColors = Seq("#73A643", "#CA6C16", "#C40C42", "#C1321C", "#0076AF", "#A1B423", "black",   "#D7CC0F", "#C61C25", "#426D87", "#FFC107", "#FFFFFF")
  val colorIndex                = 4
  val fontFamily                = "'Whitney Cond A', 'Whitney Cond B'" //"Whitney SSm A" //"Gotham SSm A"
  val fontDisplayName           = "Whitney Cond A" //"Whitney SSm A" //"Gotham SSm A"
  val fontWeight                = 400
}#

<html>
   <head>
       <title>Font demo</title>
       <link rel="stylesheet" type="text/css" href="//cloud.typography.com/6058232/732182/css/fonts.css?a=7" />
       <style>
         body {
            font-family:  ${fontFamily};
            font-style:   normal;
            font-weight:  ${fontFamily};
            color: white;
         }

         h1 {
           font-size: 48px;
         }

         h2 {
           font-size: 32px;
         }

         h3 {
           font-size: 24px;
         }

         h4 {
           font-size: 18px;
         }

         h5 {
           font-size: 16px;
         }

         h1, h2, h3, h4, h5, h6 {
            font-weight:  ${fontWeight};
         }

         .emphasized {
           text-shadow: #00476E 2px 2px 2px;
           letter-spacing: 3px;
           text-transform: uppercase;
           padding-right: 12px;
         }

         .menu, .menu a {
           font-family: 'Lucida Sans Unicode', sans-serif;
           text-transform: uppercase;
           font-size: 11px;
           color: white;
         }

         .textfont {
           font-size: 14px;
           font-weight: 400;
           text-transform: none;
         }

      </style>
   </head>

   <body style="margin: 0px; padding: px;">
      <table cellpadding="0" cellspacing="0" style="width: 100%; height: 100%; margin: 0px; padding: 0px;">
         <tr>
            <td height="730" style="width: 80%; background-color: ${backgroundColors(colorIndex)};" valign="top">
	            <div style="margin-left: 40px; margin-right: 40px; margin-top: 10px;">
	               <div class="menu">
	                  <% render("../includes/fontNavigationPanelType2.tpl", Map("model" -> model)) %>
	               </div>
	               <div class="menu">
	                  <a href="?theme=0">Green</a> |
	                  <a href="?theme=1">Orange</a> |
	                  <a href="?theme=2">Pink</a> |
	                  <a href="?theme=3">Red 1</a> |
	                  <a href="?theme=4">Blue 1</a> |
	                  <a href="?theme=5">Lime</a> |
	                  <a href="?theme=6">Dark</a> |
	                  <a href="?theme=7">Yellow</a> |
	                  <a href="?theme=8">Red 2</a> |
	                  <a href="?theme=9">Blue 2</a> |
	                  <a href="?theme=10">Yellow 2</a>
	                  <a href="?theme=11">White</a>
	               </div>

	               <table cellpadding="0" cellspacing="0" style="margin: 0px; padding: 0px; margin-top: 40px;">
			            <tr><td width="500"><h1><span class="emphasized">${fontDisplayName}</span></h1></td><td><h1><span style="color: #00476E; padding-left: 20px;">Rag. Dette & Kern. Hamburg 1290.</span></h1></td></tr>
		               <tr><td><h2><span class="emphasized">${fontDisplayName}</span></h2></td><td><h2><span style="color: #00476E; padding-left: 20px;">Rag. Dette & Kern. Hamburg 1290.</span></h2></td></tr>
		               <tr><td><h3><span class="emphasized">${fontDisplayName}</span></h3></td><td><h3><span style="color: #00476E; padding-left: 20px;">Rag. Dette & Kern. Hamburg 1290.</span></h3></td></tr>
		               <tr><td><h4><span class="emphasized">${fontDisplayName}</span></h4></td><td><h4><span style="color: #00476E; padding-left: 20px;">Rag. Dette & Kern. Hamburg 1290.</span></h4></td></tr>
		               <tr><td><h5><span class="emphasized">${fontDisplayName}</span></h5></td><td><h5><span style="color: #00476E; padding-left: 20px;">Rag. Dette & Kern. Hamburg 1290.</span></h5></td></tr>
		               <tr>
		                  <td></td>
		                  <td style="padding-left: 20px;">
			                  <p class="textfont">
			                  In the day we sweat it out in the streets of a runaway american dream<br/>
			                  At night we ride through mansions of glory in suicide machines<br/>
			                  Sprung from cages out on highway 9,<br/>
			                  Chrome wheeled, fuel injected and steppin out over the line<br/>
			                  Baby this town rips the bones from your back<br/>
			                  Its a death trap, it's a suicide rap<br/>
			                  We gotta get out while were young<br/>
			                  cause tramps like us, baby we were born to run<br/>
			                  </p>
		                  </td>
		               </tr>
				      </table>
				      <br/>
				  </div>
            </td>
            <td style="width: 20%; background-color: ${secondaryBackgroundColors(colorIndex)};"></td>
         </tr>
      </table>
   </body>
</html>