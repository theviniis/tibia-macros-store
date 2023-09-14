#IfwinActive, Tibia

;Config
mw = {0}
ava = {F5}
ammu1 = {1}
ammu2 = +{1}
ring1 = ^{=}
ring2 = +{=}
;rod1 = {3}
;rod2 = {4}

[::
send, %mw%
sleep 20
send {Click}
sleep 100
Return


F5::
send, %ava%
sleep 20
send {Click}
sleep 200
return

;!F1::
send, {F1}
sleep 1000
send, {F1}
sleep 1000
send, %ava%
sleep 20
send {Click}
return

r::
ring := !ring
{
	if (ring)
	{
	send, %ring1%
	sleep, 200
	send, %ammu1%
	sleep, 200
	send, %rod1%
	}
	else
	{
	send, %ring2%
	sleep, 200
	send, %ammu2%
	sleep, 200
	send, %rod2%
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