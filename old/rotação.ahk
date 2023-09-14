#MaxThreadsPerHotkey 2
#IfwinActive, Tibia

;Config
terra = {F3}
gfh = +{F3}
;gf = ^{F4}
gf = ^{F3}

8::
toggle := !toggle

Loop
	{
	If (toggle)
		{
		send %terra%
		sleep 2100
		send %gfh%
		sleep 2100
		send %terra%
		sleep 2100
		send %gf%
		sleep 2100
		}
	else
		{
		break
		}
	}