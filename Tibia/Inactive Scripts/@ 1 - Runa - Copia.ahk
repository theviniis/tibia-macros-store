#IfwinActive, Tibia

;Config
mw = {0}
ava = {F5}
ammu1 = {1}
ammu2 = +{1}
ring1 = ^{=}
ring2 = ^{F9}

[::
send, %mw%
sleep 20
send {Click}
sleep 190
Return


F5::
send, %ava%
Random, SleepAmount, 30,100
Sleep, %SleepAmount%
send {Click}
Random, SleepAmount, 30,250
Sleep, %SleepAmount%
;send {F6}
return


^F9::
send, %ring1%
sleep, 150
send, %ammu1%
sleep, 50

^=::
send, %ring2%
sleep, 150
send, %ammu2%
sleep, 50

F9::
ring := !ring
{
	if (ring)
	{
	send, %ring1%
	sleep, 150
	send, %ammu1%
	sleep, 50
	}
	else
	{
	send, %ring2%
	sleep, 150
	send, %ammu2%
	sleep, 50
	}
}
return

;1::
amu := !amu
{
	if (amu)
	{
	send, {1}
	sleep 150
	send, {=}
	}
	else
	{
	send, +{1}
	sleep 150
	send, +{=}
	}
}
return