#MaxThreadsPerHotkey 2
#IfwinActive, Tibia

SetMouseDelay, -1
SetKeyDelay, -1
SetDefaultMouseSpeed, 0

;Config
sd = {F7}

7::
toggle := !toggle

Loop
{
	if (toggle)
		{
		send %sd%
		sleep 200
		MouseMove, xBoss, yBoss
		Send {LButton down}{LButton up}
		sleep 2000
		}
	else
		{
		break
		}
}
return

PgUp::
MouseGetPos, xBoss, yBoss
return