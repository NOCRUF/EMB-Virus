Set WshShell = CreateObject("wscript.Shell")
UserProfilePath = WshShell.ExpandEnvironmentStrings("%UserProfile%")
PathFile = UserProfilePath & "\scream.mp3"

Dim oPlayer
Set oPlayer = CreateObject("WMPlayer.OCX")

' Play audio
oPlayer.URL = PathFile
oPlayer.controls.play 
While oPlayer.playState <> 1 ' 1 = Stopped
  WScript.Sleep 100
Wend

' Release the audio file
oPlayer.close