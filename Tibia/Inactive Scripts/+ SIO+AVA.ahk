#MaxThreadsPerHotkey 2
#IfwinActive, Tibia

;Config
sio = {F2}
ava = {F5}

'::
toggle := !toggle

Loop
	{
	If (toggle)
		{
		send, %sio%
		sleep, 1000
		send, %sio%
		sleep, 100
		send, %ava%
		sleep, 50
		send, {click}
		}
	else
		{
		break
		}
	}