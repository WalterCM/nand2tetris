// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input. 
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel. When no key is pressed, the
// program clears the screen, i.e. writes "white" in every pixel.

(inputListener)
@KBD
D=M

@hasInput
D;JGT

@value
M=0
@start
0;JMP

(hasInput)
@value
M=-1

(start)
@SCREEN
D=A
@addr
M=D
@i
M=0

(loop)
@value
D=M
@addr
A=M
M=D

@i
M=M+1
@addr
M=M+1

@8192
D=A
@i
D=M-D
@inputListener
D;JEQ

@loop
0;JMP