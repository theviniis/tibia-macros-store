#SingleInstance force
#NoEnv
#MaxHotkeysPerInterval 99000000
;#NoTrayIcon
#MaxThreadsPerHotkey 2
#IfwinActive, ahk_exe client.exe
	SendMode input
	; ListLines Off
	SetBatchLines, 10ms

	SetTimer, autosio, 200

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

	auto_sio = 0 ; dont touch

	;switch
	^9::
		gosub, sio_switch
		sleep, %sleep_random_1%
	return

	;validação 1
	F2::
		gosub, sio_validation
		sleep, %sleep_random_1%
	return

	;exura vita
	F1::
		gosub, vita
		sleep, %sleep_random_1%
	return

	;exura gran
	+F1::
		gosub, gran
		sleep, %sleep_random_1%
	Return

	;mas res
	9::
		gosub, masres
		sleep, %sleep_random_1%
	return

	;exura vita
	^F2::
		gosub, siorp
		sleep, %sleep_random_1%
	Return

	;gran sio ek
	+F2::
		gosub, gsio_ek
		sleep, %sleep_random_1%
	Return

	;gran sio rp
	!F2::
		gosub, gsio_rp
		sleep, %sleep_random_1%
	Return

	;----------------------- Labels ------------------------

	vita:
		send, %exura_vita%
		sleep, %sleep_sio%
	Return

	gran:
		send, %exura_gran%
		sleep, %sleep_sio%
	Return

	masres:
		send, %mas_res%
		sleep, %sleep_res%
	Return

	siorp:
		send, %sio_rp%
		sleep, %sleep_sio%
	Return

	gsio_ek:
		send, %gran_sio_ek%
		sleep, %sleep_sio%
	Return

	gsio_rp:
		send, %gran_sio_rp%
		sleep, %sleep_sio%
	Return

	sioek:
		send, %sio_ek%
		sleep, %sleep_sio%
	Return

	;Sio toggle
	sio_switch:
		sioswitch := !sioswitch
		If (sioswitch)
		{
			auto_sio := 1
			guivermelha()
		}
		else
		{
			auto_sio := 0
			guidestroy()
		}
	Return

	sio_validation:
		if (auto_sio = 1) 
		{
			sio_toggle := !sio_toggle
		}
		Else
		{
			goto, sioek
		}
	return

	autosio:
		Loop,
		{
			if (sio_toggle & auto_sio = 1)
			{
				send, %sio_ek%
				sleep, %sleep_sio%
			}
			Else
			{
				break
			}
		}
		if (auto_sio = 0)
		{
			sio_toggle := !sio_toggle
		}
	return

	;----------------------- GUI ------------------------
	check_gui:
		If (sioswitch)
		{
			guivermelha()
		}
		else
		{
			guidestroy()
		}
	Return

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