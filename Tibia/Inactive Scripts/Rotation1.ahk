#IfwinActive, Tibia
#MaxThreadsPerHotkey 2

'::
toggle := !toggle

Loop
{
	if (toggle)
		{
		send, {F2}
		sleep 50
		send, {F6}
		sleep 950
		send, +{F2}
		sleep 900
		send, {F5}
		sleep 100
		}
	else
		{
		break
		}
}
return