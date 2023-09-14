#IfwinActive, Tibia
#MaxThreadsPerHotkey 2

;Spells
runa = +{8}
pot = +{F6}

;Hotkey
'::

toggle := !toggle
turn := 0

Loop
{
	if (toggle)
		{
		send, %runa%
		sleep 25
		send, %pot%
		sleep 1000
		send, %pot%
		sleep 1000
		send, %runa%
		sleep 25
		}
	else
		{
		break
		}
}
return