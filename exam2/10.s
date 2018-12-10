# int sum( int a, int b ) {
#	return a + b ;
# }

.text

sum:
	lw $t0, 0($sp)
	lw $t1, 4($sp)
	
	add $v0, $t0, $t1
	
	jr $ra

# testing w/ values 3 and 4
main:
	li $t0, 3
	li $t1, 4
	
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	
	addi $sp, $sp, -4
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	sw $t1, 0($sp)
	
	jal sum
	
	addi $sp, $sp, 8
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra
	
	li $v0, 10
	syscall