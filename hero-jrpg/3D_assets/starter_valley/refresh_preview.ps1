param([string]$GodotPath = 'F:\Godot\Godot_v4.7.2-stable_mono_win64\Godot_v4.7.2-stable_mono_win64.exe')
$ErrorActionPreference = 'Stop'
$projectDirectory = (Resolve-Path -LiteralPath (Join-Path $PSScriptRoot '..\..')).Path
if (-not (Test-Path -LiteralPath $GodotPath)) { throw 'Supply the installed Godot executable with -GodotPath.' }
& $GodotPath --headless --path $projectDirectory --editor --import | Out-Host
if ($LASTEXITCODE -ne 0) { throw 'Godot import failed.' }
& $GodotPath --headless --path $projectDirectory --script res://3D_assets/starter_valley/review/tools/build_godot.gd | Out-Host
if ($LASTEXITCODE -ne 0) { throw 'Godot preview rebuild failed.' }
Write-Host 'Preview and asset collision refreshed. Open Godot and press F5.'
