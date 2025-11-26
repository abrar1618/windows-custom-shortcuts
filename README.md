# ⚡ Windows Custom Shortcuts Manager

A comprehensive AutoHotkey-based keyboard shortcut system for Windows that provides instant access to your most-used applications, websites, and system utilities through intuitive keyboard combinations.

![AutoHotkey](https://img.shields.io/badge/AutoHotkey-v1.1+-blue.svg)
![Platform](https://img.shields.io/badge/platform-Windows%2010%2F11-lightgrey.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

## ✨ Features

- **29+ Custom Shortcuts** - Quick access to applications, websites, and system utilities
- **Auto-Start Support** - Automatically runs on Windows startup
- **Easy Configuration** - Simple script editing with clear documentation
- **Conflict Management** - Documented Windows default shortcut overrides
- **Built-in Help Menu** - Press `Ctrl + Alt + H` to see all available shortcuts
- **Multiple App Paths** - Intelligent path detection for Adobe and Microsoft apps

## 🚀 Quick Start

### Prerequisites

- Windows 10 or 11
- [AutoHotkey v1.1+](https://www.autohotkey.com/) installed

### Installation

1. **Clone or download this repository**

   ```bash
   git clone https://github.com/YOUR_USERNAME/windows-custom-shortcuts.git
   ```

2. **Run the script**

   - Double-click `CustomShortcuts.ahk`
   - Look for the green "H" icon in your system tray

3. **Enable auto-start (optional)**
   - Run `Setup-AutoStart.bat` to automatically start shortcuts on Windows boot
   - See [AUTO-START-GUIDE.md](AUTO-START-GUIDE.md) for details

## 📋 Available Shortcuts

### 🌐 Web Shortcuts

| Shortcut          | Action      |
| ----------------- | ----------- |
| `Win + Y`         | YouTube     |
| `Win + F`         | Fiverr      |
| `Win + Space`     | ChatGPT ⚠️  |
| `Win + Ctrl + C`  | Discord Web |
| `Win + Shift + W` | Reddit      |

### 🖥️ System Apps

| Shortcut         | Action              |
| ---------------- | ------------------- |
| `Win + S`        | Windows Settings ⚠️ |
| `Win + O`        | Microsoft Outlook   |
| `Win + A`        | Custom Folder       |
| `Win + Alt + C`  | Microsoft Edge      |
| `Win + Alt + 1`  | Calculator          |
| `Ctrl + Alt + T` | Task Manager        |

### 🎨 Creative Apps

| Shortcut          | Action              |
| ----------------- | ------------------- |
| `Win + P`         | Adobe Photoshop ⚠️  |
| `Win + Shift + P` | Adobe Premiere Pro  |
| `Win + Ctrl + P`  | PureRef             |
| `Win + 5`         | Blender 5.0 (Steam) |

### 📁 File Explorer

| Shortcut  | Action    |
| --------- | --------- |
| `Win + 1` | This PC   |
| `Win + 2` | D:\ Drive |
| `Win + 3` | E:\ Drive |
| `Win + 4` | Downloads |

### 💬 Messaging & Utilities

| Shortcut         | Action           |
| ---------------- | ---------------- |
| `Win + W`        | WhatsApp Beta    |
| `Win + T`        | Windows Terminal |
| `Win + C`        | Google Chrome    |
| `Win + N`        | Notepad          |
| `Ctrl + Alt + N` | New Sticky Note  |
| `Ctrl + Alt + H` | Show Help Menu   |

**⚠️ = Overrides Windows default shortcut** - See documentation for details

## 📖 Documentation

### 🚀 How to Use

#### ✅ Step 1: Run Your Script

Since you already have AutoHotkey installed, just follow these steps:

**Option A: Double-Click Method (Easiest!)**

1. Go to the folder where you saved the script
2. **Double-click** on `CustomShortcuts.ahk`
3. You'll see a small AutoHotkey icon (green H) in your system tray
4. Done! Your shortcuts are now active!

**Option B: Right-Click Method**

1. Right-click on `CustomShortcuts.ahk`
2. Select **"Run Script"**

#### 🎯 Test Your Shortcuts

Try pressing these keys together:

- **Win + W** → Opens WhatsApp Beta
- **Win + T** → Opens Terminal
- **Win + C** → Opens Chrome
- **Ctrl + Alt + H** → Shows help with all shortcuts

#### 🛑 Stopping the Script

- Right-click the AutoHotkey icon (green H) in system tray
- Click **"Exit"**

---

## 🔄 Auto-Start Setup

Make the script **run automatically** when Windows starts!

### ✅ Method 1: Automatic Setup (EASIEST!)

1. **Double-click** on **`Setup-AutoStart.bat`**
2. Press any key to continue
3. Done! ✅

### ✅ Method 2: Manual Setup

1. **Press Win + R**
2. **Type:** `shell:startup` and press Enter
3. **Right-click** in the folder → **New** → **Shortcut**
4. Browse to your `CustomShortcuts.ahk` file and click **OK**

To disable: Press `Win + R`, type `shell:startup`, delete the shortcut.

---

## 🖥️ New PC Setup / Transfer Guide

### 📦 What You Need

1. **Install AutoHotkey (REQUIRED)**

   - Download from [autohotkey.com](https://www.autohotkey.com/)
   - Install v2.0 or later

2. **Copy Files**
   - Copy this entire folder to your new PC

### 🚀 Setup Steps

1. **Install AutoHotkey**
2. **Copy the folder** to your new PC
3. **Double-click `CustomShortcuts.ahk`** to run
4. (Optional) Run `Setup-AutoStart.bat` for auto-start

### 🔧 Adjustments Needed

Some apps might be installed in different locations on a new PC (e.g., Adobe apps).

**How to fix:**

1. Run **`FindAppPaths.bat`** to find correct paths
2. Right-click `CustomShortcuts.ahk` → **Edit Script**
3. Update the paths with the new ones found
4. Right-click tray icon → **Reload Script**

---

## 🔧 Customization

### Adding New Shortcuts

1. Right-click `CustomShortcuts.ahk` → **Edit Script**
2. Add your shortcut using this format:

```ahk
; Win + X → Your App
#x::
Run, "C:\Path\To\Your\App.exe"
return
```

3. Save the file and **Reload Script**

### Finding App Paths

**For Microsoft Store Apps:**

```powershell
Get-StartApps | Where-Object {$_.Name -like "*AppName*"}
```

**For Desktop Apps:**
Right-click app shortcut → Properties → Copy "Target" path

---

## 🛠️ Utilities

- **`FindAppPaths.bat`** - Helper tool to locate application paths
- **`Setup-AutoStart.bat`** - One-click auto-start configuration

## 📄 License

This project is licensed under the MIT License - feel free to modify and distribute.

## 🤝 Contributing

Contributions are welcome! Feel free to report bugs, suggest new shortcuts, or submit pull requests.

## 🌟 Acknowledgments

Built with [AutoHotkey](https://www.autohotkey.com/) - the powerful Windows automation scripting language.

---

**Made with ⚡ for productivity enthusiasts**
