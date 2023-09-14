#SingleInstance force
#NoEnv
#NoTrayIcon
#MaxThreadsPerHotkey 2
#IfwinActive, ahk_exe client.exe
	SendMode input
	ListLines Off
	SetBatchLines, 10ms
	;randon sleep
	Random, sleep_random_1, 20, 50

	^'::
		toggle := !toggle

		Loop
		{
			if (toggle)
			{
				ToolTip, afk on
				sleep, 500
				ToolTip
				WinActivate, ahk_exe client.exe
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
				ToolTip, afk off
				sleep, 500
				ToolTip
				break
			}
		}
	return