	.ORG 0x00000014 # $sp = 0x00000000, wc_instr = 43, wc_data = 7
	addi $19, $0 , 1     	# 0x00000001
	add  $0 , $0 , $19
	add  $18, $17, $18
	add  $18, $17, $18
	addi $17, $17, 1     	# 0x00000001
	slti $20, $17, 5     	# 0x00000005
	beq  $19, $20, -4    
	addi $19, $0 , 0     	# 0x00000000
	addi $18, $0 , 0     	# 0x00000000
	addi $17, $0 , 0     	# 0x00000000
	lw   $16, 0($0)	
	sb   $16, 107($0)
	lb   $17, 107($0)
	lbu  $18, 107($0)
	lh   $19, 106($0)
	lhu  $20, 106($0)
	lw   $21, 104($0)	
	sra  $16, $16, 8 
	sb   $16, 110($0)
	lb   $17, 110($0)
	lbu  $18, 110($0)
	lh   $19, 110($0)
	lhu  $20, 110($0)
	lw   $21, 108($0)	
	srl  $16, $16, 8 
	sb   $16, 113($0)
	lb   $17, 113($0)
	lbu  $18, 113($0)
	lh   $19, 112($0)
	lhu  $20, 112($0)
	lw   $21, 112($0)	
	sra  $16, $16, 8 
	sb   $16, 116($0)
	lb   $17, 116($0)
	lbu  $18, 116($0)
	lh   $19, 116($0)
	lhu  $20, 116($0)
	lw   $21, 116($0)	
	lui  $17, -30   		# 0xFFFFFFE2
	addi $18, $0 , 31    	# 0x0000001F
	lw   $19, 0($18)	
	addi $18, $0 , 27    	# 0x0000001B
	halt
