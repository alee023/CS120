.data


hello: .asciiz "Hello World\n"




.text

main:
	addi $t0, $0, 0		#index for loop
	
	addi $s0, $0, 3		#where loop should end



loop:	la $a0, hello

	slt $t1, $t0, $s0	# when i < loopEnd

	beq $t1, $0, loop_end



	li $v0, 4

	syscall

 

	addi $t0, $t0, 1	#add 1 to index
	j 



loop_end:
	
	li $v0, 10

	syscall
