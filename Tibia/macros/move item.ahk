#IfwinActive, Tibia

PgUp:: 
MouseGetPos, InvX,InvY
return

PgDn:: 
SetMouseDelay,-1
SetKeyDelay, -1
SetDefaultMouseSpeed, 0

Mousegetpos,ItemX,ItemY
Sleep 25
Send {Control down}
MouseClickDrag, Left, %itemX%, %ItemY%, %InvX%, %Invy%
Send {Control up}
Sleep 25
MouseMove, %ItemX%, %ItemY%
Sleep 25

return