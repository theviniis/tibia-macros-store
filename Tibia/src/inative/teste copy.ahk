#SingleInstance force
#NoEnv
#MaxHotkeysPerInterval 99000000
;#NoTrayIcon
#MaxThreadsPerHotkey 2
#IfwinActive, ahk_exe client.exe
	SendMode input
	;ListLines Off
	SetBatchLines, 10ms

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

	auto_sio = 0

	F2:
		if (sio_switch = 0)
		{
			send, exura
		}
		else if (sio_switch = 1)
		{
			auto_sio := !auto_sio
		}
	return

	'::
		sio_switch := !sio_switch
	return

	sio_switch:
		if (sio_switch)
		{
			auto_sio = 1
		}
		Else
		{
			auto_sio = 0
		}
	return

	;----------------------- rotinas ------------------------

	check_gui:
		If (sio_switch & auto_sio = 0)
		{
			guidestroy()
		}
		else if (sio_switch & auto_sio = 0)
		{
			Gui,verde:destroy
			guivermelha()
		}
		else if (sio_switch & auto_sio = 1)
		{
			Gui,vermelha:destroy
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