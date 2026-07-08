Set objShell = CreateObject("WScript.Shell")
Set objFSO = CreateObject("Scripting.FileSystemObject")

' Rutas
htmlFile = "C:\Users\UsuarioM\Desktop\portafolio-master\index.html"
pdfFile = "C:\Users\UsuarioM\Desktop\portafolio-master\Eva_Jimena_Luperdi_CV.pdf"

' Comando para abrir Chrome/Edge y guardar como PDF
' Usando PrintToPDF de Microsoft Edge
edgePath = "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"

' Verificar si existe Edge
If objFSO.FileExists(edgePath) Then
    ' Comando para abrir e imprimir a PDF
    cmd = """" & edgePath & """ --headless --disable-gpu --print-to-pdf=""" & pdfFile & """ """ & htmlFile & """"
    objShell.Run cmd, 0, True
    WScript.Echo "PDF creado exitosamente en: " & pdfFile
Else
    WScript.Echo "Error: Microsoft Edge no encontrado"
End If
