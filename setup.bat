@echo off
setlocal

powershell -NoProfile -ExecutionPolicy Unrestricted .\build.ps1
powershell -NoProfile -ExecutionPolicy Unrestricted .\startup.ps1

ShiftIme.exe

pause
