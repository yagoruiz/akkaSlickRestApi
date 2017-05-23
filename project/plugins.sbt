logLevel := Level.Warn

resolvers += Resolver.url(
  "sbt-plugin-releases on bintray",
  new URL("https://dl.bintray.com/sbt/sbt-plugin-releases/")
)(Resolver.ivyStylePatterns)

addSbtPlugin("com.typesafe.sbt" % "sbt-native-packager" % "1.2.0-M9")