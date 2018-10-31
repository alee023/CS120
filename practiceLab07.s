.data
# { 1, 2, 3, 4, 5, 6 }
array:	.word 1
		.word 2
		.word 3
		.word 4
		.word 5
		.word 6

.text
main: 
	li $t0, 0			# set index $t0 to 0

loop:
	la $s0, array 		# pointer to array
	li $t2, 6		
	beq $t2, $t0, done
	
	sll $t2, $t0, 1
	add $s0, $s0, $t2
	
	lw $t3, 0($s0)		# $t3 = array[ i ]
	slt $t3, $s1, 3		# t1 = boolean on whether $t3 < 3 or not
	beq $t3, $0, L1		# if $t1 = false ($s3 >= 3), move to else statement
	addi $t3, $t3, 5	# array[i] = array[i] + 5
	sw $t3, 0($s0)
	j done
	L1: 		#array[i] = array[i] + 7
	addi $t3, $t3, 7	# array[i] = array[i] + 5
	sw $t3, 0($s0)
	
	
	addi $t0, $t0, 1
	j loop