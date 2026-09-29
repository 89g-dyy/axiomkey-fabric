$ErrorActionPreference = "Stop"

$root = Split-Path -Parent $PSScriptRoot
$required = @(
    "README.md",
    "README.zh-CN.md",
    "CHANGELOG.md",
    "CONTRIBUTING.md",
    "CODE_OF_CONDUCT.md",
    "LICENSING.md",
    "LICENSE",
    "LICENSE-HARDWARE",
    "LICENSE-DOCS",
    "DOC/architecture.md",
    "DOC/interface-overview.md",
    "HW/Baseboard/Images/baseboard-front.png",
    "HW/Baseboard/Images/baseboard-back.png",
    "HW/MKEY/Pinmaps/MKEY_IO_MAP.xlsx",
    "HW/BKEY/Pinmaps/BKEY_IO_MAP.xlsx",
    "HW/BKEY/Images/bkey-pinout.png",
    "FW/README.md",
    "AI_Knowledge_Base/PROJECT_CONTEXT.md",
    "AI_Knowledge_Base/INTERFACE_RULES.md",
    "3D_Print/README.md"
)

$missing = @()
foreach ($relativePath in $required) {
    $path = Join-Path $root $relativePath
    if (-not (Test-Path -LiteralPath $path)) {
        $missing += $relativePath
    }
}

if ($missing.Count -gt 0) {
    Write-Error ("Missing required repository items:`n - " + ($missing -join "`n - "))
}

$emptyFiles = @()
foreach ($relativePath in $required) {
    $path = Join-Path $root $relativePath
    $item = Get-Item -LiteralPath $path
    if (-not $item.PSIsContainer -and $item.Length -eq 0) {
        $emptyFiles += $relativePath
    }
}

if ($emptyFiles.Count -gt 0) {
    Write-Error ("Required repository files are empty:`n - " + ($emptyFiles -join "`n - "))
}

Write-Host "AxiomKey Fabric repository structure check passed ($($required.Count) required items)."
