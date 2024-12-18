#Exercicio 1.1
from os import remove
from pickle import TRUE

#################################################
def comprimento(lista): #***************RESOLVIDO***************
	
	return len(lista)
"""
def main():
	lista = [1,2,3,4,5,6]
	print(comprimento(lista))

if __name__ == '__main__':
	main()
"""
#################################################

################################################## 
#Exercicio 1.2 #***************RESOLVIDO***************
def soma(lista):
	if lista == []:
		return 0
	return lista[0] + soma(lista[1:])

#################################################

#################################################
#Exercicio 1.3 #***************RESOLVIDO***************
def existe(lista, elem):
	if lista == []:
		return False
	if elem == lista[0]:
		return True
	
	return existe(lista[1:], elem)
"""
def main():
	lista = [1,2,3,4,5,6]
	print(existe(lista,7))

if __name__ == '__main__':
	main()
"""
#################################################

#################################################
#Exercicio 1.4 #***************RESOLVIDO***************
def concat(l1, l2):
	l3=l1+l2
	return l3 
"""
def main():
	l1 = [1,2,3,4,5,6]
	l2 = [1,2,3,4,5,6]
	print(concat(l1,l2))

if __name__ == '__main__':
	main()
"""
#################################################

#Exercicio 1.5 #***************RESOLVIDO***************
def inverte(lista):
	if lista == []:
		return []
	else:
		return [lista[-1]] + inverte(lista[:-1])
"""
def main():
	l1 = [1,2,3,4,5,6]
	print(inverte(l1))

if __name__ == '__main__':
	main()
"""
#################################################

#################################################
#Exercicio 1.6 #***************RESOLVIDO***************
def capicua(list):
	if not list:
		return True
	if list[0] == list[-1]:
		print(list)
		return True and capicua(list[1:-1])
    
	return False
"""	
def main():
	l1 = ["1","2","3","4","4","3","2","1"]
	print(capicua(l1))

if __name__ == '__main__':
	main()
"""
#################################################

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

#Exercicio 1.8 #***************RESOLVIDO***************
def substitui(lista, original, novo):
	if lista==[]:
		return []
	if lista[0] == original:
		return [novo] + substitui(lista[1:], original, novo)
	return [lista[0]] + substitui(lista[1:],original,novo)
	
"""
def main():
	lista = ["1","2","3","4","4","3","2","1"]
	
	print(substitui(lista,"2","AGORA VAI"))

if __name__ == '__main__':
	main()
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
#Exercicio 1.10  
# Dado um conjunto, na forma de uma lista, retorna uma lista
#  de listas que representa o sconjunto de todos os subconjuntos do conjunto dado.
def lista_subconjuntos(lista):
	return
"""
def main():
	lista = [1, 3, 5, 7, 8, 15]
	print(lista_subconjuntos(lista))

if __name__ == '__main__':
	main()
"""
#################################################
#Exercicio 2.1			
def separar(lista):			#***************RESOLVIDO***************
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

#################################################
#Exercicio 2.2			#***************RESOLVIDO***************
def remove_e_conta(lista, elem):
	if lista == []:
		return ([],0)

	cont = 0
	if lista[0] == elem:
		lista.pop(0)
		res = list(remove_e_conta(lista,elem))
		return (res[0],res[1] + 1)

	res = list(remove_e_conta(lista[1:],elem))

	lis =[]
	if res:
		lis = [lista[0]] + res[0]
		cont = res[1]

	return (lis,cont)

"""
def main():
	lista = [1,2,3,4,4,3,2,1]
	elem = 1
	print(remove_e_conta(lista,elem))

if __name__ == '__main__':
	main()
"""
#################################################

#################################################
#Exercicio 2.3

#################################################

#################################################
#Exercicio 3.1				#***************RESOLVIDO***************
def cabeca(lista):
	try:
		return lista[0]
	except:
		return None
"""
def main():
	lista = [1,2,3,4,4,3,2,1]
	print(cabeca(lista))

if __name__ == '__main__':
	main()
"""
#################################################

#################################################
#Exercicio 3.2				#***************RESOLVIDO***************
def cauda(lista):
	try:
		return lista[1:]
	except:
		return None

"""
def main():
	lista = [1,2,3,4,4,3,2,1]
	print(cauda(lista))

if __name__ == '__main__':
	main()
"""
#################################################
"""
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
"""
def main():
	lista1 = [1, 3, 5, 7, 8, 15]
	lista2 = ["a","b","c","d","e","f"]
	print(juntar(lista1,lista2))
if __name__ == '__main__':
	main()
"""
#################################################

#################################################
#Exercicio 3.4				#***************RESOLVIDO***************
def menor(l):
	if(l == []):
		return None
	if len(l) == 1:
		return l[0]
	else:
		return min(l[0], menor(l[1:]))
"""
def main():
	lista = [2, 3, 5, 7, 8, 15,1,100]
	print(menor(lista))
if __name__ == '__main__':
	main()
"""
#################################################

#################################################
#Exercicio 3.5

#################################################

#################################################

#Exercicio 3.6				#***************RESOLVIDO***************
def mini(l):								#calcula o minimo
	if(l == []):
		return None
	if len(l) == 1:
		return l[0]
	else:
		return min(l[0], mini(l[1:]))

def maxi(l):								#calcula o maximo
	if(l == []):
		return None
	if len(l) == 1:
		return l[0]
	else:
		return max(l[0], maxi(l[1:]))
			
def max_min(l):								#cria um tuplo, chamando a funçao mini e maxi
	if(l == []):
		return None
	if len(l) == 1:
		return l[0]
	else:
		return mini(l), maxi(l)
"""
def main():
	lista = [2, 3, 5, 7, 8, 15,1,100]
	print(max_min(lista))
if __name__ == '__main__':
	main()
"""
#################################################

#################################################
#Exercicio 3.7

#################################################

#################################################
#Exercicio 3.8

#################################################
