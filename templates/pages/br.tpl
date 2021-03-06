<%@ val model: fonttheater.models.FontTheatreModel %>
<%@ val parameters: application.controller.Parameters %>

#{
	val baseUriResources = "/public/fontface"
	val _baseUriResources = "http://ec2-46-137-74-84.eu-west-1.compute.amazonaws.com:9003/public/fontface"
	val bodyFontSize = "14px"
}#


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="no-NO" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
      <head>
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/> 
      <title>Bieltvedt Rallysport</title>
      <link rel="stylesheet" href="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/design-templates/design-03/themes/theme-01/style.css?v=2" type="text/css" media="screen"/>
      <style type="text/css">
        .logo a.logo {
          margin-top:32px;
          margin-bottom:30px;
        }

        .ingress {
          font-weight: 600;
        }

        body {
           color: #666666;
           _color: #666666;   
        }
      </style>
      <!--[if IE 7]>
         <link rel="stylesheet" href="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/design-templates/design-03/themes/theme-01/style_ie7.css" type="text/css" media="screen" />
      <![endif]-->
   </head>

   <body class="home blog">
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
                  <li class="menu-item"><a href="/screen/bilen">Bilen ${parameters.getSingleValue("farge")}<br class="clear"><span class="numbers"></span></a></li>
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
<div class="featured-area">
  <div class="featured-area-content">
      <div style="width: 217px; height: 118px; border: thin solid #999999; padding: 12px;" class="featured-box">
          <div class="title">Siste oppdateringer</div>
          <ul style="font-size: 13px;">
              <li><span><a href="#2012-09-10">Enda ett skritt nærmere NM gull</a></span></li>
              <li><span><a href="#2012-08-23">Vi nærmer oss NM finale!</a></span></li>
              <li><span><a href="#2012-06-04">2. plass totalt i Aurskog-Høland Rally, fortsatt ledelse i NM</a></span></li>
          </ul>
      </div>
      <div style="width: 413px; height: 118px; border: thin solid #999999; padding: 12px;" class="featured-box last-featured">
          <div class="title">Siste blogginnlegg</div>
          <div style="font-size: 12px;">
            <table border="0" width="100%" cellspacing="0" cellpadding="0" style="padding: 0px; marging: 0px; border: none; font-size: 13px;">
              <tbody><tr>                              
                <td valign="top" style="vertical-align: top;">
                  <p style="margin-bottom: 4px;"><i>Sveinung, 13. september 2012 10:42:</i></p>
                  <p style="margin-bottom: 4px;"><b><a href="../screen/blogg">2-bil's team på Rally Hedmark</a></b></p>
                  <p style="margin: 0px;"><span>Lars Erik og Kristian Prestrud skal kjøre den her om snaue to uker. (...)</span>&nbsp;&nbsp;<span class="textlink"><a href="../screen/blogg">Mer...</a></span></p>
                </td> 
                <td valign="top" style="vertical-align: top;"><img src="http://bieltvedtrallysport.no/resources/blog-images/blog-post-2012.09.13-10.42.40-001-image-1.jpg" style="height: 78px; border: solid 1px #8F7A70; padding: 2px; margin-left: 12px;"></td>
              </tr>
            </tbody></table>
          </div>
      </div>   
  </div>
</div>

<!-- Start screenlet 'content1' -->
<!-- WARNING: Screenlet entry 'content1' referenced in screen layout for screen 'om-oss', but is not defined for this screen. -->
<!-- End screenlet 'content1' -->
                      </div>
                      <div>

<!-- Start screenlet 'content-0' -->
<!-- WARNING: Screenlet entry 'content-0' referenced in screen layout for screen 'forside', but is not defined for this screen. -->
<!-- End screenlet 'content-0' -->

<!-- Start screenlet 'content' -->

<style>
div.article {
  padding: 0px;
}

div.article img {
  margin: 0px;
  padding: 3px;
  border: 1px solid #8F7A70;
}

div.article table {
  margin: 0px 0px 10px 10px;
}

.article td {
  border-style: none;
} 

.article img {
  border: 1px solid #666666;
  margin-bottom: 5px;
  margin-left: 5px;
  margin-right: 5px;
  padding: 3px;
}</style>

<div style="clear: both;"></div>
<a name="2012-09-10"></a>
<div class="article"> 
    <p style="padding-bottom: 0px; margin-bottom: 0px; font-size: 0.9em;">Sveinung, 10. september 2012</p>
    <h3 style="padding-top: 0px; margin-top: 0px;">Enda ett skritt nærmere NM gull</h3>
  <table style="float: right;">
      <tr><td><img border="0" src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/images/diverse/rally-telemark-2012/2012-rally-telemark-1_w285.jpg" width="285" height="190" style="float: right; margin-bottom: 0px;" /></td></tr>
      <tr><td style="text-align: right; padding-right: 6px; padding-top: 0px; font-size:80%">Foto: Henning Friis, PRL</td></tr>
    </table>
  <p class="ingress">Alt gikk vår vei under Rally Telemark! Vi vant og fikk med det med oss full poengpott, mens vår nærmeste utfordrer Anders Grøndal/Trond Svendsen fikk problemer underveis og ramlet ned til 3. plass og langt færre poeng enn de trengte. De var nødt til å vinne (forutsatt at vi ikke roter oss bort i finaleløpet), mens det for oss ikke var like nødvendig.</p>
  <p>Grøndal/Svendsen vant SS1 mens vi tok igjen på SS2 og gikk forbi med drøyt to sekunder. Det var på løpets tredje fartsprøve at dramatikken oppstod, da Anders Grøndal først traff noe i veigrøfta, pungterte og i påfølgende sving kjørte av veien. De kom seg videre, men med masse tekniske problemer med på lasset. Blant annet røyk servostyringen, noe som ikke lot seg ordne på det 20 minutter lange serviceoppholdet. Dermed var Anders sjanseløs på seier, og vi fikk en behagelig luke ned til nestemann som nå var Peder Økseter. Med over halvminuttet i ledelse, dreide det seg for oss om å trygge ledelsen inn til mål. Peder kjørte fort utover i løpet, så vi måtte passe oss selv med en så god ledelse.</p>
  <p>På tross av ett par spenningsmomenter mot slutten av løpet (trolig som følge av litt uoppmerksomhet fra meg) lykkes vi med å holde vår posisjon og vant sesongens mest komfortable seier. Dette gir oss et solid forsprang i NM både for Roger og meg, og uavhengig av hva våre konkurrenter måtte finne på, skal det holde å være blant de fire beste i finaleløpet for å vinne NM titlene. Vi kommer derfor til å justere ned fortenning og turbotrykk, kjøre med ekstra reservehjul osv. fra start av i løpet, for så å se ann underveis i løpet om vi er nødt til å gå tilbake til "race modus" for å lykkes. </p>
  <p>Rally Telemark var et nytt og ukjent løp for alle. Det er derfor ekstra morsomt å kunne rapportere at dette var en kjempesuksess hvor alt gikk som smurt og ikke minst på morsomme og krevende grusveier! Vi håper derfor å måtte ta turen til Notodden også neste år:-)</p>
  <p>NM finalen Rally Hedemarken er mindre enn to uker frem i tid, så om kort tid begynner vi på ny med forberedelser og preparering av bil. Ny oppdatering kommer om ikke lenge:-)</p>
</div>

<div class="horizontal-separator"></div>

<div style="clear: both;"></div>
<a name="2012-08-23"></a>
<div class="article"> 
    <p style="padding-bottom: 0px; margin-bottom: 0px; font-size: 0.9em;">Sveinung, 23. august 2012</p>
    <h3 style="padding-top: 0px; margin-top: 0px;">Vi nærmer oss NM finale!</h3>
  <p class="ingress">Sommerferien er for lengst over, og rally står til de grader i fokus om dagen. Det er ikke rart, da de to viktigste løpene i Roger's og min karriere står for tur. Rally NM avsluttes i september, og både Roger og jeg har alle muligheter for å gjøre karrierebeste med NM gull i toppklassen!</p>

  <p>Sist helg tok vi turen til Sverige og SAAB-byen Trollhättan for å kjøre som "föråkare" i Västrallyt. Dette løpet inngår i det svenske mesterskapet, så eliten var på plass. Föråkare vil si å kjøre før første startende for å sjekke publikumsplassering, teste ut tidskontroll-personalet ved start/mål osv. Vi er altså ikke med i selve løpet, men tar tider selv og sammenligner med deltakerne som referanse på vårt eget tempo. Dette gjorde vi som første ledd i treningen frem mot Rally Telemark, 8. september. Rally Telemark er et nytt løp av året, så notene vi lager dagen før løpet blir svært viktig for resultatet. Notetrening fikk vi også når vi kjørte i Sverige, da dette også var ukjent terreng for oss. Og selvfølgelig ga det god kjøretrening også. I starten lå vi noe etter de aller raskeste, men på siste SS var vi kun 3 sekunder bak Jimmy Joge som var raskest, på tross av at han kjempet om SM seier og vi strengt tatt ikke hadde all verden å kjøre for. Det lover godt, og vi er spente på tempoet vi kan klare å holde i kommende NM løp.</p>

  <p>I kjølvannet av at vi har mistet TOOLS Norge AS som sponsor, jobbes det med å få inn nødvendige midler både for i år og 2013. Det er derfor hyggelig å ønske Nordisk Dekk Import AS velkommen med på laget. Vi har foreløpig en avtale for resten av 2012, hvor merkevaren ENI Oils skal frontes. ENI er det som tidligere het Agip, kjent fra både Formel 1 og MotoGP, samt "alle" bensinstasjonene nedover i Europa. Vi er alt i gang med å prøve ut produktene på rallybilen, og håper blant annet at resultatet blir mindre motstand i drivverket med ny og tynnere olje.</p>
</div>

<div class="horizontal-separator"></div>

<div style="clear: both;"></div>
<a name="2012-06-04"></a>
<div class="article"> 
    <p style="padding-bottom: 0px; margin-bottom: 0px; font-size: 0.9em;">Sveinung, 4. juni 2012</p>
    <h3 style="padding-top: 0px; margin-top: 0px;">2. plass totalt i Aurskog-Høland Rally, fortsatt ledelse i NM</h3>
  <table style="float: right;">
      <tr><td><img border="0" src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/images/diverse/aurskog-hoeland-rally-2012/2012-aurskog-hoeland-rally-1_w285.jpg" width="285" height="190" style="float: right; margin-bottom: 0px;" /></td></tr>
      <tr><td style="text-align: right; padding-right: 6px; padding-top: 0px; font-size:80%">Foto: Henning Friis, PRL</td></tr>
    </table>
  <p class="ingress">Det skulle bli enda en jevn og interessant dag på Bjørkelangen. I vår klasse var det ikke uventet Anders Grøndal som sammen med Roger og meg kjørte fortest. Anders var litt raskere enn meg på de brede, harde grusveiene, mens jeg såvidt tok noen tiendeler og sekunder på de røffere og mer krevende veiene. Alt i alt var Anders raskere enn oss denne gangen, og da vi etterhvert så at Anders klarte å svare på våre angrep, ble Roger og jeg enige om at vi gjorde lurest i å "safe" til mål mot slutten av løpet. Vi klarte ikke kjøre igjen tiden vi hadde tapt til Grøndal, derfor la vi heller inn en litt større sikkerhetsmargin for å nå mållinjen. En medvirkende grunn til denne litt defensive taktikken var at Mads Østberg ga oss en gavepakke i NM sammenheng med å kjøre av veien og bryte løpet.</p>
  <p>Litt småproblemer skulle det også bli underveis i løpet. Jeg rotet bort dyrebare sekunder på en snurring i kanskje løpets krappeste sving. Og frem til første service mistet jeg litt godfølelsen med bremsene, trolig fordi skiver og klosser var blitt polerte, dvs. ikke like god friksjon i bremsene lenger. Servicegjengen ordna dette på service, så store hinderet var det ikke. </p> 
  <p>Situasjonen i NM er nå minst like interessant som den var før løpet. Mads Østberg er avhengig av at både Anders og jeg gjør det unormalt dårlig i ett av de to siste løpene. Anders vinner NM gull hvis han vinner gruppe N i begge de resterende løpene. Med 6 poengs ledelse i NM til nettopp Anders Grøndal / Trond Svendsen, trenger Roger og jeg å slå Anders og Trond i ett av de to siste løpene, forutsatt at ingenting spesielt hender i det andre løpet. Mange teorier her, og når vi veit at det meste kan og vil skje, er det liten tvil om at spenningsnivået blir veldig stort etterhvert som vi nærmer oss NM finalen. Anders og Trond har (og har hatt gjennom hele året) fordel av å ligge bak å kontrollere hva jeg til enhver tid gjør, kjøre etter bremsepunktene mine osv. samt at de har en psykologisk fordel av å ha "ingenting" å tape. Min spådom er at Grøndal vinner Rally Telemark, og vi vinner Rally Hedemarken.</p> 
  <p>Nå blir det "sommerferie" i rallysammenheng for oss. Vi i Bieltvedt Rallysport drar på fisketur og slapper av 22.-24. juni, for så å komme max laddet til neste NM løp; Rally Telemark. Dette løpet har aldri blitt kjørt før, dermed har vi ingen erfaring herfra. Det skulle blitt kjørt i fjor, men regn og oversvømmelser gjorde at arrangøren måtte avlyse. Vi har mye å kjøre for, så full skjerpings er alfa&omega i september!</p>
</div>

<div class="horizontal-separator"></div>

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
    <p style="margin: 0px;"><a href="http://www.rally-hedemarken.no/" target="_blank">Rally Hedemarken, Hamar (NM)</a></p>
    <p style="margin: 0px;">22. september</p>
    <br/>
    <h4 style="margin-bottom: 4px; font-weight: bold">Forrige løp:</h4>
    <p style="margin: 0px;"><a href="http://www.rallytelemark.no/" target="_blank">Rally Telemark (NM)</a></p>
    <p style="margin: 0px;">8. september</p>
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
              <td style="font-weight: bold; text-align: right; padding-right: 12px;">118 p</td>
            </tr>
            <tr class="bold">
              <td style="font-weight: normal;">2.</td>
              <td style="font-weight: normal;">Grøndal</td>
              <td style="font-weight: normal; text-align: right; padding-right: 12px;">100 p</td>
            </tr>
            <tr class="bold">
              <td style="font-weight: normal;">3.</td>
              <td style="font-weight: normal;">Økseter</td>
              <td style="font-weight: normal; text-align: right; padding-right: 12px;">77 p</td>
            </tr>
            <tr class="bold">
              <td style="font-weight: normal;">4.</td>
              <td style="font-weight: normal;">Østberg</td>
              <td style="font-weight: normal; text-align: right; padding-right: 12px;">64 p</td>
            </tr>
            <tr class="bold">
              <td style="font-weight: normal;">5.</td>
              <td style="font-weight: normal;">Sveinsvold</td>
              <td style="font-weight: normal; text-align: right; padding-right: 12px;">40 p</td>
            </tr>
            <tr class="bold">
              <td style="font-weight: normal;">5.</td>
              <td style="font-weight: normal;">Aasen</td>
              <td style="font-weight: normal; text-align: right; padding-right: 12px;">40 p</td>
            </tr>
      </tbody>
    </table>
    Etter løp 6 av 7.
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
              <td style="font-weight: bold; text-align: right; padding-right: 12px;">118 p</td>
            </tr>
            <tr class="bold">
              <td style="font-weight: normal;">2.</td>
              <td style="font-weight: normal;">Svendsen</td>
              <td style="font-weight: normal; text-align: right; padding-right: 12px;">100 p</td>
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
              <td style="font-weight: normal; text-align: right; padding-right: 12px;">49 p</td>
            </tr>
      </tbody>
    </table>
    Etter løp 6 av 7.
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
        <a href="http://www.norsk-rally.com/index.php?option=com_content&view=article&id=8629:protasov-overtok-ledelsen-i-ukraina" target="_blank">Protasov overtok ledelsen i Ukraina</a>
      </li>
      <li>
        <a href="http://www.norsk-rally.com/index.php?option=com_content&view=article&id=8628:mads-ostberg-med-etappeseier" target="_blank">Mads Østberg med etappeseier</a>
      </li>
      <li>
        <a href="http://www.norsk-rally.com/index.php?option=com_content&view=article&id=8627:irc-pajunen-leder-yalta-rally" target="_blank">IRC: Pajunen leder Yalta Rally</a>
      </li>
      <li>
        <a href="http://www.norsk-rally.com/index.php?option=com_content&view=article&id=8626:ostberg-kjemper-i-teten-i-wales" target="_blank">Østberg kjemper i teten i Wales</a>
      </li>
      <li>
        <a href="http://www.norsk-rally.com/index.php?option=com_content&view=article&id=8625:tidemand-og-skjaermoen-sikter-mot-totalseier-i-east-sweden-rally" target="_blank">Tidemand og Skjærmoen sikter mot totalseier i East Sweden Rally</a>
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
        <a href="http://www.motorsport.no/wip4/furuseth-champion-i-usa/d.epl?cat=13749&id=1382636&rss=1" target="_blank">Furuseth Champion i USA</a>
      </li>
      <li>
        <a href="http://www.motorsport.no/wip4/thriller-avslutning-i-wales/d.epl?cat=13747&id=1382580&rss=1" target="_blank">Thriller-avslutning i Wales</a>
      </li>
      <li>
        <a href="http://www.motorsport.no/wip4/knallaapning-av-oestberg/d.epl?cat=13747&id=1382093&rss=1" target="_blank">Knallåpning av Østberg</a>
      </li>
      <li>
        <a href="http://www.motorsport.no/wip4/isachsen-tester-i-usa/d.epl?cat=13748&id=1381350&rss=1" target="_blank">Isachsen tester i USA</a>
      </li>
      <li>
        <a href="http://www.motorsport.no/wip4/dobbelt-norsk-i-wales/d.epl?cat=13747&id=1381324&rss=1" target="_blank">Dobbelt norsk i Wales</a>
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
        <a href="http://www.wrc.com/news/ss18-more-drama-as-loeb-retakes-second/?fid=17483" target="_blank">SS18: More drama as Loeb retakes second</a>
      </li>
      <li>
        <a href="http://www.wrc.com/news/ss17-solberg-reclaims-second/?fid=17482" target="_blank">SS17: Solberg reclaims second</a>
      </li>
      <li>
        <a href="http://www.wrc.com/news/loeb-braced-for-solberg-fight-back/?fid=17481" target="_blank">Loeb braced for Solberg fight back</a>
      </li>
      <li>
        <a href="http://www.wrc.com/news/ostberg-reveals-retirement-fear/?fid=17479" target="_blank">Ostberg reveals retirement fear</a>
      </li>
      <li>
        <a href="http://www.wrc.com/news/sunday-midday-wrap-latvala-closing-on-victory/?fid=17478" target="_blank">Sunday midday wrap: Latvala closing on victory</a>
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