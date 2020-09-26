.globl main

.data
source:
    .word   3
    .word   1
    .word   4
    .word   1
    .word   5
    .word   9
    .word   0
dest:
    .word   0
    .word   0
    .word   0
    .word   0
    .word   0
    .word   0
    .word   0
    .word   0
    .word   0
    .word   0

.text
fun:
    addi t0, a0, 1	#x + 1
    sub t1, x0, a0	#0 - x
    mul a0, t0, t1	#-x * (x + 1)
    jr ra

main:
    # BEGIN PROLOGUE
    addi sp, sp, -20	#create space in stack for 5 vars
    sw s0, 0(sp) 
    sw s1, 4(sp)
    sw s2, 8(sp)
    sw s3, 12(sp)
    sw ra, 16(sp)
    # END PROLOGUE
    addi t0, x0, 0		#k = 0
    addi s0, x0, 0		#s = 0
    la s1, source		#s1 = source
    la s2, dest			#s2 = dest
loop:
    slli s3, t0, 2
    add t1, s1, s3
    lw t2, 0(t1)		#t2 is source[k]
    beq t2, x0, exit    #source[k] == 0
    add a0, x0, t2
    addi sp, sp, -8		#decrement sp to get space for 2 vars
    sw t0, 0(sp)		#*sp = t0
    sw t2, 4(sp)		#*(1+ sp) = t2
    jal fun             #call func
    lw t0, 0(sp)        #recover k
    lw t2, 4(sp)        #recover source[k]
    addi sp, sp, 8      #inc. sp
    add t2, x0, a0      
    add t3, s2, s3
    sw t2, 0(t3)
    add s0, s0, t2		#sum += dest[0]
    addi t0, t0, 1
    jal x0, loop
exit:
    add a0, x0, s0
    # BEGIN EPILOGUE
    lw s0, 0(sp)
    lw s1, 4(sp)
    lw s2, 8(sp)
    lw s3, 12(sp)
    lw ra, 16(sp)
    addi sp, sp, 20
    # END EPILOGUE
    jr ra
    
    #q1 
    #k is stored in t0
    
    #q2
    #sum in s0

	#q3
    #s1 = source
    #s2 = dest