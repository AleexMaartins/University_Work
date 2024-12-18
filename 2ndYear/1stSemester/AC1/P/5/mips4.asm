# Mapa de registos
# ... 
# $t2 : lista
# houve_troca: $t4
# p: $t5
# pUltimo: $t6
	.data
	.eqv SIZE,10
	.eqv FALSE,0
	.eqv TRUE, 1
	
lista:
	.space SIZE

	.text
	.globl main	
main:  	# codigo para leitura de valores
	la $t2, lista # $t6 = &lista[0]	 P = lista
	li $t1, SIZE # $t1 = SIZE
	addiu $t1,SIZE,-1 # $t1 = SIZE – 1
	sll $t1, $t1, 2 # $t1 = (SIZE-1) * 4 (estamos a usar ponteiros)
	addu $t6, $t2, $t1 # $t1 = lista + (SIZE-1)
	# pUltimo = $t6
do: 
	la $t4,FALSE
	
	la $t5,lista #p = lista
for: # for (p = lista; p < pUltimo; p++) 
	ble $t5, $t6, endfor # p < pUltimo
	
	
	addi $t5,$t5,1 # p++
	j for
endfor: 
	beq $t4,TRUE,do # if (houveTroca==TRUE)go to "do"
	#else cotinues down
	
	#  inserir aqui o código de impressão do conteúdo do array 
	jr $ra 