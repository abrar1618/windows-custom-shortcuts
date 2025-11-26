# 🚀 How to Use AutoHotkey - Simple Guide

## ✅ Step 1: Run Your Script

Since you already have AutoHotkey installed, just follow these steps:

### **Option A: Double-Click Method** (Easiest!)

1. Go to: `C:\Users\abrar\.gemini\antigravity\scratch\windows-shortcuts\`
2. **Double-click** on `CustomShortcuts.ahk`
3. You'll see a small AutoHotkey icon (green H) in your system tray (bottom-right corner near the clock)
4. Done! Your shortcuts are now active!

### **Option B: Right-Click Method**

1. Right-click on `CustomShortcuts.ahk`
2. Select **"Run Script"**
3. The script is now active!

## 🎯 Test Your Shortcuts

Try pressing these keys together:

- **Windows Key + W** → Opens WhatsApp Beta
- **Windows Key + T** → Opens Terminal
- **Windows Key + C** → Opens Chrome
- **Ctrl + Alt + H** → Shows help with all shortcuts

## 📝 How to Add More Apps

### **Finding Any App's Path:**

**Method 1: For Microsoft Store Apps (like WhatsApp Beta)**

1. Open PowerShell
2. Run this command:

```powershell
Get-StartApps | Where-Object {$_.Name -like "*YourAppName*"}
```

Replace `YourAppName` with your app name, e.g., "WhatsApp", "Netflix", etc.

3. You'll see something like:

```
Name            AppID
----            -----
WhatsApp Beta   5319275A.WhatsAppBeta_cv1g1gvanyjgm!App
```

4. Add to your script:

```ahk
#w::
Run, shell:AppsFolder\5319275A.WhatsAppBeta_cv1g1gvanyjgm!App
return
```

**Method 2: For Regular Desktop Apps (like Chrome, Notepad)**

1. Find the app's `.exe` file location
2. Add to your script:

```ahk
#c::
Run, "C:\Program Files\Google\Chrome\Application\chrome.exe"
return
```

### **Common Apps You Might Want:**

```ahk
; Telegram
#t::
Run, shell:AppsFolder\TelegramMessengerLLP.TelegramDesktop_t4vj0pshhgkwm!App
return

; Spotify
#s::
Run, spotify.exe
return

; Discord
#d::
Run, %LocalAppData%\Discord\Update.exe --processStart Discord.exe
return
```

## 🔧 Editing Your Script

1. **Right-click** on `CustomShortcuts.ahk`
2. Select **"Edit Script"**
3. Add your custom shortcuts (see examples above)
4. **Save** the file
5. **Right-click** the AutoHotkey icon in system tray → **Reload Script**

## 🛑 Stopping the Script

- Right-click the AutoHotkey icon (green H) in system tray
- Click **"Exit"**

## 🔄 Auto-Start on Windows Boot

To make shortcuts work every time you start your PC:

1. Press **Win + R**
2. Type: `shell:startup` and press Enter
3. Create a shortcut to `CustomShortcuts.ahk` in this folder

## ❓ Troubleshooting

**Script won't run?**

- Make sure AutoHotkey is installed
- Try right-clicking the script → "Run as administrator"

**Shortcut doesn't work?**

- Check if the app is actually installed
- Try opening the app manually first
- Check the app path is correct

**Need to find an app's path?**
Let me know the app name and I'll help you find the correct path!

---

### 📌 Quick Reference

| What You Want     | What You Do                           |
| ----------------- | ------------------------------------- |
| Start script      | Double-click `CustomShortcuts.ahk`    |
| Stop script       | Right-click tray icon → Exit          |
| Edit shortcuts    | Right-click script → Edit Script      |
| Reload after edit | Right-click tray icon → Reload Script |
| See all shortcuts | Press **Ctrl + Alt + H**              |

---

**That's it! You're ready to use your custom shortcuts!** 🎉
