#SingleInstance, Force
#IfwinActive, ahk_exe client.exe
#MaxThreadsPerHotkey 2
#NoEnv
SendMode Input
SetKeyDelay, 0
SetMouseDelay, 0
ListLines Off
SetBatchLines, 10ms
SetWorkingDir, %A_ScriptDir%
Menu, Tray, Icon, %A_ScriptDir%\asset\uh.gif

; hotkey utilizada para curar o EK.
F2::
  handleUh(ekX, ekY)
return

; hotkey utilizada para curar o RP.
^F2::
  handleUh(ekX, ekY + 15)
return

; hotkey para salvar a posição do EK
PgUp::
  MouseGetPos, ekX, ekY
return

; handlers
handleUh(axysX, axysY) {
  Send, {F2} ; hotkey da uh no tibia
  Mousegetpos,ItemX,ItemY
  MouseClick, Left, %axysX%, %axysY%
  MouseMove, %ItemX%, %ItemY%
  return
}


; handleUh(axysX, axysY) {
;   send, %uh%
;   MouseGetPos, initialX, initialY
;   sleep 50
;   send, {Click, %axysX%, %axysY%}
;   MouseMove, initialX, initialY
;   sleep 200
;   return
; }
