package fonttheater.models

import application.controller.Parameters

class FontNavigator(
                     val current: Font,
                     val previous: Font,
                     val next: Font,
                     val fontCollection: FontCollection,
                     parameters: Parameters,
                     fontParameterName: String
                     ) {

  def queryStringNext(): String =
    queryString(next)

  def queryStringPrevious(): String =
    queryString(previous)

  private def queryString(font: Font): String = {
    val queryString = new StringBuffer()
    if (font != null) queryString.append(fontParameterName + "=" + font.name + ":" + font.weight)
    parameters.map.foreach {
      case (name, value) => queryString.append("&" + name + "=" + value.head)
    }

    return queryString.toString()
  }
}