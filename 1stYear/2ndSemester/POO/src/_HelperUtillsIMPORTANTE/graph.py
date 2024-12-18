import matplotlib.pyplot as plt

# Pedindo ao usuário para inserir os valores de x e y
x_values = input("Insira os valores de x separados por vírgula: ")
y_values = input("Insira os valores de y separados por vírgula: ")

# Convertendo os valores de x e y em listas
x_values = [float(x) for x in x_values.split(",")]
y_values = [float(y) for y in y_values.split(",")]

# Criando o gráfico de dispersão
plt.scatter(x_values, y_values)

# Definindo os rótulos dos eixos
plt.xlabel('x')
plt.ylabel('y')

# Mostrando o gráfico
plt.show()
