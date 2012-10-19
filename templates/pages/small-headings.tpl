<%@ val model: fonttheater.models.FontTheatreModel %>

#use (config/config.tpl) as config

#{
  val backgroundColors =          Seq("#8BC752", "#F58221", "#EE1451", "#E93D24", "#008DD0", "#BFD32C", "#231F20", "#F0E817", "#EE1C25", "#487897", "#F0E817", "#FFFFFF")
  val secondaryBackgroundColors = Seq("#73A643", "#CA6C16", "#C40C42", "#C1321C", "#0076AF", "#A1B423", "black",   "#D7CC0F", "#C61C25", "#426D87", "#FFC107", "#FFFFFF")

  val colorIndex = model.parameters.getSingleValue("theme", "11").toInt
  val font = model.fontNavigatorHeadingsText.current
  val fontWeight = 400
}#

<html>
   <head>
       <title>Font demo</title>
       ${render("/includes/fontTheatreHtmlHead.tpl", Map("model" -> model))}
       <style>
         body {
            font-family:  ${font.name};
            font-style:   normal;
            font-weight:  ${font.name};
            color: #424242;
         }
         
         h3 {
           font-size: 20px;
         }
         
         h4 {
           font-size: 18px;           
         }
         
         h5 {
           font-size: 16px;
         }
         
         h1, h2, h3, h4, h5, h6 {
            font-weight:  ${fontWeight};
            letter-spacing: 1px;    
         }
         
         .emphasized {
           text-shadow: darkgray 1px 1px 1px;    
           letter-spacing: 3px; 
           text-transform: uppercase;
           padding-right: 12px; 
         }
         
         .menu, .menu a {
           font-family: 'Lucida Sans Unicode', sans-serif;
           text-transform: uppercase;
           font-size: 11px;
           color: black;
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
	                  ${render("/includes/fontNavigationPanelType2.tpl", Map("model" -> model))}
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
		               <tr><td width="400"><h3><span class="emphasized">${font.displayName}</span></h3></td><td><h3><span style="padding-left: 20px;">Rag. Dette & Kern. Hamburg 1290.</span></h3></td></tr>
		               <tr><td><h4><span class="emphasized">${font.displayName}</span></h4></td><td><h4><span style="padding-left: 20px;">Rag. Dette & Kern. Hamburg 1290.</span></h4></td></tr>
		               <tr><td><h5><span class="emphasized">${font.displayName}</span></h5></td><td><h5><span style="padding-left: 20px;">Rag. Dette & Kern. Hamburg 1290.</span></h5></td></tr>		               
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