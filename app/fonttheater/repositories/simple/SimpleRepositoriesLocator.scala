package fonttheater.repositories.simple

import fonttheater.repositories.{FontDemoTemplateInfoRepository, FontCollectionRepository, RepositoriesLocator}

class SimpleRepositoriesLocator extends RepositoriesLocator {
	val getFontCollectionRepository: FontCollectionRepository = new SimpleFontCollectionRepository()
	val getFontDemoTemplateInfoRepository: FontDemoTemplateInfoRepository = new SimpleFontDemoTemplateInfoRepository()  
}