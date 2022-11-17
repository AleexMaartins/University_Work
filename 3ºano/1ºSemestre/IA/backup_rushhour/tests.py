from dominio import *
from tree_search import *
from commonMAIS import *
# 01 ooooooooooooAAoooooooooooooooooooooo 5     
# 02 ooooooooBoooAABooooooooooooooooooooo 21    
# 03 ooBoooooBooCAABooCoooooooooooooooooo 62    
# 04 oooooHoxCCoHAAoGoooFoGoooFDDxooooooo 302   
# 05 FBBCCoFoIoooAAIoooGHDDxoGHoooooooooo 1385
# 06 oBBCCoooFGHoAAFGHooooGooxoEEoooooooo 940
# 07 oEoBBBoEoFGHAAoFGHooCCGIoooooIoooDDI 4543
# 08 ooxCCCoHxooLoHJAALoIJEEEoIFFKooGGoKo 84
# 09 oooGoooooGHIoAAGHIooFBBBooFCCoooxEEo 2727
m = Map("35 BBooKoxDDoKooHAAKooHIJEEFFIJoLoGGGoL 28334")
d = Dominio (m)
p = SearchProblem(d)
t = SearchTree(p, "depth")
result = t.search()

for x in m.grid: 
    print(x)
print(result)





'''
NrSteps= 1                          #printa os separadores (estetico)
s = "---------- Passo: "            #
linhas = " ---------- "             #
print (s + repr(NrSteps) + linhas)  #
for x in m.grid:                     #dá print a cada linha da grid ao inves de numa lista
    print(x)
print(m.car_actions('A'))
# print(m.get_car_orientation('A'))

print("--------------")
#print(m.coordinates)
print(d.actions(m))             #certo
#print(d.satisfies(m))          #certo

while not d.satisfies(m):   #enquanto o carro nao chegar ao fim
    NrSteps = NrSteps+1
    
    print (s + repr(NrSteps) + linhas) #printa os separadores (estetico)
    if(('A', 'd') in d.actions(m) ):
        m.move("A", Coordinates(1,0)) #avança uma posição para a direita
    elif(('B', 's') in d.actions(m) ):
        m.move("B", Coordinates(0,1)) #avança uma posição para a baixo
    
    for x in m.grid: 
        print(x)
    print(d.action(m))             
    print(d.satisfies(m))           
    
#novoS = set()              sudo codigo para o set de todos os carros da grid 
# print(m.grid)
# for x in m.grid: #dá print a cada linha da grid ao inves de numa lista
#     if x != 'o':
#         novoS.add(x)
'''