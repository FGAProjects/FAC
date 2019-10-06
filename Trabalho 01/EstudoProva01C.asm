.data
    myArray: .space 100
	$acertou: .asciiz "Acertou"
    $errou: .asciiz "Errou"
    $newline: .asciiz "\n"

.text
main:

	li $v0, 5 # Lê do teclado o número inserido
	syscall
    move $t0, $v0           # move para t0 e libera o v0. t0 É O N

    	li $v0, 5 # Lê do teclado o número inserido
	syscall

    li $v0,1 # Comando de impressão de inteiro na tela
    la $a0, ($v0) # Coloca o registrador $s0 para ser impresso
    syscall # Efetua a chamada ao sistema
    li $v0, 4
    la $a0, $newline
    syscall
    li $v0, 10 # Comando de exit
    syscall # Efetua a chamada ao sistema

    # li $t1, 0
    # mul $t2, $t2, 4
    # li $t2, 0

    # soma_array:

    # beq $t1, $t0, exit
    # lw $s0, myArray($t2)
    # add $s0, 

    # addi $t2, $t2, 1

    # exit:

    # mul $t0, $t0, 4
    # lw $s0, ($t0)

    # soma_array:

    #     beq $t1, $t0, exit


    # exit:
    # lw $s0, ($s0)

    # preenche_array:
    #     beq $t1, $t0, exit
        

	# 	addi $t1, $t1, 1       # incrementa + 1
    #     j preenche_array

    # exit:



