;Write a program to read one of the hex digits A-F, 
;and display it on the next line in decimal.


;Sample execution:
;ENTER A HEX DIGIT: C
;IN DECIMAL IT IS 12




.model small
.stack 100h
.data
msg db 'enter a hex digit: $'
newline db 0Dh,0Ah ,'DECIMAL : $'   
.code
main proc
    mov ax,@data
    mov ds,ax
    
    mov ah,9
    lea dx,msg
    int 21h
    
    mov ah,1
    int 21h
    sub al,17
    mov bl,al
    
     mov ah,9
    lea dx,newline
    int 21h
    
    mov ah,2
    mov dl,49
    int 21h
   
    mov dl,bl 
    INT 21H
    
    ;exit
    mov ah,4Ch
    int 21h
        
end main