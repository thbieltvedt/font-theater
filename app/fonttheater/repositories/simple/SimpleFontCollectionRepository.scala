package fonttheater.repositories.simple

import scala.collection.JavaConversions
import java.util.List
import fonttheater.repositories.FontCollectionRepository
import fonttheater.models.FontCollection2

class SimpleFontCollectionRepository extends FontCollectionRepository {

	def getById(id: String): FontCollection2 = {
		val fontCollection: FontCollection2 = findById(id)
		
		if (fontCollection == null) {
			throw new IllegalArgumentException("Invalid font collection ID: " + id)
		}
		
		return fontCollection;
	}

	def findById(id: String): FontCollection2 = FontCollection2.findFontCollectionById(id)

	def getAll(): List[FontCollection2] = JavaConversions.seqAsJavaList(FontCollection2.allFontCollections())  
}