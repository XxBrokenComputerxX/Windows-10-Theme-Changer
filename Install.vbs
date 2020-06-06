Option Explicit
Dim objFso, oFile, x, ows
Const wr = 2
Set objFso = CreateObject("Scripting.FileSystemObject")


'Run as Admin
If Not WScript.Arguments.Named.Exists("elevate") Then
  CreateObject("Shell.Application").ShellExecute WScript.FullName _
    , """" & WScript.ScriptFullName & """ /elevate", "", "runas", 1
  WScript.Quit
End If


'check if folder exists if not craeate
Set oWS = WScript.CreateObject("WScript.Shell")

Dim objNetwork
Dim FSO
Dim Folder

Set FSO = CreateObject("Scripting.FileSystemObject")

Set objNetwork = CreateObject("WScript.Network")

If NOT (FSO.FolderExists("C:\Program Files\#ThemeChanger")) Then

    FSO.CreateFolder("C:\Program Files\#ThemeChanger")
End If

'create registry keys
Dim WshShell
Set WshShell = WScript.CreateObject("WScript.Shell")
wshShell.RegWrite "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize\", """"
wshShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize\", """"

'write files
Set oFile = objFso.OpenTextFile("C:\Program Files\#ThemeChanger\VBSDarkMode.vbs",wr,true)
oFile.WriteLine "Option Explicit"
oFile.WriteLine "Set WshShell = WScript.CreateObject(""WScript.Shell"")"
oFile.WriteLine "dim ObjShell"
oFile.WriteLine "If WScript.Arguments.Length = 0 Then"
oFile.WriteLine "Set ObjShell = CreateObject(""Shell.Application"")"
oFile.WriteLine "ObjShell.ShellExecute ""wscript.exe"" _"
oFile.WriteLine "    , """""""" & WScript.ScriptFullName & """""" RunAsAdministrator"", , ""runas"", 1"
oFile.WriteLine "WScript.Quit"
oFile.WriteLine "End if"
oFile.WriteLine "Dim WshShell"
oFile.WriteLine "Set wshShell = CreateObject( ""WScript.Shell"" )"
oFile.WriteLine "wshShell.RegWrite ""HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize\AppsUseLightTheme"", 0, ""REG_DWORD"""
oFile.WriteLine "wshShell.RegWrite ""HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize\AppsUseLightTheme"", 0, ""REG_DWORD"""
oFile.Close

Set oFile = objFso.OpenTextFile("C:\Program Files\#ThemeChanger\VBSLightMode.vbs",wr,true)
oFile.WriteLine "Option Explicit"
oFile.WriteLine "Set WshShell = WScript.CreateObject(""WScript.Shell"")"
oFile.WriteLine "dim ObjShell"
oFile.WriteLine "If WScript.Arguments.Length = 0 Then"
oFile.WriteLine "Set ObjShell = CreateObject(""Shell.Application"")"
oFile.WriteLine "ObjShell.ShellExecute ""wscript.exe"" _"
oFile.WriteLine "    , """""""" & WScript.ScriptFullName & """""" RunAsAdministrator"", , ""runas"", 1"
oFile.WriteLine "WScript.Quit"
oFile.WriteLine "End if"
oFile.WriteLine "Dim WshShell"
oFile.WriteLine "Set wshShell = CreateObject( ""WScript.Shell"" )"
oFile.WriteLine "wshShell.RegWrite ""HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize\AppsUseLightTheme"", 1, ""REG_DWORD"""
oFile.WriteLine "wshShell.RegWrite ""HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize\AppsUseLightTheme"", 1, ""REG_DWORD"""
oFile.Close

Set oFile = objFso.OpenTextFile("C:\Program Files\#ThemeChanger\VBSDel.vbs",wr,true)
oFile.WriteLine "Option Explicit"
oFile.WriteLine "dim WshShell"
oFile.WriteLine "Set WshShell = CreateObject(""WScript.Shell"")"
oFile.WriteLine "dim ObjShell"
oFile.WriteLine "If WScript.Arguments.Length = 0 Then"
oFile.WriteLine "Set ObjShell = CreateObject(""Shell.Application"")"
oFile.WriteLine "ObjShell.ShellExecute ""wscript.exe"" _"
oFile.WriteLine "    , """""""" & WScript.ScriptFullName & """""" RunAsAdministrator"", , ""runas"", 1"
oFile.WriteLine "WScript.Quit"
oFile.WriteLine "End if"
oFile.WriteLine "Set objShell = CreateObject( ""WScript.Shell"" )"
oFile.WriteLine "On Error Resume Next"
oFile.WriteLine "wshShell.RegDelete ""HKCU\Software\Microsoft\Windows\CurrentVersion\Themes\Personalize\AppsUseLightTheme"""
oFile.WriteLine "wshShell.RegDelete ""HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Themes\Personalize\AppsUseLightTheme"""
oFile.Close

