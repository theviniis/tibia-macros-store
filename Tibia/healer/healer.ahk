WinSet, Transparent, 1, ahk_class Qt5QWindowOwnDCIcon

;sio
cor_p_dar_sio := 80
;exura_sio := {F2}
;gran sio
cor_p_dar_gsio := 30
gran_sio := +{F2}

;#IfwinActive, Tibia
#NoEnv
#Warn
#SingleInstance force
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
CoordMode, Pixel, Window
CoordMode, Mouse, Window
SendMode Input
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1

SetTimer, AutoHealingSio, 100 ;ler a cada 0,1 segundos

;===================AUTO HEALING SCRIPT=================
AutoHealingSio:
if WinActive("ahk_class Qt5QWindowOwnDCIcon")
{
  PixelGetColor, varcolor, 859, 949 [RGB]
  if(varcolor = 0x00AF00)
  {
    Send, {F1}
  }
  return



  ; PixelSearch(x, y, 578, 627, 940, 645, 0x00AF00)
  ; ; exura sio
  ; if (ErrorLevel = 1)
  ; {
  ; PixelSearch(x, y, 578, 627, 940, 645, 0x00AF00) 
  ; ; exura gran sio
  ; if (ErrorLevel = 1)
  ; {
  ;   send, %gran_sio%
  ;   sleep, 500
  ;   goto AutoHealingSio
  ; }
  ;   send, %sio%
  ;   sleep, 500
  ;   goto AutoHealingSio
}









































; toggle = 0

; hbar_cord := [578, 627, 940, 645]

; ;Esc::
; Loop,
; {
;   ; PixelSearch, OutputVarX, OutputVarY, X1, Y1, X2, Y2, ColorID [, Variation
;   PixelSearch(x, y, 578, 627, 940, 645, 0x00AF00)
;   if (ErrorLevel = 0)
;   {
;     ToolTip, testando
;   }
; }
; return

; F2::
;   KeyWait F2
; Gui,Shift1:+AlwaysOnTop -Caption +Owner
; Gui,Shift1: Font, s10, Cambria bold
; Gui,Shift1: Color, Green
; Gui,Shift1: Add, Text, Cwhite, Sio On
; Gui,Shift1: Show, NoActivate  x0 y0
;   toggle := !toggle
;   while toggle
;   {
;     tooltip, sio on
;     ;send F2
;   }

; Esc::
; toggle = 0
; Gui,Shift1:destroy
; ; Gui,Shift2:destroy
; ; ...
; return







; settimer start1, 0 ; "0" to make it update position instantly
; return

; start1:
; if !GetKeyState("capslock","T") ; whether capslock is on or off
;   {
;     tooltip ; if off, don't show tooltip at all.
;   }
;   else
;   {
  

  

;   }
; return