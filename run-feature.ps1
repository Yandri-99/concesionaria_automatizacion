param(
    [string]$Feature = "demoblaze.feature",
    [string]$Tag = ""
)

# Navega al directorio del proyecto
$projectDir = Split-Path -Parent $MyInvocation.MyCommand.Path

# Ejecuta Maven con los parámetros de Karate
if ($Tag) {
    & mvn clean test "-Dkarate.options=--tags $Tag"
} else {
    & mvn clean test
}
