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

- **[HOW_TO_USE.md](HOW_TO_USE.md)** - Comprehensive usage guide
- **[ALL_SHORTCUTS_LIST.md](ALL_SHORTCUTS_LIST.md)** - Complete shortcuts reference
- **[AUTO-START-GUIDE.md](AUTO-START-GUIDE.md)** - Auto-start setup instructions
- **[NEW_PC_SETUP.md](NEW_PC_SETUP.md)** - Transfer guide for new computers

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

3. Save the file
4. Right-click the tray icon → **Reload Script**

### Finding App Paths

**For Microsoft Store Apps:**

```powershell
Get-StartApps | Where-Object {$_.Name -like "*AppName*"}
```

**For Desktop Apps:**

- Right-click app shortcut → Properties → Copy "Target" path

See [HOW_TO_USE.md](HOW_TO_USE.md) for detailed instructions.

## 🛠️ Utilities

- **`FindAppPaths.bat`** - Helper tool to locate application paths
- **`Setup-AutoStart.bat`** - One-click auto-start configuration

## ⚙️ Configuration

The script includes intelligent path detection for common applications:

- Adobe Creative Suite (Photoshop, Premiere Pro)
- Microsoft Office (Outlook)
- PureRef
- Steam games

Paths are automatically checked in multiple common installation locations.

## 🔄 Auto-Start Setup

Run `Setup-AutoStart.bat` to enable automatic startup:

1. Double-click `Setup-AutoStart.bat`
2. Press any key to continue
3. Done! Shortcuts will work on every boot

To disable: Press `Win + R`, type `shell:startup`, delete the shortcut.

## 📝 Notes

- Some shortcuts override Windows defaults (marked with ⚠️)
- `Win + E` is intentionally NOT overridden (keeps File Explorer default)
- Script must be running for shortcuts to work
- Green "H" icon in system tray indicates active status

## 🆘 Troubleshooting

**Script won't run?**

- Ensure AutoHotkey is installed
- Try running as administrator

**Shortcut doesn't work?**

- Verify the application is installed
- Check the app path in the script
- See [HOW_TO_USE.md](HOW_TO_USE.md) for path finding instructions

**Need help?**

- Press `Ctrl + Alt + H` for the built-in help menu
- Check the documentation files

## 📄 License

This project is licensed under the MIT License - feel free to modify and distribute.

## 🤝 Contributing

Contributions are welcome! Feel free to:

- Report bugs
- Suggest new shortcuts
- Submit pull requests
- Share your custom configurations

## 🌟 Acknowledgments

Built with [AutoHotkey](https://www.autohotkey.com/) - the powerful Windows automation scripting language.

---

**Made with ⚡ for productivity enthusiasts**
