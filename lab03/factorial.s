.globl factorial

.data
n: .word 8

.text
main:
    la t0, n
    lw a0, 0(t0)
    jal ra, factorial

    addi a1, a0, 0
    addi a0, x0, 1
    ecall # Print Result

    addi a1, x0, '\n'
    addi a0, x0, 11
    ecall # Print newline

    addi a0, x0, 10
    ecall # Exit

factorial:
	beq x0, a0, base_case		#n == 0
    
    addi t0 x0, 1				#initialize result = 1
    loop:
    beq x0, a0, end_loop		#n == 0
    mul t0, t0, a0				#result = result * a0
    addi a0, a0, -1				# a0--
    j loop
    
    end_loop:
    add a0 x0, t0				#preparing return val
    j exit
    
    base_case:
    addi a0, x0, 1
    
    exit:
    jr ra
    