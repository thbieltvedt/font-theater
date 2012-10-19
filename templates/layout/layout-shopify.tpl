<%@ val body: String %>
<%@ val model: fonttheater.models.FontTheatreModel %>

#use (config/config.tpl) as config

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="imagetoolbar" content="no" />
    <meta name="MSSmartTagsPreventParsing" content="true" />
    <title>Fontface</title>
    <link rel="stylesheet" type="text/css" href="${config.baseUriResources}/master.css?1301953816" />
    <!--[if IE 6]>
       <link rel="stylesheet" type="text/css" media="screen" href="http://cdn.shopify.com/static/stylesheets/ie6.css?1301953805" /> 
    <![endif]-->
    <!--[if IE 7]>
       <link rel="stylesheet" type="text/css" media="screen" href="http://cdn.shopify.com/static/stylesheets/ie7.css?1301953807" /> 
    <![endif]-->

    <script type='text/javascript' src='${config.baseUriResources}/js/jquery-1.6.1.min.js'></script>
    ${render("/includes/fontTheatreHtmlHead.tpl", Map("model" -> model))}
  </head>

  <body style="background:#fff">
    ${render("/includes/controllerBar.tpl", Map("model" -> model))}
    ${render("/includes/fontNavigationPanelType1.tpl", Map("model" -> model))}
    <div id="wrapper">
      <div id="masthead">
        <div class="content">
          <span class="logo" style="color: white;">e n t i o <span style="font-weight: normal; color: #ED2657;">l a b<span></span>
          <ul id="nav-primary" class="menu">
            <li><a href="#">Feature Tour</a></li>
            <li><a href="#">Examples</a></li>
            <li><a href="#">FAQ</a></li>
            <li><a href="#">Pricing &amp; Signup</a></li>
          </ul>
        </div><!-- .content -->
      </div><!-- #masthead -->

      <div id="originalbanner">
        <div id="header" class="frontpage">     
        </div> <!-- header -->
      </div><!-- #originabanner-->

      <div id="container" class="frontpage">
        <div class="content" >
          <div id="video-and-details" class="video-and-details">
            <div class="col-6">
              <div id="video-tour">
                <div class="tour-video-wrapper">
                  <h1>This is heading h1</h1>
                  <br/>
                  <h2>This is heading h2</h2>
                  <br/>
                  <h3>This <i>is</i> heading h3</h3>
                  <br/>
                  <h4>This is heading h4</h4>
                  <br/>
                  <h5>This is heading h5</h5>
                  <br/>
                  <h6>This is heading h6</h6>
                </div><!-- .tour-video-wrapper -->
                <div class="tour-video-wrapper">
                  <blockquote class="largeText">
                    &ldquo;Shopify has a super-clean design that makes setting up a <i>store incredibly easy</i>.&rdquo;
                  </blockquote>
                </div><!-- .tour-video-wrapper -->
              </div><!-- .video-tour -->
            </div><!-- col-6 -->

            <div class="col-6 last frontpage-features" >             
              <h2>Gorgeous Storefront</h2>
              <p>Each Shopify store comes with a variety of beautiful themes to choose from.</p>
              <ul>
                <li>
                  <h3>Shopping Cart</h3>
                  Your online store will have its own shopping cart and streamlined checkout.
                </li>
                <li>
                  <h3>100% Customizable</h3>
                  Use your own HTML &amp; CSS and have complete control over the look and feel of your online store.
                </li>
                <li>
                  <h3>Super Secure</h3>
                  We have a dedicated team of security experts that make sure your e-commerce site is as secure as possible.
                </li>
                <li>
                  <h3>MONEY BACK</h3>
                  We have a dedicated team of security experts that make sure your e-commerce site is as secure as possible.
                </li>
              </ul>
            </div> <!-- col-6 -->            
          </div><!-- .video-and-details -->
        </div><!-- .content -->      
      </div> <!-- container -->

      <div id="bottom-signup">
        <div class="content banner">
          <a href="#">Take the Tour</a> <span>or</span>
          <a href="#" class="button"><img src="/static/images/buttons/btn-pricing-signup-lighter.gif?1250106533" width="188" height="61" alt="sign up" /></a>
        </div>
      </div>

      <div id="footer">
        <div id="footer-wrapper">
          <div class="content smallText">
            <div class="col-3">
              <h3>Features</h3>
              <ul>
                <li><a href="#">Overview</a></li>
                <li><a href="#">Running Your Store</a></li>
                <li><a href="#">Marketing</a></li>
                <li><a href="#">Customize</a></li>
                <li><a href="#">Hosting &amp; Security</a></li>
                <li><a href="#">App Store</a></li>
                <li><a href="#">Feature List</a></li>
              </ul>
            </div>
            <div class="col-3">
              <h3>Resources</h3>
              <ul>
                <li><a href="#">Shopify Wiki</a></li>
                <li><a href="#">Technical Support</a></li>
                <li><a href="#">Shopify Forums</a></li>
                <li><a href="#">App Store</a></li>

                <li><a href="#">Theme Store</a></li>
                <li><a href="#">API Documentation</a></li>
                <li><a href="#">Shopify Developers</a></li>
                <li><a href="#">Shopify Partner Program</a></li>
              </ul>
            </div>
            <div class="col-3">
              <h3>Shopify</h3>
              <ul>
                <li><a href="#">About Us</a></li>
                <li><a href="#">Careers</a></li>
                <li><a href="#">Blog</a></li>
                <li><a href="#">Terms of Service</a></li>
                <li><a href="#">Privacy</a></li> 
                <li><a href="#">Press</a></li> 
                <li><a href="#">Videos</a></li> 
              </ul>
            </div>
            <div class="col-3 contact-us last ">
              <h3>Contact us</h3>
              <ul>
                <li><img src="http://cdn.shopify.com/static/images/icons/phone16.gif?1250106533" width="12" height="12" alt="Call Us" />1.888.746.7439</li>
                <li><img src="http://cdn.shopify.com/static/images/icons/email16.gif?1250202154" width="12" height="12" alt="Email Us" /><a href="#/">Email us</a></li>
                <li><img src="http://cdn.shopify.com/static/images/icons/twitter16.gif?1250202154" width="12" height="12" alt="Twitter" /><a href="#">Twitter</a></li>
              </ul>
            </div>
          </div><!-- .content -->

          <div id="copyright" class="center clear smallText" >
            <p>&copy; 2006-2011 Jaded Pixel Technologies Inc. | Shopify - A shop in minutes, a business for life&trade;</p>
          </div><!-- #copyright -->
        </div><!-- #footer-wrapper -->
      </div><!-- #footer -->
    </div><!-- #wrapper -->
  </body>
</html>