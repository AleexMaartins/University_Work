import math

#################################################
#Exercicio 4.1               #***************RESOLVIDO***************
#verificar se é impar

impar = lambda x: x % 2 == 1
"""
print(impar(1))
"""
#################################################
#Exercicio 4.2                  #***************RESOLVIDO***************
#verificar se é positivo

positivo = lambda x: x > 0 
""""
print(positivo(-2))
"""
#Exercicio 4.3                  #***************RESOLVIDO***************
#verificar se |x|<|y|

comparar_modulo = lambda x, y: abs(x) < abs(y) 

"""
print(comparar_modulo(-2,4))
"""

#Exercicio 4.4                  #***************RESOLVIDO***************
#coordenadas polares
cart2pol = lambda x, y: (math.sqrt(x**2 + y**2), math.atan2(y, x))
                        #^^raiz (obter hipotenusa) ^^arctan(y/x) (obter angulo)             
"""
print(cart2pol(-2,4))
"""

#Exercicio 4.5                  #***************DUVIDAS a chamar***************
#com 2 entradas dar print a 3 funções
ex5  = lambda f,g,h : lambda x,y,z: h(f(x,y),g(y,z))


"""

#Exercicio 4.6
def quantificador_universal(lista, f):
    pass

#Exercicio 4.9
def ordem(lista, f):
    pass

#Exercicio 4.10
def filtrar_ordem(lista, f):
    pass

#Exercicio 5.2
def ordenar_seleccao(lista, ordem):
    pass
"""
