	@ Factorial
	@ Jeevan Panjwani
    @ Assignment 4.2
    @ 10/23/18
    @ THe purpose was to create a factorial calculator using loops and comparisons
    @ R0 is being used for user input, R1 is being used for the final answer
    @ R2 is used for factorial computations and also holds the final answer before R1

	.extern printf
	.extern scanf
	.global main
	.func main
main:	PUSH	{LR}
	LDR	R0, =prompt	@ Get address of prompt
	BL	printf		@ Print prompt to screen
	LDR	R0, =in		@ Get addr of input format string
	LDR	R1, =n		@ Get addr of n
	BL	scanf		@ Put value in n using scanf
	LDR	R0, =n		@ Addr of n into R0
	LDR	R0, [R0]	@ n is now in R0
	@-------------
	@ Your code goes here.  Put n! in R2
	@-------------
    MOV R2, #1      @ Move the value 1 into R2
    CMP R0, #0      @ Compare n to 0
    MOVEQ R2, #1    @ If n = 0; 1 is moved into R2
loop:
    CMP R0, #1          @ Compare n to 1
    MULGE R2, R2, R0    @ If n is greater than or equal to 1, multiply R2 by n and store the answer in R2
    SUBGE R0, R0, #1    @ If n if greater than or equal to 1, subtract 1 from n and store the new n value in R0
    BGE loop            @ End loop


	@-------------
	@ Do NOT alter code past this line.
	@-------------
	MOV	R1, R2
	LDR	R0, =out
	BL 	printf
	POP	{PC}

.data
n:	.word 0
prompt:	.asciz "Enter n: "
in:	.asciz "%d"
out:	.asciz "factorial is: %d\n"

