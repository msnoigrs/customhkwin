$curdir = Convert-Path .

$startup = $env:APPDATA + "\Microsoft\Windows\Start Menu\Programs\Startup"
$wsshell = New-Object -ComObject WScript.Shell
$emacssc = $wsshell.CreateShortcut($startup + "\ShiftCtrlBsIme.lnk")
$emacssc.TargetPath = $curdir + "\ShiftCtrlBsIme.exe"
$emacssc.Save()
