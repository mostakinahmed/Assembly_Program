.model small 
.stack 100h 


.data 
a db ?
b db ?
x db 'First  Number = $' 
y db 'Second Number = $'  
c db 'Result        = $'

.code  
main proc
    mov ax,@data
    mov ds,ax
    
    
    mov ah,9       ;string show
    lea dx,x
    int 21h
    
    mov ah,1       ;input function
    int 21h
    mov a,al 
    mov bl,a
    
    mov ah,2       ;new line
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    
    mov ah,9       ;string show
    lea dx,y
    int 21h
    
    mov ah,1       ;input function
    int 21h
    mov b,al
    mov bh,b
                        
    mov ah,2       ;new line
    mov dl,10
    int 21h
    mov dl,13
    int 21h  
    
    mov ah,9
    lea dx,c
    int 21h
    
    add bl,bh      ;summation two number
    sub bl,48
    mov ah,2
    mov dl,bl
    int 21h
    
    

main endp
end main