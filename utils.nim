import objs
import strutils
import strformat
import random

var 
  cm=3
  dm=3
  bc=3

proc linha() =
  echo "++++++++++++++++++++++++++++++++++++++++++++++++++"

proc menu*() =
  linha()
  echo """
  BICHINHO VIRTUAL TAMAGOTCHI
  [1] - Criar novo Tamagotchi
  [2] - SAIR"""
  linha()

proc comer*()=
  var Bichinho: Bichinho = Bichinho()
  echo """
    Seu Bichinho deve comer:
    [1] - Muito
    [2] - Pouco"""
  var cm = parseInt(readline(stdin))
  if cm == 1:
    # echo "comendo muito"
    if Bichinho.peso + 5 < 20:
      Bichinho.peso = Bichinho.peso + 5
      # echo &"Seu bichinho está faminto \n "
      # decidir()
      # var e:int
      # e = parseInt(readline(stdin))
      echo &"Seu bichinho está com {Bichinho.peso} Kg \n "
    else:
      echo "Seu bichinho morreu de excesso de peso"
  elif cm == 2:
    # echo "comendo pouco"
    if Bichinho.peso + 3 < 20:
      Bichinho.peso = Bichinho.peso + 3
      echo &"Seu bichinho está com {Bichinho.peso} Kg \n "
    else:
      echo "Seu bichinho morreu de excesso de peso"
  else:
    echo "Erro: Opção Inválida"

proc dormir*()=
  var Bichinho: Bichinho = Bichinho()
  echo """
    Seu Bichinho deve dormir:
    [1] - Muito
    [2] - Pouco"""
  var dm = parseInt(readline(stdin))
  if dm == 1:
    # echo "dormindo muito"
    if Bichinho.peso - 4 > 0:
      Bichinho.peso = Bichinho.peso - 4
      # echo &"Seu bichinho está faminto \n "
      # decidir()
      # var e:int
      # e = parseInt(readline(stdin))
      echo &"Seu bichinho está com {Bichinho.peso} Kg \n "
    else:
      echo "Seu bichinho morreu de fome"
  elif dm == 2:
    # echo "dormindo pouco"
    if Bichinho.peso - 1 > 0:
      Bichinho.peso = Bichinho.peso - 1
      echo &"Seu bichinho está com {Bichinho.peso} Kg \n "
    else:
      echo "Seu bichinho morreu de fome"
  else:
    echo "Erro: Opção Inválida"

proc brincar*()=
  var Bichinho: Bichinho = Bichinho()
  echo """
    Seu Bichinho deve brincar:
    [1] - Muito
    [2] - Pouco"""
  var bc = parseInt(readline(stdin))
  if bc == 1:
    # echo "brincando muito"
    if Bichinho.peso - 2 > 0:
      Bichinho.peso = Bichinho.peso - 2
      echo &"Seu bichinho está faminto \n "
      echo """O que você vai fazer para o seu Bichinho
      [1] - Alimentar o Bichinho
      [2] - Por o Bichinho para dormir
      [3] - Brincar com o Bichinho"""
      var e:int
      e = parseInt(readline(stdin))
      echo &"Seu bichinho está com {Bichinho.peso} Kg \n "
    else:
      echo "Seu bichinho morreu de fome"
      
  elif bc == 2:
    # echo "brincando pouco"
    if Bichinho.peso - 1 > 0:
      Bichinho.peso = Bichinho.peso - 1
      echo &"Seu bichinho está com {Bichinho.peso} Kg \n "
    else:
      echo "Seu bichinho morreu de fome"
  else:
    echo "Erro: Opção Inválida"

proc decidir*()= 
  linha()
  var c = 9
  var d = 9
  while c > 3:
    echo """
    O que você vai fazer para o seu Bichinho
    [1] - Alimentar o Bichinho
    [2] - Por o Bichinho para dormir
    [3] - Brincar com o Bichinho"""
    var d = parseInt(readline(stdin))
    case d
    of 1: comer()
    of 2: dormir()
    of 3: brincar()
    else: echo "Opção inválida!, escolha uma opção válida"
  linha()

proc agir*()=
  randomize()
  let acoes = ["faminto", "cansado", "triste"]
  let pick = sample(acoes)
  echo &"Seu bichinho está {pick} \n "
  decidir()
  var a:int
  a = parseInt(readline(stdin))

proc newTamagotchi*() = 
  var Bichinho: Bichinho = Bichinho()
  echo "Qual nome você vai batizar seu bichinho" 
  Bichinho.nome=readline(stdin)
  Bichinho.idade=0 #dias de vida
  Bichinho.peso=1  #peso em kg
  agir()
  linha()