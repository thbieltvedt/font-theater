package net.entio.templatetheater.codegenerator.parser

import org.fusesource.scalate.ssp.PageFragment
import org.fusesource.scalate.ssp.Directive
import org.fusesource.scalate.support.Text
import org.fusesource.scalate.support.{ Text, ScalaParseSupport }
import org.fusesource.scalate.ssp.AttributeFragment

private[parser] class AbstractTemplateTheaterParser extends ModifiedSspParser {
  
  override def directives: Parser[PageFragment] = super.directives | useExpression | macroExpression
  
  private val useExpressionDirective = ("#use" ~ anySpace ~ "(") ~ scalaExpression ~ (") as " ~ identifier)
  private val useExpression = useExpressionDirective ^^ { case ((p1 ~ p2 ~ p3) ~ (p4 ~ p5)) => UseFragment(p3, p5) }
  
  private val macroExpressionDirective = ("#macro" ~ anySpace ~ identifier ~ "(" ~ scalaExpression ~ ")")
  private val macroExpression = macroExpressionDirective ^^ { case (p1 ~ p2 ~ p3 ~ p4 ~ p5 ~ p6) => MacroFragment(p3, p5) }
  
}

case class MacroFragment(name: Text, code: Text) extends Directive("#macro")
case class UseFragment(uri: Text, asIdentifier: Text) extends Directive("#use")