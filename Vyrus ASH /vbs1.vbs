vrl1 = MsgBox("Esse programa e considerado um malware (joke) , entao, execute em uma maquina virtual (ou nao) para nao perder nada d:, e EU nao sou responsabilizado por NENHUM dano a sua maquina, entao, se executar em uma maquina de servico que normalmente contem chave de admin para acessar o taskmgr, nao me responsabiliso", 17, "Aviso Previo")

If vrl1 = 2 Then
    WScript.Quit(1)
End If

vrl2 = MsgBox("ULTIMO AVISO!!!, esse programa e um malware joke e pode ferrar um pouco com sua maquina de servico e EU nao me responsabilizo por isso e tambem DE OS CREDITOS PARA ISAAC M. B. SOUSA SE QUISER GRAVA, obrigado (:", 17, "ULTIMO AVISO!!!")

If vrl2 = 2 Then
    WScript.Quit(1)
End If

WScript.Quit(0)
