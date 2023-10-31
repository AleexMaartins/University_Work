    .data
    .eqv print_string, 4
    .eqv print_int, 1
    .eqv read_int, 5
str1:    .asciiz "\nDigite um valor: "
str2:     .asciiz "\n"
    .eqv SIZE, 10
    .eqv TRUE, 1
    .eqv FALSE, 0
    .align 2   #alinhar com endereços multiplos de 4
lista:    .space 40  # SIZE * 4 (10 inteiros que pesam 4 bytes)
    .text
    .globl main
main:    
    #código para inserir valores no array (por ponteiro)
    
    la $t0, lista #  $t0 = p = &lista[0]
    li $t3, SIZE # $t3 = SIZE
    sll $t3, $t3, 2 # $t3 = SIZE * 4
    addu $t3, $t3, $t0 # $t3 = lista + SIZE  unsigned porque
               # estamos a somar endereços de memória
    

for1:   # for(P=lista;p<lista+SIZE;p++)
    bge $t0, $t3, endfor1
    
    la $a0, str1
    ori $v0, $0, print_string
    syscall #print_string(str1)
    
    ori $v0, $0, read_int
    syscall #read_int()
    
    sw $v0, 0($t0) #guarda o valor lido no array
    
    addi $t0, $t0, 4 # p++
    
    j for1
    
endfor1:
    
    la $t0, lista # p = &lista[0]
    li $t3, SIZE # $t3 = SIZE
    addi $t3, $t3, -1 # $t3 = SIZE  - 1
    sll $t3, $t3, 2 # $t3 = SIZE * 4
    addu $t1, $t0, $t3 # pUltimo = lista + (SIZE - 1)
    
do:
    la $t0, lista  #reiniciar ponteiro, meter ponteiro (importante!)
               #a apontar para o primeiro elemento da lista novamente            
    li $t2, FALSE  #houveTroca = false
               
for2:    #while(p < pUltimo)
    bge $t0, $t1, endfor2
    
if: #if (*p > *(p+1)) 
    
    lw $t4, 0($t0) # $t4 = *p
    lw $t5, 4($t0) # $t5 = (*p+1)
        
    ble $t4, $t5, endif
    
    sw $t4, 4($t0) # *p vai 4 endereços para a frente (porque é maior que *p+1)
    sw $t5, 0($t0) #  (*p+1) vai 4 endereços para trás
    
    li $t2, TRUE #houveTroca = TRUE;
    
endif:
    
    addiu $t0, $t0, 4 # p++ (unsigned) porque estamos a somar endereços
    
    j for2

endfor2:
    

while:    #while(houveTroca == TRUE)
    beq $t2, TRUE, do
    
    
    jr $ra