;==============================CONFIGURAÇÕES/CONFIGS==============================
;1) AUTO HEALING LIFE: 
;[ESTAGIO 1]
Porcentagem_Para_Healar_Vida1 := 95			;Se sua [VIDA] estiver abaixo desse valor o BOT ira Apertar a [Hotkey_de_Cura1] e [Hotkey_de_HealthPotion1]
Hotkey_de_Cura1 = {1}						;Hotkey da SPELL de CURA no TIBIA!!! ira ser pressionada assim que a vida estiver abaixo do [Valor_Para_Healar_Vida1] 
Hotkey_de_HealthPotion1 = 					;Hotkey da HealthPotion no TIBIA!!! ira ser pressionada assim que a vida estiver abaixo do [Valor_Para_Healar_Vida1] 


;[ESTAGIO 2]
Porcentagem_Para_Healar_Vida2 := 65
Hotkey_de_Cura2 = 
Hotkey_de_HealthPotion2 = {3}



;[ESTAGIO 3]
Porcentagem_Para_Healar_Vida3 := 50				;Se sua [VIDA] estiver abaixo desse valor o BOT ira Apertar a [Hotkey_de_Cura3] e [Hotkey_de_HealthPotion3]
Hotkey_de_ExuraGranIco = +{1}		 				;SE TU FOR EK COLOQUE AQUI A HOTKEY DE "EXURA GRAN ICO"
Hotkey_de_Cura4 = 							;Hotkey da SPELL de CURA no TIBIA!!! ira ser pressionada assim que a vida estiver abaixo do [Valor_Para_Healar_Vida3]
Hotkey_de_HealthPotion3 = 	{4}				;Hotkey da HealthPotion no TIBIA!!! ira ser pressionada assim que a vida estiver abaixo do [Valor_Para_Healar_Vida3] 


;SE VOCE VAI USAR ESSE MACRO NO TIBIA GLOBAL DEIXE ATIVA A FUNÇÃO ABAIXO. ELA IRÁ DEIXAR SEU TIBIA TRANSPARENTE
WinSet, Transparent, 1, ahk_class Qt5QWindowOwnDCIcon


;==============================!!!!!NAO EDITE NADA DAQUI PRA BAIXO!!!!!!==============================
;==============================!!!!!NAO EDITE NADA DAQUI PRA BAIXO!!!!!!==============================
;==============================!!!!!NAO EDITE NADA DAQUI PRA BAIXO!!!!!!==============================
;==============================!!!!!NAO EDITE NADA DAQUI PRA BAIXO!!!!!!==============================
;==============================!!!!!NAO EDITE NADA DAQUI PRA BAIXO!!!!!!==============================
;==============================!!!!!NAO EDITE NADA DAQUI PRA BAIXO!!!!!!==============================
#NoEnv
#Warn
#SingleInstance Force
#MaxHotkeysPerInterval 99000000
#HotkeyInterval 99000000
#KeyHistory 0
CoordMode, Pixel, Screen
CoordMode, Mouse, Screen
SendMode Input
SetKeyDelay, -1, -1
SetMouseDelay, -1
SetDefaultMouseSpeed, 0
SetWinDelay, -1
SetControlDelay, -1
Menu, Tray, Icon, Imagens\Health_Potion.ico ; Change the tray icon

SetTimer, AutoHealingLife, 200 ;ler a cada 0,2 segundos

;===================AUTO HEALING SCRIPT=================
AutoHealingLife:
If WinActive("ahk_class Qt5QWindowOwnDCIcon")
{
	ImageSearch, FirstStageX, FirstStageY, A_ScreenWidth - 368, 0, A_ScreenWidth, A_ScreenHeight + 470, *15, Imagens\HP%Porcentagem_Para_Healar_Vida1%Percent.png		;% Primeiro Estagio [LIFE]
	if (ErrorLevel = 1)
	{
	ImageSearch, SecondStageX, SecondStageY, A_ScreenWidth - 368, 0, A_ScreenWidth, A_ScreenHeight + 470, *15, Imagens\HP%Porcentagem_Para_Healar_Vida2%Percent.png	;% Segundo Estagio [LIFE]
	if (ErrorLevel = 1)
	{
	ImageSearch, ThirdStageX, ThirdStageY, A_ScreenWidth - 368, 0, A_ScreenWidth, A_ScreenHeight + 470, *15, Imagens\HP%Porcentagem_Para_Healar_Vida3%Percent.png		;% Terceiro Estagio [LIFE]
	if (ErrorLevel = 1)
	{
		Send, %Hotkey_de_ExuraGranIco% ;Hotkey Terceiro Estagio [LIFE]
		Sleep 50
		Send, %Hotkey_de_Cura4% ;Hotkey Terceiro Estagio [LIFE]
		Sleep 50
		Send, %Hotkey_de_HealthPotion3%	;Hotkey Terceiro Estagio [LIFE]
		Sleep 200
		goto AutoHealingLife
	}
		Send, %Hotkey_de_Cura2% ;Hotkey Segundo Estagio [LIFE]
		Sleep 50
		Send, %Hotkey_de_HealthPotion2%	;Hotkey Segundo Estagio [LIFE]
		Sleep 200
		goto AutoHealingLife
	}
		Send, %Hotkey_de_Cura1% 	;Hotkey Primeiro Estagio [LIFE]
		Sleep 50
		Send, %Hotkey_de_HealthPotion1%	;Hotkey Primeiro Estagio [LIFE]
		Sleep 200
		goto AutoHealingLife
	}
}
return


;=============HOTKEYS===========
End::
	Pause
return
