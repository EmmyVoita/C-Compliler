.text
.globl main

getSum:
	add $t3, $t1, $t2
	move $t4, $t3
	move $a0, $t4 
	li $v0, 1
	syscall
	jr $ra
main:
	li $t1, 10
	li $t2, 5
	jal getSum 
	li $t5, 15
	move $a0, $t5 
	li $v0, 1
	syscall
	li $v0, 10
	syscall
