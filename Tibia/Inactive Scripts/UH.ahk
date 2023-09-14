#IfwinActive, Tibia

SetMouseDelay, -1
SetKeyDelay, -1
SetDefaultMouseSpeed, 0

;Config

uh = {^-}
ek = 1610,55
rp = 1610,80

;Hotkey

F2::
send %uh%
sleep 100
send {Click, %ek%}
sleep 200
Return

;Hotkey
9::

send %uh%
sleep 100
send {Click, %rp%}
sleep 200
Return