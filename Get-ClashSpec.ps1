Set-StrictMode -Version Latest
$ErrorActionPreference = 'Stop'

$token = $env:COC_API_TOKEN
if (-not $token) { Write-Error "Set the COC_API_TOKEN environment variable before running this script." }

$specUrl = "https://api.clashofclans.com/v1"
$outPath = Join-Path $PSScriptRoot "swagger-source.yml"

Write-Host "Downloading spec from $specUrl ..."

Invoke-RestMethod -Uri $specUrl `
    -Headers @{ Authorization = "Bearer Token $token" } `
    -OutFile $outPath

Write-Host "Saved to $outPath"
