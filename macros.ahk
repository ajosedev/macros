; Numpad buttons (0-9) -> PowerToys -> F13-F22
;                                 (Optionally) -> AHK Keybind -> Program
; Total of 10 macros possible
; In the future, modifier keys could be used to increase the amount of macros, e.g. ^F13

display := "extend"

F13::
{
	; Swap between 1 or 2 monitors
	global display

	if (display = "extend") {
		Run "DisplaySwitch.exe /external"
		display := "external"
	} else {
		Run "DisplaySwitch.exe /extend"
		display := "extend"
	}
}

F14::
{
	Run "nircmd muteappvolume firefox.exe 2"
}

F15::
{
	Run "nircmd muteappvolume discord.exe 2"
}

F16::
{
	Run "nircmd muteappvolume focused 2"
}

F17::
{
	Run "nircmd changeappvolume firefox.exe -0.1"
}

F18::
{
	Run "nircmd changeappvolume discord.exe -0.1"
}

F19::
{
	Run "nircmd changeappvolume focused -0.1"
}

F20::
{
	Run "nircmd changeappvolume firefox.exe 0.1"
}

F21::
{
	Run "nircmd changeappvolume discord.exe 0.1"
}

F22::
{
	Run "nircmd changeappvolume focused 0.1"
}