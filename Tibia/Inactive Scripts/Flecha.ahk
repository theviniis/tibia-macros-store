#MaxThreadsPerHotkey 2

;Spells
varinha = {F1}

;Hotkey
'::

toggle := !toggle
Loop
	
{
	if (toggle)
		{
		send, %varinha%
		sleep 600500
		}
	else
		{
		break
		}
}

return