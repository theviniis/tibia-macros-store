toggle = 0
#MaxThreadsPerHotkey 2

+1::
	KeyWait Shift
	KeyWait 1
	Gui,Shift1:+AlwaysOnTop -Caption +Owner
	Gui,Shift1: Font, s11, Cambria bold
	Gui,Shift1: Color, red
	Gui,Shift1:Add, Text, Cwhite,toggle +1
	Gui,Shift1: Show, NoActivate x0 y0
	Toggle := !Toggle
	While Toggle
	{
		Send a
		sleep 500
	}
	Gui,Shift1:destroy
return

Esc::
	toggle = 0
	Gui,Shift1:destroy
	; Gui,Shift2:destroy
	; ...
return