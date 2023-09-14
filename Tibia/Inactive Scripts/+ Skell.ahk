#IfwinActive, Tibia
#MaxThreadsPerHotkey 2

;Spells
sio = {F2}
pot = {F6}
terra = {F3}
frigo = +{F3}
runa = {F5}

;Hotkey
'::
myvar = 1
toggle := !toggle

Loop
{
if (toggle) and (myvar)=1
{
	send, %sio%
	sleep 50
	send, %pot%
	sleep 950
	send, %sio%
	sleep 900
	send, %terra%
	sleep 100
	myvar = 2
}
else if (toggle) and (myvar)=2
{
	send, %sio%
	sleep 50
	send, %pot%
	sleep 950
	send, %sio%
	sleep 900
	send, %frigo%
	sleep 100
	myvar = 3
}
else if (toggle) and (myvar)=3
{
	send, %sio%
	sleep 50
	send, %pot%
	sleep 950
	send, %sio%
	sleep 900
	send, %terra%
	sleep 100
	myvar = 4
}
else if (toggle) and (myvar)=4
{
	send, %sio%
	sleep 50
	send, %pot%
	sleep 950
	send, %sio%
	sleep 1000
	send, %runa%
	sleep 100
	send, {Click}
	sleep 100
	myvar = 1
}
}
return


9::
Send, 9
return