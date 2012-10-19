package fonttheater.models

import scala.collection.mutable.HashMap
import utils.Utils._

class FontCollection(val id: String, val fonts: List[Font]) {
  def this(id: String, fontLists: Font*) = this(id, fontLists.toList)

  private val fontsByName: Map[String, Font] =
    mapFromList[String, Font](fonts, fontKey)

  FontCollection.registrateFontCollection(FontCollection.this)

  def getFontByKey(fontKey: String): Font = fontsByName.get(fontKey).getOrElse(null)

  def fontKey(font: Font): String = (font.name + ":" + font.weight)

  def findSuccedingFont(fontInCollection: Font): Font = {
    val fontIndex = findFontIndex(fontInCollection)

    if (fontIndex < 0) {
      throw new IllegalArgumentException("Illegal fontInCollection argument; font '" + fontInCollection.name + "' does not exist in this font collection.");
    }

    return if (fontIndex < (fonts.length - 1)) fonts(fontIndex + 1) else null
  }

  def findPreceedingFont(fontInCollection: Font): Font = {
    val fontIndex = findFontIndex(fontInCollection)

    if (fontIndex < 0) {
      throw new IllegalArgumentException("Illegal fontInCollection argument; font '" + fontInCollection.name + "' does not exist in this font collection.");
    }

    return if (fontIndex > 0) fonts(fontIndex - 1) else null
  }


  private def findFontIndex(font: Font): Int = fonts.indexOf(font)
}

object FontCollection {
  private val fontCollectionsById = new HashMap[String, FontCollection]

  def findFontCollectionById(id: String): FontCollection =
    fontCollectionsById.get(id).getOrElse(null)

  def allFontCollections(): Seq[FontCollection] = fontCollectionsById.values.toSeq

  private def registrateFontCollection(fontCollection: FontCollection): Unit =
    fontCollectionsById.put(fontCollection.id, fontCollection)
}