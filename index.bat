@echo off
rem ============================================================
rem  SPPC - Entrenador de Lectura
rem  Abre la aplicacion en modo "app" (ventana propia, sin barra
rem  de navegador). Funciona sin internet. Windows 11.
rem ============================================================
setlocal
set "ARCHIVO=%~dp0index.html"

rem 1) Intentar con Microsoft Edge (viene instalado en Windows 11)
if exist "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" (
  start "SPPC Lectura" "%ProgramFiles(x86)%\Microsoft\Edge\Application\msedge.exe" --app="%~dp0index.html"
  exit /b
)
if exist "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" (
  start "SPPC Lectura" "%ProgramFiles%\Microsoft\Edge\Application\msedge.exe" --app="%~dp0index.html"
  exit /b
)

rem 2) Intentar con Google Chrome
if exist "%ProgramFiles%\Google\Chrome\Application\chrome.exe" (
  start "SPPC Lectura" "%ProgramFiles%\Google\Chrome\Application\chrome.exe" --app="%~dp0index.html"
  exit /b
)
if exist "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" (
  start "SPPC Lectura" "%ProgramFiles(x86)%\Google\Chrome\Application\chrome.exe" --app="%~dp0index.html"
  exit /b
)

rem 3) Si no hay Edge ni Chrome, abrir con el navegador predeterminado
start "" "%~dp0index.html"
