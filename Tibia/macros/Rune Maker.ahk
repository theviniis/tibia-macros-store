#IfwinActive, Tibia
#MaxThreadsPerHotkey 2

;Config
food = u
ring = i
soft = o
spell = y

'::
toggle := !toggle

Loop
{
	if (toggle)
		{
		WinActivate, Tibia
		send, {%ring%}
		sleep 100
		send, {%soft%}
		sleep 100
		loop, 4 {
			send, {%food%}
			sleep 100
		}
		loop, 5 {
			send, {%spell%}
			sleep 2000
		}
		Random, SleepAmount, 400000,420000
		Sleep, %SleepAmount%
		}
	else
		{
		break
		}
}
return