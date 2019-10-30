$ahk2exe = "C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe"

$ahk2exep = Start-Process -FilePath $ahk2exe -ArgumentList "/in ShiftCtrlBsIme.ahk /out ShiftCtrlBsIme.exe /cp 65001" -Wait -PassThru

#if ($ahk2exep.ExitCode -ne 0) {
#    exit
#}
