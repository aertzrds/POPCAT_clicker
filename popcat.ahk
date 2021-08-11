#InstallKeybdHook
#InstallMouseHook
#NoEnv
#UseHook
SetTitleMatchMode, 2
SendMode Input

^#z::
	Loop{
		SetControlDelay -1
		ControlClick, x500 y500, POPCAT,,,, NA
		Sleep 1
	}
	

; https://www.autohotkey.com/boards/viewtopic.php?t=30567
LShift & Esc::
	Critical
	BlockInput, Off
	MsgBox, 0x1033,, % "Shift + Escape was pressed; would you like to restart the script?`n"
					 . "Choose YES to reload the script.`n"
					 . "Choose NO to simply exit the script entirely.`n"
					 . "Choose CANCEL to return to what you were doing; the script will continue where it left off."
	IfMsgBox, Yes
	{
		Reload
		Sleep, 1000
		MsgBox % "ERROR: Script could not be reloaded and will exit instead."
		ExitApp
	}
	IfMsgBox, No
		ExitApp
	IfMsgBox, Cancel
		return
