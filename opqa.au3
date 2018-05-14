#include <Misc.au3>


HotKeySet("{HOME}","Process")

; https://www.autoitscript.com/autoit3/docs/libfunctions/_IsPressed.


Func Process()
   HotKeySet("{HOME}","Nothing")
   Sleep(1000)
   ConsoleWrite("Starting to process" & @CRLF)
   HotKeySet("o","Nothing")
   HotKeySet("p","Nothing")
   HotKeySet("q","Nothing")
   HotKeySet("a","Nothing")
   HotKeySet("{SPACE}","Nothing")
   HotKeySet("{ENTER}","Nothing")

   While 1
	  Local $hDLL = DllOpen("user32.dll")
	  If _IsPressed("51", $hDLL) Then
		 Move(0,-1)
	  EndIf
	  If _IsPressed("41", $hDLL) Then
		 Move(0,1)
	  EndIf
	  If _IsPressed("4F", $hDLL) Then
		 Move(-1,0)
	  EndIf
	  If _IsPressed("50", $hDLL) Then
		 Move(1,0)
	  EndIf
	  If _IsPressed("20", $hDLL) Then
		 MouseClick("left")
	  EndIf
	  If _IsPressed("0D", $hDLL) Then
		 MouseClick("right")
	  EndIf

	  ; Home exit process()
	  If _IsPressed("24", $hDLL) Then ExitLoop
	  Sleep(5)

   WEnd
   HotKeySet("o")
   HotKeySet("p")
   HotKeySet("q")
   HotKeySet("a")
   HotKeySet("{SPACE}")
   HotKeySet("{ENTER}")
   HotKeySet("{HOME}","Process")
   ConsoleWrite("End process" & @CRLF)
EndFunc
Func Nothing()
EndFunc

While 1
    Sleep(100)
WEnd

Func Move($x,$y)
    $OriginalX = MouseGetPos(0)
    $OriginalY = MouseGetPos(1)
    $MoveX = $x
    $MoveY = $y
    MouseMove($OriginalX + $MoveX, $OriginalY + $MoveY, 5)
EndFunc
