<%@ val model: fonttheater.models.FontTheatreModel %>

#use (config/config.tpl) as config

#{
  val bodyFontSize = "14px"
}#


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html lang="no-NO" xmlns="http://www.w3.org/1999/xhtml" dir="ltr">
      <head>
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1"/> 
      <title>Bieltvedt Rallysport</title>
      <link rel="stylesheet" href="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/design-templates/design-03/themes/theme-01/style.css?v=2" type="text/css" media="screen"/>
      <link href="http://fonts.googleapis.com/css?family=Quattrocento+Sans" rel="stylesheet" type="text/css"/>
      <style type="text/css">.logo a.logo {margin-top:32px;margin-bottom:30px;}</style>
      <!--[if IE 7]>
         <link rel="stylesheet" href="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/design-templates/design-03/themes/theme-01/style_ie7.css" type="text/css" media="screen" />
      <![endif]-->
      ${render("/includes/fontTheatreHtmlHead.tpl", Map("model" -> model))}
   </head>

   <body class="home blog">
   	  ${render("/includes/fontNavigationPanelType1.tpl", Map("model" -> model))}
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
<div class="featured-area">
  <div class="featured-area-content">
      <div class="featured-box" style="width: 217px; height: 118px; border: thin solid #999999; padding: 12px;">
          <div class="title">Siste oppdateringer</div>
          <ul style="font-size: 13px;">
              <li><span><a href="#2012-08-23">Vi nærmer oss NM finale!</a></span></li>
              <li><span><a href="#2012-06-04">2. plass totalt i Aurskog-Høland Rally, fortsatt ledelse i NM</a></span></li>
              <li><span><a target="blank" href="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/content/documents/medieomtale/Bieltvedt_Racing-05-2012.pdf">Racing: "Tar Bieltvedt NM-gullet fra Østberg?" [PDF]</a></span></li>                
          </ul>
      </div>
      <div class="featured-box last-featured" style="width: 413px; height: 118px; border: thin solid #999999; padding: 12px;">
          <div class="title">Siste blogginnlegg</div>
          <div style="font-size: 12px;">
            <table width="100%" border="0" cellspacing="0" cellpadding="0" style="padding: 0px; marging: 0px; border: none; font-size: 13px;">
              <tr>                              
                <td valign="top" style="vertical-align: top;">
                  <p style="margin-bottom: 4px;"><i>Sveinung, 23. august 2012 21:26:</i></p>
                  <p style="margin-bottom: 4px;"><b><a href="../screen/blogg">Ny transmisjonsolje</a></b></p>
                  <p style="margin: 0px;">Nå prøver vi ut nye smøreoljeprodukter, blant annet på gir og<span> (...)</span>&nbsp;&nbsp;<span class="textlink"><a href="../screen/blogg">Mer...</a></span></p>
                </td> 
                <td valign="top" style="vertical-align: top;"><img style="height: 78px; border: solid 1px #8F7A70; padding: 2px; margin-left: 12px;" src="http://bieltvedtrallysport.no/resources/blog-images/blog-post-2012.08.23-21.26.19-001-image-1.jpg"></td>
              </tr>
            </table>
          </div>
      </div>   
  </div>
</div>
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
<a name="2012-08-23"></a>
<div class="article"> 
    <p style="padding-bottom: 0px; margin-bottom: 0px; font-size: 0.9em;">Sveinung, 23. august 2012</p>
    <h3 style="padding-top: 0px; margin-top: 0px;">Vi nærmer oss NM finale!</h3>
	<p><b>Sommerferien er for lengst over, og rally står til de grader i fokus om dagen. Det er ikke rart, da de to viktigste løpene i Roger's og min karriere står for tur. Rally NM avsluttes i september, og både Roger og jeg har alle muligheter for å gjøre karrierebeste med NM gull i toppklassen!</b></p>

	<p>Sist helg tok vi turen til Sverige og SAAB-byen Trollhättan for å kjøre som "föråkare" i Västrallyt. Dette løpet inngår i det svenske mesterskapet, så eliten var på plass. Föråkare vil si å kjøre før første startende for å sjekke publikumsplassering, teste ut tidskontroll-personalet ved start/mål osv. Vi er altså ikke med i selve løpet, men tar tider selv og sammenligner med deltakerne som referanse på vårt eget tempo. Dette gjorde vi som første ledd i treningen frem mot Rally Telemark, 8. september. Rally Telemark er et nytt løp av året, så notene vi lager dagen før løpet blir svært viktig for resultatet. Notetrening fikk vi også når vi kjørte i Sverige, da dette også var ukjent terreng for oss. Og selvfølgelig ga det god kjøretrening også. I starten lå vi noe etter de aller raskeste, men på siste SS var vi kun 3 sekunder bak Jimmy Joge som var raskest, på tross av at han kjempet om SM seier og vi strengt tatt ikke hadde all verden å kjøre for. Det lover godt, og vi er spente på tempoet vi kan klare å holde i kommende NM løp.</p>

	<p>I kjølvannet av at vi har mistet TOOLS Norge AS som sponsor, jobbes det med å få inn nødvendige midler både for i år og 2013. Det er derfor hyggelig å ønske Nordisk Dekk Import AS velkommen med på laget. Vi har foreløpig en avtale for resten av 2012, hvor merkevaren ENI Oils skal frontes. ENI er det som tidligere het Agip, kjent fra både Formel 1 og MotoGP, samt "alle" bensinstasjonene nedover i Europa. Vi er alt i gang med å prøve ut produktene på rallybilen, og håper blant annet at resultatet blir mindre motstand i drivverket med ny og tynnere olje.</p>
</div>

<div style="clear: both;"></div>
<a name="2012-06-04"></a>
<div class="article"> 
    <p style="padding-bottom: 0px; margin-bottom: 0px; font-size: 0.9em;">Sveinung, 4. juni 2012</p>
    <h3 style="padding-top: 0px; margin-top: 0px;">2. plass totalt i Aurskog-Høland Rally, fortsatt ledelse i NM</h3>
	<table style="float: right;">
      <tr><td><img border="0" src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/images/diverse/aurskog-hoeland-rally-2012/2012-aurskog-hoeland-rally-1_w285.jpg" width="285" height="190" style="float: right; margin-bottom: 0px;" /></td></tr>
      <tr><td style="text-align: right; padding-right: 6px; padding-top: 0px; font-size:80%">Foto: Henning Friis, PRL</td></tr>
    </table>
	<p><b>Det skulle bli enda en jevn og interessant dag på Bjørkelangen. I vår klasse var det ikke uventet Anders Grøndal som sammen med Roger og meg kjørte fortest. Anders var litt raskere enn meg på de brede, harde grusveiene, mens jeg såvidt tok noen tiendeler og sekunder på de røffere og mer krevende veiene. Alt i alt var Anders raskere enn oss denne gangen, og da vi etterhvert så at Anders klarte å svare på våre angrep, ble Roger og jeg enige om at vi gjorde lurest i å "safe" til mål mot slutten av løpet. Vi klarte ikke kjøre igjen tiden vi hadde tapt til Grøndal, derfor la vi heller inn en litt større sikkerhetsmargin for å nå mållinjen. En medvirkende grunn til denne litt defensive taktikken var at Mads Østberg ga oss en gavepakke i NM sammenheng med å kjøre av veien og bryte løpet.</b></p>
	<p>Litt småproblemer skulle det også bli underveis i løpet. Jeg rotet bort dyrebare sekunder på en snurring i kanskje løpets krappeste sving. Og frem til første service mistet jeg litt godfølelsen med bremsene, trolig fordi skiver og klosser var blitt polerte, dvs. ikke like god friksjon i bremsene lenger. Servicegjengen ordna dette på service, så store hinderet var det ikke. </p> 
	<p>Situasjonen i NM er nå minst like interessant som den var før løpet. Mads Østberg er avhengig av at både Anders og jeg gjør det unormalt dårlig i ett av de to siste løpene. Anders vinner NM gull hvis han vinner gruppe N i begge de resterende løpene. Med 6 poengs ledelse i NM til nettopp Anders Grøndal / Trond Svendsen, trenger Roger og jeg å slå Anders og Trond i ett av de to siste løpene, forutsatt at ingenting spesielt hender i det andre løpet. Mange teorier her, og når vi veit at det meste kan og vil skje, er det liten tvil om at spenningsnivået blir veldig stort etterhvert som vi nærmer oss NM finalen. Anders og Trond har (og har hatt gjennom hele året) fordel av å ligge bak å kontrollere hva jeg til enhver tid gjør, kjøre etter bremsepunktene mine osv. samt at de har en psykologisk fordel av å ha "ingenting" å tape. Min spådom er at Grøndal vinner Rally Telemark, og vi vinner Rally Hedemarken.</p> 
	<p>Nå blir det "sommerferie" i rallysammenheng for oss. Vi i Bieltvedt Rallysport drar på fisketur og slapper av 22.-24. juni, for så å komme max laddet til neste NM løp; Rally Telemark. Dette løpet har aldri blitt kjørt før, dermed har vi ingen erfaring herfra. Det skulle blitt kjørt i fjor, men regn og oversvømmelser gjorde at arrangøren måtte avlyse. Vi har mye å kjøre for, så full skjerpings er alfa&omega i september!</p>
</div>

<div class="horizontal-separator"></div>

<div style="clear: both;"></div>
<a name="2012-05-07"></a>
<div class="article"> 
    <p style="padding-bottom: 0px; margin-bottom: 0px; font-size: 0.9em;">Sveinung, 7. mai 2012</p>
    <h3 style="padding-top: 0px; margin-top: 0px;">Superduell endte i seier!</h3>
	<table style="float: right;">
      <tr><td><img border="0" src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/images/diverse/rally-sorland-2012/rally-sorland-2012-1_w285.jpg" width="285" height="190" style="float: right; margin-bottom: 0px;" /></td></tr>
      <tr><td style="text-align: right; padding-right: 6px; padding-top: 0px; font-size:80%">Foto: Thomas Myhre Hansen</td></tr>
    </table>
	<p><b>Allerede fra SS1 skulle det vise seg at spenningsmomentet i 4wd klassen stod mellom Anders Grøndal med kartleser Trond Svendsen og Roger & meg selv. Vi vant annenhver fartsprøve helt frem til SS5, hvor vi stort sett lå et lite hestehode foran. Vi push'et hverandre maksimalt og det var utvilsomt nerve helt til målflagget på siste SS! Sånn skal det være:-)</b></p>
	<p>Og spesielt morsomt blir det når det er vi som kom seirende ut av duellen! Belønningen ble nok NM poeng til at Roger og jeg går opp i ledelse i hver vår NM klasse. Mads Østberg vant løpet totalt foran oss, men da vi har langt flere startende i vår klasse får vi med oss flere poeng enn nettopp Mads. Enda en bonus er det også i å se at vi er nærmere Mads enn vi tidligere har vært, om vi regner sekunder pr. km. SS. Mads har stabilisert seg i toppen av VM og er en god målestokk å sammenlikne opp mot.</p>
	<p>Den tøffe kampen vi var med på i helgen presset oss til å øke tempoet gjennom hele løpet. Midtveis i løpet opplevde vi at farten tidvis ble for høy i form av at det ble for mye drifting. Vi hadde det vi kaller overskudd av fart, men lykkes ikke helt i å "holde igjen" nok. Mot slutten av løpet fikk jeg justert inn dette bedre og etappetidene gikk i vår favør denne gang. Teamets trener Olav Bodilsen, Roger og jeg har jobbet i mange år med blant annet dette. Vi er ikke i mål når det gjelder å få alt dette på plass (hadde vi vært det hadde jeg vært bedre enn Sebastian Loeb...:-)), men føler at vi kom noen skritt videre denne helga. Det morsomme er at når vi fight'er og push'er på som vi har gjort i helga, endres følelsen inne i bilen fra at man prøver å kjøre så fort man kan, til å ha følelsen av at man prøver å kjøre så sakte man kan. Litt vanskelig å forklare det her, men prøver likevel: Når hastighet og tempo øker, må jeg som fører øke fokuset på å bremse nok slik at kjørestilen ikke blir for vill og bred, da taper vi i så fall tid igjen.</p>	
	<p>Neste løp for oss er Aurskog-Høland Rally 2. juni. Dette løpet har Anders Grøndal gjort det bra på mange ganger tidligere, så vi forventer enda hardere kamp. Aurskog-Høland Rally er det raskeste grusløpet i Norge, så vi må helt klart omstille oss fra helgas teknisk krevende kjøring.</p> 
</div>

<div class="horizontal-separator"></div>

<div style="clear: both;"></div>
<a name="2012-05-02"></a>
<div class="article"> 
    <p style="padding-bottom: 0px; margin-bottom: 0px; font-size: 0.9em;">Sveinung, 5. mai 2012</p>
    <h3 style="padding-top: 0px; margin-top: 0px;">Tid for Rally Sørland</h3>
	<p><b>Førstkommende helg kjøres Rally Sørland, vårens vakreste eventyr i rallysammenheng:-) Vi har mye positivt å se tilbake til i nettopp dette løpet, som skiller seg fra resten av NM pga. den spesielle veikarakteren og topografien. Det svinger hele tiden og det er minimalt med marginer eller steder hvor man faktisk kan kjøre av veien uten at resultatet er brutt løp...</b></p>

	<p>Forrige helg tok Roger og jeg turen til Lillesand for å gjennomføre en testdag på tilnærmet lik vei som møter oss i Rally Sørland. Vi fikk etterhvert en god følelse med bil og underlag. Før dette kjørte vi også noen treningspass i Enebakk, samt at vi kjører en siste "shakedown" i morgen torsdag i Mandal. Med det tror jeg vi er så godt forberedt som vi kan bli.</p>

	<p>Det er mest sannsynlig at kampen vil stå mellom Eyvind Brynildsen, Anders Grøndal og TOOLS Rallyteam, hvor vi selvfølgelig håper å komme seirende ut. Vi skal så klart ikke glemme Mads Østberg som er storfavoritt til totalseieren, men siden han er alene i sin bilklasse, vil den av oss i gruppe N som er raskest få flest poeng. Mads leder NM, men er ikke trygg på seier for det. Spennende...:-)</p>

	<p>Vil du følge Rally Sørland, gå inn på www.toolsrallyteam.no.</p>
</div>

<div class="horizontal-separator"></div>

<div style="clear: both;"></div>
<a name="2012-03-01"></a>
<div class="article"> 
    <p style="padding-bottom: 0px; margin-bottom: 0px; font-size: 0.9em;">Sveinung, 1. mars 2012</p>
    <h3 style="padding-top: 0px; margin-top: 0px;">Fjelleventyret avlyst</h3>
	<p><b>Førstkommende lørdag skulle vi ha kjørt "rosinen i pølsa" hva gjelder vinterløp; Numedalsrally. Sånn blir det ikke, da siste tids mildvær har smeltet bort vinterveiene i området rundt Rødberg og Numedalen. Det syntes vi er veldig synd da vi var pakket og klare, og etter planen skulle vært på fjellet å testet og trent i skrivende stund... Men været er det som kjent ikke noe å gjøre med, og det er ikke vanskelig å forstå hvorfor arrangøren har måttet avlyse.</b></p> 
	<p>I forhold til NM sammendraget har dette lite eller ingenting å si for TOOLS Rallyteam. Både Roger og jeg ligger svært godt plassert i hver vår NM klasse, 1 poeng bak Mads Østberg/Jonas Andersson!</p>
	<p>Da er det bare å rydde vekk ishjulene og glede seg til Rally Sørland 4.-5. mai. Anders Grøndal og Eyvind Brynildsen er begge klare for å avansere i NM sammendraget, så duellene vi skulle hatt til helga får vente to måneder til:-) </p>
</div>

<div class="horizontal-separator"></div>

<div style="clear: both;"></div>
<a name="2012-01-30"></a>
<div class="article"> 
    <p style="padding-bottom: 0px; margin-bottom: 0px; font-size: 0.9em;">Sveinung, 30. januar 2012</p>
    <h3 style="padding-top: 0px; margin-top: 0px;">2. plass på Rally Elverum, fortsatt 2. plass i NM</h3>
	<table style="float: right;">
      <tr><td><img border="0" src="http://toolsrallyteam.no-static-resources.s3.amazonaws.com/images/diverse/rally-elverum-2012-1_w285.jpg" width="285" height="206" style="float: right; margin-bottom: 0px;" /></td></tr>
      <tr><td style="text-align: right; padding-right: 6px; padding-top: 0px; font-size:80%">Foto: Henning Friis, PRL</td></tr>
    </table>
	<p><b>Det skulle bli en fin 2. plass i sist helgs NM rally på Elverum. Foran oss kom Eyvind Brynildsen i sin Mitsubishi Lancer EvoIX og bak oss Anders Grøndal. Mads Østberg vant løpet totalt.</b></p> 
	<p>Roger og jeg var veldig klare før start, og hadde ikke for hensikt å tenke taktikk denne helgen heller, da vi nå er i en situasjon hvor vi tar ett og ett løp av gangen. Forskjellen fra Mountain Rally var at det denne gangen var mer snø, både utenfor og i veien. Vi har tidligere sett at vi taper terreng når det blir snø og sporete (spesielt på etapper som kjøres to ganger), og denne gangen var intet unntak. Det hjalp heller ikke at vi startet først i vår klasse (startrekkefølgen bestemmes av stillingen i NM), og måtte "brøyte vei" for de som startet bak oss.</p>
	<p>Så på tross av at bilen og alt annet fungerte som det skulle, ble det en krevende dag hvor jeg virkelig måtte kjempe. Det som gjør det hele vanskelig når det er snø og spor i veien, er at jeg som fører må tenke annerledes enn ellers. Ved normale forhold kan man plassere bilen der det måtte passe i veibanen for å kunne holde størst mulig fart gjennom og ut av sving. Med forholdene som møtte oss på Rally Elverum, må man bryte med dette mønsteret, og heller plassere bilen der hvor det er best feste. Denne tilpassingen er nok konkurrentene mine litt flinkere til, så vi skal jobbe med nettopp dette og analysere hvor forskjellen ligger. Neste NM runde er Numedalsrally, og med snøvær kort tid før start kan forholdene bli de samme som på Elverum.</p>
	<p>Ellers gikk løpet fint, og vi kom oss gjennom de snaue 130 km. med SS på en så god måte at det holdt til 2. plass. Eneste unormale må ha vært alle snikpunkteringene vi hadde underveis. Hele tre ganger måtte vi skifte hjul mellom fartsprøvene. Heldigvis passet det sånn at vi alltid fikk byttet det punkterte reservehjulet på service, så vi slapp å gå tom for dekk da vi kun har med ett reservehjul av gangen... </p>
	<p>Nå blir det en liten pause i kjøringen frem til neste NM runde, Numedalsrally 3. mars. Tiden skal brukes til studietur på Swedish Rally, samt at det trolig blir bytte av motor, clutch og turbo. Flesberg Rallysprint samt èn eller to testdager burde gi godt grunnlag for å avslutte vinterkjøringen på best mulig måte. Vi har i alle fall possisjonert oss svært godt så langt, med en klar 2. plass i NM for 4wd biler. Leder gjør Mads Østberg, men han kjører ikke Numedalsrally da det kræsjer med Rally Mexico. Med andre ord, kontrastene er store i forhold til fjoråret; Nå er vi i TOOLS Rallyteam virkelig i fokus igjen, og alt ligger til rette for at vi leder både toppklassen i NM for førere og kartlesere etter vinterløpene!</p>
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
				<a href="http://www.wrc.com/news/sordo-reveals-germany-frustration/?fid=17327" target="_blank">Sordo reveals Germany frustration</a>
			</li>
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