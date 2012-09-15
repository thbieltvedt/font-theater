package fonttheater.repositories;

trait RepositoriesLocator {
	def getFontCollectionRepository(): FontCollectionRepository
	def getFontDemoTemplateInfoRepository(): FontDemoTemplateInfoRepository
}
