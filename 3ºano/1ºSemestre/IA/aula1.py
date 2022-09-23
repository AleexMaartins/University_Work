"""
#Exercicio 1.1
def comprimento(lista):
	pass

#Exercicio 1.2
def soma(lista):
	pass

#Exercicio 1.3
def existe(lista, elem):
	pass

#Exercicio 1.4
def concat(l1, l2):
	pass

#Exercicio 1.5
def inverte(lista):
	pass

#Exercicio 1.6
def capicua(lista):
	pass
"""


#################################################
#Exercicio 1.7 #***************RESOLVIDO***************
def explode(lista):
	if lista == []:
		return []
	listaConc = lista[0] + explode(lista[1:]) 
	return listaConc
"""
def main():
    lista = [[1, 2, 3],[4], [],[3, 2], [1, 20, 100], []]
    print(explode(lista))

if __name__ == '__main__':
    main()
"""
#################################################

"""
#Exercicio 1.8
def substitui(lista, original, novo):
	pass
"""
#################################################
#Exercicio 1.9
def junta_ordenado(lista1, lista2): #***************RESOLVIDO***************
    if lista1 == []:
        return lista2
    if lista2 == []:
        return lista1

    if lista1[0] < lista2[0]:
        return [lista1[0]] + junta_ordenado(lista1[1:], lista2)
    return [lista2[0]] + junta_ordenado(lista1, lista2[1:])
"""
def main():
	lista1 = [1, 3, 5, 7, 8, 15]
	lista2 = [1, 2, 4, 6, 8, 9, 14, 16,17,18,18]
	print(junta_ordenado(lista1,lista2))
if __name__ == '__main__':
    main()
"""
#################################################

#################################################
#Exercicio 2.1			
def separar(lista):				#***************RESOLVIDO***************
    if lista == []:
        return ([], [])

    a, b = lista[0]

    la, lb = separar(lista[1:])

    return ([a] + la, [b] + lb)
"""

def main():
	lista = [[0,3],[4,7],[86,109]]
	print(separar(lista))
if __name__ == '__main__':
    main()
"""
#################################################

"""

#Exercicio 2.2
def remove_e_conta(lista, elem):
	pass

#Exercicio 3.1
def cabeca(lista):
	pass

#Exercicio 3.2
def cauda(lista):
	pass
"""
#################################################
#Exercicio 3.3				#***************RESOLVIDO***************
def juntar(l1, l2):
    if len(l1) != len(l2):
        return None

    if l1 == []:
        return []

    t = l1[0], l2[0]

    l = juntar(l1[1:], l2[1:]) 

    return [t] + l
def main():
	lista1 = [1, 3, 5, 7, 8, 15]
	lista2 = ["a","b","c","d","e","f"]
	print(juntar(lista1,lista2))
if __name__ == '__main__':
    main()

#################################################
"""
#Exercicio 3.4
def menor(lista):
	pass

#Exercicio 3.6
def max_min(lista):
	pass
"""