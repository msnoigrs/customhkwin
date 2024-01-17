#Include IMEv2.ahk

^\::
{
    getIMEMode := IME_Get()
    if (getIMEMode = 0)
    {
        IME_SET(1)
        return
    }
    else
    {
        IME_SET(0)
        return
    }
}
