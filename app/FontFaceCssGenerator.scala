//import scala.io.Source
//import java.io.File
//import org.apache.commons.io.IOUtils
//import java.io.FileWriter
//import java.io.Writer
//import java.io.FileReader
//import sun.misc.BASE64Encoder
//import java.io.FileInputStream
//import java.io.FileOutputStream
//import java.io.InputStream
//import java.io.OutputStream
//import org.apache.commons.io.output.WriterOutputStream
//import java.io.FilterOutputStream
//import java.io.BufferedOutputStream

object FontFaceCssGenerator {
//	private val DEFAULT_FONT_WEIGHT = "400";
//	private val DEFAULT_FONT_STYLE = "normal";
//	private val DEFAULT_FONT_FORMAT = "opentype";
//	
//  
//	private val fontFilesFolderPath: String = "C:/Users/THB/Temp/OTF-files/"
//	private val outputFolderPath: String = "C:/Users/THB/Temp/OTF-files/output"
//			
//    
//    private def execute() {
//	  val fontFilesFolder = new File(fontFilesFolderPath)
//	  val fontFiles: Array[File] = fontFilesFolder.listFiles()
//	  fontFiles.filter(_.isFile()).foreach(processFontFile(_))
//	}
//	
//	
//	private def processFontFile(file: File) {
//	  val parsedFileName: ParsedFileName = parseFontFileName(file)
//	  val cssFileName: String = (parsedFileName.fontFamily + "_" + parsedFileName.weight + "_" + parsedFileName.style + ".css").toLowerCase
//	  val cssFile = new File(outputFolderPath, cssFileName)
//	  cssFile.getParentFile().mkdirs()
//	  cssFile.createNewFile()
//	  
//	  println(parsedFileName.fontFamily + " " + parsedFileName.weight + " " + parsedFileName.style + " " + parsedFileName.format)
//	  
//	  var fileWriter: OutputStream = null
//	  try {
//		  fileWriter = new FileOutputStream(cssFile)
//		  writeCssContent(parsedFileName, file, fileWriter)
//	  }
//	  finally {
//	    IOUtils.closeQuietly(fileWriter)
//	  }
//	}
//	
//	
//	private def parseFontFileName(file: File): ParsedFileName = {
//	  val fileName = new FileName(file.getName())
//	  val parts: Array[String] = fileName.fileNameWithoutExtension.split("_")
//	  
//	  if (parts.length > 3) throw new IllegalArgumentException("Illegal font file name: '" + fileName.fileName + "'. Must be on the format TODO.")
//	  
//	  def getPart(index: Int): Option[String] = if(parts.length > index) Option(parts(index)) else None
//	  
//	  val fontFamily: String = getPart(0).get
//	  val weight: String = getPart(1).getOrElse(DEFAULT_FONT_WEIGHT)
//	  val style: String = getPart(2).getOrElse(DEFAULT_FONT_STYLE)
//	  val format: String = fileName.extension.get  
//	  
//	  new ParsedFileName(fontFamily, weight, style, format)
//	}
//	
//	
//	private def writeCssContent(font: ParsedFileName, inputFontFile: File, writer: OutputStream) {
//	  IOUtils.write(
//		"@font-face {\n" + 
//		"    font-family: '" + font.fontFamily + "';\n" + 
//		"    src: url(data:font/" + DEFAULT_FONT_FORMAT + ";charset=utf-8;base64,", writer)
//		writeFileContentBase64Encoded(inputFontFile, writer)
//		IOUtils.write(") format('" + DEFAULT_FONT_FORMAT + "');\n" + 
//		"    font-weight: " + font.weight + ";\n" +
//		"    font-style: " + font.style.toLowerCase() + ";\n" +
//		"}", writer)
//	}
//	
//	
//	private def writeFileContentBase64Encoded(file: File, writer: OutputStream) {
//		var fileInputStream: InputStream = null 
//		try {
//			fileInputStream = new FileInputStream(file)
//			new BASE64Encoder().encode(fileInputStream, new LineFeedFilteringOutputStream(writer))
//		}
//		finally {
//			IOUtils.closeQuietly(fileInputStream)
//		}
//	}
//	
//	
//	private class ParsedFileName(val fontFamily: String, val weight: String, val style: String, val format: String)
//	
//	private class FileName(val fileName: String) {
//		private val startIndexExtension: Int = fileName.lastIndexOf(".") + 1 	  
//		lazy val extension: Option[String] = if (hasExtension()) Option(fileName.substring(startIndexExtension)) else None
//		lazy val fileNameWithoutExtension = fileName.substring(0, startIndexExtension - 1)		
//		
//		def hasExtension(): Boolean = (startIndexExtension >= 0)
//	}
//
//	private class LineFeedFilteringOutputStream(outputStream: OutputStream) extends FilterOutputStream(outputStream) {
//	   override def write(b: Int) {
//		   if (!isLineBreakCharacter(b)) {
//			   super.write(b)
//		   }
//	   }
//	   
//	   private def isLineBreakCharacter(char: Int): Boolean = (char == '\r' || char == '\n')
//	}
//	
//	def main(args: Array[String]) {
//	  FontFaceCssGenerator.execute()	  
//	}
}