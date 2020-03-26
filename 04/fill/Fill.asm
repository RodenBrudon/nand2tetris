// Set the starting position
(RESTART)
@SCREEN
D=A
@adr
M=D
//@8192
@100 
D=A
@SCREEN
D=D+A
@maxpix
M=D



// check the keyboard
(LOOP)
@KBD
D=M
@BLACK
D;JGT
@WHITE
D;JEQ



// jump to black
(BLACK)
@adr
A=M
M=-1
@INCR
0;JMP



// jump to white
(WHITE)
@adr
A=M
M=0
@INCR
0;JMP

// increment
(INCR)
@adr
D=M+1
M=D

@maxpix
D=D-M

@LOOP
D;JNE

@SCREEN
D=A
@adr
M=D
@LOOP
0;JMP



// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed.
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.
