#Requires AutoHotkey v2.0

; Open Edge with Ctrl + Alt + B
^!b:: {
    Run "msedge.exe"
}

; Open Command Prompt with Ctrl + Alt + T
^!t:: {
    Run "cmd.exe"
}

; Open PowerShell with Ctrl + Alt + Shift + T
^+!t:: {
    Run "powershell.exe"
}

; Launch a new File Explorer window
^!e::
{
    Run("explorer.exe")
    return
}

; Disable normal Caps Lock behavior and open Task Switcher with Caps Lock
CapsLock:: {
    Send "{LWin Down}{Tab}"
    Sleep 100
    Send "{LWin Up}"
}

^!Backspace::
{
    ; Get the handle of the currently active window
    activeWindow := WinGetID("A")

    ; Check if a window is active
    if (activeWindow)
    {
        ; Close the active window
        WinClose(activeWindow)
    }
    return
}

