#IfwinActive, Tibia

SetMouseDelay, -1
SetKeyDelay, -1
SetDefaultMouseSpeed, 0

;Config
water = 1038,387
stair = 1770,112
stair1 = 903,451
npc = 1830,95
txt = 1148,938
bue = 1776,148
bue1 = 959,519
ala = 1854,147
ala1 = 964,375
ala2 = 1043,375

;Hotkey
F2::

send {Click, Right, %water%}
sleep 200
send {F9}
sleep 100
send {Click, %stair%}
sleep 7400
send {Click, Right, %stair1%}
sleep 200
send {Click, %npc%}
sleep 5700
send {Click, %txt%}
sleep 200
send {Click, %txt%}
sleep 200
send {Click, %txt%}
sleep 200

'::
send {F9}
send {Down}
sleep 200
send {Click, %bue%}
sleep 5500
send {Click, Right, %bue1%}
sleep 200
send {Click, %ala%}
sleep 7100
send {Click, Right, %ala1%}
sleep 300
send {Click, Right, %ala2%}
sleep 5200
send {Click, Right, %ala1%}
sleep 300


return
