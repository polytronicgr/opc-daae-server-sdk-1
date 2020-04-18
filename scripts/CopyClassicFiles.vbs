Option Explicit

Dim shell, fso
Dim projectPath, rootDir, platformName, dotnetVersion, srcFile, dstFile, configFile, genericServerFile, licenseFile

Set shell = WScript.CreateObject("WScript.Shell")

If WScript.Arguments.Count > 0 Then
    projectPath = WScript.Arguments(0)
    WScript.Echo "Project Path: " & projectPath 
End If

If WScript.Arguments.Count > 1 Then
    rootDir = WScript.Arguments(1)
    WScript.Echo "Root Dir: " & rootDir 
End If

If WScript.Arguments.Count > 2 Then
    platformName = WScript.Arguments(2)
    WScript.Echo "Platform: " & platformName
End If

If WScript.Arguments.Count > 3 Then
    dotnetVersion = WScript.Arguments(3)
    WScript.Echo ".NET Version: " & dotnetVersion 
End If

WScript.Echo "" 

Set fso = CreateObject("Scripting.FileSystemObject")

If StrComp(platformName,"x64") = 0 Then
  genericServerFile = rootDir & "x64\net" & "\OpcNetDaAeServer.exe"
End If


If StrComp(platformName,"x86") = 0 Then
  genericServerFile = rootDir & "Win32\net" & "\OpcNetDaAeServer.exe"
End If

  
If fso.FileExists(genericServerFile) Then

  Set srcFile = fso.GetFile(genericServerFile)
  srcFile.Copy projectPath   

  WScript.Echo "Copied: " & genericServerFile

End If

If fso.FileExists(licenseFile) Then

  Set srcFile = fso.GetFile(licenseFile)
  srcFile.Copy projectPath   

  WScript.Echo "Copied: " & licenseFile

End If
