package fonttheater.repositories.simple

import scala.collection.JavaConversions
import java.util.List
import fonttheater.repositories.FontCollectionRepository
import fonttheater.models.FontCollection

class SimpleFontCollectionRepository extends FontCollectionRepository {

	def getById(id: String): FontCollection = {
		val fontCollection: FontCollection = findById(id)
		
		if (fontCollection == null) {
			throw new IllegalArgumentException("Invalid font collection ID: " + id)
		}
		
		return fontCollection;
	}

	def findById(id: String): FontCollection = FontCollection.findFontCollectionById(id)

	def getAll(): List[FontCollection] = JavaConversions.seqAsJavaList(FontCollection.allFontCollections())  
}