package fonttheater.models.tag

class Tag private(val name: String, val parentTag: Tag, val dimension: TagDimension) {
  def this(name: String, dimension: TagDimension) = this(name, null, dimension)

  def this(name: String, parentTag: Tag) = this(name, parentTag, parentTag.dimension)
}