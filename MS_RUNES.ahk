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

; Tibia hotkeys
uh = {F2}
ava = {F4}
mw = {F17}

; hotkey para usar avalanche
F4::
  useRune(ava)
return

; hotkey para usar mw / mato
F17::
  useRune(mw)
return

; hotkey utilizada para curar o EK.
F2::
  handleUh(ekX, ekY)
return

; hotkey utilizada para curar o RP.
; o RP deve estar embaixo do EK na Party List
^F2::
  handleUh(ekX, ekY + 20)
return

; hotkey para salvar a posição do EK
PgUp::
  MouseGetPos, ekX, ekY
return

; você pode ajustar o coldown das runas
click_cd = 20
rune_cd = 250

; =========================== DONT YOU DARE! =======================
useRune(rune) {
  send, %rune%
  sleep, %click_cd%
  send {Click}
  sleep, %click_cd%
  return
}

handleUh(axysX, axysY) {
  MouseGetPos, initialX, initialY
  send %uh%
  sleep, %click_cd%
  send {Click, %axysX%, %axysY%}
  MouseMove, initialX, initialY
  sleep, %click_cd%
  return
}
