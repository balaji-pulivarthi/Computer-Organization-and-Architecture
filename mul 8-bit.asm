org 100h
num1 db 23h
num2 db 24h
start:
     mov al,num1
     mov bl,num2
     mul bl
     mov bx, ax
     
     mov ah, bh
     and ah, 0F0h
     shr ah, 4
     add ah, 30h
     cmp ah, 39h
     jle first
     add ah, 7 
first:
     mov dl, ah
     mov ah, 02h
     int 21h
     mov ah, bh
     and ah, 0Fh
     add ah, 30h
     cmp ah, 39h
     jle second
     add ah, 7
      
second:
     mov dl, ah
     mov ah, 02h
     int 21h         
     mov ah, bl
     and ah, 0F0h
     shr ah, 4
     add ah, 30h
     cmp ah, 39h
     jle third
     add ah, 7
     
third:
     mov dl, ah
     mov ah, 02h
     int 21h
     mov ah, bl
     and ah, 0Fh
     add ah, 30h
     cmp ah, 39h
     jle fourth
     add ah, 7
      
fourth:
      mov dl, ah
      mov ah, 02h
      int 21h
               
      mov ah, 4Ch
      int 21h

ret