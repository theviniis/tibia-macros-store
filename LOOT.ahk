;;;;;;;;;;;;;;;;;;;;;
;                   ;
;    By CaioEduT    ;
;                   ;
;;;;;;;;;;;;;;;;;;;;;

; Config
CenterX := 922
CenterY := 439
Offset := 70


;;;;;;;;;;;;;;;;;;;;;;;;;;;
;                         ;
;   Do not Change Below   ;
;                         ;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

#SingleInstance force
#NoEnv
SetControlDelay, 0
SetWinDelay, 0
SetMouseDelay, 0
SetKeyDelay, 0
ListLines Off
SetDefaultMouseSpeed, 7
SetBatchLines, 10ms
SetWorkingDir, %A_ScriptDir%
Menu, Tray, Icon, %A_ScriptDir%\asset\brocade.gif

; Positions
PosXInc := CenterX + Offset
PosXDec := CenterX - Offset
PosYInc := CenterY + Offset
PosYDec := CenterY - Offset

; Action
F15::
IfWinActive, Tibia
{
    Send +{Click, %CenterX%, %CenterY%, right} ;5
    Send +{Click, %CenterX%, %PosYInc%, right} ;2
    Send +{Click, %PosXInc%, %PosYInc%, right} ;3
    Send +{Click, %PosXInc%, %CenterY%, right} ;6
    Send +{Click, %PosXInc%, %PosYDec%, right} ;9
    Send +{Click, %CenterX%, %PosYDec%, right} ;8
    Send +{Click, %PosXDec%, %PosYDec%, right} ;7
    Send +{Click, %PosXDec%, %CenterY%, right} ;4
    Send +{Click, %PosXDec%, %PosYInc%, right} ;1
    Return
} else {
    Send {NumpadIns}
    Return
}
