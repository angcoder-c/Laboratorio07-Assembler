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

.data
var: .word 36
array: .byte 1, 2, 3, 4

.text
main:

	//reset
    LDR R0, =0
    LDR R1, =0
    LDR R2, =0
    LDR R3, =0
    LDR R4, =0
    LDR R5, =0
    LDR R6, =0
    LDR R7, =0

    // inciso 5
	BL inciso5
    BKPT #0

    // 1. modo inmediato vs modo registro

    // a. cargar el valor 10 a R0
    // modo inmediato
    MOV R0, #10

    // b. transferir valores entre R1 y R0
    MOV R1, R0

    // c. operación aritmetica
    ADD R2, R1, R0

    //reset
    LDR R0, =0
    LDR R1, =0
    LDR R2, =0
    LDR R3, =0
    LDR R4, =0

    // modo registro
    // a. cargar el valor 10 a R0 usando una suma
    LDR R3, =5
    LDR R4, =5
    ADD R0, R3, R4

    // b. transferencia con registros (LDR/STR)
    MOV R1, R0
    MOV R0, R1

    // c. operación aritmetica
    ADD R2, R0, R1

    //reset
    LDR R0, =0
    LDR R2, =0
    LDR R1, =0
    LDR R3, =0
    LDR R4, =0

    // 2. LDR, STR y direccionamiento inmediato

    // b. cargar 42 en un registro
    LDR R0, =42

    // c. almacenar R0 en var
    LDR R1, =var // hex
    STR R0, [R1] // hex

    // d. leer var en otro registro
    LDR R2, =var // hex
    LDR R3, [R2] // hex

    //reset
    LDR R0, =0
    LDR R1, =0
    LDR R2, =0
    LDR R3, =0

    // 3. cargar, modificar y almacenar valores de un arreglo

    LDR R4, =array // hex
    LDRB R5, [R4] // hex

    ADD R5, R5, #1

	// ultima posición del arreglo
    STRB R5, [R4, #3]

    // reset
    LDR R4, =0
    LDR R5, =0

    // inciso 4
	// BL inciso4

	//reset
    LDR R0, =0
    LDR R1, =0
    LDR R2, =0
    LDR R3, =0
    LDR R4, =0
    LDR R5, =0
    LDR R6, =0
    LDR R7, =0

	// inciso 5
	BL inciso5
    BKPT #0
 end:
    BKPT #0
