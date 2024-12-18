# O programa pode ser executado com um ficheiro de comandos como argumento. Forneço desta forma o ficheiro ficheiro_de_comandos.txt que contém todas as funcionalidades do programa e muitos dos erros de utilizador possíveis.

# Aula03 - Notes

## 1 - Jogo do galo

java -jar *.jar

tabuleiro 3x3 (tamanho fixo)
players -> X, O

getActualPlayer() -> com bool, true se for X, false se for O (isPlayerX() ? x:o)
setJogada() -> esta ocupada, false
isFinished() -> existe vencedor (checkResult()) OU numero jogadas maxima
checkResult() -> verificar cada solução possivel (8)

## 2 - Voos

*Estruturas de dados*
lugares talvez variavel estática
arrays para executivo e outro para turistico
guardar index da ultima fila usada (problema: se alguem cancela)

*Classes*
Voo(flight code)
Aviao(lugares_turisticos(x, y), lugares_executivos(x, y))       //ter em conta a numeraçao e nomes 


flight
manager
main
ticketclass