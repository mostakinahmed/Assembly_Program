.model small
.stack 100h 
.data
a db 'The Number is Even $'
b db 'The Number is Odd $' 
.code
main proc 
    
    mov ax,@data
    mov ds,ax
      
    mov ah,1          ;Input a value
    int 21h
    mov bl,al
        
    mov bx,2         
    DIV bx
    CMP dx,0h         ;If Else condition
    JE Then 
    JNE Else
      
    Then: 
        mov ah,2      ;New line
        mov dl,10
        int 21h
        mov dl,13
        int 21h
    
        mov ah,9      ;print variable a
        lea dx,a
        int 21h
        jmp end:
        
    Else:
        mov ah,2      ;New line
        mov dl,10
        int 21h
        mov dl,13
        int 21h 
     
        mov ah,9      ;print variable b
        lea dx,b
        int 21h
        jmp End 
    
    End:
        mov ah,4ch    ;End for level
        int 21h
    
    main endp
end main


