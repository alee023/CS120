.text
main:
	li $s0, 0
	li $s1, 10
	
	loop:
		beq $s1, $0, done
		addi $s0, $s0, 4
		addi $s1, $s1, -1
		j loop
	
	done:
		li $v0, 10
		syscall