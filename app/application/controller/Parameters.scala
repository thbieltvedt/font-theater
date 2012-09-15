package application.controller

class Parameters(val map: Map[String, Seq[String]]) {
  def getSingleValue(name: String): String = {
    val values: Seq[String] = getValues(name)

    if (values == null) null else values.head
  }

  def getSingleValue(name: String, default: String): String = {
    val values: Seq[String] = getValues(name)

    if (values == null) default else values.head
  }

  def getValues(name: String): Seq[String] = map.get(name).getOrElse(null)
}