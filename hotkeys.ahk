#Requires AutoHotkey v2.0

; Open Edge profile 1 with Ctrl + Alt + B
^!b:: {
    Run('msedge.exe --profile-directory="Default"')
}

; Open Edge profile 2 with Ctrl + Alt + Shift + B
^+!b::
{
    Run('msedge.exe --profile-directory="Profile 2"')
}

; Open Command Prompt with Ctrl + Alt + T
^!t:: {
    Run "cmd.exe"
}

; Open wsl with Ctrl + Alt + Shift + T
^+!t:: {
    Run("cmd /k wsl") ; /k keeps the terminal open after executing the command
    return


}

; Open PowerShell with Ctrl + Alt + Shift + Enter
^!Enter::
{
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
