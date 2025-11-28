@echo off
setlocal EnableDelayedExpansion
title CleanDrive - Advanced System Cleaner
:: Created by: Abrar | YouTube: @abrar1.618

:: Check for Admin privileges
net session >nul 2>&1
if %errorLevel% == 0 (
    echo [OK] Running with Admin privileges.
) else (
    echo [INFO] Requesting Admin privileges...
    :: Use a more robust elevation command
    powershell -Command "Start-Process cmd -ArgumentList '/c, \"%~f0\"' -Verb RunAs"
    exit /b
)

:: Change to script directory to be safe
cd /d "%~dp0"

cls
echo ==================================================
echo           CleanDrive - Advanced System Cleaner
echo        Created by: Abrar | YouTube: @abrar1.618
echo ==================================================
echo.

echo Starting cleanup process...
echo.

:: Simple Loading Indicator
echo Initializing...
timeout /t 2 >nul
echo.

:: 1. Clean User Temp (%TEMP%)
echo --------------------------------------------------
echo [1/4] Cleaning User Temp Files...
echo Path: %TEMP%
echo --------------------------------------------------
cd /d "%TEMP%"
:: Delete files
del /s /q *.*
:: Remove directories
for /d %%i in (*.*) do (
    rmdir /s /q "%%i" 2>nul
)
echo [OK] User Temp Cleaned.
echo.

:: 2. Clean System Temp (C:\Windows\Temp)
echo --------------------------------------------------
echo [2/4] Cleaning System Temp Files...
echo Path: C:\Windows\Temp
echo --------------------------------------------------
if exist "C:\Windows\Temp" (
    cd /d "C:\Windows\Temp"
    del /s /q *.*
    for /d %%i in (*.*) do (
        rmdir /s /q "%%i" 2>nul
    )
    echo [OK] System Temp Cleaned.
) else (
    echo [SKIP] System Temp folder not found.
)
echo.

:: 3. Clean Prefetch (C:\Windows\Prefetch)
echo --------------------------------------------------
echo [3/4] Cleaning Prefetch Files...
echo Path: C:\Windows\Prefetch
echo --------------------------------------------------
if exist "C:\Windows\Prefetch" (
    cd /d "C:\Windows\Prefetch"
    del /s /q *.*
    echo [OK] Prefetch Cleaned.
) else (
    echo [SKIP] Prefetch folder not found.
)
echo.

:: 4. Clean Recycle Bin (Optional)
echo --------------------------------------------------
echo [4/4] Recycle Bin Cleanup
echo --------------------------------------------------
set "CleanRecycleBin=N"
set /p "UserChoice=Do you want to empty the Recycle Bin? (Y/N): "
if /I "%UserChoice%"=="Y" (
    echo Emptying Recycle Bin...
    :: Try PowerShell first
    powershell -Command "Clear-RecycleBin -Force -ErrorAction SilentlyContinue" 2>nul
    if !errorlevel! neq 0 (
        echo [INFO] PowerShell method failed, trying standard method...
        rd /s /q %systemdrive%\$Recycle.Bin 2>nul
    )
    echo [OK] Recycle Bin command executed.
) else (
    echo [SKIP] Skipping Recycle Bin cleanup.
)

echo.
echo ==================================================
echo           Cleanup Completed Successfully
echo ==================================================
echo.
pause
