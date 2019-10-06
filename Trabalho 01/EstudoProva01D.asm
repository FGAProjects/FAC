.data
	$newline: .asciiz "\n"
    $msgE: .asciiz "E"
    $msgD: .asciiz "D"
    $msgC: .asciiz "C"
    $msgB: .asciiz "B"
    $msgA: .asciiz "A"
.text
main:

    li $v0, 5 # Lê do teclado o número inserido
	syscall
    move $t0, $v0           # move para t0 e libera o v0

    li $s2, 1
    li $s3, 36
    li $s4, 61
    li $s5, 86

    beq $t0, 0, notaE
    
    sltu $t1, $s2, $t0 # Se o valor inserido for maior ou igual que 1. Se o valor der 1, é por que é maior
    sltu $t2, $t0, 36 # Se o valor inserido for menor que 36
    beq $t1, $t2, notaD

    sltu $t1, $s3, $t0 # Se o valor inserido for maior ou igual que 1. Se o valor der 1, é por que é maior
    sltu $t2, $t0, 61 # Se o valor inserido for menor que 36
    beq $t1, $t2, notaC

    sltu $t1, $s4, $t0 # Se o valor inserido for maior ou igual que 1. Se o valor der 1, é por que é maior
    sltu $t2, $t0, 86 # Se o valor inserido for menor que 36
    beq $t1, $t2, notaB

    sltu $t1, $s5, $t0 # Se o valor inserido for maior ou igual que 1. Se o valor der 1, é por que é maior
    sltu $t2, $t0, 101 # Se o valor inserido for menor que 36
    beq $t1, $t2, notaA

    notaA:

        li $v0,4  # Comando de impressão de string na tela
        la $a0, $msgA # Coloca o texto msg para ser impresso
        syscall # Efetua a chamada ao sistema 
        j exit

    notaB:

        li $v0,4  # Comando de impressão de string na tela
        la $a0, $msgB # Coloca o texto msg para ser impresso
        syscall # Efetua a chamada ao sistema 
        j exit

    notaC:

        li $v0,4  # Comando de impressão de string na tela
        la $a0, $msgC # Coloca o texto msg para ser impresso
        syscall # Efetua a chamada ao sistema 
        j exit 

    notaD:

        li $v0,4  # Comando de impressão de string na tela
        la $a0, $msgD # Coloca o texto msg para ser impresso
        syscall # Efetua a chamada ao sistema 
        j exit   

    notaE:

        li $v0,4  # Comando de impressão de string na tela
        la $a0, $msgE # Coloca o texto msg para ser impresso
        syscall # Efetua a chamada ao sistema 
        j exit
    exit:
        li $v0, 4
        la $a0, $newline
        syscall

        li $v0, 10 # Comando de exit
        syscall # Efetua a chamada ao sistema