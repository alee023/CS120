.data
	# In C, this would be int array[4]
	#   array[0] = 10	;
	#   array[1] = 20	;
	#   array[2] = 30	;
	#   array[3] = 40	;
array:	.word 10
	.word 20
	.word 30
	.word 40

message:	.asciiz "Finished...\n"

.text
main:	la $s0, array

	lw $t1, 0($s0)
	addi $t1, $t1, 5
	sw $t1, 0($s0)
	# in C, this would be
	#    array[0] = array[0] + 5 ;


	lw $t1, 8($s0)
	addi $t1, $t1, 7
	sw $t1, 12($s0)


	
	# And print that we're done
	la $a0, message
	li $v0, 4
	syscall

	li $v0, 10
	syscall
	
	
	
