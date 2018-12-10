.data
array:	.word 3
		.word 5
		.word 99
		.word 0
		
.text
main:
	la $s0, array
	li $s1, 0		# sum
	li $t0, 0		# index
	loop:
		beq $t0, 4, done
		sll $t1, $t0, 2
		add $s0, $s0, $t1
		lw $t1, 0($s0)
		add $s1, $s1, $t1
		addi $t0, $t0, 1
	j loop
	
	done:
	li $v0, 10
	syscall
		
	
	