organization := "com.thoughtworks"

name := "chisel"

version := "0.1"

scalaVersion := "2.12.8"

libraryDependencies += "org.scala-lang.modules" %% "scala-parser-combinators" % "1.1.0"
libraryDependencies += "org.scalatest" %% "scalatest" % "3.0.5" % "test"
libraryDependencies += "edu.berkeley.cs" %% "chisel3" % "3.1.7"
libraryDependencies += "edu.berkeley.cs" %% "chisel-iotesters" % "1.2.9"
scalacOptions ++= Seq("-Xsource:2.11")