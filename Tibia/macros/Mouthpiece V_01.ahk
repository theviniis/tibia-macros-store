#IfwinActive, Tibia
#MaxThreadsPerHotkey 2

;Hotkey
'::

Loop, 19
{
	send, {Click, 952, 519, right}
	sleep 500
	send, ^{l}
	sleep 2500
	send, {Down}
	sleep 500
	send, {Enter}
	sleep 2500
}
return