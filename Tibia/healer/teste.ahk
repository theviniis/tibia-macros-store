Opt("WinTitleMatchMode", 2)
$color = "0x705F57" 
WinWaitActive("Unicenter ServicePlus Service Desk", "http://usdp/CAisd/pdmweb.exe")
$size = WinGetPos("Unicenter ServicePlus Service Desk", "http://usdp/CAisd/pdmweb.exe")
$xxx = $size[0]
$yyy = $size[1]
$m1 = "30"   ;how much to move left
$m2 = "28"   ;how much to come down from the top
$m3 = "100";how far to go the right
$m4 = "150";how far to go down
$coord = PixelSearch($xxx + $m1, $yyy + $m2, $xxx + $m3 , $yyy + $m4, $color)
MsgBox(0, "X and Y are:", $coord[0] & "," & $coord[1])