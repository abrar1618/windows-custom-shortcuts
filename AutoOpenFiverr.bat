@echo off
REM Auto-Startup Script for Abrar
REM Opens Fiverr profiles and YouTube on specified browsers
REM Created by Antigravity

echo Starting Microsoft Edge (Abrar 3D)...
start msedge "https://www.fiverr.com/users/abrar3d/seller_dashboard" "https://www.youtube.com"

echo Starting Google Chrome (AG Master Profile)...
REM Uses the 'Default' profile directory for 'AG'
start chrome --profile-directory="Default" "https://www.fiverr.com/users/agmaster786/seller_dashboard"

echo Starting Google Chrome (Muhammad Abrar Profile)...
REM Dynamically finds the profile directory for 'Muhammad Abrar' and opens the dashboard
powershell -Command "$localState = \"$env:LOCALAPPDATA\Google\Chrome\User Data\Local State\"; if (Test-Path $localState) { $json = Get-Content $localState -Raw | ConvertFrom-Json; $profiles = $json.profile.info_cache; foreach ($key in $profiles.PSObject.Properties.Name) { if ($profiles.$key.name -eq 'Muhammad Abrar') { Start-Process chrome -ArgumentList \"--profile-directory=`\"$key`\"\", \"https://www.fiverr.com/users/abrargujjar555/seller_dashboard\"; break } } }"

exit
