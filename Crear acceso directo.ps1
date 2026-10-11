# ============================================================
#  SPPC - Entrenador de Lectura
#  Crea un acceso directo en el Escritorio de Windows 11.
#  Uso: clic derecho sobre este archivo -> "Ejecutar con PowerShell"
# ============================================================

$bat = Join-Path $PSScriptRoot "Abrir SPPC Lectura.bat"

if (-not (Test-Path $bat)) {
    Write-Host "No se encontro el archivo 'Abrir SPPC Lectura.bat' en esta carpeta." -ForegroundColor Red
    pause
    exit 1
}

$WshShell = New-Object -ComObject WScript.Shell
$Shortcut = $WshShell.CreateShortcut("$env:USERPROFILE\Desktop\SPPC Lectura.lnk")
$Shortcut.TargetPath = $bat
$Shortcut.WorkingDirectory = $PSScriptRoot
$Shortcut.Description = "SPPC - Entrenador de Lectura (prototipo local)"
$Shortcut.Save()

Write-Host ""
Write-Host "Listo. Se creo el acceso directo 'SPPC Lectura' en tu Escritorio." -ForegroundColor Green
Write-Host "Doble clic en ese icono para abrir la aplicacion." -ForegroundColor Green
pause
