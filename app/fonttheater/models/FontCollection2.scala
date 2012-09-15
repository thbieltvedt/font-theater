package fonttheater.models

import scala.collection.mutable.HashMap
import utils.Utils._

class FontCollection2(val id: String, val fonts: List[Font2]) {
  def this(id: String, fontLists: Font2*) = this(id, fontLists.toList)

  private val fontsByName: Map[String, Font2] =
    mapFromList[String, Font2](fonts, fontKey)

  FontCollection2.registrateFontCollection(this)

  def getFontByKey(fontKey: String): Font2 = fontsByName.get(fontKey).getOrElse(null)

  def fontKey(font: Font2): String = (font.name + ":" + font.weight)

  def findSuccedingFont(fontInCollection: Font2): Font2 = {
    val fontIndex = findFontIndex(fontInCollection)

    if (fontIndex < 0) {
      throw new IllegalArgumentException("Illegal fontInCollection argument; font '" + fontInCollection.name + "' does not exist in this font collection.");
    }

    return if (fontIndex < (fonts.length - 1)) fonts(fontIndex + 1) else null
  }

  def findPreceedingFont(fontInCollection: Font2): Font2 = {
    val fontIndex = findFontIndex(fontInCollection)

    if (fontIndex < 0) {
      throw new IllegalArgumentException("Illegal fontInCollection argument; font '" + fontInCollection.name + "' does not exist in this font collection.");
    }

    return if (fontIndex > 0) fonts(fontIndex - 1) else null
  }


  private def findFontIndex(font: Font2): Int = fonts.indexOf(font)
}

object FontCollection2 {
  private val fontCollectionsById = new HashMap[String, FontCollection2]

  def findFontCollectionById(id: String): FontCollection2 =
    fontCollectionsById.get(id).getOrElse(null)

  def allFontCollections(): Seq[FontCollection2] = fontCollectionsById.values.toSeq

  private def registrateFontCollection(fontCollection: FontCollection2): Unit =
    fontCollectionsById.put(fontCollection.id, fontCollection)
}