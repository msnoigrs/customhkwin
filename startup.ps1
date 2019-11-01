$curdir = Convert-Path .

$startup = $env:APPDATA + "\Microsoft\Windows\Start Menu\Programs\Startup"
$wsshell = New-Object -ComObject WScript.Shell
$emacssc = $wsshell.CreateShortcut($startup + "\ShiftIme.lnk")
$emacssc.TargetPath = $curdir + "\ShiftIme.exe"
$emacssc.Save()
