#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

;https://community.spiceworks.com/topic/1975656-script-for-auto-logoff
;Sifox Mar 17, 2017 at 8:46 AM

#Persistent
LogOffTime := A_Now
LogOffTime += 5, Minutes
FormatTime, LogOffTime, %LogOffTime%, Time

SetTimer, LogOff, 300000
MsgBox, 49, Auto Log-off, This workstation will be logged off in 5 minutes at %LogOffTime%.`nPlease click Cancel to stay logged in.
IfMsgBox, Cancel
	ExitApp
Return

LogOff:
Shutdown, 4
ExitApp