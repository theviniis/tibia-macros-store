#SingleInstance force
#NoEnv
#MaxThreadsPerHotkey 2
#IfwinActive, ahk_exe client.exe
SendMode input
SetKeyDelay, 0
SetMouseDelay, 0
ListLines Off
SetBatchLines, 10ms
SetWorkingDir, %A_ScriptDir%
Menu, Tray, Icon, %A_ScriptDir%\asset\avalanche.gif

; Config
click_cd = 20
rune_cd = 250

ava = {F4}
mw = {F17}

F4::
  useRune(ava)
return

F17::
  useRune(mw)
return


; Functions
useRune(rune) {
  send, %rune%
  sleep, %click_cd%
  send {Click}
  sleep, %rune_cd%
  return
}
