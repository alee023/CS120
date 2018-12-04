text: 

f2: 	
	addi $sp, $sp, -4
	sw $ra, 0($sp)
	
	lw $t0, 4($sp)		# second val in stack is a+b

	add $v0, $t0, $t0 	# return reg. v0 = t0 + t0. maybe try sll by 2 


	lw $ra, 0($sp)
	addi $sp, $sp, 4

	addi $sp, $sp, -4
	sw $v0, 0($sp)

	jr $ra
	
f1:
	addi $sp, $sp, -4
	sw $ra, 0($sp)

	lw $t0, 4($sp)		# load vals 3, 4 into reg t0, t1
	lw $t1, 8($sp)	
	add $t0, $t0, $t1	# set t0 to sum of both
	addi $sp, $sp, -4	
	sw $t0, 0($sp)		# store sum as first element in stack

	jal f2			# call f2

	lw $v0, 0($sp)
	addi $sp, $sp, 8
	lw $ra, 0($sp)
	addi $sp, $sp, 4

	addi $sp, $sp, -4
	sw $v0, 0($sp)
	jr $ra

main:
	addi $sp, $sp, -4
	sw $ra, 0($sp)

	addi $sp, $sp, -4
	li $t0, 3
	sw $t0, 0($sp)
	addi $sp, $sp, -4
	li $t0, 4
	sw $t0, 0($sp)

	jal f1

	addi $sp, $sp, 12	# pop 3, 4, AND reg $v0 off stack
	
	lw $ra, 0($sp)
	addi $sp, $sp, 4
	jr $ra


