#SingleInstance, Force
SendMode Input
SetWorkingDir, %A_ScriptDir%


Run, %A_ScriptDir%\RUNE.ahk
Run, %A_ScriptDir%\UH.ahk
Run, %A_ScriptDir%\ITEMS.ahk
Run, %A_ScriptDir%\LOOT.ahk

ExitApp
