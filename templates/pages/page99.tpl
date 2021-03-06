<%@ val model: fonttheater.models.FontTheatreModel %>

#{
	val _baseUriResources = "http://ec2-46-137-74-84.eu-west-1.compute.amazonaws.com:9003/public/fontface"
	val baseUriResources = "/public/fontface"
	val bodyFontSize = "14px"
}#


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="no-NO" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
      <head>
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/> 
      <title>Bieltvedt Rallysport</title>
      <link rel="stylesheet" href="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/design-templates/design-03/themes/theme-01/style.css?v=2" type="text/css" media="screen"/>
      <style type="text/css">.logo a.logo {margin-top:32px;margin-bottom:30px;}</style>
      <!--[if IE 7]>
         <link rel="stylesheet" href="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/design-templates/design-03/themes/theme-01/style_ie7.css" type="text/css" media="screen" />
      <![endif]-->
      <% render("../includes/fontTheatreHtmlHead.tpl", Map("model" -> model)) %>
   </head>

   <body class="home blog">
   	  <% render("../includes/fontNavigationPanelType1.tpl", Map("model" -> model)) %>
      <div class="other-background">
         <div class="wrap">   
            <table class="logo layoutTable" cellspacing="0" cellpadding="0">
              <tbody>
                <tr>
                  <td style="vertical-align: middle;"><a href="/"><img src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/design-templates/design-03/themes/theme-01/images/logo/logo-bieltvedt-rallysport_w340_transparent.gif"/></a></td>
                  <td style="padding-left: 20px;"><img src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/design-templates/design-03/themes/theme-01/images/header/header-bil-02.gif"/></td>
                  <td style="vertical-align: bottom; text-align: right; padding-bottom: 1px;"><img style="vertical-align: bottom;" width="300" height="189" src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/design-templates/design-03/themes/theme-01/images/header/header-foreground-image-2_h189_blur.gif"/></td>
                </tr>
              </tbody>
            </table>
            <!--        
            <div class="logo">
              <div class="left" style="margin-top: 60px;"><a href="/"><img src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/design-templates/design-03/themes/theme-01/images/logo/logo-bieltvedt-rallysport_w340_transparent.gif"/></a></div>
              <div class="left" style="margin-left: 80px;"><img src="http://d27fn7m5pkax2k.cloudfront.net/design-templates/design-template-1-v1/rally-images/header-bil-02.gif"/></div>
              <div class="right"><img width=240" src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/design-templates/design-03/themes/theme-01/images/header/header-foreground-image-2_h230.gif"/></div>              
            </div>
            -->
         </div>
      </div>
      <div class="header">
         <div class="wrap" style="z-index:9999; position:relative;">
            <div class="right-menu">
              <ul id="menu-menu" class="main-menu sf-js-enabled">
                  <li class="menu-item current-menu-item"><a href="/">Hjem<br class="clear"><span class="numbers"></span></a></li>
                  <li class="menu-item"><a href="/screen/om-oss">Om oss<br class="clear"><span class="numbers"></span></a></li>
                  <li class="menu-item"><a href="/screen/bilen">Bilen<br class="clear"><span class="numbers"></span></a></li>
                  <li class="menu-item"><a href="/screen/stoettespillere">Støttespillere<br class="clear"><span class="numbers"></span></a></li>
                  <li class="menu-item"><a href="/screen/blogg">Blogg<br class="clear"><span class="numbers"></span></a></li>
                  <li class="menu-item"><a href="/screen/fotoalbum?imageAlbumId=image-album-44.xml">Fotoalbum<br class="clear"><span class="numbers"></span></a></li>
                  <li class="menu-item"><a href="/screen/video">Video<br class="clear"><span class="numbers"></span></a></li>
                  <li class="menu-item"><a href="/screen/gjestebok-vis">Gjestebok<br class="clear"><span class="numbers"></span></a></li>
                  <li class="menu-item"><a href="/screen/kontakt-oss">Kontakt oss<br class="clear"><span class="numbers"></span></a></li>
                  <li class="menu-item last">
                    <a class="sf-with-ul" href="/?page_id=27">Mer<br class="clear"><span class="numbers"></span><span class="sf-sub-indicator"> »</span></a>
                    <ul class="sub-menu">
                        <li class="menu-item"><a href="/screen/medieomtale">MEDIEOMTALE</a></li>
                        <li class="menu-item"><a href="/screen/terminliste">TERMINLISTE</a></li>
                        <li class="menu-item"><a href="/screen/merittliste">MERITTLISTE</a></li>
                    </ul>
                  </li>
              </ul>
            </div>
         </div>
            <div class="white-background">
               <div class="vertical-border"></div>
               <div class="wrap">
                 <div class="clear"></div>
                 <table class="sponsorTable">
                    <tbody>
                      <!--
                       <tr>                                             
                          <td class="sponsorTableTd" style="width: 45%;"><center><a href="http://www.bosch-pt.no" target="_blank"><img src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/design-templates/design-03/themes/theme-01/images/sponsor-logo/bosch-logo_h70.jpg"/></a></center></td>
                          <td class="sponsorTableTd" style="width: 35%;"><center><a href="http://www.follotruckutleie.no" target="_blank"><img width="284" height="39" src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/design-templates/design-03/themes/theme-01/images/sponsor-logo/logo-follo-truckutleie_w284.png"/></a></center></td>
                         <td class="sponsorTableTd" style="width: 20%;"><center><a href="http://www.bjaalidsautoglass.no" target="_blank"><img width="127" height="70" src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/design-templates/design-03/themes/theme-01/images/sponsor-logo/sponsor-logo-bjaalids-autoglass_w127h70.gif"/></a></center></td>
                       </tr>
                      -->
                       <tr>                                             
                          <td class="sponsorTableTd" style="width: 35%;"><center><a href="http://www.bosch-pt.no" target="_blank"><img src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/design-templates/design-03/themes/theme-01/images/sponsor-logo/bosch-logo_h70.jpg"/></a></center></td>
                          <td class="sponsorTableTd" style="width: 30%;"><center><a href="http://www.follotruckutleie.no" target="_blank"><img width="284" height="39" src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/design-templates/design-03/themes/theme-01/images/sponsor-logo/logo-follo-truckutleie_w284.png"/></a></center></td>
                            <td class="sponsorTableTd" style="width: 15%;"><center><a href="http://www.eninorge.com" target="_blank"><img width="58" height="70" src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/design-templates/design-03/themes/theme-01/images/sponsor-logo/eni-logo_h70.png"/></a></center></td>
                          <td class="sponsorTableTd" style="width: 20%;"><center><a href="http://www.bjaalidsautoglass.no" target="_blank"><img width="127" height="70" src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/design-templates/design-03/themes/theme-01/images/sponsor-logo/sponsor-logo-bjaalids-autoglass_w127h70.gif"/></a></center></td>
                       </tr>
                    </tbody>
                 </table>
               </div>
               <div class="vertical-border"></div>
            </div>
      </div>
      <div class="wrap">
            <div class="clear"></div>
            <div>
              <table class="layoutTable" cellspacing="0" cellpadding="0" border="0">
                <tbody>
                  <tr>
                    <td style="width: 760px;">
                      <div>

<!-- Start screenlet 'content1' -->
<!-- WARNING: Screenlet entry 'content1' referenced in screen layout for screen 'om-oss', but is not defined for this screen. -->
<!-- End screenlet 'content1' -->
                      </div>
                      <div>

<!-- Start screenlet 'content-0' -->

<div style="margin-bottom: 40px;">
	<h1>Bieltvedt Rallysport</h1> 
	<p>BSveinung Bieltvedt og Roger Eilertsen danner grunnlaget for Bieltvedt Rallysport, som ble etablert høsten 2004. Satsingsområdet er Norgesmesterskapet i rally og siden 2004 har teamet opplevd mange oppturer. Hele tre NM titler, hvorav den siste kom i "keiserklassen" for firehjulsdrevne biler. I tillegg har Sveinung vunnet en rekke andre mesterskap, som feks. Norgescup, Peugeot Super Cup, Fiesta Sporting Throphy og Subaru Rally Cup. Som om ikke det var nok, vant også Roger NM for kartlesere i 2010!</p>
	<p>Målsettingen fremover er til enhver tid å vinne løp og NM tittelen i toppklassen for firehjulsdrevne biler. Drømmen på sikt er å kunne oppgradere maskinparken til den nye S2000 bilen.</p>
	<p>For at Bieltvedt Rallysport skal kunne konkurrere på toppnivå i Norge, kreves det mer enn fører og kartleser. Med oss på laget har vi en etterhvert svært så rutinert mekanikergjeng som sørger for at bil og utstyr holder ut helt til målstreken, gang etter gang. Verdt å nevne er det også at Olav Bodilsen fra Oslo er med som Sveinung og Roger's trener, samt at Lars Brænna fra Hvitsten bistår sponsorarbeidet.</p>
	<p>Sammen med våre sponsorer og støttespillere danner dette grunnlaget for det som gjør det mulig for oss å kjempe der vi er; i toppen av norsk rally!</p>
</div>
<!-- End screenlet 'content-0' -->

<!-- Start screenlet 'content' -->

<a name="teamet"></a>
<div class="article">
	<h2>Teamet</h2>
	<div>
			<table class="teamProfile" style="margin-left: 0px;">
				<tr>
					<td colspan="2">
						<h4 style="margin-top: 0px; margin-bottom: 6px;">Sveinung Bieltvedt</h4>
						<div class="line" style="margin-bottom: 16px;"></div>
					</td>
				</tr>
				<tr>
					<td class="Post" valign="top" width="180">
						<ul class="squarepoint" style="margin-top: 6px;">
								<li>Fører</li>
								<li>25 år</li>
								<li>Bor i Ski</li>
								<li>Flymotormekaniker på Kjeller. Fagbrev sommeren 2006</li>
								<li>Samboer med Kine Berntsen</li>
						</ul>
					</td>
					<td style="padding-left: 20px;">
							<img src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/images/teamet/sveinung-mai-2008-1_w250.png" style="border:1px solid #8F7A70; padding:3px;"/>
					</td>
				</tr>
			</table>
			<br/>
			<br/>
			<br/>
			<table class="teamProfile" style="margin-left: 0px;">
				<tr>
					<td colspan="2">
						<h4 style="margin-top: 0px; margin-bottom: 6px;">Roger Eilertsen</h4>
						<div class="line" style="margin-bottom: 16px;"></div>
					</td>
				</tr>
				<tr>
					<td class="Post" valign="top" width="180">
						<ul class="squarepoint" style="margin-top: 6px;">
								<li>Kartleser</li>
								<li>27 år</li>
								<li>Bor i Ytre Enebakk</li>
								<li>Jobber som glassmontør for Bjålids Autoglass</li>
								<li>Til info er han helt lik sin bror Rune som også er kartleser, men det er altså ikke samme person...</li>
								<li>Forlovet med Marthe. Sammen er de foreldre til vesle Sara</li>
						</ul>
					</td>
					<td style="padding-left: 20px;">
							<img src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/images/teamet/roger-mai-2008-1_w250.png" style="border:1px solid #8F7A70; padding:3px;"/>
					</td>
				</tr>
			</table>
			<br/>
			<br/>
			<br/>
			<table class="teamProfile" style="margin-left: 0px;">
				<tr>
					<td colspan="2">
						<h4 style="margin-top: 0px; margin-bottom: 6px;">André Aarmo</h4>
						<div class="line" style="margin-bottom: 16px;"></div>
					</td>
				</tr>
				<tr>
					<td class="Post" valign="top" width="180">
						<ul class="squarepoint" style="margin-top: 6px;">
								<li>Mekaniker</li>
								<li>24 år</li>
								<li>Leier husly i Kråkstad</li>
								<li>Utdannet biloppretter og jobber på Oppegård Bil</li>
								<li>Volvopatriot (og da spesielt 240) av hele sitt hjerte!</li>
								<li>Kjæreste med Barbro</li>
						</ul>
					</td>
					<td style="padding-left: 20px;">
							<img src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/images/teamet/andre.jpg" style="border:1px solid #8F7A70; padding:3px;"/>
					</td>
				</tr>
			</table>
			<br/>
			<br/>
			<br/>
			<table class="teamProfile" style="margin-left: 0px;">
				<tr>
					<td colspan="2">
						<h4 style="margin-top: 0px; margin-bottom: 6px;">Ole Gunhard Ausland</h4>
						<div class="line" style="margin-bottom: 16px;"></div>
					</td>
				</tr>
				<tr>
					<td class="Post" valign="top" width="180">
						<ul class="squarepoint" style="margin-top: 6px;">
								<li>Mekaniker</li>
								<li>31 år</li>
								<li>Nyinnflyttet i eget hus i Tomter</li>
								<li>Odelsgutt, kjører blikk og rør for Roald og Sønn AS</li>
								<li>Singel</li>
						</ul>
					</td>
					<td style="padding-left: 20px;">
							<img src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/images/teamet/ole-gunhard.gif" style="border:1px solid #8F7A70; padding:3px;"/>
					</td>
				</tr>
			</table>
			<br/>
			<br/>
			<br/>
			<table class="teamProfile" style="margin-left: 0px;">
				<tr>
					<td colspan="2">
						<h4 style="margin-top: 0px; margin-bottom: 6px;">Kristian Prestrud</h4>
						<div class="line" style="margin-bottom: 16px;"></div>
					</td>
				</tr>
				<tr>
					<td class="Post" valign="top" width="180">
						<ul class="squarepoint" style="margin-top: 6px;">
								<li>Mekaniker</li>
								<li>28 år</li>
								<li>Bor på Nordre Løken Hovedgård i Kråkstad</li>
								<li>Utdannet biloppretter. Har tatt over Nordre Løken Gård som han nå driver på heltid</li>
								<li>Samboer med Nina</li>
						</ul>
					</td>
					<td style="padding-left: 20px;">
							<img src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/images/teamet/kristian.gif" style="border:1px solid #8F7A70; padding:3px;"/>
					</td>
				</tr>
			</table>
			<br/>
			<br/>
			<br/>
			<table class="teamProfile" style="margin-left: 0px;">
				<tr>
					<td colspan="2">
						<h4 style="margin-top: 0px; margin-bottom: 6px;">Lasse Pedersen</h4>
						<div class="line" style="margin-bottom: 16px;"></div>
					</td>
				</tr>
				<tr>
					<td class="Post" valign="top" width="180">
						<ul class="squarepoint" style="margin-top: 6px;">
								<li>Mekaniker</li>
								<li>25 år</li>
								<li>Bor på Lambertseter</li>
								<li>Jobber som bilmekaniker hos den lokale Ford-forhandleren Follo AutoCo i Ski</li>
								<li>Singel</li>
						</ul>
					</td>
					<td style="padding-left: 20px;">
							<img src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/images/teamet/lasse.jpg" style="border:1px solid #8F7A70; padding:3px;"/>
					</td>
				</tr>
			</table>
			<br/>
			<br/>
			<br/>
			<table class="teamProfile" style="margin-left: 0px;">
				<tr>
					<td colspan="2">
						<h4 style="margin-top: 0px; margin-bottom: 6px;">Willy Solberg</h4>
						<div class="line" style="margin-bottom: 16px;"></div>
					</td>
				</tr>
				<tr>
					<td class="Post" valign="top" width="180">
						<ul class="squarepoint" style="margin-top: 6px;">
								<li>Mekaniker</li>
								<li>26 år</li>
								<li>Leier hus i Kråkstad</li>
								<li>Selvstendig næringsdrivende som snekker i foretaket Willy Bygg</li>
								<li>Gift med Camilla</li>
						</ul>
					</td>
					<td style="padding-left: 20px;">
							<img src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/images/teamet/willy.gif" style="border:1px solid #8F7A70; padding:3px;"/>
					</td>
				</tr>
			</table>
			<br/>
			<br/>
			<br/>
			<table class="teamProfile" style="margin-left: 0px;">
				<tr>
					<td colspan="2">
						<h4 style="margin-top: 0px; margin-bottom: 6px;">Lars Erik Bieltvedt</h4>
						<div class="line" style="margin-bottom: 16px;"></div>
					</td>
				</tr>
				<tr>
					<td class="Post" valign="top" width="180">
						<ul class="squarepoint" style="margin-top: 6px;">
								<li>Mekaniker</li>
								<li>30 år</li>
								<li>Bor i Kråkstad</li>
								<li>Utdannet flymekaniker, studerer byggteknikk og arkitektur på NLH</li>
								<li>Gift med Eva. Far til Kari og Tor</li>
						</ul>
					</td>
					<td style="padding-left: 20px;">
							<img src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/images/teamet/lars-erik.gif" style="border:1px solid #8F7A70; padding:3px;"/>
					</td>
				</tr>
			</table>
			<br/>
			<br/>
			<br/>
			<table class="teamProfile" style="margin-left: 0px;">
				<tr>
					<td colspan="2">
						<h4 style="margin-top: 0px; margin-bottom: 6px;">Lars Brænna</h4>
						<div class="line" style="margin-bottom: 16px;"></div>
					</td>
				</tr>
				<tr>
					<td class="Post" valign="top" width="180">
						<ul class="squarepoint" style="margin-top: 6px;">
								<li>Team Manager</li>
								<li>46 år</li>
								<li>Bor i Hvitsten</li>
								<li>Er en av hovedpersonene bak familieforetaket NorCan Flis & Våtromsservice</li>
								<li>Sammen med samboer Katalin har de arvingen Harald Ivo</li>
						</ul>
					</td>
					<td style="padding-left: 20px;">
							<img src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/images/teamet/lars.jpg" style="border:1px solid #8F7A70; padding:3px;"/>
					</td>
				</tr>
			</table>
			<br/>
			<br/>
			<br/>
			<table class="teamProfile" style="margin-left: 0px;">
				<tr>
					<td colspan="2">
						<h4 style="margin-top: 0px; margin-bottom: 6px;">Olav Bodilsen</h4>
						<div class="line" style="margin-bottom: 16px;"></div>
					</td>
				</tr>
				<tr>
					<td class="Post" valign="top" width="180">
						<ul class="squarepoint" style="margin-top: 6px;">
								<li>Trener, med hovedfokus på kjøreteknikk og noter</li>
								<li>52 år</li>
								<li>Bor på Fagerlia i Oslo</li>
								<li>Jobber til daglig som konsulent i Floratine (sportsgras som spesialfelt)</li>
								<li>Ugift, har fra tidligere ekteskap datteren Kari Marte</li>
						</ul>
					</td>
					<td style="padding-left: 20px;">
					</td>
				</tr>
			</table>
			<br/>
			<br/>
			<br/>
			<table class="teamProfile" style="margin-left: 0px;">
				<tr>
					<td colspan="2">
						<h4 style="margin-top: 0px; margin-bottom: 6px;">Marthe Røkeness</h4>
						<div class="line" style="margin-bottom: 16px;"></div>
					</td>
				</tr>
				<tr>
					<td class="Post" valign="top" width="180">
						<ul class="squarepoint" style="margin-top: 6px;">
								<li>Catering</li>
						</ul>
					</td>
					<td style="padding-left: 20px;">
					</td>
				</tr>
			</table>
			<br/>
			<br/>
			<br/>
			<table class="teamProfile" style="margin-left: 0px;">
				<tr>
					<td colspan="2">
						<h4 style="margin-top: 0px; margin-bottom: 6px;">Kine Berntsen</h4>
						<div class="line" style="margin-bottom: 16px;"></div>
					</td>
				</tr>
				<tr>
					<td class="Post" valign="top" width="180">
						<ul class="squarepoint" style="margin-top: 6px;">
								<li>Catering</li>
						</ul>
					</td>
					<td style="padding-left: 20px;">
					</td>
				</tr>
			</table>
			<br/>
			<br/>
			<br/>
			<table class="teamProfile" style="margin-left: 0px;">
				<tr>
					<td colspan="2">
						<h4 style="margin-top: 0px; margin-bottom: 6px;">Eva Bieltvedt</h4>
						<div class="line" style="margin-bottom: 16px;"></div>
					</td>
				</tr>
				<tr>
					<td class="Post" valign="top" width="180">
						<ul class="squarepoint" style="margin-top: 6px;">
								<li>Catering</li>
						</ul>
					</td>
					<td style="padding-left: 20px;">
					</td>
				</tr>
			</table>
			<br/>
			<br/>
			<br/>
	</div>
</div>
<!-- End screenlet 'content' -->
                      </div>
                    </td>
                    <td>
                      <div class="sidebar">

<!-- Start screenlet 'races' -->

	<div class="Block">
		 <div class="Block-tl"></div>
		 <div class="Block-tr"></div>
		 <div class="Block-bl"></div>
		 <div class="Block-br"></div>
		 <div class="Block-tc"></div>
		 <div class="Block-bc"></div>
		 <div class="Block-cl"></div>
		 <div class="Block-cr"></div>
	
		 <div class="Block-cc"></div>
		 <div class="Block-body">
			  <div class="BlockHeader">
					<div class="l"></div>
					<div class="r"></div>
					<div class="header-tag-icon">
						 <div class="t">Løp</div>
					</div>
			  </div>
			  <div class="BlockContent">
					<div class="BlockContent-body">
		<h4 style="margin-bottom: 4px; font-weight: bold">Neste løp:</h4>
		<p style="margin: 0px;"><a href="http://www.rallytelemark.no/" target="_blank">Rally Telemark (NM)</a></p>
		<p style="margin: 0px;">8. september</p>
		<br/>
		<h4 style="margin-bottom: 4px; font-weight: bold">Forrige løp:</h4>
		<p style="margin: 0px;"><a href="http://www.ahrally.no/" target="_blank">	Aurskog-Høland Rally (NM)</a></p>
		<p style="margin: 0px;">2. juni</p>
					</div>
			  </div>
		 </div>
	</div>

<!-- End screenlet 'races' -->

<!-- Start screenlet 'standings' -->

	<div class="Block">
		 <div class="Block-tl"></div>
		 <div class="Block-tr"></div>
		 <div class="Block-bl"></div>
		 <div class="Block-br"></div>
		 <div class="Block-tc"></div>
		 <div class="Block-bc"></div>
		 <div class="Block-cl"></div>
		 <div class="Block-cr"></div>
	
		 <div class="Block-cc"></div>
		 <div class="Block-body">
			  <div class="BlockHeader">
					<div class="l"></div>
					<div class="r"></div>
					<div class="header-tag-icon">
						 <div class="t">NM klasse 2 2012</div>
					</div>
			  </div>
			  <div class="BlockContent">
					<div class="BlockContent-body">
		<table width="160">
			<tbody>
						<tr class="bold">
							<td style="font-weight: bold;">1.</td>
							<td style="font-weight: bold;">Bieltvedt</td>
							<td style="font-weight: bold; text-align: right; padding-right: 12px;">88 p</td>
						</tr>
						<tr class="bold">
							<td style="font-weight: normal;">2.</td>
							<td style="font-weight: normal;">Grøndal</td>
							<td style="font-weight: normal; text-align: right; padding-right: 12px;">82 p</td>
						</tr>
						<tr class="bold">
							<td style="font-weight: normal;">3.</td>
							<td style="font-weight: normal;">Østberg</td>
							<td style="font-weight: normal; text-align: right; padding-right: 12px;">64 p</td>
						</tr>
						<tr class="bold">
							<td style="font-weight: normal;">4.</td>
							<td style="font-weight: normal;">Økseter</td>
							<td style="font-weight: normal; text-align: right; padding-right: 12px;">54 p</td>
						</tr>
						<tr class="bold">
							<td style="font-weight: normal;">5.</td>
							<td style="font-weight: normal;">Steinsvoll</td>
							<td style="font-weight: normal; text-align: right; padding-right: 12px;">40 p</td>
						</tr>
			</tbody>
		</table>
		Etter løp 5 av 7.
					</div>
			  </div>
		 </div>
	</div>
	<div class="Block">
		 <div class="Block-tl"></div>
		 <div class="Block-tr"></div>
		 <div class="Block-bl"></div>
		 <div class="Block-br"></div>
		 <div class="Block-tc"></div>
		 <div class="Block-bc"></div>
		 <div class="Block-cl"></div>
		 <div class="Block-cr"></div>
	
		 <div class="Block-cc"></div>
		 <div class="Block-body">
			  <div class="BlockHeader">
					<div class="l"></div>
					<div class="r"></div>
					<div class="header-tag-icon">
						 <div class="t">NM kartlesere 2012</div>
					</div>
			  </div>
			  <div class="BlockContent">
					<div class="BlockContent-body">
		<table width="160">
			<tbody>
						<tr class="bold">
							<td style="font-weight: bold;">1.</td>
							<td style="font-weight: bold;">Eilertsen</td>
							<td style="font-weight: bold; text-align: right; padding-right: 12px;">88 p</td>
						</tr>
						<tr class="bold">
							<td style="font-weight: normal;">2.</td>
							<td style="font-weight: normal;">Svendsen</td>
							<td style="font-weight: normal; text-align: right; padding-right: 12px;">82 p</td>
						</tr>
						<tr class="bold">
							<td style="font-weight: normal;">3.</td>
							<td style="font-weight: normal;">Andersson</td>
							<td style="font-weight: normal; text-align: right; padding-right: 12px;">64 p</td>
						</tr>
						<tr class="bold">
							<td style="font-weight: normal;">4.</td>
							<td style="font-weight: normal;">Skjærmoen</td>
							<td style="font-weight: normal; text-align: right; padding-right: 12px;">56 p</td>
						</tr>
						<tr class="bold">
							<td style="font-weight: normal;">5.</td>
							<td style="font-weight: normal;">Eriksen</td>
							<td style="font-weight: normal; text-align: right; padding-right: 12px;">43 p</td>
						</tr>
			</tbody>
		</table>
		Etter løp 5 av 7.
					</div>
			  </div>
		 </div>
	</div>

<!-- End screenlet 'standings' -->

<!-- Start screenlet 'rss-norsk-rally' -->

	<div class="Block">
		 <div class="Block-tl"></div>
		 <div class="Block-tr"></div>
		 <div class="Block-bl"></div>
		 <div class="Block-br"></div>
		 <div class="Block-tc"></div>
		 <div class="Block-bc"></div>
		 <div class="Block-cl"></div>
		 <div class="Block-cr"></div>
	
		 <div class="Block-cc"></div>
		 <div class="Block-body">
			  <div class="BlockHeader">
					<div class="l"></div>
					<div class="r"></div>
					<div class="header-tag-icon">
						 <div class="t">Nyheter norsk-rally.com</div>
					</div>
			  </div>
			  <div class="BlockContent">
					<div class="BlockContent-body">
	<ul class="unindented">
			<li>
				<a href="http://www.norsk-rally.com/index.php?option=com_content&view=article&id=8595:klare-for-arets-forste-asfaltlop" target="_blank">Klare for årets første asfaltløp</a>
			</li>
			<li>
				<a href="http://www.norsk-rally.com/index.php?option=com_content&view=article&id=8594:rally-hedemarken-onsker-velkommen" target="_blank">Rally Hedemarken ønsker velkommen</a>
			</li>
			<li>
				<a href="http://www.norsk-rally.com/index.php?option=com_content&view=article&id=8593:andreas-pa-hjemmebane-i-tyskland" target="_blank">Andreas på hjemmebane i Tyskland</a>
			</li>
			<li>
				<a href="http://www.norsk-rally.com/index.php?option=com_content&view=article&id=8592:bli-telemark-mester-i-volvo-original" target="_blank">Bli Telemark mester i Volvo Original!!</a>
			</li>
			<li>
				<a href="http://www.norsk-rally.com/index.php?option=com_content&view=article&id=8588:resultatbors" target="_blank">Resultatbørs</a>
			</li>
	</ul>
					</div>
			  </div>
		 </div>
	</div>

<!-- End screenlet 'rss-norsk-rally' -->

<!-- Start screenlet 'rss-motorsport' -->

	<div class="Block">
		 <div class="Block-tl"></div>
		 <div class="Block-tr"></div>
		 <div class="Block-bl"></div>
		 <div class="Block-br"></div>
		 <div class="Block-tc"></div>
		 <div class="Block-bc"></div>
		 <div class="Block-cl"></div>
		 <div class="Block-cr"></div>
	
		 <div class="Block-cc"></div>
		 <div class="Block-body">
			  <div class="BlockHeader">
					<div class="l"></div>
					<div class="r"></div>
					<div class="header-tag-icon">
						 <div class="t">Nyheter motorsport.no</div>
					</div>
			  </div>
			  <div class="BlockContent">
					<div class="BlockContent-body">
	<ul class="unindented">
			<li>
				<a href="http://www.motorsport.no/wip4/loeb-i-egen-klasse/d.epl?cat=13747&id=1366992&rss=1" target="_blank">Loeb i egen klasse</a>
			</li>
			<li>
				<a href="http://www.motorsport.no/wip4/bremseproblemer-for-oestberg/d.epl?cat=13747&id=1366978&rss=1" target="_blank">Bremseproblemer for Østberg</a>
			</li>
			<li>
				<a href="http://www.motorsport.no/wip4/gundersen-kjoerer-vm/d.epl?cat=13753&id=1365648&rss=1" target="_blank">Gundersen kjører VM</a>
			</li>
			<li>
				<a href="http://www.motorsport.no/wip4/aarets-foerste-paa-asfalt/d.epl?cat=13747&id=1365615&rss=1" target="_blank">Årets første på asfalt</a>
			</li>
			<li>
				<a href="http://www.motorsport.no/wip4/f1-droemmen-lever/d.epl?cat=13749&id=1364927&rss=1" target="_blank">F1-drømmen lever</a>
			</li>
	</ul>
					</div>
			  </div>
		 </div>
	</div>

<!-- End screenlet 'rss-motorsport' -->

<!-- Start screenlet 'rss-wrc.com' -->

	<div class="Block">
		 <div class="Block-tl"></div>
		 <div class="Block-tr"></div>
		 <div class="Block-bl"></div>
		 <div class="Block-br"></div>
		 <div class="Block-tc"></div>
		 <div class="Block-bc"></div>
		 <div class="Block-cl"></div>
		 <div class="Block-cr"></div>
	
		 <div class="Block-cc"></div>
		 <div class="Block-body">
			  <div class="BlockHeader">
					<div class="l"></div>
					<div class="r"></div>
					<div class="header-tag-icon">
						 <div class="t">Nyheter wrc.com</div>
					</div>
			  </div>
			  <div class="BlockContent">
					<div class="BlockContent-body">
	<ul class="unindented">
			<li>
				<a href="http://www.wrc.com/news/saturday-midday-wrap-loeb-on-top-as-rivals-hit-trouble/?fid=17326" target="_blank">Saturday midday wrap: Loeb on top as rivals hit trouble</a>
			</li>
			<li>
				<a href="http://www.wrc.com/news/ss9-latvala-to-second-amid-drama/?fid=17325" target="_blank">SS9: Latvala to second amid drama</a>
			</li>
			<li>
				<a href="http://www.wrc.com/news/arena-panzerplatte-test-set-to-thrill/?fid=17324" target="_blank">Arena Panzerplatte test set to thrill</a>
			</li>
			<li>
				<a href="http://www.wrc.com/news/latvala-to-fight-for-germany-podium/?fid=17321" target="_blank">Latvala to fight for Germany podium</a>
			</li>
			<li>
				<a href="http://www.wrc.com/news/ss8-sordo-blasts-into-third/?fid=17322" target="_blank">SS8: Sordo blasts into third</a>
			</li>
	</ul>
					</div>
			  </div>
		 </div>
	</div>

<!-- End screenlet 'rss-wrc.com' -->
                      </div>
                    </td>
                  </tr>
                </tbody>
              </table>                  
            </div>
      </div>
        <div>
            <div class="footer">

                <div class="clear"></div>
                <div class="footer-content">        
                    <div class="horizontal-widgets-holder">
                        <div class="clear"></div>
                    </div> 
                </div>
            </div>
            <div class="copyright">
                <div class="copyright-content">
                    <div class="copyright-glow">        
                      <p class="static-text" style="text-align: center;"><a href="/">Bieltvedt Rallysport</a> &copy; 2012 | Bilder fra bl.a. <a href="http://www.rallybilder.net">www.rallybilder.net</a> og Thomas Myhre Hansen<br>&nbsp;</p>
                    </div>         
                </div>
            </div>
        </div>
   </body>
</html>