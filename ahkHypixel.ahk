Menu, Tray, NoIcon
lll := ComObjCreate("WinHttp.WinHttpRequest.5.1")
lll.Open("GET", "https://raw.githubusercontent.com/foodisgod/Wart-Farming-script/main/name")
lll.Send()
na := lll.ResponseText
lll := ""
#SingleInstance, force
#IfWinActive, ahk_exe javaw.exe
#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
DetectHiddenWindows, On
SetTitleMatchMode, 2
Gui,1:+AlwaysOnTop
Gui, Add, Edit, x12 y60 w120 h20 vPressAD gTime_all,
Gui, Add, Edit, x12 y90 w120 h20 vPressW gTime_all,
Gui, Add, Edit, x12 y120 w120 h20 vClick1 gTime_all,
Gui, Add, Text, x142 y60 w100 h25 , How long you press A and D
Gui, Add, Text, x142 y90 w100 h25 , How long you press W
Gui, Add, Text, x142 y120 w100 h25 , Chang click to
Gui, Add, Text, x12 y10 w610 h20 , LA1D's Money Maker
Gui, Add, Text, x12 y30 w610 h20 , Made by LA1D
Gui, Add, Text, x12 y170 w170 h25 , Press ctrl+alt+s for auto walk and auto click
Gui, Add, Text, x228 y180 w170 h25 , V2.56
Gui, Show, w260 h200, Auto Farm
return
GuiClose:
ExitApp
Time_all:
Gui, Submit, NoHide
!^s::
Loop
{
SetKeyDelay, 50, 50
ControlSend,, {%Click1% down}, ahk_exe javaw.exe
sleep 100
ControlSend,, {w down}, ahk_exe javaw.exe
sleep %PressW%
ControlSend,, {w up}, ahk_exe javaw.exe
sleep 100
ControlSend,, {a down}, ahk_exe javaw.exe
sleep, %PressAD%
ControlSend,, {a up}, ahk_exe javaw.exe
sleep 100
ControlSend,, {w down}, ahk_exe javaw.exe
sleep %PressW%
ControlSend,, {w up}, ahk_exe javaw.exe
sleep 100
ControlSend,, {d down}, ahk_exe javaw.exe
sleep, %PressAD%
ControlSend,, {d up}, ahk_exe javaw.exe
sleep 100
ControlSend,, {%Click1% up}, ahk_exe javaw.exe
sleep 100
ControlSend,, {%Click1% down}, ahk_exe javaw.exe
sleep 100
ControlSend,, {w down}, ahk_exe javaw.exe
sleep %PressW%
ControlSend,, {w up}, ahk_exe javaw.exe
sleep 100
ControlSend,, {a down}, ahk_exe javaw.exe
sleep, %PressAD%
ControlSend,, {a up}, ahk_exe javaw.exe
sleep 100
ControlSend,, {w down}, ahk_exe javaw.exe
sleep %PressW%
ControlSend,, {w up}, ahk_exe javaw.exe
sleep 100
ControlSend,, {d down}, ahk_exe javaw.exe
sleep, %PressAD%
ControlSend,, {d up}, ahk_exe javaw.exe
sleep 100
ControlSend,, {%Click1% up}, ahk_exe javaw.exe
sleep 100
ControlSend,, {%Click1% down}, ahk_exe javaw.exe
sleep 100
ControlSend,, {s down}, ahk_exe javaw.exe
sleep 500
ControlSend,, {s up}, ahk_exe javaw.exe
sleep 100
ControlSend,, {a down}, ahk_exe javaw.exe
sleep 500
ControlSend,, {a up}, ahk_exe javaw.exe
sleep 100
ControlSend,, {d down}, ahk_exe javaw.exe
sleep 500
ControlSend,, {d up}, ahk_exe javaw.exe
sleep 100
ControlSend,, {s down}, ahk_exe javaw.exe
sleep 500
ControlSend,, {s up}, ahk_exe javaw.exe
sleep 100
ControlSend,, {d down}, ahk_exe javaw.exe
sleep 500
ControlSend,, {d up}, ahk_exe javaw.exe
sleep 100
ControlSend,, {%Click1% up}, ahk_exe javaw.exe
sleep 100
}
Return
F12::ExitApp