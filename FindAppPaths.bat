@echo off
REM ============================================
REM App Path Finder
REM Helps you find installation paths for apps
REM ============================================

echo.
echo ============================================
echo    APP PATH FINDER
echo ============================================
echo.
echo This will help you find app installation paths
echo for your AutoHotkey script.
echo.

:MENU
echo.
echo What would you like to find?
echo.
echo [1] Adobe Photoshop
echo [2] Adobe Premiere Pro
echo [3] PureRef
echo [4] Microsoft Outlook
echo [5] Blender
echo [6] Custom app path
echo [0] Exit
echo.
set /p choice="Enter your choice (0-6): "

if "%choice%"=="0" goto END
if "%choice%"=="1" goto PHOTOSHOP
if "%choice%"=="2" goto PREMIERE
if "%choice%"=="3" goto PUREREF
if "%choice%"=="4" goto OUTLOOK
if "%choice%"=="5" goto BLENDER
if "%choice%"=="6" goto CUSTOM

echo Invalid choice! Please try again.
goto MENU

:PHOTOSHOP
echo.
echo Searching for Adobe Photoshop...
echo.
if exist "C:\Program Files\Adobe\Adobe Photoshop 2025\Photoshop.exe" echo [FOUND] C:\Program Files\Adobe\Adobe Photoshop 2025\Photoshop.exe
if exist "C:\Program Files\Adobe\Adobe Photoshop 2024\Photoshop.exe" echo [FOUND] C:\Program Files\Adobe\Adobe Photoshop 2024\Photoshop.exe
if exist "C:\Program Files\Adobe\Adobe Photoshop 2023\Photoshop.exe" echo [FOUND] C:\Program Files\Adobe\Adobe Photoshop 2023\Photoshop.exe
if exist "D:\Adobe\Adobe Photoshop 2025\Photoshop.exe" echo [FOUND] D:\Adobe\Adobe Photoshop 2025\Photoshop.exe
if exist "D:\Adobe\Adobe Photoshop 2024\Photoshop.exe" echo [FOUND] D:\Adobe\Adobe Photoshop 2024\Photoshop.exe
if exist "D:\Adobe\Adobe Photoshop 2023\Photoshop.exe" echo [FOUND] D:\Adobe\Adobe Photoshop 2023\Photoshop.exe
echo.
echo If not found above, try searching manually in:
echo - C:\Program Files\Adobe\
echo - D:\Adobe\
pause
goto MENU

:PREMIERE
echo.
echo Searching for Adobe Premiere Pro...
echo.
if exist "C:\Program Files\Adobe\Adobe Premiere Pro 2025\Adobe Premiere Pro.exe" echo [FOUND] C:\Program Files\Adobe\Adobe Premiere Pro 2025\Adobe Premiere Pro.exe
if exist "C:\Program Files\Adobe\Adobe Premiere Pro 2024\Adobe Premiere Pro.exe" echo [FOUND] C:\Program Files\Adobe\Adobe Premiere Pro 2024\Adobe Premiere Pro.exe
if exist "C:\Program Files\Adobe\Adobe Premiere Pro 2023\Adobe Premiere Pro.exe" echo [FOUND] C:\Program Files\Adobe\Adobe Premiere Pro 2023\Adobe Premiere Pro.exe
if exist "D:\Adobe\Adobe Premiere Pro 2025\Adobe Premiere Pro.exe" echo [FOUND] D:\Adobe\Adobe Premiere Pro 2025\Adobe Premiere Pro.exe
if exist "D:\Adobe\Adobe Premiere Pro 2024\Adobe Premiere Pro.exe" echo [FOUND] D:\Adobe\Adobe Premiere Pro 2024\Adobe Premiere Pro.exe
if exist "D:\Adobe\Adobe Premiere Pro 2023\Adobe Premiere Pro.exe" echo [FOUND] D:\Adobe\Adobe Premiere Pro 2023\Adobe Premiere Pro.exe
echo.
echo If not found above, try searching manually in:
echo - C:\Program Files\Adobe\
echo - D:\Adobe\
pause
goto MENU

:PUREREF
echo.
echo Searching for PureRef...
echo.
if exist "C:\Program Files\PureRef\PureRef.exe" echo [FOUND] C:\Program Files\PureRef\PureRef.exe
if exist "C:\Program Files (x86)\PureRef\PureRef.exe" echo [FOUND] C:\Program Files (x86)\PureRef\PureRef.exe
if exist "D:\Adobe\PureRef\PureRef.exe" echo [FOUND] D:\Adobe\PureRef\PureRef.exe
if exist "%LocalAppData%\PureRef\PureRef.exe" echo [FOUND] %LocalAppData%\PureRef\PureRef.exe
echo.
echo If not found, PureRef might be installed elsewhere.
pause
goto MENU

:OUTLOOK
echo.
echo Searching for Microsoft Outlook...
echo.
if exist "C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE" echo [FOUND] C:\Program Files\Microsoft Office\root\Office16\OUTLOOK.EXE
if exist "C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE" echo [FOUND] C:\Program Files (x86)\Microsoft Office\root\Office16\OUTLOOK.EXE
if exist "C:\Program Files\Microsoft Office\Office16\OUTLOOK.EXE" echo [FOUND] C:\Program Files\Microsoft Office\Office16\OUTLOOK.EXE
if exist "C:\Program Files (x86)\Microsoft Office\Office16\OUTLOOK.EXE" echo [FOUND] C:\Program Files (x86)\Microsoft Office\Office16\OUTLOOK.EXE
echo.
echo If not found, Outlook might not be installed or is a different version.
pause
goto MENU

:BLENDER
echo.
echo Searching for Blender...
echo.
if exist "C:\Program Files\Blender Foundation\Blender 5.0\blender.exe" echo [FOUND] C:\Program Files\Blender Foundation\Blender 5.0\blender.exe
if exist "C:\Program Files\Blender Foundation\Blender 4.2\blender.exe" echo [FOUND] C:\Program Files\Blender Foundation\Blender 4.2\blender.exe
if exist "C:\Program Files\Steam\steamapps\common\Blender\blender.exe" echo [FOUND - STEAM] C:\Program Files\Steam\steamapps\common\Blender\blender.exe
if exist "D:\SteamLibrary\steamapps\common\Blender\blender.exe" echo [FOUND - STEAM] D:\SteamLibrary\steamapps\common\Blender\blender.exe
echo.
echo For Steam version, the script uses: steam://rungameid/365670
echo This works regardless of Blender's installation path.
pause
goto MENU

:CUSTOM
echo.
set /p appname="Enter the app name to search for: "
echo.
echo Searching for %appname%...
echo.
where /r "C:\Program Files" %appname%.exe 2>nul
where /r "C:\Program Files (x86)" %appname%.exe 2>nul
where /r "D:\" %appname%.exe 2>nul
echo.
echo Search complete!
pause
goto MENU

:END
echo.
echo Goodbye!
echo.
pause
exit
