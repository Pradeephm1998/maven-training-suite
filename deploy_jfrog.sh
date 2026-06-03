#!/usr/bin/env bash
set -euo pipefail

echo "This will run: mvn clean deploy"
echo "Make sure you updated parent pom URLs and added ~/.m2/settings.xml credentials for:"
echo "  - jfrog-releases"
echo "  - jfrog-snapshots"
echo
mvn clean deploy
