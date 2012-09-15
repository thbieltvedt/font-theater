package fonttheater.models

import tag.{TagSet, Tag}

class FontOld(val name: String, val weightName: String, val weight: Int, val tags: TagSet) {
  def this(name: String, tags: TagSet) = this(name, Defaults.weightName, Defaults.weight, tags)

  def this(name: String, tags: Tag*) = this(name, new TagSet(tags))

  def this(name: String, weightName: String, weight: Int, tags: Tag*) = this(name, weightName, weight, new TagSet(tags))


  def isCssFontFaceFont(): Boolean =
    tags.containsTag(FontLibrary.TAG_CSS_BASED_FONT_FACE_FONT.name)

  def isFontFaceFont(): Boolean =
    tags.containsTag(FontLibrary.TAG_FONT_FACE_FONT.name)

  def isGoogleWebFontsFont(): Boolean =
    return tags.containsTag(FontLibrary.TAG_GOOGLE_WEB_FONT.name)

  def isFontsDotComFont(): Boolean =
    return tags.containsTag(FontLibrary.TAG_FONTS_DOT_COM_FONT.name)

  def isCufonFont(): Boolean =
    return tags.containsTag(FontLibrary.TAG_CUFON_FONT.name)

}


object Defaults {
  val weightName = ""
  val weight = 400
}
