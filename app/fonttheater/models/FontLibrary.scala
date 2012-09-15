package fonttheater.models

import fonttheater.models.tag.Tag

object FontLibrary {
  val TAG_STANDARD_FONT = new Tag("Standard font", FontSource);
  val TAG_GOOGLE_WEB_FONT = new Tag("Google Web Font", FontSource);
  val TAG_INSTALLED_FONT = new Tag("Installed font", FontSource);
  val TAG_FONT_FACE_FONT = new Tag("@font-face font", FontSource);
  val TAG_CSS_BASED_FONT_FACE_FONT = new Tag("CSS @font-face font", FontSource);
  val TAG_FONTS_DOT_COM_FONT = new Tag("Fonts.com font", FontSource);
  val TAG_CUFON_FONT = new Tag("Cufon font", FontSource);

  private val TAG_CLASSIFICATION_SANS_SERIF_FONT = new Tag("Sans serif font", FontClassification);
  private val TAG_CLASSIFICATION_SERIF_FONT = new Tag("Serif font", FontClassification);
  private val TAG_CLASSIFICATION_REALIST_FONT = new Tag("Realist font", TAG_CLASSIFICATION_SANS_SERIF_FONT);
  private val TAG_CLASSIFICATION_GEOMETRIC_FONT = new Tag("Geometric font", TAG_CLASSIFICATION_SANS_SERIF_FONT);
  private val TAG_CLASSIFICATION_SLAB_SERIF_FONT = new Tag("Slab serif font", FontClassification);

  private val TAG_STRECH_CONDENSED = new Tag("Condensed", FontStretch);

  private val TAG_WEIGHT_HEAVY = new Tag("Heavy", FontWeight);
  private val TAG_WEIGHT_THIN = new Tag("Thin", FontWeight);

  val standardFonts = new FontCollection(
    "standardfonts",
    new FontOld("Arial", TAG_STANDARD_FONT),
    new FontOld("Arial Black", TAG_STANDARD_FONT, TAG_WEIGHT_HEAVY),
    new FontOld("Verdana", TAG_STANDARD_FONT),
    new FontOld("Lucida Sans Unicode", TAG_STANDARD_FONT),
    new FontOld("Lucida Console", TAG_STANDARD_FONT),
    new FontOld("Trebuchet MS", TAG_STANDARD_FONT),
    new FontOld("Tahoma", TAG_STANDARD_FONT),
    new FontOld("Times New Roman", TAG_STANDARD_FONT),
    new FontOld("Georgia", TAG_STANDARD_FONT),
    new FontOld("Palatino Linotype", TAG_STANDARD_FONT),
    new FontOld("Courier New", TAG_STANDARD_FONT),
    new FontOld("Courier", TAG_STANDARD_FONT)
  );

  val installedFonts = new FontCollection(
    "installedfonts",
    new FontOld("Urbano Light", TAG_INSTALLED_FONT),
    new FontOld("Urbano", TAG_INSTALLED_FONT),
    new FontOld("Urbano Black", TAG_INSTALLED_FONT),
    new FontOld("Urbano Ultra", TAG_INSTALLED_FONT),
    new FontOld("Urbano Lt Ext Cond", TAG_INSTALLED_FONT, TAG_WEIGHT_THIN),
    new FontOld("Urbano Ext Cond", TAG_INSTALLED_FONT, TAG_STRECH_CONDENSED),
    new FontOld("Urbano Lt Cond", TAG_INSTALLED_FONT, TAG_STRECH_CONDENSED, TAG_WEIGHT_THIN),
    new FontOld("Urbano Cond", TAG_INSTALLED_FONT, TAG_STRECH_CONDENSED),
    new FontOld("Urbano ExBd Cond", TAG_INSTALLED_FONT),
    new FontOld("Urbano Exp", TAG_INSTALLED_FONT),
    new FontOld("Urbano ExBd Exp", TAG_INSTALLED_FONT),
    new FontOld("Urbano Blk Exp", TAG_INSTALLED_FONT),
    new FontOld("Hoefler Text", TAG_INSTALLED_FONT),
    new FontOld("Liberation Sans Narrow", TAG_INSTALLED_FONT)
  );

  val fontsDotComFonts = new FontCollection(
    "fontsdotcomfonts",
    new FontOld("HelveticaNeueW01-57Cn", TAG_FONTS_DOT_COM_FONT),
    new FontOld("HelveticaNeueW01-ThinCn 673383", TAG_FONTS_DOT_COM_FONT),
    new FontOld("DIN Next W02 Cond", TAG_FONTS_DOT_COM_FONT),
    new FontOld("TradeGothicNextW01-Heav 693241", TAG_FONTS_DOT_COM_FONT),
    new FontOld("EurostileNextW01-Regula", TAG_FONTS_DOT_COM_FONT),
    new FontOld("FrutigerNeueW01-Regular", TAG_FONTS_DOT_COM_FONT)
  );

  val cufonFonts = new FontCollection(
    "cufonfonts",
    new FontOld("Bebas Neue", TAG_CUFON_FONT, TAG_STRECH_CONDENSED, TAG_WEIGHT_HEAVY),
    new FontOld("Helvetica Neue", TAG_CUFON_FONT),
    new FontOld("Gnuolane Free", TAG_CUFON_FONT, TAG_STRECH_CONDENSED),
    new FontOld("DIN Condensed Normal", TAG_CUFON_FONT, TAG_STRECH_CONDENSED),
    new FontOld("Urbano", TAG_CUFON_FONT),
    new FontOld("Urbano Cond", TAG_CUFON_FONT, TAG_STRECH_CONDENSED),
    new FontOld("Urbano Light", TAG_CUFON_FONT, TAG_WEIGHT_THIN),
    new FontOld("Urbano Light Cond", TAG_CUFON_FONT, TAG_WEIGHT_THIN),
    new FontOld("Urbano Extra Cond", TAG_CUFON_FONT, TAG_STRECH_CONDENSED),
    new FontOld("League Gothic", TAG_CUFON_FONT, TAG_STRECH_CONDENSED, TAG_WEIGHT_HEAVY),
    new FontOld("Myriad Pro Regular", TAG_CUFON_FONT),
    new FontOld("Myriad Pro Condensed", TAG_CUFON_FONT, TAG_STRECH_CONDENSED),
    new FontOld("ExpresswayRg-Regular", TAG_CUFON_FONT),
    new FontOld("Enigmatic Regular", TAG_CUFON_FONT, TAG_CLASSIFICATION_GEOMETRIC_FONT),
    new FontOld("Steelfish Rg", TAG_CUFON_FONT, TAG_STRECH_CONDENSED),
    new FontOld("Mentone Lig", TAG_CUFON_FONT),
    new FontOld("CartoGothic Std", TAG_CUFON_FONT),
    new FontOld("WinterthurCondensed", TAG_CUFON_FONT, TAG_STRECH_CONDENSED),
    new FontOld("Zag Regular", TAG_CUFON_FONT, TAG_WEIGHT_THIN)
  );


  val googleWebFonts = new FontCollection(
    "googlewebfonts",
    new FontOld("Allerta Stencil", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT),
    new FontOld("Anonymous Pro", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT),
    new FontOld("Arimo", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_CLASSIFICATION_REALIST_FONT),
    new FontOld("Buda", "", 300, TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT),
    new FontOld("Cabin", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_CLASSIFICATION_REALIST_FONT),
    new FontOld("Candal", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_WEIGHT_HEAVY),
    new FontOld("Cantarell", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_CLASSIFICATION_REALIST_FONT),
    new FontOld("Coda", "", 800, TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT),
    new FontOld("Coda Caption", "", 800, TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_WEIGHT_HEAVY),
    new FontOld("Cousine", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT),
    new FontOld("Cuprum", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_CLASSIFICATION_REALIST_FONT),
    new FontOld("Didact Gothic", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT),
    new FontOld("Droid Sans", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_CLASSIFICATION_REALIST_FONT),
    new FontOld("Droid Sans Mono", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT),
    new FontOld("Francois One", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_STRECH_CONDENSED, TAG_WEIGHT_HEAVY),
    new FontOld("Inconsolata", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT),
    new FontOld("Josefin Sans", "Ultra-Light", 100, TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_WEIGHT_THIN),
    new FontOld("Josefin Sans", "Book", 300, TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_WEIGHT_THIN),
    new FontOld("Josefin Sans", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_WEIGHT_THIN),
    new FontOld("Josefin Sans", "Semi-Bold", 600, TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_WEIGHT_THIN),
    new FontOld("Josefin Sans", "Bold", 700, TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_WEIGHT_THIN),
    new FontOld("Jura", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_CLASSIFICATION_GEOMETRIC_FONT),
    new FontOld("Jura", "Medium", 500, TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_CLASSIFICATION_GEOMETRIC_FONT),
    new FontOld("Jura", "Semi-Bold", 600, TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_CLASSIFICATION_GEOMETRIC_FONT),
    new FontOld("Lato:light", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_CLASSIFICATION_REALIST_FONT, TAG_WEIGHT_THIN),
    new FontOld("Lato", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_CLASSIFICATION_REALIST_FONT),
    new FontOld("Lekton", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT),
    new FontOld("Mako", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_CLASSIFICATION_REALIST_FONT),
    new FontOld("Metrophobic", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_CLASSIFICATION_REALIST_FONT),
    new FontOld("Michroma", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_CLASSIFICATION_GEOMETRIC_FONT),
    new FontOld("Molengo", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT),
    new FontOld("Muli", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT),
    new FontOld("News Cycle", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT),
    new FontOld("Nobile", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_CLASSIFICATION_REALIST_FONT),
    new FontOld("Nunito", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT),
    new FontOld("Open Sans", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_CLASSIFICATION_REALIST_FONT),
    new FontOld("Open Sans Condensed", "Book", 300, TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_STRECH_CONDENSED, TAG_WEIGHT_THIN),
    new FontOld("Open Sans Condensed", "Bold", 700, TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_STRECH_CONDENSED, TAG_WEIGHT_HEAVY),
    new FontOld("Orbitron", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_CLASSIFICATION_GEOMETRIC_FONT),
    new FontOld("Oswald", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_STRECH_CONDENSED, TAG_WEIGHT_HEAVY),
    new FontOld("PT Sans", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_CLASSIFICATION_REALIST_FONT),
    new FontOld("PT Sans Caption", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_CLASSIFICATION_REALIST_FONT),
    new FontOld("PT Sans Narrow", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_STRECH_CONDENSED),
    new FontOld("Play", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_CLASSIFICATION_GEOMETRIC_FONT),
    new FontOld("Puritan", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT),
    new FontOld("Quattrocento Sans", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT),
    new FontOld("Raleway", "", 100, TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_WEIGHT_THIN),
    new FontOld("Shanti", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT),
    new FontOld("Terminal Dosis Light", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_WEIGHT_THIN),
    new FontOld("Ubuntu", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_CLASSIFICATION_REALIST_FONT),
    new FontOld("Varela", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_CLASSIFICATION_REALIST_FONT),
    new FontOld("Wire One", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_WEIGHT_THIN),
    new FontOld("Yanone Kaffeesatz", "Light", 200, TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_STRECH_CONDENSED, TAG_WEIGHT_THIN),
    new FontOld("Yanone Kaffeesatz", "Book", 300, TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_STRECH_CONDENSED, TAG_WEIGHT_THIN),
    new FontOld("Yanone Kaffeesatz", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_STRECH_CONDENSED)
  );


  val googleWebFontsSerifOrSlabSerif = new FontCollection(
    "googlewebfontsseriforslabserif",
    new FontOld("Arvo", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SLAB_SERIF_FONT),
    new FontOld("Bentham", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SERIF_FONT),
    new FontOld("Brawler", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SLAB_SERIF_FONT),
    new FontOld("Cardo", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SERIF_FONT),
    new FontOld("Copse", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SLAB_SERIF_FONT),
    new FontOld("Crimson Text", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SERIF_FONT),
    new FontOld("Droid Serif", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SERIF_FONT),
    new FontOld("EB Garamond", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SERIF_FONT),
    new FontOld("Goudy Bookletter 1911", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SERIF_FONT),
    new FontOld("IM Fell", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SERIF_FONT),
    new FontOld("Josefin Slab", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SLAB_SERIF_FONT),
    new FontOld("Judson", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SERIF_FONT),
    new FontOld("Kameron", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SLAB_SERIF_FONT),
    new FontOld("Kreon", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SLAB_SERIF_FONT),
    new FontOld("Lora", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SERIF_FONT),
    new FontOld("Merriweather", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SERIF_FONT),
    new FontOld("Neuton", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SERIF_FONT),
    new FontOld("OFL Sorts Mill Goudy TT", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SERIF_FONT),
    new FontOld("Old Standard TT", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SERIF_FONT),
    new FontOld("Podkova", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SLAB_SERIF_FONT),
    new FontOld("PT Serif", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SERIF_FONT),
    new FontOld("Playfair Display", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SERIF_FONT),
    new FontOld("Quattrocento", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SERIF_FONT),
    new FontOld("Rokkitt", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SLAB_SERIF_FONT),
    new FontOld("Tinos", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SERIF_FONT),
    new FontOld("Vollkorn", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SERIF_FONT)
  );

  val fontFaceFonts = new FontCollection(
    "fontfacefonts",
    new FontOld("eau-sans-book", TAG_FONT_FACE_FONT),
    new FontOld("Familiar_Pro-Bold-webfont", TAG_FONT_FACE_FONT),
    new FontOld("osp-din-webfont", TAG_FONT_FACE_FONT),
    new FontOld("urbano", TAG_FONT_FACE_FONT),
    new FontOld("urbano-light-webfont", TAG_FONT_FACE_FONT),
    new FontOld("urbano-lightcond-webfont", TAG_FONT_FACE_FONT),
    new FontOld("urbano-regular-webfont", TAG_FONT_FACE_FONT),
    new FontOld("vafle_classic-webfont", TAG_FONT_FACE_FONT)
  );

  val cssFontFaceFonts = new FontCollection(
    "cssFontFaceFonts",
    new FontOld("urbano_400_normal", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("atrament-web", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("atrament-web_light", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("etica", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("nudista-web", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("obliqua", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("ronnia-condensed", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("alternate-gothic-no-3-d", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("franklin-gothic-comp-urw", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("franklin-gothic-ext-comp-urw", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("ratio-display", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("runda", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("ronnia", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("prenton-condensed", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("comenia-sans-web", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("katarine-web", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("adelle", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("republic-web-condensed", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("crete-rounded-web", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("league-gothic", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("bebas-neue", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("vinyl", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("p22-underground-pc", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("gnuolane", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("allumi-std-extended", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("etica-display", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("sommet", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("t26-carbon", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("purista-web", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("sirba-web", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("apolline", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("lemonde-journal", TAG_CSS_BASED_FONT_FACE_FONT)
  );

  val typekitGoodWindowsRenderingFonts = new FontCollection(
    "typekitgoodwindowsrendering",
    new FontOld("atrament-web", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("atrament-web_light", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("etica", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("nudista-web", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("obliqua", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("ronnia-condensed", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("alternate-gothic-no-3-d", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("franklin-gothic-comp-urw", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("franklin-gothic-ext-comp-urw", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("ratio-display", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("runda", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("ronnia", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("prenton-condensed", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("comenia-sans-web", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("katarine-web", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("adelle", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("republic-web-condensed", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("crete-rounded-web", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("league-gothic", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("bebas-neue", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("vinyl", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("p22-underground-pc", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("gnuolane", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("allumi-std-extended", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("etica-display", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("sommet", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("t26-carbon", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("purista-web", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("sirba-web", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("apolline", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("lemonde-journal", TAG_CSS_BASED_FONT_FACE_FONT)
  );

  val dinAlternatives = new FontCollection(
    "dinAlternatives",
    new FontOld("DIN Next W02 Cond", TAG_FONTS_DOT_COM_FONT),
    new FontOld("atrament-web", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("nudista-web", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("purista-web", TAG_CSS_BASED_FONT_FACE_FONT)
  );

  val helveticaAlternatives = new FontCollection(
    "helveticaAlternatives",
    new FontOld("HelveticaNeueW01-57Cn", TAG_FONTS_DOT_COM_FONT),
    new FontOld("Open Sans", TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_CLASSIFICATION_REALIST_FONT),
    new FontOld("Open Sans Condensed", "Light", 300, TAG_GOOGLE_WEB_FONT, TAG_CLASSIFICATION_SANS_SERIF_FONT, TAG_STRECH_CONDENSED, TAG_WEIGHT_THIN),
    new FontOld("etica", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("nudista-web", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("ratio-display", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("runda", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("ronnia", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("comenia-sans-web", TAG_CSS_BASED_FONT_FACE_FONT),
    new FontOld("katarine-web", TAG_CSS_BASED_FONT_FACE_FONT)
  );

  //	val allFonts =
  //		new FontCollection("allfonts", standardFonts, installedFonts, googleWebFonts, fontFaceFonts);
}