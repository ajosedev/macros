# macros

A toolkit to convert a spare numpad into a custom macropad using AutoHotkey and PowerToys with Windows.

Numpad keys (0-9) are rebound to F13-F24, which are then assigned to a command in AutoHotkey. Only number keys are supported, as they have a separate keycode. This allows for a total of 10 macros. This setup will intercept the numpad key, but the F13-F24 keys are actually fired.

A previous setup used [AutoHotInterception](https://github.com/evilC/AutoHotInterception), but a PowerToys setup is easier if that's already installed.

The AutoHotkey script provided is opinionated, but the macros can be altered to whatever need.

## Requirements

- [PowerToys Keyboard Manager](https://docs.microsoft.com/en-us/windows/powertoys/keyboard-manager)
- [AutoHotkey](https://www.autohotkey.com/)
- [Nircmd](https://www.nirsoft.net/utils/nircmd.html) (optional)

## Setup

1. Update PowerToys configuration at `%LOCALAPPDATA%\Microsoft\PowerToys\Keyboard Manager\default.json`
2. Create a shortcut in `shell:startup` to run the AutoHotkey script on startup.
