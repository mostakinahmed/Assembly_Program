.model small
.stack 100h 

.data 
temp db 95
 

.code 

main proc    
      mov ax,@data
      mov ds,ax
      
      
      mov bl,temp
      
      cmp bl,64h
      
      
      mov ah,2
      mov dl,bl
      int 21h
      
      
      
      
      main endp
end main
    

