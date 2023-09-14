#IfwinActive, Tibia
#SingleInstance force
#NoEnv
; #NoTrayIcon

SendMode Input
SetKeyDelay, 0
SetMouseDelay, 0
ListLines Off ; increase script performance
SetBatchLines, 10ms ;higher values increase script performance, but consume more cpu

;randon sleep
Random, sleep_random_1, 10, 50

;Config
mw = {0}				;magic wall
ava = {F5}			;avalanche
amu_1 = {1}			;theurgy
amu_2 = {2}			;foxtail
amu_3 = {}			;ssa
ring_1 = ^{=}		;butterflie
ring_2 = ^{F9}	;prismatic
ring_3 = {r}		;might
rod_1 = {4}			;falcon rod
rod_2 = {3}			;cobra rod
book_1 = +{1}		;umbral
book_2 = +{2}		;shoulder

;avalanche
F5::
send, %ava%
sleep, %sleep_random%
send {Click}
sleep, %sleep_random%+200
return

;mw
[::
send, %mw%
sleep, %sleep_random%
send {Click}
sleep, %sleep_random%
Return

;Amuleto swap
1::
ammu := !ammu
{
	if (ammu)
	{
	send, %amu_1%
	}
	else
	{
	send, %amu_2%
	}
}
return

;Ring swap
^=::
ring := !ring
{
	if (ring)
	{
	send, %ring_1%
	}
	else
	{
	send, %ring_2%
	}
}
return

;Rod swap
3::
rod := !rod
{
	if (rod)
	{
	send, %rod_1%
	}
	else
	{
	send, %rod_2%
	}
}
return

;Book swap
4::
book := !book
{
	if (book)
	{
	send, %book_1%
	}
	else
	{
	send, %book_2%
	}
}
return


;^F9::
send, %ring2%
sleep, %sleep_random%
send, %ammu2%
sleep, %sleep_random%
send, %rod2%
sleep, %sleep_random%
send, %book2%
return

;^=::
send, %ring1%
sleep, %sleep_random%
send, %ammu1%
sleep, %sleep_random%
send, %rod1%
sleep, %sleep_random%
send, %book1%
return