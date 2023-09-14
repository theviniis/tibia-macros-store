#SingleInstance force
#NoEnv
#MaxHotkeysPerInterval 99000000
;#NoTrayIcon
#MaxThreadsPerHotkey 2
#IfwinActive, ahk_exe client.exe
	SendMode input
	;ListLines Off
	SetBatchLines, 10ms

	SetTimer, auto_sio, 500
	SetTimer, check_gui, 500

	;randon sleep
	Random, sleep_random_1, 10, 30
	random,	sleep_sio, 170, 200
	random,	sleep_res, 170, 200

	;configuração
	exura_vita = {F1}
	exura_gran = +{F1}
	sio_ek = {F2}
	sio_rp = ^{F2}
	gran_sio_ek = +{F2}
	gran_sio_rp = !{F2}
	mas_res = {9}
	toggle_switch = 0
	sio_switch = 0

	F2::
		;gosub, sio_validation
		sleep, %sleep_random_1%
	return

	^'::
		gosub, sio_switch
		sleep, %sleep_random_1%
	return

	sio_ek:
		send, %sio_ek%
		sleep, %sleep_sio%
	return

	;----------------------- rotinas ------------------------
	sio_switch:
		toggle_switch := !toggle_switch
		sio_switch := !sio_switch
	return

	auto_sio:
		Loop,
		{
			if (toggle_switch = 1 & sio_switch = 1)
			{
				send, %sio_ek%
				sleep, %sleep_sio%
			}
			else 
			{
				break
			}
		}
	return

	check_gui:
		If (toggle_switch = 0 & sio_switch = 0)
		{
			guidestroy()
		}
		else if (toggle_switch = 1 & sio_switch = 0)
		{
			guivermelha()
		}
		else if (toggle_switch = 1 & sio_switch = 1)
		{
			guiverde()
		}
	return

	;----------------------- GUI ------------------------
	guiverde()
	{
		Gui,verde:+AlwaysOnTop -Caption +Owner
		Gui,verde: Font, s11, Cambria bold
		Gui,verde: Color, green
		Gui,verde:Add, Text, Cwhite,On
		Gui,verde: Show, NoActivate x2 y25
		Gui,Color,green
	}
	Return

	guivermelha()
	{
		Gui,vermelha:+AlwaysOnTop -Caption +Owner
		Gui,vermelha: Font, s11, Cambria bold
		Gui,vermelha: Color, red
		Gui,vermelha:Add, Text, Cwhite,Off
		Gui,vermelha: Show, NoActivate x2 y25
		Gui,Color,red
	}
	return

	guidestroy()
	{
		Gui,verde:destroy
		Gui,vermelha:destroy
	}
	return