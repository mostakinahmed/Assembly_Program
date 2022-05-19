;Microprocessor & Interfacing
;qsn: 4   page: 180
;summation of two 16 bit number 


.model small      ;start prgm
.data             ;data segment
    num1 dw 1234h ;1st 16 bit number
    num2 dw 2345h ;2nd 16 bit number
    sum  dw ?

.code             ;code segment
main proc
    mov ax,@data
    mov ds,ax 
    
    mov cx,num1   ;data store in register
    mov dx,num2 
      
    add cx,dx     ;summation 
    mov sum,cx 
              
    main endp     ;end pgrm
end main 
   
   
   
; keo kono line bujte na parle knock dio
;TATA...khatam...bye bye  