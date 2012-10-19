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
	val parameters: Parameters, 
	fontLibrary: FontLibrary
) {

  private val fontCollectionNormalText: FontCollection = fontLibrary.fontCollectionNormalText
  private val fontCollectionDefaultText: FontCollection = fontLibrary.fontCollectionDefaultText
  private val fontCollectionHeadings: FontCollection = FontTheatreModel.fontCollection(selectedFontCollectionHeadings, fontLibrary.fontCollectionHeadings)
  private val fontCollectionSmallText: FontCollection = fontLibrary.fontCollectionSmallText
  private val fontCollectionLargeText: FontCollection = fontLibrary.fontCollectionLargeText
  private val fontCollectionMenu: FontCollection = fontLibrary.fontCollectionMenu
  private val fontCollectionBanner: FontCollection = fontLibrary.fontCollectionBanner
  private val fontCollectionButtons: FontCollection = fontLibrary.fontCollectionButtons
  private val fontCollectionLogo: FontCollection = fontLibrary.fontCollectionLogo

  val fontNavigatorDefaultText: FontNavigator = fontNavigation(selectedFontFamilyDefault, "Trebuchet MS", FontTheatreModel.PARAMETER_NAME_FONT_DEFAULT_TEXT, fontCollectionDefaultText, parameters)
  val fontNavigatorNormalText: FontNavigator = fontNavigation(selectedFontFamilyNormalText, "Verdana", FontTheatreModel.PARAMETER_NAME_FONT_NORMAL_TEXT, fontCollectionNormalText, parameters)
  val fontNavigatorHeadingsText: FontNavigator = fontNavigation(selectedFontFamilyHeadings, "Urbano Cond", FontTheatreModel.PARAMETER_NAME_FONT_HEADINGS_TEXT, fontCollectionHeadings, parameters)
  val fontNavigatorSmallText: FontNavigator = fontNavigation(selectedFontFamilySmallText, "Lucida Sans Unicode", FontTheatreModel.PARAMETER_NAME_FONT_SMALL_TEXT, fontCollectionSmallText, parameters)
  val fontNavigatorLargeText: FontNavigator = fontNavigation(selectedFontFamilyLargeText, "Oswald", FontTheatreModel.PARAMETER_NAME_FONT_LARGE_TEXT, fontCollectionLargeText, parameters)
  val fontNavigatorMenuText: FontNavigator = fontNavigation(selectedFontFamilyMenu, "Lucida Console", FontTheatreModel.PARAMETER_NAME_FONT_MENU_TEXT, fontCollectionMenu, parameters)
  val fontNavigatorBannerText: FontNavigator = fontNavigation(selectedFontFamilyBanner, "Tahoma", FontTheatreModel.PARAMETER_NAME_FONT_BANNER_TEXT, fontCollectionBanner, parameters)
  val fontNavigatorButtonsText: FontNavigator = fontNavigation(selectedFontFamilyButtons, "Trebuchet MS", FontTheatreModel.PARAMETER_NAME_FONT_BUTTONS_TEXT, fontCollectionButtons, parameters)
  val fontNavigatorLogoText: FontNavigator = fontNavigation(selectedFontFamilyLogo, "Urbano Cond", FontTheatreModel.PARAMETER_NAME_FONT_LOGO_TEXT, fontCollectionLogo, parameters)

  // TODO: java.util.List
  def fontDemoTemplateInfoList(): java.util.List[FontDemoTemplateInfo] = FontTheatreModel.REPOSITORIES_LOCATOR.getFontDemoTemplateInfoRepository().getAll()

  // TODO: java.util.List
  def fontCollectionList(): java.util.List[FontCollection] = FontTheatreModel.REPOSITORIES_LOCATOR.getFontCollectionRepository().getAll()

  private def fontNavigation(
                              selectedFontKey: String,
                              defaultValue: String,
                              fontParameterName: String,
                              fontCollection: FontCollection,
                              parameters: Parameters
                              ): FontNavigator = {
    val fontKey: String = valueOrDefault(selectedFontKey, defaultValue)

    def defaultFont(): Font = fontCollection.fonts.head
    var currentFont: Font = valueOrDefault(fontCollection.getFontByKey(fontKey), defaultFont)

    val previousFont: Font = fontCollection.findPreceedingFont(currentFont)
    val nextFont: Font = fontCollection.findSuccedingFont(currentFont)

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

  val availableHeadingFonts: FontCollection =
  //FontLibrary.typekitGoodWindowsRenderingSansSerifs
  //FontLibrary.typekitGoodWindowsRenderingSansSerifs
  //FontLibrary.typekitGoodWindowsRenderingSerifs
  //FontLibrary.fontFaceFonts
  //FontLibrary.featuredGoogleWebFontsSansSerifHeadings
  //FontLibrary.featuredGoogleWebFontsSlabSerifHeadings
    DefaultFontLibrary.newGoogleWebFonts
  //FontLibrary.cufonFonts
  //FontLibrary.typekitBestRenderingSansSerifs20Px
  //FontLibrary.installedFonts
  //FontLibrary.goodNormalTextFonts12Px
  //FontLibrary.cssFontFaceFonts
  val availableNormalTextFonts: FontCollection = DefaultFontLibrary.normalTextFonts

  private def REPOSITORIES_LOCATOR: RepositoriesLocator = new SimpleRepositoriesLocator

  def apply(parameters: Parameters, fontDemoTemplateName: String, fontLibrary: FontLibrary): FontTheatreModel = {
    val parameterFontCollectionHeadings: String = parameters.getSingleValue(FontTheatreModel.PARAMETER_NAME_FONT_COLLECTION_HEADINGS)
    val parameterFontFamilyDefault: String = parameters.getSingleValue(FontTheatreModel.PARAMETER_NAME_FONT_DEFAULT_TEXT)
    val parameterFontFamilyNormalText: String = parameters.getSingleValue(FontTheatreModel.PARAMETER_NAME_FONT_NORMAL_TEXT)
    val parameterFontFamilyHeadings: String = parameters.getSingleValue(FontTheatreModel.PARAMETER_NAME_FONT_HEADINGS_TEXT)
    val parameterFontFamilySmallText: String = parameters.getSingleValue(FontTheatreModel.PARAMETER_NAME_FONT_SMALL_TEXT)
    val parameterFontFamilyLargeText: String = parameters.getSingleValue(FontTheatreModel.PARAMETER_NAME_FONT_LARGE_TEXT)
    val parameterFontFamilyMenu: String = parameters.getSingleValue(FontTheatreModel.PARAMETER_NAME_FONT_MENU_TEXT)
    val parameterFontFamilyBanner: String = parameters.getSingleValue(FontTheatreModel.PARAMETER_NAME_FONT_BANNER_TEXT)
    val parameterFontFamilyButtons: String = parameters.getSingleValue(FontTheatreModel.PARAMETER_NAME_FONT_BUTTONS_TEXT)
    val parameterFontFamilyLogo: String = parameters.getSingleValue(FontTheatreModel.PARAMETER_NAME_FONT_LOGO_TEXT)

    val model = new FontTheatreModel(
      new FontDemoTemplateInfo(fontDemoTemplateName),
	      parameterFontCollectionHeadings,
	      parameterFontFamilyDefault,
	      parameterFontFamilyNormalText,
	      parameterFontFamilyHeadings,
	      parameterFontFamilySmallText,
	      parameterFontFamilyLargeText,
	      parameterFontFamilyMenu,
	      parameterFontFamilyBanner,
	      parameterFontFamilyButtons,
	      parameterFontFamilyLogo,
	      parameters,
	      fontLibrary)

    model
  }
  
  private def fontCollection(fontCollectionId: String, defaultFontCollection: FontCollection): FontCollection = {
    val fontCollection = REPOSITORIES_LOCATOR.getFontCollectionRepository().findById(fontCollectionId);

    return if (fontCollection == null) defaultFontCollection else fontCollection
  }

}