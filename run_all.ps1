Write-Host "1) mvn -v"
mvn -v
Write-Host ""

Write-Host "2) mvn validate"
mvn validate
Write-Host ""

Write-Host "3) mvn compile"
mvn compile
Write-Host "Compiled classes are inside jar-demo\target\classes and war-demo\target\classes"
Write-Host ""

Write-Host "4) mvn test"
mvn test
Write-Host "Surefire reports: jar-demo\target\surefire-reports"
Write-Host "JaCoCo coverage:  jar-demo\target\site\jacoco"
Write-Host ""

Write-Host "5) mvn package"
mvn package
Write-Host "JAR: jar-demo\target\jar-demo.jar"
Write-Host "WAR: war-demo\target\war-demo.war"
Write-Host ""

Write-Host "6) mvn install"
mvn install
Write-Host "Installed into: %USERPROFILE%\.m2\repository\com\example\"
Write-Host ""

Write-Host "Run JAR:"
Write-Host "  java -jar jar-demo\target\jar-demo.jar"
