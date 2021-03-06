<%@ val body: String %>
<%@ val model: fonttheater.models.FontTheatreModel %>

#use (config/config.tpl) as config

#{
  val bodyFontSize = "14px"
}#

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html dir="ltr" lang="en-US" xmlns="http://www.w3.org/1999/xhtml">
  <head>
    <title>Typography | Aquitaine</title>
    <link rel="stylesheet" type="text/css" media="all"    href="${config.baseUriResources}/themes/aquitaine/style.css" />
    <link rel="stylesheet" type="text/css"                href="${config.baseUriResources}/themes/aquitaine/styles/01_red.css" />
    <link rel="shortcut icon"                             href="${config.baseUriResources}/themes/aquitaine/images/favicon.ico" />

    <script type='text/javascript' src='${config.baseUriResources}/js/jquery-1.6.1.min.js'></script>
    <script type='text/javascript' src='${config.baseUriResources}/themes/aquitaine/js/custom.js?ver=3.1.3'></script>
    

    <style type="text/css">
      /*<![CDATA[*/
      body { 
        background-color: #fff; 
        background-image: url('${config.baseUriResources}/themes/aquitaine/images/top_decoration.png'); 
        background-repeat: repeat-x; 
        background-position: top center; 
        background-attachment: scroll;  
        font-size: ${bodyFontSize};
      }
      /*]]>*/
    </style>

    <style type="text/css">
      /*<![CDATA[*/
      .inner-content {margin:0 56px 0 0;}

      .box h4 {
        font-weight: normal;
      }
      /*]]>*/
    </style>

    ${render("/includes/fontTheatreHtmlHead.tpl", Map("model" -> model))}
  </head>

  <body>
  	<!-- @@tags.controllerBar(model) -->
    ${render("/includes/fontNavigationPanelType1.tpl", Map("model" -> model))}
    <div class="htop-wrapper" id="backtop">
      <div class="htop">
        <div id="logo">
          <a href="http://goldenworks.ro/demos/aq_wordpress"><img src="${config.baseUriResources}/themes/aquitaine/images/logo.png" alt="Aquitaine" /></a>
        </div>
        <div id="menu-wrapper">
          <div class="menu-1_header-container">
            <ul id="menu-1_header" class="sf-menu">
              <li id="menu-item-1112" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1112">
                <a href="">Home</a>
              </li>
              <li id="menu-item-17" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-17">
                <a>Pages</a>
                <ul class="sub-menu">
                  <li id="menu-item-1110" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1110">
                    <a href="alternate-homepage-1/">Alternate Homepage 1</a>
                  </li>
                  <li id="menu-item-1111" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1111">
                    <a href="homepage-2/">Alternate Homepage 2</a>
                  </li>
                  <li id="menu-item-1116" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1116">
                    <a href="portfolio-3/">Portfolios &#194;&#187;</a>
                    <ul class="sub-menu">
                      <li id="menu-item-1118" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1118">
                        <a href="portfolio-1/">Portfolio 1</a>
                      </li>
                      <li id="menu-item-1115" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1115">
                        <a href="portfolio-2/">Portfolio 2</a>
                      </li>
                      <li id="menu-item-1114" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1114">
                        <a href="portfolio-3/">Portfolio 3</a>
                      </li>
                      <li id="menu-item-1117" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1117">
                        <a href="portfolio-4/">Portfolio 4</a>
                      </li>
                    </ul>
                  </li>
                  <li id="menu-item-1094" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1094">
                    <a href="services/">Services</a>
                  </li>
                  <li id="menu-item-1095" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1095">
                    <a href="services-with-sidebar/">Services with sidebar</a>
                  </li>
                  <li id="menu-item-1096" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1096">
                    <a href="testimonials/">Testimonials</a>
                  </li>
                  <li id="menu-item-1097" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1097">
                    <a href="testimonials-with-sidebar/">Testimonials with sidebar</a>
                  </li>
                  <li id="menu-item-1107" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1107">
                    <a href="our-team/">Our team</a>
                  </li>
                  <li id="menu-item-1092" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1092">
                    <a href="archive_page/">Archive page</a>
                  </li>
                  <li id="menu-item-1100" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1100">
                    <a href="blog/">Blog</a>
                  </li>
                  <li id="menu-item-1163" class="menu-item menu-item-type-custom menu-item-object-custom menu-item-1163">
                    <a href="upgrade-to-latest-firefox-4/">Blog detail</a>
                  </li>
                  <li id="menu-item-1108" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1108">
                    <a href="tabular-data/">Tables</a>
                  </li>
                  <li id="menu-item-1106" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1106">
                    <a href="price-tables/">Pricing tables</a>
                  </li>
                  <li id="menu-item-1099" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1099">
                    <a href="contact/">Contact</a>
                  </li>
                </ul>
              </li>
              <li id="menu-item-18" class="menu-item menu-item-type-custom menu-item-object-custom current-menu-ancestor current-menu-parent menu-item-18">
                <a>Shortcodes</a>
                <ul class="sub-menu">
                  <li id="menu-item-1098" class="menu-item menu-item-type-post_type menu-item-object-page current-menu-item page_item page-item-342 current_page_item menu-item-1098">
                    <a href="typography/">Typography</a>
                  </li>
                  <li id="menu-item-1104" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1104">
                    <a href="lists/">Lists and interior columns</a>
                  </li>
                  <li id="menu-item-1101" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1101">
                    <a href="tabs-accordion-and-toggles/">Tabs, accordion and toggles</a>
                  </li>
                  <li id="menu-item-1102" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1102">
                    <a href="content-columns/">Content Columns</a>
                  </li>
                  <li id="menu-item-1113" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1113">
                    <a href="any-width-any-height/">Any width any height</a>
                  </li>
                  <li id="menu-item-1103" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1103">
                    <a href="images-and-videos/">Images and videos</a>
                  </li>
                  <li id="menu-item-1105" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1105">
                    <a href="special-buttons/">Special buttons</a>
                  </li>
                  <li id="menu-item-1109" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1109">
                    <a href="google-charts/">Google Charts</a>
                  </li>
                </ul>
              </li>
              <li id="menu-item-1091" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1091">
                <a href="blog/">Blog</a>
              </li>
              <li id="menu-item-1093" class="menu-item menu-item-type-post_type menu-item-object-page menu-item-1093">
                <a href="contact/">Contact</a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    ${unescape(body)}
    <div class="twitter-topsection"></div>
    <div class="twitter-section">
      <div class="twitter-section-wrapper">
        <div class="tsw-fix">
          <div class="twitter-section-icon"></div>
        </div>
      </div>
    </div>

    <!-- start footer -->
    <div id="footer">
      <div id="footer-wrapper">
        <!-- start footer widgets -->
        <div class="ffour-wrapper">
          <div id="text-2" class="fbox widget_text">
            <h6>
              Get in touch
            </h6>
            <div class="textwidget">
              <img src="${config.baseUriResources}/themes/aquitaine/images/en_map.png" alt="Our location map" class="fmap" />
              <div class="address-wrapper">
                <strong>United Kingdom</strong><br />
                27 Featherstone Street<br />
                London, EC1Y 8SY<br />
                <a href="mailto:office@@aquitaine.com">office@@aquitaine.com</a>
              </div><span class="gray-arrowlink"><a href="contact/">more info</a></span>
            </div>
          </div>
          <div id="gw-socialmedia-2" class="fbox widget_gw-socialmedia">
            <h6>
              Connect with us!
            </h6>
            <p>
              Don't hesitate to connect with us on your favourite social networks:
            </p>
            <ul class='fconnect'>
              <li class="flist-twitter">
                <a href="http://twitter.com">Twitter</a>
              </li>
              <li class="flist-facebook">
                <a href="http://facebook.com">Facebook</a>
              </li>
              <li class="flist-linkedin">
                <a href="http://linkedin.com">Linkedin</a>
              </li>
              <li class="flist-rss">
                <a href="http://rss.com">RSS</a>
              </li>
            </ul>
          </div>
          <div id="gw-blog-4" class="fbox widget_gw_blog">
            <h6>
              Latest from blog
            </h6>
            <ul class="sblog-list">
              <li>
                <div class="sblog-date">
                  May 2, 2011
                </div><a href="an-indepth-analysis-of-18th-century-time-travel-machine/" rel="bookmark" title="An indepth analysis of 18th century time travel machine">An indepth analysis of 18th century time travel machine</a>
              </li>
              <li>
                <div class="sblog-date">
                  April 27, 2011
                </div><a href="ester-liquori/" rel="bookmark" title="Ester Liquori">Ester Liquori</a>
              </li>
              <li>
                <div class="sblog-date">
                  April 16, 2011
                </div><a href="the-difference-between-man-and-machine/" rel="bookmark" title="The difference between man and machine">The difference between man and machine</a>
              </li>
              <li>
                <div class="sblog-date">
                  April 3, 2011
                </div><a href="positive-money-solutions-business-cards/" rel="bookmark" title="Positive money solutions business cards">Positive money solutions business cards</a>
              </li>
            </ul>
          </div>
          <div id="text-3" class="fbox widget_text">
            <h6>
              About Aquitaine
            </h6>
            <div class="textwidget">
              <p>
                Ut natum labitur fastidii mel, et sit aliquyam deterruisset. Id sit modus facete. Ea reque intellegam definitionem quo. At mel facer cotidieque.
              </p>
              <p>
                Id sed nominati elaboraret concludaturque, his aliquid sapientem cu, errem offendit ad sit.
              </p>
            </div>
          </div>
        </div><!-- end footer widgets --><!-- start footer bottom area -->
        <div id="fbottom">
          <div id="bottom-wrapper">
            <p class="copyright">
              &#169; 2011 Aquitaine Ltd. All rights reserved. Created by <a href='http://goldenworks.ro'>Golden Works</a>.
            </p>
            <p class="backtop">
              <a href="#backtop">back to top</a>
            </p>
          </div>
        </div><!-- end footer bottom area -->
      </div>
    </div><!-- end footer -->
  </body>
</html>