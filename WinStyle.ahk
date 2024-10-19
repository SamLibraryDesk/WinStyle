;WinStyle

Gui, +AlwaysOnTop
Gui, Font, s10
Gui, Add, Tab3, w573 h467, WinStyle|WinExStyle

GUI, Tab, 1
Gui, Add, Edit, ReadOnly, 1 = WS_BORDER
Gui, Add, Edit, ReadOnly, 2 = WS_POPUP
Gui, Add, Edit, ReadOnly, 3 = WS_CAPTION
Gui, Add, Edit, ReadOnly, 4 = WS_CLIPSIBLINGS
Gui, Add, Edit, ReadOnly, 5 = WS_DLGFRAME
Gui, Add, Edit, ReadOnly, 6 = WS_GROUP
Gui, Add, Edit, ReadOnly, 7 = WS_HSCROLL
Gui, Add, Edit, ReadOnly, 8 = WS_MAXIMIZE
Gui, Add, Edit, ReadOnly, 9 = WS_MAXIMIZEBOX
Gui, Add, Edit, ReadOnly, 0 = WS_MINIMIZE
Gui, Add, Edit, ReadOnly, Alt + 1 = WS_MINIMIZEBOX
Gui, Add, Edit, ReadOnly, Alt + 2 = WS_OVERLAPPED
Gui, Add, Edit, ReadOnly, Alt + 3 = WS_OVERLAPPEDWINDOW
Gui, Add, Edit, ReadOnly, Alt + 4 = WS_POPUPWINDOW
Gui, Add, Edit, x+80 y39 ReadOnly, Alt + 5 = WS_SIZEBOX
Gui, Add, Edit, ReadOnly, Alt + 6 = WS_SYSMENU
Gui, Add, Edit, ReadOnly, Alt + 7 = WS_TABSTOP
Gui, Add, Edit, ReadOnly, Alt + 8 = WS_THICKFRAME
Gui, Add, Edit, ReadOnly, Alt + 9 = WS_VSCROLL
Gui, Add, Edit, ReadOnly, Alt + 0 = WS_CHILD

GUI, Tab, 2
Gui, Add, Edit, ReadOnly, Alt + Q = WS_EX_ACCEPTFILES
Gui, Add, Edit, ReadOnly, Alt + W = WS_EX_APPWINDOW
Gui, Add, Edit, ReadOnly, Alt + E = WS_EX_CLIENTEDGE
Gui, Add, Edit, ReadOnly, Alt + R = WS_EX_COMPOSITED
Gui, Add, Edit, ReadOnly, Alt + T = WS_EX_CONTEXTHELP
Gui, Add, Edit, ReadOnly, Alt + Y = WS_EX_CONTROLPARENT
Gui, Add, Edit, ReadOnly, Alt + U = WS_EX_DLGMODALFRAME
Gui, Add, Edit, ReadOnly, Alt + I = WS_EX_LAYERED
Gui, Add, Edit, ReadOnly, Alt + O = WS_EX_LAYOUTRTL
Gui, Add, Edit, ReadOnly, Alt + P = WS_EX_LEFT
Gui, Add, Edit, ReadOnly, Alt + [ = WS_EX_LEFTSCROLLBAR
Gui, Add, Edit, ReadOnly, Alt + ] = WS_EX_LTRREADING
Gui, Add, Edit, ReadOnly, Alt + A = WS_EX_MDICHILD
Gui, Add, Edit, ReadOnly, Alt + S = WS_EX_NOACTIVATE
Gui, Add, Edit, x+70 y39 ReadOnly, Alt + D = WS_EX_NOINHERITLAYOUT
Gui, Add, Edit, ReadOnly, Alt + F = WS_EX_NOPARENTNOTIFY
Gui, Add, Edit, ReadOnly, Alt + G = WS_EX_NOREDIRECTIONBITMAP
Gui, Add, Edit, ReadOnly, Alt + H = WS_EX_OVERLAPPEDWINDOW
Gui, Add, Edit, ReadOnly, Alt + J = WS_EX_PALETTEWINDOW
Gui, Add, Edit, ReadOnly, Alt + K = WS_EX_RIGHT
Gui, Add, Edit, ReadOnly, Alt + L = WS_EX_RIGHTSCROLLBAR
Gui, Add, Edit, ReadOnly, Alt + `; = WS_EX_RTLREADING
Gui, Add, Edit, ReadOnly, Alt + `' = WS_EX_STATICEDGE
Gui, Add, Edit, ReadOnly, Alt + Z = WS_EX_TOOLWINDOW
Gui, Add, Edit, ReadOnly, Alt + X = WS_EX_TOPMOST
Gui, Add, Edit, ReadOnly, Alt + C = WS_EX_TRANSPARENT
Gui, Add, Edit, ReadOnly, Alt + V = WS_EX_WINDOWEDGE

Gui, Show, w595 h480, WinStyle
Return

GuiClose:
    ExitApp

#NoEnv
SendMode Input
SetTitleMatchMode, 2

;Window Styles ##################################

1::
    WS_Name = WS_BORDER
    MouseGetPos, , , hWnd
    WinGet, Style, Style, ahk_id %hWnd%
    if (Style & 0x00800000)  ; WS_BORDER
    {
        WinSet, Style, -0x00800000, ahk_id %hWnd% 
    } else {
        WinSet, Style, +0x00800000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

2::
    WS_Name = WS_POPUP
    MouseGetPos, , , hWnd
    WinGet, Style, Style, ahk_id %hWnd%
    if (Style & 0x00800000)  ; WS_POPUP
    {
        WinSet, Style, -0x00800000, ahk_id %hWnd%
    } else {
        WinSet, Style, +0x00800000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

3::
    WS_Name = WS_CAPTION
    MouseGetPos, , , hWnd
    WinGet, Style, Style, ahk_id %hWnd%
    if (Style & 0xC00000)  ; WS_CAPTION
    {
        WinSet, Style, -0xC00000, ahk_id %hWnd%
    } else {
        WinSet, Style, +0xC00000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

4::
    WS_Name = WS_CLIPSIBLINGS
    MouseGetPos, , , hWnd
    WinGet, Style, Style, ahk_id %hWnd%
    if (Style & 0x4000000)  ; WS_CLIPSIBLINGS
    {
        WinSet, Style, -0x4000000, ahk_id %hWnd%
    } else {
        WinSet, Style, +0x4000000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

5::
    WS_Name = WS_DLGFRAME
    MouseGetPos, , , hWnd
    WinGet, Style, Style, ahk_id %hWnd%
    if (Style & 0x400000)  ; WS_DLGFRAME
    {
        WinSet, Style, -0x400000, ahk_id %hWnd%
    } else {
        WinSet, Style, +0x400000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

6::
    WS_Name = WS_GROUP
    MouseGetPos, , , hWnd
    WinGet, Style, Style, ahk_id %hWnd%
    if (Style & 0x20000)  ; WS_GROUP
    {
        WinSet, Style, -0x20000, ahk_id %hWnd%
    } else {
        WinSet, Style, +0x20000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

7::
    WS_Name = WS_HSCROLL
    MouseGetPos, , , hWnd
    WinGet, Style, Style, ahk_id %hWnd%
    if (Style & 0x100000)  ; WS_HSCROLL
    {
        WinSet, Style, -0x100000, ahk_id %hWnd%
    } else {
        WinSet, Style, +0x100000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

8::
    WS_Name = WS_MAXIMIZE
    MouseGetPos, , , hWnd
    WinGet, Style, Style, ahk_id %hWnd%
    if (Style & 0x1000000)  ; WS_MAXIMIZE
    {
        WinSet, Style, -0x1000000, ahk_id %hWnd%
    } else {
        WinSet, Style, +0x1000000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

9::
    WS_Name = WS_MAXIMIZEBOX
    MouseGetPos, , , hWnd
    WinGet, Style, Style, ahk_id %hWnd%
    if (Style & 0x10000)  ; WS_MAXIMIZEBOX
    {
        WinSet, Style, -0x10000, ahk_id %hWnd%
    } else {
        WinSet, Style, +0x10000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

0::
    WS_Name = WS_MINIMIZE
    MouseGetPos, , , hWnd
    WinGet, Style, Style, ahk_id %hWnd%
    if (Style & 0x20000000)  ; WS_MINIMIZE
    {
        WinSet, Style, -0x20000000, ahk_id %hWnd%
    } else {
        WinSet, Style, +0x20000000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
    
return

!1::
    WS_Name = WS_MINIMIZEBOX
    MouseGetPos, , , hWnd
    WinGet, Style, Style, ahk_id %hWnd%
    if (Style & 0x20000)  ; WS_MINIMIZEBOX
    {
        WinSet, Style, -0x20000, ahk_id %hWnd%
    } else {
        WinSet, Style, +0x20000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!2::
    WS_Name = WS_OVERLAPPED
    MouseGetPos, , , hWnd
    WinGet, Style, Style, ahk_id %hWnd%
    if (Style & 0x0)  ; WS_OVERLAPPED
    {
        WinSet, Style, -0x0, ahk_id %hWnd%
    } else {
        WinSet, Style, +0x0, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!3::
    WS_Name = WS_OVERLAPPEDWINDOW
    MouseGetPos, , , hWnd
    WinGet, Style, Style, ahk_id %hWnd%
    if (Style & 0xCF0000)  ; WS_OVERLAPPEDWINDOW
    {
        WinSet, Style, -0xCF0000, ahk_id %hWnd%
    } else {
        WinSet, Style, +0xCF0000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!4::
    WS_Name = WS_POPUPWINDOW
    MouseGetPos, , , hWnd
    WinGet, Style, Style, ahk_id %hWnd%
    if (Style & 0x80880000)  ; WS_POPUPWINDOW
    {
        WinSet, Style, -0x80880000, ahk_id %hWnd%
    } else {
        WinSet, Style, +0x80880000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!5::
    WS_Name = WS_SIZEBOX
    MouseGetPos, , , hWnd
    WinGet, Style, Style, ahk_id %hWnd%
    if (Style & 0x40000)  ; WS_SIZEBOX
    {
        WinSet, Style, -0x40000, ahk_id %hWnd%
    } else {
        WinSet, Style, +0x40000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!6::
    WS_Name = WS_SYSMENU
    MouseGetPos, , , hWnd
    WinGet, Style, Style, ahk_id %hWnd%
    if (Style & 0x80000)  ; WS_SYSMENU
    {
        WinSet, Style, -0x80000, ahk_id %hWnd%
    } else {
        WinSet, Style, +0x80000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!7::
    WS_Name = WS_TABSTOP
    MouseGetPos, , , hWnd
    WinGet, Style, Style, ahk_id %hWnd%
    if (Style & 0x10000)  ; WS_TABSTOP
    {
        WinSet, Style, -0x10000, ahk_id %hWnd%
    } else {
        WinSet, Style, +0x10000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!8::
    WS_Name = WS_THICKFRAME
    MouseGetPos, , , hWnd
    WinGet, Style, Style, ahk_id %hWnd%
    if (Style & 0x40000)  ; WS_THICKFRAME
    {
        WinSet, Style, -0x40000, ahk_id %hWnd%
    } else {
        WinSet, Style, +0x40000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!9::
    WS_Name = WS_VSCROLL
    MouseGetPos, , , hWnd
    WinGet, Style, Style, ahk_id %hWnd%
    if (Style & 0x200000)  ; WS_VSCROLL
    {
        WinSet, Style, -0x200000, ahk_id %hWnd%
    } else {
        WinSet, Style, +0x200000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!0::
    WS_Name = WS_CHILD
    MouseGetPos, , , hWnd
    WinGet, Style, Style, ahk_id %hWnd%
    if (Style & 0x40000000)  ; WS_CHILD
    {
        WinSet, Style, -0x40000000, ahk_id %hWnd%
    } else {
        WinSet, Style, +0x40000000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

;Extended Window Styles ###########################

!q::
    WS_Name = WS_WS_EX_ACCEPTFILES
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00000010)  ; WS_EX_ACCEPTFILES
    {
        WinSet, ExStyle, -0x00000010, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00000010, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!w::
    WS_Name = WS_EX_APPWINDOW
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00040000)  ; WS_EX_APPWINDOW
    {
        WinSet, ExStyle, -0x00040000, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00040000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!e::
    WS_Name = WS_EX_CLIENTEDGE
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00000200)  ; WS_EX_CLIENTEDGE
    {
        WinSet, ExStyle, -0x00000200, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00000200, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!r::
    WS_Name = WS_EX_COMPOSITED
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x02000000)  ; WS_EX_COMPOSITED
    {
        WinSet, ExStyle, -0x02000000, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x02000000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!t::
    WS_Name = WS_EX_CONTEXTHELP
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00000400)  ; WS_EX_CONTEXTHELP
    {
        WinSet, ExStyle, -0x00000400, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00000400, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!y::
    WS_Name = WS_EX_CONTROLPARENT
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00010000)  ; WS_EX_CONTROLPARENT
    {
        WinSet, ExStyle, -0x00010000, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00010000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!u::
    WS_Name = WS_EX_DLGMODALFRAME
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00000001)  ; WS_EX_DLGMODALFRAME
    {
        WinSet, ExStyle, -0x00000001, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00000001, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!i::
    WS_Name = WS_EX_LAYERED
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00080000)  ; WS_EX_LAYERED
    {
        WinSet, ExStyle, -0x00080000, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00080000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!o::
    WS_Name = WS_EX_LAYOUTRTL
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00400000)  ; WS_EX_LAYOUTRTL
    {
        WinSet, ExStyle, -0x00400000, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00400000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!p::
    WS_Name = WS_EX_LEFT
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00000000)  ; WS_EX_LEFT
    {
        WinSet, ExStyle, -0x00000000, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00000000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

![::
    WS_Name = WS_EX_LEFTSCROLLBAR
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00004000)  ; WS_EX_LEFTSCROLLBAR
    {
        WinSet, ExStyle, -0x00004000, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00004000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!]::
    WS_Name = WS_EX_LTRREADING
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00000000)  ; WS_EX_LTRREADING
    {
        WinSet, ExStyle, -0x00000000, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00000000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!a::
    WS_Name = WS_EX_MDICHILD
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00000040)  ; WS_EX_MDICHILD
    {
        WinSet, ExStyle, -0x00000040, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00000040, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!s::
    WS_Name = WS_EX_NOACTIVATE
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x08000000)  ; WS_EX_NOACTIVATE
    {
        WinSet, ExStyle, -0x08000000, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x08000000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!d::
    WS_Name = WS_EX_NOINHERITLAYOUT
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00100000)  ; WS_EX_NOINHERITLAYOUT
    {
        WinSet, ExStyle, -0x00100000, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00100000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!f::
    WS_Name = WS_EX_NOPARENTNOTIFY
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00000004)  ; WS_EX_NOPARENTNOTIFY
    {
        WinSet, ExStyle, -0x00000004, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00000004, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!g::
    WS_Name = WS_EX_NOREDIRECTIONBITMAP
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00200000)  ; WS_EX_NOREDIRECTIONBITMAP
    {
        WinSet, ExStyle, -0x00200000, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00200000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!h::
    WS_Name = WS_EX_OVERLAPPEDWINDOW
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00000100 && ExStyle & 0x00000200)  ; WS_EX_OVERLAPPEDWINDOW
    {
        WinSet, ExStyle, -0x00000100, ahk_id %hWnd%
        WinSet, ExStyle, -0x00000200, ahk_id %hWnd%
      } else {
        WinSet, ExStyle, +0x00000100, ahk_id %hWnd%
        WinSet, ExStyle, +0x00000200, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!j::
    WS_Name = WS_EX_PALETTEWINDOW
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00000100 && ExStyle & 0x00000080 && ExStyle & 0x00000008)  ; WS_EX_PALETTEWINDOW
    {
        WinSet, ExStyle, -0x00000100, ahk_id %hWnd%
        WinSet, ExStyle, -0x00000080, ahk_id %hWnd%
        WinSet, ExStyle, -0x00000008, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00000100, ahk_id %hWnd%
        WinSet, ExStyle, +0x00000080, ahk_id %hWnd%
        WinSet, ExStyle, +0x00000008, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!k::
    WS_Name = WS_EX_RIGHT
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00001000)  ; WS_EX_RIGHT
    {
        WinSet, ExStyle, -0x00001000, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00001000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!l::
    WS_Name = WS_EX_RIGHTSCROLLBAR
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00000000)  ; WS_EX_RIGHTSCROLLBAR
    {
        WinSet, ExStyle, -0x00000000, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00000000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!;::
    WS_Name = WS_EX_RTLREADING
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00002000)  ; WS_EX_RTLREADING
    {
        WinSet, ExStyle, -0x00002000, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00002000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!'::
    WS_Name = WS_EX_STATICEDGE
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00020000)  ; WS_EX_STATICEDGE
    {
        WinSet, ExStyle, -0x00020000, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00020000, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!z::
    WS_Name = WS_EX_TOOLWINDOW
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00000080)  ; WS_EX_TOOLWINDOW
    {
        WinSet, ExStyle, -0x00000080, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00000080, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!x::
    WS_Name = WS_EX_TOPMOST
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00000008)  ; WS_EX_TOPMOST
    {
        WinSet, ExStyle, -0x00000008, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00000008, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!c::
    WS_Name = WS_EX_TRANSPARENT
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00000020)  ; WS_EX_TRANSPARENT
    {
        WinSet, ExStyle, -0x00000020, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00000020, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

!v::
    WS_Name = WS_EX_WINDOWEDGE
    MouseGetPos, , , hWnd
    WinGet, ExStyle, ExStyle, ahk_id %hWnd%
    if (ExStyle & 0x00000100)  ; WS_EX_WINDOWEDGE
    {
        WinSet, ExStyle, -0x00000100, ahk_id %hWnd%
    } else {
        WinSet, ExStyle, +0x00000100, ahk_id %hWnd%
    }
    WinMove, ahk_id %hWnd%, , , , , , ; Refresh
    ToolTip, %WS_Name%
    SetTimer, RemoveToolTip, -2000
return

RemoveToolTip:
ToolTip
return
