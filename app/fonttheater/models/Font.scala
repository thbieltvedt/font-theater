package fonttheater.models

class Font(
             val name: String, 
             val displayName: String, 
             val weightName: String, 
             val weight: Int, 
             val fontSource: FontSource2, 
             val letterSpacingFactor: Double = Font.defaultLetterSpacingFactor) {

  def this(name: String, fontSource: FontSource2, letterSpacingFactor: Double = Font.defaultLetterSpacingFactor) =
    this(name, name, Defaults.weightName, Defaults.weight, fontSource, letterSpacingFactor)

  def this(name: String, displayName: String = null, fontSource: FontSource2, letterSpacingFactor: Double = Font.defaultLetterSpacingFactor) =
    this(name, Option(displayName).getOrElse(name), Defaults.weightName, Defaults.weight, fontSource, letterSpacingFactor)

  def isCssFontFaceFont(): Boolean = fontSource.isInstanceOf[CssFontFace]

  def isFontFaceFont(): Boolean = fontSource.isInstanceOf[FontFace]

  def isGoogleWebFontsFont(): Boolean = fontSource.isInstanceOf[GoogleWebFonts]

  def isFontsDotComFont(): Boolean = fontSource.isInstanceOf[FontsDotCom]

  def isCufonFont(): Boolean = fontSource.isInstanceOf[Cufon]
}

object Font {
  private val defaultLetterSpacingFactor = 0

  private def resolveDisplayName(name: String) = name
}

sealed class FontSource2(val fontFilePath: String)

case class ClientOsInstalled() extends FontSource2(null)

case class CssFontFace(fontFilePath2: String) extends FontSource2(fontFilePath2)

case class FontFace(fontFilePath2: String) extends FontSource2(fontFilePath2)

case class GoogleWebFonts(fontFilePath2: String) extends FontSource2(fontFilePath2)

case class FontsDotCom(fontFilePath2: String) extends FontSource2(fontFilePath2)

case class Cufon(fontFilePath2: String) extends FontSource2(fontFilePath2)

object Defaults {
  val weightName = ""
  val weight = 400
}