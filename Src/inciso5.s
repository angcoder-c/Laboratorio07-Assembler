.syntax unified
.cpu cortex-m4
.thumb

.data
// array con 4 enteros
array: .word 5, 10, 5, 20

// espacio para 4 palabras
result: .space 16

.text
.global inciso5

inciso5:
    LDR R4, =array
    LDR R5, [R4]
    LDR R6, =result

    MOV R7, #0

bucle_comparacion:
    CMP R7, #4
    BEQ end

    LDR R0, [R4, R7, LSL #2] // R0 = array[i]
    CMP R0, R5
    BEQ almacenar_uno

almacenar_cero:
    MOV R1, #0
    B almacenar

almacenar_uno:
    MOV R1, #1

almacenar:
    STR R1, [R6, R7, LSL #2]
    ADD R7, R7, #1 // i++
    B bucle_comparacion

end:
    BKPT #0