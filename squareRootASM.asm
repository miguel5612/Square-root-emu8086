MOV BX, 16H
XOR CX, CX

calcular:
    
    MUL CX
    MOV AX, CX
    CMP AX, BX
    JA salirMayor
    JB menor
    JC igual 

menor:
    INC CX
    MOV AX, CX
    MUL CX
    CMP AX, BX
    JA salirMayor
    JE igual
    JB menor

salirMayor:
    DEC CX
    JMP igual
    
igual: ;Resultado queda en CX :D
    hlt


