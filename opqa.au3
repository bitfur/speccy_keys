HotKeySet("o","ToTheLeft")
HotKeySet("p","ToTheRight")
HotKeySet("q","ToUp")
HotKeySet("a","ToDown")
HotKeySet("{SPACE}","Click")


While 1
    Sleep(100)
WEnd

Func Click()
    MouseClick("left")
EndFunc



Func ToTheLeft()
    $OriginalX = MouseGetPos(0)
    $OriginalY = MouseGetPos(1)
    $MoveX = -1
    $MoveY = 0
    MouseMove($OriginalX + $MoveX, $OriginalY + $MoveY, 5)

EndFunc

Func ToTheRight()
    $OriginalX = MouseGetPos(0)
    $OriginalY = MouseGetPos(1)
    $MoveX = 1
    $MoveY = 0
    MouseMove($OriginalX + $MoveX, $OriginalY + $MoveY, 5)
 EndFunc

 Func ToUp()
    $OriginalX = MouseGetPos(0)
    $OriginalY = MouseGetPos(1)
    $MoveX = 0
    $MoveY =-1
    MouseMove($OriginalX + $MoveX, $OriginalY + $MoveY, 5)
 EndFunc

 Func ToDown()
    $OriginalX = MouseGetPos(0)
    $OriginalY = MouseGetPos(1)
    $MoveX = 0
    $MoveY = 1
    MouseMove($OriginalX + $MoveX, $OriginalY + $MoveY, 5)
EndFunc