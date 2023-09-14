#SingleInstance, Force

CoordMode, Pixel, Screen
CoordMode, Mouse, Screen

Esc::
MouseGetPos, x, y
PixelGetColor, cor, %x%, %y%

Clipboard := cor
Clipboard = %x%, %y%
return