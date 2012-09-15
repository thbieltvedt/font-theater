package fonttheater.repositories.simple

import scala.collection.mutable.HashMap
import java.util.List
import scala.collection.JavaConversions
import fonttheater.repositories.FontDemoTemplateInfoRepository
import fonttheater.models.FontDemoTemplateInfo

class SimpleFontDemoTemplateInfoRepository extends FontDemoTemplateInfoRepository {
	
	def getById(id: String): FontDemoTemplateInfo = {
		val value: FontDemoTemplateInfo = findById(id)
		
		if (value == null) {
			throw new IllegalArgumentException("Invalid id: " + id)
		}

		return value
	}

	def findById(id: String): FontDemoTemplateInfo =
		SimpleFontDemoTemplateInfoRepository.fontDemoTemplateInfosById.get(id).getOrElse(null)

	def getAll(): List[FontDemoTemplateInfo] = 
	  	JavaConversions.seqAsJavaList(SimpleFontDemoTemplateInfoRepository.fontDemoTemplateInfosById.values.toSeq)
}


object SimpleFontDemoTemplateInfoRepository {
	private val fontDemoTemplateInfosById = new HashMap[String, FontDemoTemplateInfo]()
	
 	private def registrate(fontDemoTemplateInfo: FontDemoTemplateInfo): Unit = 
		fontDemoTemplateInfosById.put(fontDemoTemplateInfo.id, fontDemoTemplateInfo)

	registrate(new FontDemoTemplateInfo("page1"));
	registrate(new FontDemoTemplateInfo("page2"));
	registrate(new FontDemoTemplateInfo("page3"));
	registrate(new FontDemoTemplateInfo("page4"));
	registrate(new FontDemoTemplateInfo("demo_poster_1"));
	registrate(new FontDemoTemplateInfo("demo_poster_2"));
	registrate(new FontDemoTemplateInfo("demo_poster_3"));
	registrate(new FontDemoTemplateInfo("demo_poster_4"));
	registrate(new FontDemoTemplateInfo("demo_poster_5"));
	registrate(new FontDemoTemplateInfo("waterfall"));
	registrate(new FontDemoTemplateInfo("waterfall1"));
	registrate(new FontDemoTemplateInfo("colors"));
}