#IfwinActive, Tibia
#MaxThreadsPerHotkey 2

^'::
toggle := !toggle

Loop
{
	if (toggle)
		{
		WinActivate, Tibia
		sleep 500
		send, ^{Up}
		sleep 500
		send, ^{Down}
		sleep 500
		Random, SleepAmount, 700000,800000
		Sleep, %SleepAmount%
		}
	else
		{
		break
		}
}
return