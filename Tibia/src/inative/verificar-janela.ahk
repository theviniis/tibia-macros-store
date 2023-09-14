
#Persistent
SetTimer, verificarjanela, 100
Return

auto_sio := []

esc::
	auto_sio.Push("on")
	auto_sio.1
return

verificarjanela:
	IfWinActive, ahk_exe client.exe
	{
		suspend, off
		guiverde()
	}
	Else
	{
		suspend, on
		guidestroy()
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