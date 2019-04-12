main:
  	addi $a0,$zero,7
	  jal loop
	  addi $a0,$v0,0
	  li $v0,1
	  syscall
	  li $v0,10
	  syscall

loop:
	  addi $sp,$sp,-8
	  sw $s0,4($sp)
	  sw $ra,0($sp)
    addi $s0,$a0,0
	  li $v0,1
	  addi $t0,$zero,1
	  ble $s0,$t0,factexit
	  addi $a0,$s0,-1
	  jal fact
	  mul $v0,$s0,$v0
exit:
	  lw $ra,0($sp)
	  lw $s0,4($sp)
	  addi $sp,$sp,8
	  jr $ra
