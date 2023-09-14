
#SingleInstance force
#NoEnv
; #NoTrayIcon
#MaxThreadsPerHotkey 2
#IfwinActive, ahk_exe client.exe
SendMode input
SetKeyDelay, 0
SetMouseDelay, 0
ListLines Off
SetBatchLines, 10ms
SetWorkingDir, %A_ScriptDir%
Menu, Tray, Icon, %A_ScriptDir%\asset\ssa.gif

;randon sleep
Random, sleep_random_1, 20, 50

;Config
amu_1 = {1}			;theurgy
amu_2 = +{1}		;foxtail
amu_3 = {}			;ssa
ring_1 = ^{=}		;butterfly
ring_2 = ^{F9}	;prismatic
ring_3 = {r}		;might
rod_1 = {2}		  ;cobra rod
rod_2 = {2}		  ;falcon rod
book_1 = {3}		;umbral
book_2 = +{3}		;shoulder

1::
  gosub, swap_amuleto
  sleep, %sleep_random_1%
Return

; 2::
;   gosub, swap_rod
;   sleep, %sleep_random_1%
; Return

; ^F9::
;   gosub, swap_ring
;   sleep, %sleep_random_1%
; return

; 3::
; gosub, swap_book
; sleep, %sleep_random_1%
; Return

  ;----------------------- Labels ------------------------

  swap_amuleto:
    amu := !amu
    {
      if (amu)
      {
        send, %amu_1% ;theurgy
        sleep, %sleep_random_1%
      }
      else
      {
        send, %amu_2% ;foxtail
        sleep, %sleep_random_1%
      }
    }
  return

  swap_ring:
    ring := !ring
    {
      if (ring)
      {
        send, %ring_1% ;butterfly
        sleep, %sleep_random_1%
      }
      else
      {
        send, %ring_2% ;prismatic
        sleep, %sleep_random_1%
      }
    }
  return

  swap_rod:
    rod := !rod
    {
      if (rod)
      {
        send, %rod_1% ;Falcon Rod
        sleep, %sleep_random_1%
      }
      else
      {
        send, %rod_2% ;Cobra Rod
        sleep, %sleep_random_1%
      }
    }
  return

  swap_book:
    book := !book
    {
      if (book)
      {
        send, %book_1% ;umbral
        sleep, %sleep_random_1%
      }
      else
      {
        send, %book_2% ;shoulder plate
        sleep, %sleep_random_1%
      }
    }
  return

  swap_set:
    set := !set
    {
      if (set)
      {
        send, %rod_1% ;cobra rod
        sleep, 100
        send, %amu_1% ;theurgy
        sleep, 100
        send, %book_1% ;umbral
        sleep, 100
      }
      else
      {
        send, %rod_2% ;falcon rod
        sleep, 100
        send, %book_2% ;shoulder plate
        sleep, 100
        send, %amu_2% ;foxtail
        sleep, 100
      }
    }
  return
