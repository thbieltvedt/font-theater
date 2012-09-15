package fonttheater.repositories;

import java.util.List;


trait EntityRepository[T] {
	def getById(id: String): T
	def findById(id: String): T
	def getAll(): List[T]	
}
