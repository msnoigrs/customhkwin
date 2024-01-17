#include IMEv2.ahk

A_MaxHotkeysPerInterval := 350

; 主要なキーを HotKey に設定し、何もせずパススルーする
*~a::
*~b::
*~c::
*~d::
*~e::
*~f::
*~g::
*~h::
*~i::
*~j::
*~k::
*~l::
*~m::
*~n::
*~o::
*~p::
*~q::
*~r::
*~s::
*~t::
*~u::
*~v::
*~w::
*~x::
*~y::
*~z::
*~1::
*~2::
*~3::
*~4::
*~5::
*~6::
*~7::
*~8::
*~9::
*~0::
*~F1::
*~F2::
*~F3::
*~F4::
*~F5::
*~F6::
*~F7::
*~F8::
*~F9::
*~F10::
*~F11::
*~F12::
*~`::
*~~::
*~!::
*~@::
*~#::
*~$::
*~%::
*~^::
*~&::
*~*::
*~(::
*~)::
*~-::
*~_::
*~=::
*~+::
*~[::
*~{::
*~]::
*~}::
*~\::
*~|::
*~;::
*~'::
*~"::
*~,::
*~<::
*~.::
*~>::
*~/::
*~?::
*~Esc::
*~Tab::
*~Space::
*~Left::
*~Right::
*~Up::
*~Down::
*~Enter::
*~PrintScreen::
*~Delete::
*~Home::
*~End::
*~PgUp::
*~PgDn::
{
    return
}

; 0.2秒以上長押ししたらIME制御を発動しない
; Shiftキー単体のdown/upにしか反応しない
global Lflag := 0

~LShift::
{
    If (A_PriorHotkey != "~LShift")
    {
        ; LShift 単体押し下げ初回時
        global Lflag
        Lflag := 0
        if !KeyWait("LShift", "T0.2")
        {
            global Lflag
            Lflag := 1
        }
    }
    return
}

; 左 Shift 空打ちで IME を OFF
LShift up::
{
    if (A_PriorHotkey == "~LShift")
    {
        global Lflag
        if Lflag = 1
        {
            return
        }
        IME_SET(0)
    }
    return
}

global Rflag := 0

~RShift::
{
    if (A_PriorHotkey != "~RShift")
    {
        ; RShift 単体押し下げ初回時
        global Rflag
        Rflag := 0
        if !KeyWait("RShift", "T0.2")
        {
            global Rflag
            Rflag := 1
        }
    }
    return
}

; 右 Shift 空打ちで IME を ON
RShift up::
{
    if (A_PriorHotkey == "~RShift")
    {
        global Rflag
        if Rflag = 1
        {
            return
        }
        IME_SET(1)
    }
    return
}
