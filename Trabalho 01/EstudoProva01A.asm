.data
	$newline: .asciiz "\n"
.text
main:

	li $v0, 5 # Lê do teclado o número inserido
	syscall
    move $t0, $v0           # move para t0 e libera o v0
    li $t1, 0               # coloca no registrador t1 o valor 0

	soma:
		beq $t1, $t0, exit        # se 0 for menor n
		li $v0, 5 # Lê do teclado o número inserido
		syscall
		move $t2, $v0
		add $s0, $s0, $t2
		addi $t1, $t1, 1       # incrementa + 1
		
		j soma                  # vá para o label [soma:]

	exit:
		li $v0,1 # Comando de impressão de inteiro na tela
		la $a0, ($s0) # Coloca o registrador $s0 para ser impresso
		syscall # Efetua a chamada ao sistema
		li $v0, 4
		la $a0, $newline
		syscall
		li $v0, 10 # Comando de exit
		syscall # Efetua a chamada ao sistema