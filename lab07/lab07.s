.data
array:	.word 1
	.word 2
	.word 3
	.word 4
	.word 5
	.word 6

.text
main:	li $s1, 0 		#index $s1 = 0

loop: 	
	la $s0, array
	li $t0, 6		# length
	beq $s1, $t0, done	# if $s1 = t0, loop ends

	sll $t0, $s1, 2
	add $s0, $t0, $s0
	lw $t2, 0($s0)

	# if arr[i] < 3, then arr[i] += 5
	# otherwise... arr[i] += 7

	slt $t1, $t2, 3		# boolean $t1 is whether arr[ i ] < 3 or not
	beq $t1, $0, Else	# if $t1 = false, move to else statement
	addi $t2, $t2, 5
	sw $t2, 0($s0)
	j Endif			# go to the endif after if is executed

	Else: 			# else statement: 
	addi $t2, $t2, 7
	sw $t2, 0($s0)

	Endif:
	addi $s1, $s1, 1
	j loop

done:
	li $v0, 10
	syscall
	
