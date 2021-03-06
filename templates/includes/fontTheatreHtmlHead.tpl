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
  #if (model.fontNavigatorHeadingsText.current.isFontFaceFont)
		@font-face {
		    font-family: '${model.fontNavigatorHeadingsText.current.name}';
		    src: url('${config.fontsBaseUri}${model.fontNavigatorHeadingsText.current.fontSource.fontFilePath}/${model.fontNavigatorHeadingsText.current.name}.otf') format('opentype');
		    src: url('${config.fontsBaseUri}${model.fontNavigatorHeadingsText.current.fontSource.fontFilePath}/${model.fontNavigatorHeadingsText.current.name}.eot?#iefix') format('embedded-opentype'),
		         url('${config.fontsBaseUri}${model.fontNavigatorHeadingsText.current.fontSource.fontFilePath}/${model.fontNavigatorHeadingsText.current.name}.woff') format('woff'),
		         url('${config.fontsBaseUri}${model.fontNavigatorHeadingsText.current.fontSource.fontFilePath}/${model.fontNavigatorHeadingsText.current.name}.ttf') format('truetype'),
		         url('${config.fontsBaseUri}${model.fontNavigatorHeadingsText.current.fontSource.fontFilePath}/${model.fontNavigatorHeadingsText.current.name}.svg#${model.fontNavigatorHeadingsText.current.name}') format('svg');
		    font-weight: normal;
		    font-style: normal;				
		}
	#end
  body { 
      font-family:  '${model.fontNavigatorNormalText.current.name}';
  }

  h1, h2, h3, h4, h5, h6, .heading-font {
    font-family:  	'${model.fontNavigatorHeadingsText.current.name}', serif;
    font-weight:  	normal;
    #if (model.fontNavigatorHeadingsText.current.letterSpacingFactor > 0)
      letter-spacing: ${0.5 * model.fontNavigatorHeadingsText.current.letterSpacingFactor}px;
    #end
  }

  .smallText {
    font-family:    '${model.fontNavigatorSmallText.current.name}';
  }
  .smallText h3 {
    font-family:    '${model.fontNavigatorSmallText.current.name}';
  }
  .largeText {
    font-family:    '${model.fontNavigatorLargeText.current.name}';
  }
  .menu {
    font-family:    '${model.fontNavigatorMenuText.current.name}';
  }
  .banner {
    font-family:    '${model.fontNavigatorBannerText.current.name}';
  }
  .button {
    font-family:    '${model.fontNavigatorButtonsText.current.name}';
  }
  .logo {
    font-family:    '${model.fontNavigatorLogoText.current.name}';
  }
</style>


#if (model.fontNavigatorHeadingsText.current.isCssFontFaceFont)	
    <link rel="stylesheet" href="${cssFontFaceBaseUrl()}/${cssFontFileName(model.fontNavigatorHeadingsText.current)}" />
#end

#if (model.fontNavigatorNormalText.current.isCssFontFaceFont)  
    <link rel="stylesheet" href="${cssFontFaceBaseUrl()}/${cssFontFileName(model.fontNavigatorNormalText.current)}" />
#end

#if (model.fontNavigatorHeadingsText.current.isGoogleWebFontsFont)
    <link href='http://fonts.googleapis.com/css?family=${model.fontNavigatorHeadingsText.current.name}:${model.fontNavigatorHeadingsText.current.weight}' rel='stylesheet' type='text/css'>
#end

#if (model.fontNavigatorNormalText.current.isGoogleWebFontsFont)
    <link href='http://fonts.googleapis.com/css?family=${model.fontNavigatorNormalText.current.name}:${model.fontNavigatorNormalText.current.weight}' rel='stylesheet' type='text/css'>
#end

#if (model.fontNavigatorHeadingsText.current.isFontsDotComFont)
    <script type="text/javascript" src="http://fast.fonts.com/jsapi/b37b63a1-55a0-4afc-ab02-2501a3a0f149.js"></script>
#end

#if (model.fontNavigatorHeadingsText.current.isCufonFont)
	<script src="${config.fontsBaseUri}/cufon-fonts/cufon-yui.js" type="text/javascript"></script>
  <script src="${config.fontsBaseUri}${model.fontNavigatorHeadingsText.current.fontSource.fontFilePath}?v=2" type="text/javascript"></script>

	<script type="text/javascript">
		Cufon.replace('h1, h2, h3, h4, h5, h6', { fontFamily: '${model.fontNavigatorHeadingsText.current.name}', hover: true });
	</script>      
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