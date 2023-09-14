#SingleInstance, Force

Var := 0

;Spells
sio = {F2}
pot = {F6}
terra = {F3}
frigo = +{F3}
runa = {F5}

If (Var := 1) 
{
Loop
	{
		Loop1 := 1
		Loop2 := 0
		Loop3 := 0
		Loop4 := 0
		Var := 0
		;Terra
		ToolTip, In Main Loop = %Loop1%`nIn Second Loop = %Loop2%`nIn Third Loop = %Loop3%`nIn Fourth Loop = %Loop4%
		send, %sio%
		sleep 50
		send, %pot%
		sleep 950
		send, %sio%
		sleep 900
		send, %terra%
		sleep 100
		Var ++1
		
		if(Var==2)
			{
				Loop1 := 0
				Loop2 := 1
				Loop
					{
					ToolTip, In Main Loop = %Loop1%`nIn Second Loop = %Loop2%`nIn Third Loop = %Loop3%`nIn Fourth Loop = %Loop4%
					send, %sio%
					sleep 50
					send, %pot%
					sleep 950
					send, %sio%
					sleep 900
					send, %frigo%
					sleep 100
					Var ++1
					
					if(Var != 2)
						break
					}
			}
		else if(Var==3)
			{
				Loop1 := 0
				Loop3 := 1
				Loop
					{
					ToolTip, In Main Loop = %Loop1%`nIn Second Loop = %Loop2%`nIn Third Loop = %Loop3%`nIn Fourth Loop = %Loop4%
					send, %sio%
					sleep 50
					send, %pot%
					sleep 950
					send, %sio%
					sleep 900
					send, %terra%
					sleep 100
					Var ++1
					
					if(Var != 3)
						break
					}
			}
			else if(Var==4)
			{
				Loop1 := 0
				Loop4 := 1
				Loop
					{
					ToolTip, In Main Loop = %Loop1%`nIn Second Loop = %Loop2%`nIn Third Loop = %Loop3%`nIn Fourth Loop = %Loop4%
					send, %sio%
					sleep 50
					send, %pot%
					sleep 950
					send, %sio%
					sleep 900
					send, %runa%
					sleep 100
					Var := 1
					
					if(Var != 4)
						break
					}
			}
		else if(Var==6)
		{
			break
		}		
	}
}
ToolTip,
MsgBox, That is all
return


Numpad1::
	Var ++1
	if(Var >= 4)
		Var := 0
	return
	
Numpad2::
	Var := 6
	return

Esc::
ExitApp