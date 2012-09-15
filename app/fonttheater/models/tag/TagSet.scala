package fonttheater.models.tag

import scala.collection.mutable.HashMap

class TagSet(val tags: Seq[Tag]) {
  private val tagsByName = new HashMap[String, Tag]()
  for (tag <- tags) {
    tagsByName.put(tag.name, tag)
  }

  def getTagByName(tagName: String): Option[Tag] =
    tagsByName.get(tagName)

  def containsTag(tagName: String): Boolean =
    tagsByName.contains(tagName)
}