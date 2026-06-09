# Bump the patch version in app.json (e.g., 1.0.0.1 -> 1.0.0.2)
$AppJsonPath = Join-Path $PSScriptRoot '..\app.json'
if (-not (Test-Path $AppJsonPath)) { Write-Error "app.json not found at $AppJsonPath"; exit 1 }
$json = Get-Content $AppJsonPath -Raw | ConvertFrom-Json
$version = $json.version -split '\.' | ForEach-Object {[int]$_}
if ($version.Length -lt 3) { Write-Error "Version format invalid: $($json.version)"; exit 1 }
# Increment patch
$version[2] = $version[2] + 1
$newVersion = "$($version[0]).$($version[1]).$($version[2])"
$json.version = $newVersion
# Write back
$json | ConvertTo-Json -Depth 10 | Set-Content $AppJsonPath -Encoding UTF8
Write-Output "Bumped version to $newVersion"
# Optionally trigger build if alc is available (uncomment to enable)
# & alc.exe /project:"$PSScriptRoot\.."
