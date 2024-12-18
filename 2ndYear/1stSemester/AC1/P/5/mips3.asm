# Mapa de registos
# ...
# houve_troca: $t4
# i: $t5
# lista: $t6
# lista + i: $t7
	#(...)
	.data
	.eqv FALSE,0
	.eqv TRUE,1
	.eqv SIZE,10
	.eqv print_int10,1
	.eqv read_int,5
	.eqv print_string,4
str1:	.asciiz "\nDigite um valor: "	
str2:	.asciiz ","

lista:	
	.align 2
	.space 40
	
	.text
	.globl main
main:	#(...) # código para leitura de valores
	la $t6, lista # $t6 = &lista[0]	 P = lista
	li $t1, SIZE # $t1 = SIZE
	sll $t1, $t1, 2 # $t1 = SIZE * 4 (estamos a usar ponteiros)
	addu $t1, $t6, $t1 # $t1 = lista + SIZE
	
for1:	bge $t6, $t1, endfor1   # while(p<lista+SIZE)
	
	la $a0, str1
	ori $v0, $0, print_string
	syscall #print_string(str1)
	
	ori $v0, $0, read_int
	syscall #read_int()
	
	sw $v0, 0($t6) 
	
	addi $t6, $t6, 4 # p++
	
	j for1
endfor1:
	li $t4,FALSE # houve_troca = FALSE;
	li $t5,0 # i = 0;
for:	
	bge $t5,9,endfor # while(i < SIZE-1){
if:	
	sll $t5,$t5,2 # $t5 = i * 4
	addu $t6,$t6,$t5 # $t6 = &lista[i]
	lw $t8,0($t6) # $t8 = lista[i]
	
	sll $t5,$t5,2 #$t5 = (i * 4)*2
	addu $t6,$t6,$t5 # $t6 = &lista[i]
	lw $t9,0($t6) # $t9 = lista[i+1]
	
	ble $t8,$t9,endif # if(lista[i] > lista[i+1]){
	sw $t8,0($t9) # lista[i+1] = $t8
	sw $t9,0($t8) # lista[i] = $t9
	li $t4,TRUE #
	# }
endif:  
	addi $t5, $t5, 1        	# i++
	j for                   	# 

endfor:                     	# Impressão do array ordenado
	li $t5, 0               	# Reinicia o índice para impressão
	la $t6, lista          	# Ponteiro para o início do array

print_loop:
	bge $t5, SIZE, end_print #  i < SIZE
    
	lw $a0, 0($t6)          	# $a0= lista[i] 
	ori $v0, $0, print_int10  
	syscall
	
	la $a0, str2            	# Mete virgulas
	ori $v0, $0, print_string
	syscall
    
	addi $t6, $t6, 4        	# Avança para o próximo elemento do array
	addi $t5, $t5, 1         # Incrementa o índice
	j print_loop             # Continua o loop de impressão

end_print:
	jr $ra
