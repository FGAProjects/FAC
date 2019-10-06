.data
	$newline: .asciiz "\n"
.text
main:

    li $v0, 5 # Lê do teclado o número inserido
	syscall
    move $t0, $v0           # move para t0 e libera o v0

    li $v0, 5 # Lê do teclado o número inserido
	syscall
    move $t1, $v0           # move para t1 e libera o v0

    sub $s0, $t0, $t1

    li $v0,1 # Comando de impressão de inteiro na tela
	la $a0, ($s0) # Coloca o registrador $s0 para ser impresso
	syscall # Efetua a chamada ao sistema
    li $v0, 4
    la $a0, $newline
    syscall
	li $v0, 10 # Comando de exit
	syscall # Efetua a chamada ao sistema