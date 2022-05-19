.model small
.stack 100h  


.data
a db 'First   Number $' 
b db 'Second  Number $'
c db 'Summation is   $'
FirstNumber db ?
SecondNumber db ?

.code


main proc 
    mov ax,@data
    mov ds,ax 
    
    
    mov ah,9
    lea dx,a
    int 21h 
    
    
    mov ah,1
    int 21h
    mov FirstNumber,al 
    mov bh,FirstNumber 
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    
    
    mov ah,9
    lea dx,b
    int 21h
    
    
    mov ah,1
    int 21h
    mov SecondNumber,al 
    mov bl,SecondNumber    
    
    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
             
             
    mov ah,9
    lea dx,c
    int 21h
    
    
    add bh,bl
    sub bh,48        
    mov ah,2 
    mov dl,bh 
    int 21h
    
    
    main endp
end main