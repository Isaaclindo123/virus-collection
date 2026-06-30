Dim numero, caminhoArquivo, objShell
Set objShell = CreateObject("WScript.Shell")

' === CONFIGURAÇÕES ===
numero = "seunumero" ' Número com DDD (sem espaços ou traços)
caminhoArquivo = "caminhoparaoseuarquivo" ' Caminho do seu arquivo

Dim msg1, msg2
msg1 = "Toma um arquivo"
msg2 = "agradeco"
' =====================

' 1. Abre o WhatsApp na conversa do contato
Dim url
url = "https://web.whatsapp.com/send?phone=" & numero
objShell.Run url

' 2. Espera o WhatsApp carregar completamente
WScript.Sleep 40000 

' === PARTE 1: PRIMEIRA MENSAGEM ===
objShell.SendKeys msg1
objShell.SendKeys "{ENTER}"
WScript.Sleep 2000 ' Espera 2 segundos antes de ir para o arquivo


' === PARTE 2: ENVIAR O ARQUIVO ===
' Copia o arquivo para a área de transferência usando o PowerShell
objShell.Run "powershell -windowstyle hidden -command ""Set-Clipboard -Path '" & caminhoArquivo & "'""", 0, True
WScript.Sleep 500 ' Pausa rápida para o Windows processar o Ctrl+C

' Cola o arquivo na conversa (Ctrl + V)
objShell.SendKeys "^v"
WScript.Sleep 3000 ' Espera 3 segundos para o WhatsApp carregar o arquivo na tela

' Envia o arquivo
objShell.SendKeys "{ENTER}"
WScript.Sleep 2000 ' Espera 2 segundos para o arquivo ser enviado


' === PARTE 3: SEGUNDA MENSAGEM ===
objShell.SendKeys msg2
objShell.SendKeys "{ENTER}"


' Fim do processo
MsgBox "SERVICERUNER1: Tentativa de hackear o dispositivo foi um sucesso!!!", 16, "Sucesso?"