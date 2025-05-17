.syntax unified
.cpu cortex-m4
.thumb

.text
.global inciso4

inciso4:
    MOV R0, #15
    MOV R1, #15
    CMP R0, R1
    BEQ is_equal
    B not_equal

is_equal:
    MOV R2, #1
    B end

not_equal:
    MOV R2, #0
