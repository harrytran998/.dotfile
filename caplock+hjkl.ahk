#NoTrayIcon

SetCapsLockState, AlwaysOff

CapsLock & j::
    if GetKeyState("Ctrl", "D")
        Send ^{Down}    
else
    Send {Down}
return

CapsLock & k::
    if GetKeyState("Ctrl", "D")
        Send ^{Up}    
else
    Send {Up}
return

CapsLock & h::
    if GetKeyState("Ctrl", "D")
        Send ^{Left}    
else
    Send {Left}
return

CapsLock & l::
    if GetKeyState("Ctrl", "D")
        Send ^{Right}    
else
    Send {Right}
return

return
