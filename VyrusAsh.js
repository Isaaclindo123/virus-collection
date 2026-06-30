// Variáveis do JS (head)
var fso = WScript.CreateObject("Scripting.FileSystemObject")
var shell = WScript.CreateObject("WScript.Shell")
var DESKINF = shell.Environment("PROCESS")
var vbs2 = "vbs2.vbs"

var NAME = DESKINF("USERNAME")
var PROCESSADOR = DESKINF("PROCESSOR_ARCHITECTURE")
var CMPTRNME = DESKINF("COMPUTERNAME")
var OS = DESKINF("OS")

// Script (body)
var VBS1 = shell.Run('wscript.exe "vbs1.vbs"', 1, true);

if (VBS1 != 0) {
    WScript.Quit()
}

shell.Popup("Curta o ASH", 3, "ASH diz:", 48)

// Primeiro If
if (!fso.FileExists(vbs2)) {

    var vbs = fso.CreateTextFile("vbs2.vbs", true)

    vbs.WriteLine("Do")
    vbs.WriteLine('MsgBox "ASH ASH ASH ASH", 16, "ASH diz:"')
    vbs.WriteLine("Loop")
    vbs.Close()

// "End If"?
} else {
    var vbs2 = fso.GetAbsolutePathName("vbs2.vbs");
    shell.Run('wscript "' + vbs2 + '"', 1, true);

}
// End Else

shell.Run('wscript.exe "vbs0.vbs"');

