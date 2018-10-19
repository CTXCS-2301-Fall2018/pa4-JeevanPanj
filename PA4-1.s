@Jeevan Panjwani
@Assignment 4-1
@Due:
@Purpose:

	@	Put the required header information here

	.extern printf
	.extern scanf
	.global main
	.func main
main:
	PUSH	{LR}
	LDR	R2, =startval 	@ get addr of startval
	LDR	R2, [R2]	@ Load startval -> R2
	LDR	R3, =endval	@ get addr of endval
	LDR	R3, [R3]	@ Load endval -> R3
	@-------------
	@ Your code begins here
	@ Your code must put the final answer
	@ in R1.
	@-------------
	MOV R1, #0

_loop:
    ADD R1, R2, R1  @Adds R2 value to R1, incremementing each loop.
    ADD R2, R2, #1  @Incrememnts R2 by 1 each loop
    CMP R2, R3      @Checks when startval is equal to endval
    BLE _loop       @Ends the loop




	@-------------
	@ Do NOT alter code past this line.
	@-------------
	LDR	R0, =out
	BL	printf
	POP	{PC}

.data
startval:	.word 1
endval:		.word 5
out:		.asciz "%d\n"
