package utils

import scala.collection.mutable.HashMap

object Utils {
  
	def valueOrDefault[T](value: T, defaultValue: T) =
		if (value == null) defaultValue else value
		
	def valueOrDefault[T](value: T, defaultValueFunction: () => T) =
		if (value == null) defaultValueFunction() else value
		
	def mapFromList[K, E](list: List[E], keyFunction: (E) => K): Map[K, E] = {
		val mutableMap = new HashMap[K, E]	
		list.foreach{e: E => mutableMap.put(keyFunction(e), e)}
		
		return mutableMap.toMap
	}
}