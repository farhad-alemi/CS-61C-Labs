#Store subsequent items in the static segment at the
#next available address.
.data
#Store listed values as unaligned 32-bit words; i.e. an array
.word 2, 4, 6, 8
n: .word 9

#Store subsequent instructions in the text segment
#at the next available address.
.text
main:
    add t0, x0, x0
    addi t1, x0, 1
    la t3, n
    lw t3, 0(t3)
fib:
    beq t3, x0, finish
    add t2, t1, t0
    mv t0, t1
    mv t1, t2
    addi t3, t3, -1
    j fib
finish:
    addi a0, x0, 1
    addi a1, t0, 0
    ecall # print integer ecall
    addi a0, x0, 10
    ecall # terminate ecall
    
    #q2
    #prints 34, the nth fib num
    # exit code: 0 - Encountered no errors.
    
    #q3
    #0x10000010
    
    #q4
    #233
