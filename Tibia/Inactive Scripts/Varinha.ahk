SetMouseDelay, -1
SetKeyDelay, -1
SetDefaultMouseSpeed, 0

PgUp::
MouseGetPos, xVarinha, yVarinha
return
PgDn::
MouseGetPos, RestaurarX, RestaurarY
Loop{
   Gosub baterVarinha
   Gosub calcularDelay
}
return
baterVarinha:
MouseMove, xVarinha, yVarinha
Send {LButton down}{LButton up}
Sleep, 100 ;
MouseMove, RestaurarX, RestaurarY
Send {LButton down}{LButton up}
return

calcularDelay:
valorInicial := 28800000
Random, numeroAleatorio, 30000, 31000
valorTotal := (valorInicial + numeroAleatorio)
Sleep, %valorTotal%
return

