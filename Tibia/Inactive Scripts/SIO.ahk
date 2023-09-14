#SingleInstance, Force
#MaxThreadsPerHotkey 2
#IfwinActive, Tibia


;Config
sio = {F2}
siorp = ^{F2}
res = {9}
vita = {F1}
pot = {F6}
ava = {F5}
mw = {0}

;F::
siot := !siot
Loop
	{
	If (siot)
		{
		send, %sio%
		sleep, 50
		send, %pot%
		sleep, 950
		send, %res%
		sleep, 20
		send, %ava%
		sleep, 10
		send, {Click}
		sleep, 970
		}
	else
		{
		break
		}
	}
return

9::
send, %res%
sleep, 100
return

^F2::
send, %siorp%
sleep, 100
return

F1::
send, %vita%
sleep, 100
return

0::
send, %mw%
sleep 10
send {Click}
sleep 200
Return

F5::
send, %ava%
sleep 10
send {Click}
sleep 200
return