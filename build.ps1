$ahk2exe = "C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe"

$ahk2exep = Start-Process -FilePath $ahk2exe -ArgumentList "/in ShiftIme.ahk /out ShiftIme.exe /cp 65001" -Wait -PassThru
