/*
Laboratorio 7
Grupo 4
https://users.ece.utexas.edu/~valvano/EE345L/Labs/Fall2011/CortexM_InstructionSet.pdf
https://github.com/angcoder-c/Laboratorio07-Assembler
*/

.syntax unified
.cpu cortex-m4
.fpu softvfp
.thumb

.global main

// 2.a. definir una variable global
section .data
	var: .word 36

main:
	// 1. Modo inmedianto vs modo registro

	// inmediato
	// a. cargar el valor 10 a R0
	MOV R0, #10

	// b. transferir valores entre r1 y r0
	MOV R1, R0

	// c. operacion aritmetica
	ADD R2, R1, R0

	// Registro
	// a. cargar el valor 10 a R0 con operaciones aritmeticas
	LDR R0, =5
	LDR R1, =5
	ADD R0, R1, R0

	// b. transferir valores entre r1 y r0
	MOV R0, [R1]
	MOV R1, [R0]

	// c. operacion aritmetica
	ADD R2, R1, R0

	// 2. LDR, STR y direccionamiento inmediato
	// b. cargar 42 en un registro
	LDR R0, =42
	// c. almacenar r0 en var
	LDR R1, =var
    STR R0, [r1]
    // d. leer var en otro registro
    LDR r2, =var
    LDR r3, [r2]



loop:
	b end
