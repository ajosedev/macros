#SingleInstance force
#Persistent

; Numpad buttons (0-9) -> PowerToys -> F13-F22
;                                 (Optionally) -> AHK Keybind -> Program
; Total of 10 macros possible

DetectHiddenWindows, On

display := "extend"
audioDevice := "speakers"

F13::
	; Discord - Mute
	; Discord doesn't support binding F13+
	SendInput ^+!{F1}
return

F14::
	; Discord - Deafen
	; Discord doesn't support binding F13+
	SendInput ^+!{F2}
return

F15::
	; Swap audio output device
	if (audioDevice = "speakers") {
		Run nircmd setdefaultsounddevice "Headphones"
		audioDevice := "headphones"
	} else {
		Run nircmd setdefaultsounddevice "Speakers"
		audioDevice := "speakers"
	}
return

F16::
	; Swap between 1 or 2 monitors
	if (display = "extend") {
		Run DisplaySwitch.exe /external
		display := "external"
	} else {
		Run DisplaySwitch.exe /extend
		display := "extend"
	}
return

F17::
	; Screenshot active window
	SendInput !{PrintScreen}
return

F18::
	; Volume -10
	SoundSet -10
return

F19::
	; Mute Firefox volume
	Run nircmd muteappvolume firefox.exe 2
return

F20::
	; TODO
return

F21::
	; Volume +10
	Soundset +10
return

F22::
	; Toggle volume mute
	SoundSet, +1,, Mute
return
