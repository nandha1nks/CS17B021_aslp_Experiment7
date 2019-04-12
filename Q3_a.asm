main:
	  addi $a0,$zero,1
	  jal loop1

loop1:
	  addi $sp,$sp,-4
	  sw $ra,0($sp)
	  jal loop2
  	mul $v0,$v0,$v0
	  mul $v0,$v0,$v0
	  addi $v0,$v0,3
	  lw $ra,0($sp)
	  addi $sp,$sp,4

loop2:
    addi $sp,$sp,-4
	  sw $ra,0($sp)
	  jal loop3
	  mul $t0,$v0,$v0
	  mul $v0,$v0,$t0
	  addi $v0,$v0,3
	  lw $ra,0($sp)
	  addi $sp,$sp,4

loop3:
    addi $sp,$sp,-4
	  sw $ra,0($sp)
	  jal loop4
	  mul $t0,$v0,$v0
	  mul $t1,$t0,$v0
	  add $v0,$t0,$t1
	  lw $ra,0($sp)
	  addi $sp,$sp,4

loop4:
    addi $sp,$sp,-4
	  sw $ra,0($sp)
	  mul $v0,$a0,7
	  lw $ra,0($sp)
	  addi $sp,$sp,4 
