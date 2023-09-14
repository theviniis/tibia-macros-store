;==============================CONFIGURAÇÕES/CONFIGS==============================
;1) AUTO HEALING MANA: 
;[ESTAGIO 1]
Porcentagem_Para_Healar_Mana = 80					;Se sua [MANA] estiver abaixo desse valor o BOT ira Apertar a [Hotkey_de_ManaPotion]
Hotkey_de_ManaPotion = {2} 						;Hotkey da MANAPotion no TIBIA!!! ira ser pressionada assim que a vida estiver abaixo do [Valor_Para_Healar_Mana] 
Porcentagem_HP_Para_Ignorar_Mana = 45				;PORCENTAGEM DE HP PARA PRIORIZAR A VIDA INVES DA MANA




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
Menu, Tray, Icon, Imagens\Mana_Potion.ico ; Change the tray icon

SetTimer, AutoHealingMana, 200 ;ler a cada 0,2segundos

;===================LIFE=================
AutoHealingMana:
If WinActive("ahk_class Qt5QWindowOwnDCIcon")
{
	ImageSearch, FirstStageX, FirstStageY, A_ScreenWidth - 358, 0, A_ScreenWidth, A_ScreenHeight + 470, *15, Imagens\HP%Porcentagem_HP_Para_Ignorar_Mana%Percent.png	;% CHECAR HP
	if ErrorLevel = 0
	{
		ImageSearch, SecondStageX, SecondStageY, A_ScreenWidth - 358, 0, A_ScreenWidth, A_ScreenHeight + 470, *15, Imagens\MP%Porcentagem_Para_Healar_Mana%Percent.png	;% Primeiro Estagio [MANA]
		if ErrorLevel = 1
		{
			Send, %Hotkey_de_ManaPotion% 	;Hotkey Primeiro Estagio [MANA]
			Sleep 250
			goto AutoHealingMana
		}
	}
}
return



;=============HOTKEYS================
Home::
	Pause
return
