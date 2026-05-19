
; Problem Statement : Write a program to (a) display a "?", (b) read two decimal digits whose sum is less than 10, 
;(c) display them and their sum on the next line, with an appropriate message.
; Sample execution:
; ?27
; THE SUM OF 2 AND 7 IS 9

.MODEL SMALL
.STACK 100H

.DATA
    PRINT DB '?','$'
    MSG1 DB 0DH, 0AH, "THE SUM OF "
    VAR1 DB ?
    MSG2 DB " AND "
    VAR2 DB ?
    MSG3 DB " IS "
    SUM  DB ?
    DB '$'

.CODE
MAIN PROC
    MOV AX, @DATA
    MOV DS, AX

    ; (a) "?" 
    MOV AH, 9
    LEA DX, PRINT
    int 21h

    mov ah,1
    INT 21H
    mov VAR1,al
    sub al,30h
    mov bl,al
    
    
    mov ah,1 
    INT 21H
    mov VAR2,al
    sub al,30h
    
    
    add al,bl
    add AL,30h
    mov SUM,al
    
    
    LEA DX, MSG1
    MOV AH, 9
    int 21h 

    ; ????????? ???
    MOV AH, 4Ch
    INT 21H
MAIN ENDP
END MAIN
