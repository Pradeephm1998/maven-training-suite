#!/usr/bin/env bash
set -euo pipefail

: "${CATALINA_HOME:?CATALINA_HOME is not set. Example: export CATALINA_HOME=/opt/tomcat}"

echo "Building WAR..."
mvn -pl war-demo clean package

WAR_PATH="war-demo/target/war-demo.war"
echo "Copying $WAR_PATH to $CATALINA_HOME/webapps/"
cp "$WAR_PATH" "$CATALINA_HOME/webapps/"

echo "Done ✅"
echo "Open: http://<HOST>:8080/war-demo/hello"
