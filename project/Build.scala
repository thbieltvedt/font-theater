import sbt._
import Keys._

object ApplicationBuild extends Build {

  val appName = "font-theater"
  val appVersion = "1.1-SNAPSHOT"

  val appDependencies = Seq(
    "org.fusesource.scalate" % "scalate-core_2.10" % "1.6.1"
  )

  val main = play.Project(appName, appVersion, appDependencies).settings(
    resolvers += Resolver.url("Font Theater Play Repository", url("http://thbieltvedt.github.com/releases-font-theater"))(Resolver.ivyStylePatterns)
  )
}