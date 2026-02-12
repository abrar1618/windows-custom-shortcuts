#SingleInstance Force
SetTitleMatchMode, 2

voiceWin := "Voice Access"

SetTimer, CheckVoice, 500
return

CheckVoice:
IfWinExist, %voiceWin%
{
    ; Force remove Always-On-Top
    WinSet, AlwaysOnTop, Off, %voiceWin%
    
    ; Auto-Minimize Voice Access
    WinMinimize, %voiceWin%
}
return
