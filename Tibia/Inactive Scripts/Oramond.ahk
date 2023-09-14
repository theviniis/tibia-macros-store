#IfwinActive, Tibia

SetMouseDelay, -1
SetKeyDelay, -1
SetDefaultMouseSpeed, 0

;Config
water = 1037, 381
stair = 1767, 179
stair1 = 900,440
npc = 1832, 165
txt = 1185, 937
bue = 1797, 202
bue1 = 959,519
ala = 1861, 183d
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


return
