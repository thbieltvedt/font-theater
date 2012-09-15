import sbt._
import Keys._
import PlayProject._

object ApplicationBuild extends Build {

    val appName         = "play2-font-theatre"
    val appVersion      = "1.0-SNAPSHOT"

    val appDependencies = Seq(
      "org.fusesource.scalate" % "scalate-core" % "1.5.3"
    )

    val main = PlayProject(appName, appVersion, appDependencies, mainLang = JAVA).settings(
      // Add your own project settings here      
    )

}