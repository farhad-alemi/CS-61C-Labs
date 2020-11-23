.data

InputString:   .asciiz "Cal"

BeforeString:   .asciiz "Input should be 'Cal', and it is: "

AfterString:   .asciiz "After calling, it should be 'CAL'. It is: "

ReturnValueString:   .asciiz "Return Value should be 3. It is: "

.text

main:
#Feel free to edit this for your own tests, but this part will not be graded
#Print String before running code
la a0 BeforeString
jal print_str
la a0 InputString
jal print_str
jal print_newline
#Run UpperLen
la a0 InputString
jal UpperLen
mv s0 a0
#Print String after running code
la a0 AfterString
jal print_str
la a0 InputString
jal print_str
jal print_newline
#Print return value
la a0 ReturnValueString
jal print_str
mv a0 s0
jal print_int
jal print_newline
#Exits the program
li a0 10
ecall



UpperLen:
#Reads through the string, and converts the entire string to UPPERCASE
#Returns the length of the string
#YOUR CODE HERE

# prologue
addi sp, sp, -20
sw s0, 0(sp)
sw s1, 4(sp)
sw s2, 8(sp)
sw s3, 12(sp)
sw ra, 16(sp)

# initializing counter (s0) to 0
li s0, 0

li s2, 97						# the ASCII number where lower chars start
li s3, 123						# one past the last lower-case letter

begin_loop:
lbu s1, 0(a0)					# curr_char (s1) = *a0
beq s1, zero, end_loop			# while curr_char != 0

blt s1, s2, inc_counter			# if curr_char < 'a'
bge s1, s3, inc_counter			# if curr_char >= 'z' + 1

# Upper-casing curr_char
addi s1, s1, -32				# Upper-casing the letter
sb s1, 0(a0)					# Writing back to String

inc_counter:
addi s0, s0, 1

# incrementing pointer
addi a0, a0, 1					# pointing to the next byte

j begin_loop					# iterating back the loop

end_loop:
mv a0, s0

# epilogue
lw s0, 0(sp)
lw s1, 4(sp)
lw s2, 8(sp)
lw s3, 12(sp)
lw ra, 16(sp)
addi sp, sp, 20

# returning the val
jr ra


###########################################
#Utility Functions
###########################################
print_int:
    mv a1, a0
    li a0, 1
    ecall
    jr    ra

print_str:
    mv a1, a0
    li a0, 4
    ecall
    jr    ra

print_newline:
    li a1, '\n'
    li a0, 11
    ecall
    jr    ra