; ============================================
; COMPREHENSIVE CUSTOM WINDOWS SHORTCUTS
; ============================================
; Instructions:
; 1. AutoHotkey is already installed ✓
; 2. Double-click this file to run it
; 3. Look for green "H" icon in system tray
; 4. Press Ctrl+Alt+H to see all shortcuts
;
; IMPORTANT NOTES:
; - Some shortcuts override Windows defaults (see documentation)
; - To disable Windows shortcuts, see WINDOWS_CONFLICTS.md
; - Executable paths may need adjustment based on your installation
; ============================================

#SingleInstance Force  ; Replace old instance if script is run again
SetWorkingDir %A_ScriptDir%

; ===== NOTIFICATION ON STARTUP =====
TrayTip, Custom Shortcuts Active!, Press Ctrl+Alt+H for help, 3, 1

; ============================================
; WEB SHORTCUTS (Open in Default Browser)
; ============================================

; Win + Y → YouTube
#y::
Run, https://www.youtube.com
return

; Win + E → File Explorer (KEEPING WINDOWS DEFAULT)
; This shortcut is DISABLED to keep Windows File Explorer default behavior
; Win + F is used for Fiverr instead

; Win + Space → ChatGPT (OVERRIDES: Language Input Switcher)
; Note: This disables the keyboard language switcher
; You can switch languages from taskbar instead
#Space::
Run, https://chat.openai.com
return

; Win + Ctrl + C → Discord Web
^#c::
Run, https://discord.com/app
return

; ============================================
; SYSTEM APPS & SETTINGS
; ============================================

; Win + S → Windows Settings (OVERRIDES: Windows Search)
; Note: This replaces Windows Search - use taskbar search instead
#s::
Run, ms-settings:
return

; Win + O → Microsoft Outlook
#o::
; Try multiple possible Outlook paths
IfExist, C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE
    Run, "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE"
else IfExist, C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE
    Run, "C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE"
else
    Run, outlook:
return

; Win + Alt + C → Microsoft Edge
!#c::
Run, msedge.exe
return

; Win + Alt + 1 → Calculator
!#1::
Run, calc.exe
return

; Win + V → Clipboard History (Keep Windows Default - Opens Clipboard History)
; This is already a Windows feature, keeping it as-is
; If you want to override it, uncomment below:
; #v::
; Run, <your custom action>
; return

; Win + A → Antigravity Folder
#a::
Run, C:\Users\abrar\.gemini\antigravity.exe
return

; ============================================
; ADOBE & CREATIVE APPS
; ============================================

; Win + Ctrl + P → PureRef
^#p::
; Common PureRef installation paths
IfExist, C:\Program Files\PureRef\PureRef.exe
    Run, "C:\Program Files\PureRef\PureRef.exe"
else IfExist, C:\Program Files (x86)\PureRef\PureRef.exe
    Run, "C:\Program Files (x86)\PureRef\PureRef.exe"
else IfExist, D:\Adobe\PureRef\PureRef.exe
    Run, "D:\Adobe\PureRef\PureRef.exe"
else
    MsgBox, PureRef not found! Please update the path in the script.
return

; Win + Shift + P → Adobe Premiere Pro
+#p::
; Common Premiere Pro paths - update version number as needed
IfExist, C:\Users\abrar\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Premiere Pro.lnk
    Run, "C:\Users\abrar\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Premiere Pro.lnk"
else IfExist, C:\Program Files\Adobe\Adobe Premiere Pro 2023\Adobe Premiere Pro.exe
    Run, "C:\Program Files\Adobe\Adobe Premiere Pro 2023\Adobe Premiere Pro.exe"
else IfExist, D:\Adobe\Adobe Premiere Pro 2024\Adobe Premiere Pro.exe
    Run, "D:\Adobe\Adobe Premiere Pro 2024\Adobe Premiere Pro.exe"
else
    MsgBox, Premiere Pro not found! Please update the path in the script.
return

; Win + P → Adobe Photoshop (OVERRIDES: Windows Project Display Settings)
; Note: This replaces Win+P which normally opens display projection settings
#p::
; Common Photoshop paths - update version number as needed
IfExist, C:\Users\abrar\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Photoshop.lnk
    Run, "C:\Users\abrar\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Photoshop.lnk"
else IfExist, C:\Program Files\Adobe\Adobe Photoshop 2023\Photoshop.exe
    Run, "C:\Program Files\Adobe\Adobe Photoshop 2023\Photoshop.exe"
else IfExist, D:\Adobe\Adobe Photoshop 2024\Photoshop.exe
    Run, "D:\Adobe\Adobe Photoshop 2024\Photoshop.exe"
else
    MsgBox, Photoshop not found! Please update the path in the script.
return

; Alt + MButton → Pan (Simulate Space Down)
#IfWinActive ahk_class Photoshop
!MButton::  
    Send, {Space down}
    KeyWait, MButton
    Send, {Space up}
return
#IfWinActive

; ============================================
; STEAM / GAME APPS
; ============================================

; Win + 5 → Blender 5.0 (via Steam)
#5::
; Steam AppID for Blender is 365670
; This will launch Blender through Steam
Run, steam://rungameid/365670
return

; ============================================
; FILE EXPLORER / DRIVES
; ============================================

; Win + 1 → This PC
#1::
Run, explorer.exe shell:MyComputerFolder
return

; Win + 2 → D:\ Drive (Unreal Engine D)
#2::
Run, explorer.exe D:\
return

; Win + 3 → E:\ Drive
#3::
Run, explorer.exe E:\
return

; Win + 4 → Downloads
#4::
Run, explorer.exe shell:Downloads
return

; ============================================
; STICKY NOTES & UTILITIES
; ============================================

; Ctrl + Alt + N → New Sticky Note
^!n::
; Launch Sticky Notes app (Windows 10/11)
Run, ms-stickynotes:
Sleep, 500
Send, ^n  ; Send Ctrl+N to create new note
return

; ============================================
; WHATSAPP (From Previous Setup)
; ============================================

; Win + W → WhatsApp Beta
#w::
Run, shell:AppsFolder\5319275A.WhatsAppDesktop_cv1g1gvanyjgm!App
return

; Win + Shift + W → Reddit
#+w::
Run, https://www.reddit.com/
return

; ============================================
; OTHER USEFUL SHORTCUTS (From Previous Setup)
; ============================================

; Win + T → Windows Terminal
#t::
Run, wt.exe
return

; Win + C → Google Chrome
#c::
Run, chrome.exe
return

; Win + N → Notepad
#n::
Run, notepad.exe
return

; Win + F → Fiverr (moved from Win+E)
#f::
Run, https://www.fiverr.com
return

; Win + Q → Calculator (Alternative)
#q::
Run, calc.exe
return

; Ctrl + Alt + T → Task Manager
^!t::
Run, taskmgr.exe
return

; Win + D → Downloads Folder (OVERRIDES: Show Desktop)
; Uncomment if you want this, but it will disable "Show Desktop"
; #d::
; Run, %UserProfile%\Downloads
; return

; ============================================
; HELP MENU
; ============================================

; Ctrl + Alt + H → Show All Shortcuts
^!h::
MsgBox, 0, Custom Shortcuts Help,
(
═══════════════════════════════════════
     CUSTOM KEYBOARD SHORTCUTS
═══════════════════════════════════════

📱 WEB SHORTCUTS:
Win + Y          → YouTube
Win + F          → Fiverr
Win + E          → File Explorer (Windows default - ENABLED)
Win + Space      → ChatGPT ⚠️ (replaces language switch)
Win + Ctrl + C   → Discord Web

🖥️ SYSTEM APPS:
Win + S          → Settings ⚠️ (replaces Windows Search)
Win + O          → Outlook
Win + Alt + C    → Edge Browser
Win + Alt + 1    → Calculator
Win + A          → Antigravity Folder
Win + V          → Clipboard History (Windows default)

🎨 ADOBE / CREATIVE:
Win + Ctrl + P   → PureRef
Win + Shift + P  → Premiere Pro
Win + P          → Photoshop ⚠️ (replaces Project display)
Alt + MButton    → Pan (Photoshop only)

🎮 GAMES:
Win + 5          → Blender 5.0 (Steam)

📁 FOLDERS & DRIVES:
Win + 1          → This PC
Win + 2          → D:\ Drive
Win + 3          → E:\ Drive
Win + 4          → Adobe Folder

💬 MESSAGING:
Win + W          → WhatsApp Beta
Win + Shift + W  → Reddit

📝 UTILITIES:
Ctrl + Alt + N   → New Sticky Note
Win + T          → Terminal
Win + C          → Chrome
Win + N          → Notepad
Ctrl + Alt + T   → Task Manager

❓ HELP:
Ctrl + Alt + H   → This help menu

⚠️ = Overrides Windows default shortcut
)
return

; ============================================
; END OF SCRIPT
; ============================================
