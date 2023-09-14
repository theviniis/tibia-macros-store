Numpad3::
afk := !afk

Loop
{
	if (afk)
		{
		send, {Click, 1150, 450, right}
 		sleep 1000
		send, {Click, 1200, 230, right}
 		sleep 1000
		send, {Click, 1121, 153, right}
 		sleep 1000
		send, {Click, 1120, 310, right}
 		sleep 1000
		send, {Click, 1136, 310, right}
 		sleep 1000
		send, {Click, 1350, 165, right}
 		sleep 1000
		send, {Click, 1115, 458, right}
 		sleep 1000
		send, {Click, 1115, 458, right}
 		sleep 1000
		send, {Click, 1199, 366, right}
 		sleep 1000
		send, {Click, 1114, 468, right}
 		sleep 1000
		send, {Click, 1196, 452, right}
		sleep 2000
		}
	else
		{
		break
		}
}
return

esc::
ExitApp

