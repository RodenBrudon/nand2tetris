// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.
  @R0
  D=M
  @factor
  M=D // factor = R0
  @R1
  D=M
  @int
  M=D // int = R1
  @i
  M=1
(LOOP)
  @i
  D=M
  @factor
  D=D-M
  @STOP
  D;JGT // if i > factor then STOP
  @sum
  D=M
  @int
  D=D+M
  @sum
  M=D
  @i
  M=M+1
  @LOOP
  0;JMP
(STOP)
  @sum
  D=M
  @R2
  M=D
  // reset
  @0
  D=A
  @factor
  M=D
  @int
  M=D
  @sum
  M=D
(END)
  @END
  0;JMP
