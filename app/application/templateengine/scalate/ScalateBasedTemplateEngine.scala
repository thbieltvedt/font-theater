package application.templateengine.scalate

import java.io.File
import org.fusesource.scalate
import ScalateBasedTemplateEngine.DEFAULT_ALLOW_RELOAD
import ScalateBasedTemplateEngine.DEFAULT_ALLOW_CACHING
import application.templateengine.TemplateEngine

case class ScalateBasedTemplateEngine(
  sourceDirectories: Traversable[File],
  classLoader: ClassLoader,
  allowReload: Boolean = DEFAULT_ALLOW_RELOAD,
  allowCaching: Boolean = DEFAULT_ALLOW_CACHING) 
extends TemplateEngine {

  private val templateEngine = new scalate.TemplateEngine(sourceDirectories)
  templateEngine.classLoader = classLoader
  templateEngine.allowReload = allowReload
  templateEngine.allowCaching = allowCaching

  override def executeTemplate(templatePath: String, attributes: Map[String, Any]): String =
    templateEngine.layout(templatePath, attributes)
}

object ScalateBasedTemplateEngine {
  val DEFAULT_ALLOW_RELOAD = false
  val DEFAULT_ALLOW_CACHING = true

  class Builder(sourceDirectories: Traversable[File], classLoader: ClassLoader) {
    def this(sourceDirectory: File, classLoader: ClassLoader) = this(List(sourceDirectory), classLoader)

    def this(sourceDirectoryPaths: Seq[String], classLoader: ClassLoader) = this(sourceDirectoryPaths.map(new File(_)), classLoader)

    def this(sourceDirectoryPath: String, classLoader: ClassLoader) = this(List(sourceDirectoryPath), classLoader)

    def build(allowReload: Boolean = DEFAULT_ALLOW_RELOAD, allowCaching: Boolean = DEFAULT_ALLOW_CACHING): ScalateBasedTemplateEngine =
      new ScalateBasedTemplateEngine(sourceDirectories, classLoader, allowReload = allowReload, allowCaching = allowCaching)
  }

}