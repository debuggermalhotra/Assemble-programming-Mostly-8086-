DATA SEGMENT
    var1 DB 0045H
    var2 DB 0021H
DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE DS:DATA
    START:
    MOV DX,DATA
    MOV DS,DX
    MOV AL,var1
    ADD AL,var2
    MOV AH,00H
    ADC AH,00H
    MOV CH,02H
    DIV CH
    MOV DX,0810H
    MOV DS,DX
    MOV [0100H],AL
    END START
CODE ENDS