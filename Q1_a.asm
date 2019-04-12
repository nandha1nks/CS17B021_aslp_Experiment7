main:
	addi $sp,$sp,-16
	sw $s0,0($sp)
  	sw $s1,4($sp)
  	sw $s2,8($sp)
	sw $s3,12($sp)
	addi $s0,$zero,10
  	addi $s1,$zero,5
	addi $s2,$zero,4
  	addi $s3,$zero,0
  
	add $a0,$zero,$s1
	add $a1,$zero,$s2
	
  	jal f1
	div $s3,$v0,$a1
	add $s3,$s0,$s3
  
f1:
	mult $a0,$a1
	mflo $t0
	addi $v0,$t0,0
	jr $ra
