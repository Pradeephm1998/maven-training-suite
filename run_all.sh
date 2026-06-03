#!/usr/bin/env bash
set -euo pipefail

echo "1) mvn -v"
mvn -v
echo

echo "2) mvn validate"
mvn validate
echo

echo "3) mvn compile"
mvn compile
echo "✅ Compiled classes: jar-demo/target/classes and war-demo/target/classes"
echo

echo "4) mvn test"
mvn test
echo "✅ Surefire reports: jar-demo/target/surefire-reports"
echo "✅ JaCoCo coverage:   jar-demo/target/site/jacoco"
echo

echo "5) mvn package"
mvn package
echo "✅ JAR: jar-demo/target/jar-demo.jar"
echo "✅ WAR: war-demo/target/war-demo.war"
echo

echo "6) mvn install"
mvn install
echo "✅ Installed into: ~/.m2/repository/com/example/"
echo

echo "Run JAR:"
echo "  java -jar jar-demo/target/jar-demo.jar"
echo
echo "Deploy WAR to Tomcat:"
echo "  cp war-demo/target/war-demo.war $CATALINA_HOME/webapps/"
echo "  Open http://<HOST>:8080/war-demo/hello"
