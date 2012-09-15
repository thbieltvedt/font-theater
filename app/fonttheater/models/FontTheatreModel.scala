package fonttheater.models

import utils.Utils._
import fonttheater.repositories.RepositoriesLocator
import fonttheater.repositories.simple.SimpleRepositoriesLocator
import application.controller.Parameters

class FontTheatreModel(
                        val currentFontDemoTemplate: FontDemoTemplateInfo,
                        selectedFontCollectionHeadings: String,
                        selectedFontFamilyDefault: String,
                        selectedFontFamilyNormalText: String,
                        selectedFontFamilyHeadings: String,
                        selectedFontFamilySmallText: String,
                        selectedFontFamilyLargeText: String,
                        selectedFontFamilyMenu: String,
                        selectedFontFamilyBanner: String,
                        selectedFontFamilyButtons: String,
                        selectedFontFamilyLogo: String,
                        val parameters: Parameters
                        ) {
  private val fontCollectionDefaultText: FontCollection2 = FontLibrary2.standardFonts
  private val fontCollectionNormalText: FontCollection2 = FontLibrary2.goodNormalTextFonts14Px
  private val fontCollectionHeadings: FontCollection2 = FontTheatreModel.fontCollection(selectedFontCollectionHeadings, FontTheatreModel.availableHeadingFonts)
  private val fontCollectionSmallText: FontCollection2 = FontLibrary2.standardFonts
  private val fontCollectionLargeText: FontCollection2 = FontLibrary2.standardFonts
  private val fontCollectionMenu: FontCollection2 = FontLibrary2.standardFonts
  private val fontCollectionBanner: FontCollection2 = FontLibrary2.standardFonts
  private val fontCollectionButtons: FontCollection2 = FontLibrary2.standardFonts
  private val fontCollectionLogo: FontCollection2 = FontLibrary2.standardFonts

  val fontNavigatorDefaultText: FontNavigator = fontNavigation(selectedFontFamilyDefault, "Trebuchet MS", FontTheatreModel.PARAMETER_NAME_FONT_DEFAULT_TEXT, fontCollectionDefaultText, parameters)
  val fontNavigatorNormalText: FontNavigator = fontNavigation(selectedFontFamilyNormalText, "Verdana", FontTheatreModel.PARAMETER_NAME_FONT_NORMAL_TEXT, fontCollectionNormalText, parameters)
  val fontNavigatorHeadingsText: FontNavigator = fontNavigation(selectedFontFamilyHeadings, "Urbano Cond", FontTheatreModel.PARAMETER_NAME_FONT_HEADINGS_TEXT, fontCollectionHeadings, parameters)
  val fontNavigatorSmallText: FontNavigator = fontNavigation(selectedFontFamilySmallText, "Lucida Sans Unicode", FontTheatreModel.PARAMETER_NAME_FONT_SMALL_TEXT, fontCollectionSmallText, parameters)
  val fontNavigatorLargeText: FontNavigator = fontNavigation(selectedFontFamilyLargeText, "Oswald", FontTheatreModel.PARAMETER_NAME_FONT_LARGE_TEXT, fontCollectionLargeText, parameters)
  val fontNavigatorMenuText: FontNavigator = fontNavigation(selectedFontFamilyMenu, "Lucida Console", FontTheatreModel.PARAMETER_NAME_FONT_MENU_TEXT, fontCollectionMenu, parameters)
  val fontNavigatorBannerText: FontNavigator = fontNavigation(selectedFontFamilyBanner, "Tahoma", FontTheatreModel.PARAMETER_NAME_FONT_BANNER_TEXT, fontCollectionBanner, parameters)
  val fontNavigatorButtonsText: FontNavigator = fontNavigation(selectedFontFamilyButtons, "Trebuchet MS", FontTheatreModel.PARAMETER_NAME_FONT_BUTTONS_TEXT, fontCollectionButtons, parameters)
  val fontNavigatorLogoText: FontNavigator = fontNavigation(selectedFontFamilyLogo, "Urbano Cond", FontTheatreModel.PARAMETER_NAME_FONT_LOGO_TEXT, fontCollectionLogo, parameters)

  val cssFontFaceBaseUrl: String = "/public/font-face-css"
  // "http://entio.fonts.s3.amazonaws.com/font-face-css"
  val fontFaceBaseUrl: String = "/public/font-face-kit" // "http://entio.fonts.s3.amazonaws.com/font-face-fonts";

  // TODO: java.util.List
  def fontDemoTemplateInfoList(): java.util.List[FontDemoTemplateInfo] = FontTheatreModel.REPOSITORIES_LOCATOR.getFontDemoTemplateInfoRepository().getAll()

  // TODO: java.util.List
  def fontCollectionList(): java.util.List[FontCollection2] = FontTheatreModel.REPOSITORIES_LOCATOR.getFontCollectionRepository().getAll()

  private def fontNavigation(
                              selectedFontKey: String,
                              defaultValue: String,
                              fontParameterName: String,
                              fontCollection: FontCollection2,
                              parameters: Parameters
                              ): FontNavigator = {
    val fontKey: String = valueOrDefault(selectedFontKey, defaultValue)

    def defaultFont(): Font2 = fontCollection.fonts.head
    var currentFont: Font2 = valueOrDefault(fontCollection.getFontByKey(fontKey), defaultFont)

    val previousFont: Font2 = fontCollection.findPreceedingFont(currentFont)
    val nextFont: Font2 = fontCollection.findSuccedingFont(currentFont)

    return new FontNavigator(currentFont, previousFont, nextFont, fontCollection, parameters, fontParameterName)
  }
}

object FontTheatreModel {
  val PARAMETER_NAME_FONT_COLLECTION_HEADINGS = "fontcollection.headings"
  val PARAMETER_NAME_FONT_DEFAULT_TEXT = "fontFamilyDefault"
  val PARAMETER_NAME_FONT_NORMAL_TEXT = "fontFamilyNormalText"
  val PARAMETER_NAME_FONT_HEADINGS_TEXT = "fontFamilyHeadings"
  val PARAMETER_NAME_FONT_SMALL_TEXT = "fontFamilySmallText"
  val PARAMETER_NAME_FONT_LARGE_TEXT = "fontFamilyLargeText"
  val PARAMETER_NAME_FONT_MENU_TEXT = "fontFamilyMenu"
  val PARAMETER_NAME_FONT_BANNER_TEXT = "fontFamilyBanner"
  val PARAMETER_NAME_FONT_BUTTONS_TEXT = "fontFamilyButtons"
  val PARAMETER_NAME_FONT_LOGO_TEXT = "fontFamilyLogo"

  val availableHeadingFonts: FontCollection2 =
  //FontLibrary2.typekitGoodWindowsRenderingSansSerifs
  //FontLibrary2.typekitGoodWindowsRenderingSansSerifs
  //FontLibrary2.typekitGoodWindowsRenderingSerifs
  //FontLibrary2.fontFaceFonts
  //FontLibrary2.featuredGoogleWebFontsSansSerifHeadings
    FontLibrary2.featuredGoogleWebFontsSlabSerifHeadings
  //FontLibrary2.cufonFonts
  //FontLibrary2.typekitBestRenderingSansSerifs20Px
  //FontLibrary2.installedFonts
  //FontLibrary2.goodNormalTextFonts12Px
  //FontLibrary2.cssFontFaceFonts
  val availableNormalTextFonts: FontCollection2 = FontLibrary2.normalTextFonts

  private def REPOSITORIES_LOCATOR: RepositoriesLocator = new SimpleRepositoriesLocator

  private def fontCollection(fontCollectionId: String, defaultFontCollection: FontCollection2): FontCollection2 = {
    val fontCollection = REPOSITORIES_LOCATOR.getFontCollectionRepository().findById(fontCollectionId);

    return if (fontCollection == null) defaultFontCollection else fontCollection
  }
}