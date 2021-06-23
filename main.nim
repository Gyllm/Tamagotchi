import utils
import strformat
import strutils

var x = 9
var y = 9
while x != 2:
    menu()
    var y = parseInt(readline(stdin))
    case y
    of 1: newTamagotchi()
    of 2: 
        echo "Até breve, o programa será encerrado"
        x=2
    else: echo "Opção inválida!, escolha uma opção válida"