
#SingleInstance force
#NoEnv
;#NoTrayIcon
#MaxThreadsPerHotkey 2
#IfwinActive, ahk_exe client.exe
  SendMode input
  SetKeyDelay, 0
  SetMouseDelay, 0
  ListLines Off
  SetBatchLines, 10ms

  ;randon sleep
  Random, sleep_random_1, 8, 15
  Random, sleep_random_2, 250, 250

  ;Config
  mw = {F17}				;magic wall
  ava = {F4}			;avalanche

  ;----------------------- Labels ------------------------

  F4::
    gosub, action_ava
  Return

  F17::
    gosub, action_mw
  return

  ;----------------------- Labels ------------------------
  action_ava:
    send, %ava%
    sleep, 100
    send {Click}
    sleep, %sleep_random_2%
  return

  action_mw:
    send, %mw%
    sleep, %sleep_random_1%
    send {Click}
    sleep, %sleep_random_2%
  Return