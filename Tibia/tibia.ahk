#NoEnv ; Recommended for performance and compatibility with future AutoHotkey releases.
#Persistent
#SingleInstance force
SendMode Input ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir% ; Ensures a consistent starting directory.

;Run, sio.ahk, src, Min
Run, rune.ahk, src, Min
Run, loot.ahk, src, Min
Run, itens.ahk, src, Min
;Run, afk.ahk, src, Min

OnExit("ExitFunc")

ExitFunc()
{
    Run,%ComSpec% /c Taskkill -f -im autohotkey.exe,%A_ScriptDir%,Hide
}

return
