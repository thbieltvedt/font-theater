<%@ val model: fonttheater.models.FontTheatreModel %>

#use (config/config.tpl) as config

<style type="text/css" />
  #themestyle_switcher {
    display:        block;
    position:       fixed;
    top:            60px;
    _left:           -152px;
    width:          190px;
    z-index:        999997;
  }

  #themestyle_switcher .panelopen {
    background:     url('${config.baseUriResources}/fontnavigator/empressa/switcher/panelopenr.png') top right no-repeat; 
    position:       absolute; 
    top:            20px;
    right:          0; 
    width:          38px; 
    height:         250px; 
  }

  #styleswitcher_close {
    font-size:      9px;
    text-transform: uppercase;
    position:       absolute;
    top:            20px;
    display:        block;  
    right:          0px;
    height:         250px;
  }

  .optionsPanel td {
    padding: 0px;
  }
  
  .optionsPanel table, .optionsPanel table td, .optionsPanel table th {
    text-align: left;
  }
</style>

<div id="themestyle_switcher" style="font-size: 12px; font-family: 'Lucida Sans Unicode', Verdana; line-height: normal;" class="optionsPanel">
  <table style="background-color: white; text-align tr td: left;" width="152">
    <tr>
      <td nowrap="nowrap"> 
        <br/><b>Font normal text:</b><br/>
        <% render("fontNavigation.tpl", Map("fontNavigation" -> model.fontNavigatorNormalText)) %>
      </td>
    </tr>
    <tr>
      <td nowrap="nowrap">
        <br/><b>Font headings:</b><br/>
        <% render("fontNavigation.tpl", Map("fontNavigation" -> model.fontNavigatorHeadingsText)) %>
      </td>
    </tr>
    <tr>
      <td nowrap="nowrap">
        <br/><b>Font small text:</b><br/>
        <% render("fontNavigation.tpl", Map("fontNavigation" -> model.fontNavigatorSmallText)) %>
      </td>
    </tr>
    <tr>
      <td nowrap="nowrap">
        <br/><b>Font large text:</b><br/>
        <% render("fontNavigation.tpl", Map("fontNavigation" -> model.fontNavigatorLargeText)) %>
      </td>
    </tr>
    <tr>
      <td nowrap="nowrap">
        <br/><b>Font menu:</b><br/>
        <% render("fontNavigation.tpl", Map("fontNavigation" -> model.fontNavigatorMenuText)) %>
      </td>
    </tr>
    <tr>
      <td nowrap="nowrap">
        <br/><b>Font banner:</b><br/>
        <% render("fontNavigation.tpl", Map("fontNavigation" -> model.fontNavigatorBannerText)) %>
      </td>
    </tr>
    <tr>
      <td nowrap="nowrap">
        <br/><b>Font buttons:</b><br/>
        <% render("fontNavigation.tpl", Map("fontNavigation" -> model.fontNavigatorButtonsText)) %>
      </td>
    </tr>
    <tr>
      <td nowrap="nowrap">
        <br/><b>Font logo:</b><br/>
        <% render("fontNavigation.tpl", Map("fontNavigation" -> model.fontNavigatorLogoText)) %>
      </td>
    </tr>
  </table>
  <div class="panelopen"></div>
</div>