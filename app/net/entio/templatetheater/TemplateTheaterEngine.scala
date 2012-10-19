package net.entio.templatetheater

import java.io.File

import org.fusesource.scalate.TemplateEngine
import org.fusesource.scalate.support.CodeGenerator
import org.fusesource.scalate.util.FileResourceLoader

import net.entio.templatetheater.codegenerator.TplCodeGenerator


class TemplateTheaterEngine(sourceDirectories: Traversable[File]) extends TemplateEngine(sourceDirectories) {
  codeGenerators =
    Map(keyValue(new TplCodeGenerator))

  resourceLoader = new FileResourceLoader(sourceDirectories)
  
  private def keyValue(codeGenerator: CodeGenerator): (String, CodeGenerator) = (codeGenerator.stratumName.toLowerCase, codeGenerator)
}