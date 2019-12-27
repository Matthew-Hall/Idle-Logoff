#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
#Persistent
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;Second = 1000
;Minute = 60000
;Hour = 3600000
TimeToSleep = 30000

CheckPos:
Loop,
{
	MouseGetPos, PosX1, PosY1
	Sleep, %TimeToSleep%
	{
		MouseGetPos, PosX2, PosY2
		if (PosX1 = PosX2 && PosY1 = PosY2)
		{
			GoTo MouseIdle
		}
	}
	Sleep, 50
}
return

MouseIdle:
RunWait, IdleLogoff.exe
Goto CheckPos