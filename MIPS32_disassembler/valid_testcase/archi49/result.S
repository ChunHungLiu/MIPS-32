	.ORG 0x00000120 # $sp = 0x00000400, wc_instr = 91, wc_data = 6
	lbu  $16, 13($0)
	lhu  $17, 10($8)
	lui  $18, 250   		# 0x000000FA
	ori  $18, $18, -12611	# 0xFFFFCEBD
	and  $19, $18, $0 
	addi $20, $16, -45   	# 0xFFFFFFD3
	srl  $21, $20, 2 
	sll  $21, $21, 2 
	srl  $8 , $20, 1 
	slt  $9 , $8 , $19
	bne  $9 , $0 , 16    
	add  $9 , $21, $19
	add  $10, $21, $20
	sub  $10, $10, $19
	addi $10, $10, -1    	# 0xFFFFFFFF
	lb   $11, 0($9)
	lb   $12, 0($10)
	xor  $11, $11, $12
	sb   $11, 0($9)
	lb   $11, 0($9)
	xor  $12, $11, $12
	sb   $12, 0($10)
	lb   $12, 0($10)
	xor  $11, $11, $12
	sb   $11, 0($9)
	addi $19, $19, 1     	# 0x00000001
	j    0x00000051			# PC => 0x00000144
	srl  $4 , $18, 16
	addi $5 , $0 , 25    	# 0x00000019
	jal  0x00000086			# PC => 0x00000218
	add  $19, $2 , $0 
	addi $15, $0 , -1    	# 0xFFFFFFFF
	addi $24, $0 , 1     	# 0x00000001
	sll  $24, $24, 31
	sra  $24, $24, 19
	slti $25, $24, -32768	# 0xFFFF8000
	sll  $24, $24, 4 
	nor  $25, $25, $24
	nand $14, $24, $25
	addi $14, $14, 1     	# 0x00000001
	nori $14, $14, -4113 	# 0xFFFFEFEF
	or   $14, $14, $24
	lh   $13, 0($0)
	slt  $13, $13, $15
	lb   $13, 0($13)
	sll  $13, $13, 8 
	andi $15, $13, -12800	# 0xFFFFCE00
	lui  $25, -32768		# 0xFFFF8000
	ori  $25, $25, 0     	# 0x00000000
	sub  $25, $25, $0 
	sub  $25, $0 , $25
	sub  $15, $25, $25
	addi $0 , $25, -1    	# 0xFFFFFFFF
	sub  $0 , $0 , $0 
	sh   $4 , -2001($0)
	add  $8 , $8 , $8 
	lw   $4 , -2000($0)	
	halt
	halt
	halt
	halt
	halt
	addi $29, $29, -24   	# 0xFFFFFFE8
	sw   $8 , 0($29)
	sw   $9 , 4($29)
	sw   $10, 8($29)
	sw   $31, 12($29)
	sw   $4 , 16($29)
	sw   $5 , 20($29)
	slt  $8 , $4 , $5 
	beq  $8 , $0 , 3     
	add  $9 , $0 , $5 
	add  $10, $0 , $4 
	j    0x00000094			# PC => 0x00000250
	add  $9 , $0 , $4 
	add  $10, $0 , $5 
	beq  $10, $0 , 5     
	add  $4 , $0 , $10
	sub  $5 , $9 , $10
	jal  0x00000086			# PC => 0x00000218
	add  $2 , $2 , $0 
	j    0x0000009B			# PC => 0x0000026C
	add  $2 , $9 , $0 
	lw   $5 , 20($29)	
	lw   $4 , 16($29)	
	lw   $31, 12($29)	
	lw   $10, 8($29)	
	lw   $9 , 4($29)	
	lw   $8 , 0($29)	
	addi $29, $29, 24    	# 0x00000018
	jr   $31
