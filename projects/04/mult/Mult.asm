// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

@R2
M=0

@R0
D=M
@firstNumber
M=D

@R1
D=M
@secondNumber
M=D

@product
M=0
@i
M=0

(loop)
@i 
D=M
@secondNumber
D=D-M
@stop
D;JEQ 

@firstNumber
D=M
@product 
M=M+D
@i 
M=M+1
@loop
0;JMP

(stop)
@product
D=M

@R2
M=D

(end)
@end
0;JMP