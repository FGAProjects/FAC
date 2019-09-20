.data
$add: .asciiz  "ADD: " 
$sub: .asciiz "\nSUB: " 
$and: .asciiz "\nAND: "
$or: .asciiz "\nOR: "
$xor: .asciiz "\nXOR: "
$mask: .asciiz "\nMASK: "
$sll: .asciiz "\nSLL("
$srl: .asciiz "\nSRL("
$msg: .asciiz "): "
$newline: .asciiz "\n"

.text
main:

    li $v0, 5 # Lê do teclado o número inserido
    syscall

    move $t0, $v0

    li $v0, 5 # Lê do teclado o número inserido
    syscall

    move $t1, $v0

    li $v0, 5 # Lê do teclado o número inserido
    syscall

    move $t2, $v0 

    add $t0, $zero, $t0 # Primeiro valor: t0 
    add $t1, $zero, $t1 # Segundo valor: t1 
    add $t2, $zero, $t2 # Terceiro valor: t2 

    # Questão 1

    add $s0, $t0, $t1 # Soma dos dois primeiros valores
    sub $s1, $t0, $t1 # Subtração dos dois primeiros valores

    li $v0,4  # Comando de impressão de string na tela
	la $a0, $add # Coloca o texto soma para ser impresso
	syscall # Efetua a chamada ao sistema

    li $v0,1 # Comando de impressão de inteiro na tela
	la $a0, ($s0) # Coloca o registrador $s0 para ser impresso
	syscall # Efetua a chamada ao sistema

    li $v0,4  # Comando de impressão de string na tela
	la $a0, $sub # Coloca o texto soma para ser impresso
	syscall # Efetua a chamada ao sistema

    li $v0,1 # Comando de impressão de inteiro na tela
	la $a0, ($s1) # Coloca o registrador $s1 para ser impresso
	syscall # Efetua a chamada ao sistema

    # Questão 2

    and $s2, $t0, $t1 # AND entre os dois primeiros valores
    or $s3, $t0, $t1 # OR entre os dois primeiros valores
    xor $s4, $t0, $t1 # XOR Entre os dois primeiros valores

    li $v0,4  # Comando de impressão de string na tela
	la $a0, $and # Coloca o texto and para ser impresso
	syscall # Efetua a chamada ao sistema

    li $v0,1 # Comando de impressão de inteiro na tela
	la $a0, ($s2) # Coloca o registrador $s2 para ser impresso
	syscall # Efetua a chamada ao sistema

    li $v0,4  # Comando de impressão de string na tela
	la $a0, $or # Coloca o texto or para ser impresso
	syscall # Efetua a chamada ao sistema

    li $v0,1 # Comando de impressão de inteiro na tela
	la $a0, ($s3) # Coloca o registrador $s3 para ser impresso
	syscall # Efetua a chamada ao sistema

    li $v0,4  # Comando de impressão de string na tela
	la $a0, $xor # Coloca o texto xor para ser impresso
	syscall # Efetua a chamada ao sistema

    li $v0,1 # Comando de impressão de inteiro na tela
	la $a0, ($s4) # Coloca o registrador $s4 para ser impresso
	syscall # Efetua a chamada ao sistema

    # Questão 3

    and $s5, $t2, 31 # AND entre os dois primeiros valores

    li $v0,4  # Comando de impressão de string na tela
	la $a0, $mask # Coloca o texto mask para ser impresso
	syscall # Efetua a chamada ao sistema

    li $v0,1 # Comando de impressão de inteiro na tela
	la $a0, ($s5) # Coloca o registrador $s5 para ser impresso
	syscall # Efetua a chamada ao sistema

    # Questão 4

    sll $s6, $t0, $s5

    li $v0,4  # Comando de impressão de string na tela
	la $a0, $sll # Coloca o texto and para ser impresso
	syscall # Efetua a chamada ao sistema

    li $v0,1 # Comando de impressão de inteiro na tela
	la $a0, ($s5) # Coloca o registrador $s5 para ser impresso
	syscall # Efetua a chamada ao sistema

    li $v0,4  # Comando de impressão de string na tela
	la $a0, $msg # Coloca o texto msg para ser impresso
	syscall # Efetua a chamada ao sistema

    li $v0,1 # Comando de impressão de inteiro na tela
	la $a0, ($s6) # Coloca o registrador $s5 para ser impresso
	syscall # Efetua a chamada ao sistema

    srl $s7, $t1, $s5

    li $v0,4  # Comando de impressão de string na tela
	la $a0, $srl # Coloca o texto and para ser impresso
	syscall # Efetua a chamada ao sistema

    li $v0,1 # Comando de impressão de inteiro na tela
	la $a0, ($s5) # Coloca o registrador $s5 para ser impresso
	syscall # Efetua a chamada ao sistema

    li $v0,4  # Comando de impressão de string na tela
	la $a0, $msg # Coloca o texto msg para ser impresso
	syscall # Efetua a chamada ao sistema

    li $v0,1 # Comando de impressão de inteiro na tela
	la $a0, ($s7) # Coloca o registrador $s5 para ser impresso
	syscall # Efetua a chamada ao sistema

    li $v0, 4
    la $a0, $newline
    syscall

    li $v0, 10 # Comando de exit
	syscall # Efetua a chamada ao sistema