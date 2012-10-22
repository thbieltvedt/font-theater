<%@ val model: fonttheater.models.FontTheatreModel %>

#use (/config/config.tpl) as config

#{

  def cssFontFileName(font: fonttheater.models.Font) = {
    if (font.fontSource.fontFilePath == null) ("font-face-" + font.name + ".css") else font.fontSource.fontFilePath
  }

  def cssFontFaceBaseUrl(): String = config.fontsBaseUri + "/font-face-css"
  def fontFaceBaseUrl(): String = config.fontsBaseUri + "/font-face-fonts"
}#

<script type='text/javascript' src='${config.baseUriResources}/js/jquery-1.6.1.min.js'></script>
 
<style>
  #for(currentFont <- model.fontNavigatorHeadingsText.fontCollection.fonts)
    #if (currentFont.isFontFaceFont)
      @font-face {
          font-family: '${currentFont.name}';
          src: url('${config.fontsBaseUri}${currentFont.fontSource.fontFilePath}/${currentFont.name}.otf') format('opentype');
          src: url('${config.fontsBaseUri}${currentFont.fontSource.fontFilePath}/${currentFont.name}.eot?#iefix') format('embedded-opentype'),
               url('${config.fontsBaseUri}${currentFont.fontSource.fontFilePath}/${currentFont.name}.woff') format('woff'),
               url('${config.fontsBaseUri}${currentFont.fontSource.fontFilePath}/${currentFont.name}.ttf') format('truetype'),
               url('${config.fontsBaseUri}${currentFont.fontSource.fontFilePath}/${currentFont.name}.svg#${currentFont.name}') format('svg');
          font-weight: normal;
          font-style: normal;       
      }
    #end
  #end
</style>

#for(currentFont <- model.fontNavigatorHeadingsText.fontCollection.fonts)
  #if (currentFont.isCssFontFaceFont)	
      <link rel="stylesheet" href="${cssFontFaceBaseUrl()}/${cssFontFileName(currentFont)}" />
  #end
  #if (currentFont.isGoogleWebFontsFont)
      <link href='http://fonts.googleapis.com/css?family=${currentFont.name}:${currentFont.weight}' rel='stylesheet' type='text/css'>
  #end
  #if (currentFont.isFontsDotComFont)
      <script type="text/javascript" src="http://fast.fonts.com/jsapi/b37b63a1-55a0-4afc-ab02-2501a3a0f149.js"></script>
  #end
#end


<script type='text/javascript'>
  jQuery(document).ready(function() {
    var styleSwitcher_close = false;
    jQuery('.panelopen').click(function(e) {  
      if(styleSwitcher_close==false) {
        jQuery("#themestyle_switcher").animate({ left:-152 }, 500);
        styleSwitcher_close  = true;
      }
      else {
        jQuery("#themestyle_switcher").animate({ left:0 }, 500);
        styleSwitcher_close  = false;
      }

      e.preventDefault();
    });
  });
</script>