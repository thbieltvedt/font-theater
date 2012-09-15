package fonttheater.models

import application.controller.Parameters

class FontNavigator(
                     val current: Font2,
                     val previous: Font2,
                     val next: Font2,
                     val fontCollection: FontCollection2,
                     parameters: Parameters,
                     fontParameterName: String
                     ) {

  def queryStringNext(): String =
    queryString(next)

  def queryStringPrevious(): String =
    queryString(previous)

  private def queryString(font: Font2): String = {
    val queryString = new StringBuffer()
    if (font != null) queryString.append(fontParameterName + "=" + font.name + ":" + font.weight)
    parameters.map.foreach {
      case (name, value) => queryString.append("&" + name + "=" + value.head)
    }

    return queryString.toString()
  }
}