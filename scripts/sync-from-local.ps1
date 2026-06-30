param(
    [switch]$Push,
    [string]$Message = "sync thinking flow skills"
)

$ErrorActionPreference = "Stop"

$RepoRoot = Resolve-Path (Join-Path $PSScriptRoot "..")
$SourceRoot = Join-Path $env:USERPROFILE ".cc-switch\skills"
$Skills = @("frame", "simplify", "calibrate", "explain", "attack")

foreach ($Skill in $Skills) {
    $Source = Join-Path $SourceRoot "$Skill\SKILL.md"
    if (-not (Test-Path -LiteralPath $Source)) {
        throw "Missing source skill: $Source"
    }

    $DestinationDir = Join-Path $RepoRoot "skills\$Skill"
    New-Item -ItemType Directory -Force -Path $DestinationDir | Out-Null
    Copy-Item -LiteralPath $Source -Destination (Join-Path $DestinationDir "SKILL.md") -Force
}

foreach ($Skill in $Skills) {
    $Destination = Join-Path $RepoRoot "skills\$Skill\SKILL.md"
    if (-not (Test-Path -LiteralPath $Destination)) {
        throw "Sync failed, missing destination: $Destination"
    }
    if ((Get-Item -LiteralPath $Destination).Length -le 0) {
        throw "Sync failed, empty destination: $Destination"
    }
}

Write-Host "Synced skills from $SourceRoot to $RepoRoot"

if ($Push) {
    git -C $RepoRoot status --short
    git -C $RepoRoot add README.md scripts/sync-from-local.ps1 skills

    $Pending = git -C $RepoRoot status --porcelain
    if (-not $Pending) {
        Write-Host "No changes to commit."
        exit 0
    }

    git -C $RepoRoot commit -m $Message
    git -C $RepoRoot push
}
