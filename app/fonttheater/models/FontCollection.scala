package fonttheater.models

import scala.collection.mutable.HashMap
import utils.Utils._

class FontCollection(val id: String, val fonts: List[FontOld]) {
  def this(id: String, fontLists: FontOld*) = this(id, fontLists.toList)

  private val fontsByName: Map[String, FontOld] =
    mapFromList[String, FontOld](fonts, fontKey)

  FontCollection.registrateFontCollection(this)

  def getFontByKey(fontKey: String): FontOld = fontsByName.get(fontKey).getOrElse(null)

  def fontKey(font: FontOld): String = (font.name + ":" + font.weight)

  def findSuccedingFont(fontInCollection: FontOld): FontOld = {
    val fontIndex = findFontIndex(fontInCollection)

    if (fontIndex < 0) {
      throw new IllegalArgumentException("Illegal fontInCollection argument; font '" + fontInCollection.name + "' does not exist in this font collection.");
    }

    return if (fontIndex < (fonts.length - 1)) fonts(fontIndex + 1) else null
  }

  def findPreceedingFont(fontInCollection: FontOld): FontOld = {
    val fontIndex = findFontIndex(fontInCollection)

    if (fontIndex < 0) {
      throw new IllegalArgumentException("Illegal fontInCollection argument; font '" + fontInCollection.name + "' does not exist in this font collection.");
    }

    return if (fontIndex > 0) fonts(fontIndex - 1) else null
  }


  private def findFontIndex(font: FontOld): Int = fonts.indexOf(font)
}

object FontCollection {
  private val fontCollectionsById = new HashMap[String, FontCollection]

  def findFontCollectionById(id: String): FontCollection =
    fontCollectionsById.get(id).getOrElse(null)

  def allFontCollections(): Seq[FontCollection] = fontCollectionsById.values.toSeq

  private def registrateFontCollection(fontCollection: FontCollection): Unit =
    fontCollectionsById.put(fontCollection.id, fontCollection)
}