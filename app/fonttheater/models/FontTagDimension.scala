package fonttheater.models

import tag.TagDimension

sealed abstract class FontTagDimension(val name: String) extends TagDimension

case object FontSource extends FontTagDimension("FontSource")

case object FontClassification extends FontTagDimension("Font classification")

case object FontStretch extends FontTagDimension("Font stretch")

case object FontWeight extends FontTagDimension("Font weight")