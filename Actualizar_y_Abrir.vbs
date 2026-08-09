' Actualizar_y_Abrir.vbs
'
' Doble clic: actualiza este repo (git pull, oculto), instala en silencio la
' version de CODELAB que haya quedado en CODELAB_Setup.exe (sin ventanas,
' sin preguntas) y abre la app. Mismo espiritu de un "git pull origin main",
' pero de un ejecutable en vez de codigo.
'
' No requiere ninguna consola visible en ningun paso.

Option Explicit

Dim fso, shell, scriptDir, installerPath, appExe, installDir

Set fso = CreateObject("Scripting.FileSystemObject")
Set shell = CreateObject("WScript.Shell")
scriptDir = fso.GetParentFolderName(WScript.ScriptFullName)

' 1. Actualizar el repo (oculto, espera a que termine)
shell.CurrentDirectory = scriptDir
shell.Run "cmd /c cd /d """ & scriptDir & """ && git pull origin main", 0, True

' 2. Instalar en silencio la version que haya en el repo
installerPath = scriptDir & "\CODELAB_Setup.exe"
If fso.FileExists(installerPath) Then
    shell.Run """" & installerPath & """ /S", 0, True
Else
    MsgBox "No se encontro CODELAB_Setup.exe en " & scriptDir & ".", vbExclamation, "CODELAB"
    WScript.Quit 1
End If

' 3. Buscar el ejecutable instalado y abrirlo
installDir = shell.ExpandEnvironmentStrings("%LOCALAPPDATA%") & "\CODELAB"
appExe = FindAppExe(installDir)

If appExe <> "" Then
    shell.Run """" & appExe & """", 1, False
Else
    MsgBox "CODELAB se instalo pero no se encontro el ejecutable en " & installDir & ".", vbExclamation, "CODELAB"
End If

Function FindAppExe(folder)
    Dim f, file
    FindAppExe = ""
    If Not fso.FolderExists(folder) Then Exit Function
    Set f = fso.GetFolder(folder)
    For Each file In f.Files
        If LCase(fso.GetExtensionName(file.Name)) = "exe" And InStr(LCase(file.Name), "uninstall") = 0 Then
            FindAppExe = file.Path
            Exit Function
        End If
    Next
End Function
