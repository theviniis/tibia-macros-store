#IfwinActive, Tibia
#MaxThreadsPerHotkey 2

;Spells
sio = {F2}
pot = {F}
terra = {F3}
frigo = +{F3}
runa = {F5}

;Hotkey
'::

toggle := !toggle
turn := 0
Loop
	
;Terra
{
	if (toggle) and (turn)=0
		{
		send, %sio%
		sleep 50
		send, %pot%
		sleep 950
		send, %sio%
		sleep 900
		send, %terra%
		sleep 100
		(turn) = 1
	}
;Frigo
	if (toggle) and (turn)=1
		{
		send, %sio%
		sleep 50
		send, %pot%
		sleep 950
		send, %sio%
		sleep 900
		send, %frigo%
		sleep 100
		(turn) = 2
	}
;Terra
	if (toggle) and (turn)=2
		{
		send, %sio%
		sleep 50
		send, %pot%
		sleep 950
		send, %sio%
		sleep 900
		send, %terra%
		sleep 100
		(turn) = 3
		}
;Runa
	if (toggle) and (turn)=3
		{
		send, %sio%
		sleep 50
		send, %pot%
		sleep 950
		send, %sio%
		sleep 900
		send, %runa%
		sleep 100
		(turn) = 0
		}
	else
		{
		break
		}
}


return