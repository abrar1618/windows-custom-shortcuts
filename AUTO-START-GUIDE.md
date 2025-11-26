# 🚀 Auto-Start Setup Guide

## Problem

Every time you turn off your PC, the script stops. When you turn on your PC, you need to manually run the script again.

## Solution

Make the script **run automatically** when Windows starts!

---

## ✅ Method 1: Automatic Setup (EASIEST!)

I created a tool to do this automatically for you!

### **Steps:**

1. Go to: `C:\Users\abrar\.gemini\antigravity\scratch\windows-shortcuts\`
2. **Double-click** on **`Setup-AutoStart.bat`**
3. Press any key to continue
4. Done! ✅

The script will now run automatically every time Windows starts!

---

## ✅ Method 2: Manual Setup (If Method 1 doesn't work)

### **Steps:**

1. **Press Win + R** on your keyboard
2. **Type:** `shell:startup`
3. **Press Enter** - A folder will open
4. **Right-click** in the folder → **New** → **Shortcut**
5. **Click Browse** and go to:
   ```
   C:\Users\abrar\.gemini\antigravity\scratch\windows-shortcuts\CustomShortcuts.ahk
   ```
6. **Select** the file and click **OK**
7. **Click Next** → **Click Finish**

Done! ✅

---

## 🧪 How to Test

1. **Restart your PC**
2. After Windows starts, look for the **green H icon** in your system tray
3. **Try a shortcut** like **Win + W** (WhatsApp)
4. If it works, you're all set! 🎉

---

## 📍 Where is the Startup Folder?

The shortcut will be created here:

```
C:\Users\abrar\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup
```

You can always check this folder by:

- Press **Win + R**
- Type: `shell:startup`
- Press Enter

---

## ❌ How to Remove Auto-Start (If you want to disable it)

1. Press **Win + R**
2. Type: `shell:startup`
3. Press Enter
4. **Delete** the `CustomShortcuts.lnk` shortcut
5. Done!

---

## ✅ What Happens Now?

After setup:

- ✅ Windows starts → Script runs automatically
- ✅ Green H icon appears in system tray
- ✅ All shortcuts work immediately
- ✅ No need to manually run the script anymore!

---

## 🆘 Troubleshooting

**Script doesn't run on startup?**

- Check if the shortcut exists in the Startup folder (Win+R → shell:startup)
- Make sure the shortcut points to the correct file location
- Try running `Setup-AutoStart.bat` again

**Want to temporarily disable auto-start?**

- Right-click the H icon in tray → Exit
- The script will run again on next restart

**Want to permanently disable auto-start?**

- Delete the shortcut from the Startup folder (Win+R → shell:startup)

---

## 📝 Summary

**Before:** Turn on PC → Manually run script → Shortcuts work  
**After:** Turn on PC → Shortcuts work automatically! ✅

**Just run `Setup-AutoStart.bat` once and you're done!** 🚀
