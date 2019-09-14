.data
$add: .asciiz  "ADD: " 
$sub: .asciiz "\nSUB: " 
$and: .asciiz "\nAND: "
$or: .asciiz "\nOR: "
$xor: .asciiz "\nXOR: "
$mask: .asciiz "\nMASK: "
$sll: .asciiz "\nSLL($s5)"
$srl: .asciiz "\nSRL(): "

.text
main:

    add $t0, $zero, 9 # Primeiro valor: t0 possui o valor 9
    add $t1, $zero, 2 # Segundo valor: t1 possui o valor 2
    add $t2, $zero, 36 # Terceiro valor: t2 possui o valor 36
    add $t3, $zero, 4 # Valor de m da questão

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

    # li $v0,4  # Comando de impressão de string na tela
	# la $a0, $mask # Coloca o texto mask para ser impresso
	# syscall # Efetua a chamada ao sistema

    # Questão 4

    sll $s5, $t0, 4

    li $v0,4  # Comando de impressão de string na tela
	la $a0, $sll # Coloca o texto and para ser impresso
	syscall # Efetua a chamada ao sistema

    li $v0,1 # Comando de impressão de inteiro na tela
	la $a0, ($s5) # Coloca o registrador $s5 para ser impresso
	syscall # Efetua a chamada ao sistema

    srl $s6, $t1, 4

    li $v0,4  # Comando de impressão de string na tela
	la $a0, $srl # Coloca o texto and para ser impresso
	syscall # Efetua a chamada ao sistema

    li $v0,1 # Comando de impressão de inteiro na tela
	la $a0, ($s6) # Coloca o registrador $s5 para ser impresso
	syscall # Efetua a chamada ao sistema

    li $v0, 10 # Comando de exit
	syscall # Efetua a chamada ao sistema