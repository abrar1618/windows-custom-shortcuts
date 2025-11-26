@echo off
REM ============================================
REM Auto-Start Setup for CustomShortcuts
REM This will make your shortcuts work automatically on Windows startup
REM ============================================

echo.
echo ============================================
echo    AUTO-START SETUP
echo ============================================
echo.
echo This will make CustomShortcuts.ahk run automatically
echo every time you start Windows!
echo.
echo Press any key to continue...
pause >nul

REM Get the current script location
set "SCRIPT_PATH=%~dp0CustomShortcuts.ahk"

REM Create shortcut in Startup folder
echo.
echo Creating startup shortcut...
echo.

powershell -Command "$WshShell = New-Object -ComObject WScript.Shell; $Shortcut = $WshShell.CreateShortcut('%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\CustomShortcuts.lnk'); $Shortcut.TargetPath = '%SCRIPT_PATH%'; $Shortcut.WorkingDirectory = '%~dp0'; $Shortcut.Description = 'Custom Keyboard Shortcuts'; $Shortcut.Save()"

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ============================================
    echo    SUCCESS!
    echo ============================================
    echo.
    echo Your shortcuts will now run automatically
    echo every time you start Windows!
    echo.
    echo The shortcut has been added to:
    echo %APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup
    echo.
    echo You can verify by pressing Win+R and typing: shell:startup
    echo.
) else (
    echo.
    echo ============================================
    echo    ERROR!
    echo ============================================
    echo.
    echo Something went wrong. Please try the manual method:
    echo.
    echo 1. Press Win+R
    echo 2. Type: shell:startup
    echo 3. Press Enter
    echo 4. Right-click in the folder and create a shortcut to:
    echo    %SCRIPT_PATH%
    echo.
)

echo.
echo Press any key to exit...
pause >nul
