$ahk2exe = "C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe"

$arg = "/in ShiftIme.ahk /out ShiftIme.exe /base `"C:\Program Files\AutoHotkey\v2\AutoHotkey64.exe`" /cp 65001"

$ahk2exep = Start-Process -FilePath $ahk2exe -ArgumentList $arg -Wait -PassThru
