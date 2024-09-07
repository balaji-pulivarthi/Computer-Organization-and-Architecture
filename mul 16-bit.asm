org 100h
num1 dw 1234h
num2 dw 5678h
start:
    mov ax, num1
    mov bx, num2
    mul bx

    mov ah, dl
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

    mov ah, dl
    and ah, 0Fh
    add ah, 30h
    cmp ah, 39h
    jle second
    add ah, 7 

second:
    mov dl, ah
    mov ah, 02h
    int 21h

    mov ah, dh
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

    mov ah, dh
    and ah, 0Fh
    add ah, 30h
    cmp ah, 39h
    jle fourth
    add ah, 7 

fourth:
    mov dl, ah
    mov ah, 02h
    int 21h

    mov ah, al
    and ah, 0F0h
    shr ah, 4
    add ah, 30h
    cmp ah, 39h
    jle fifth
    add ah, 7 

fifth:
    mov dl, ah
    mov ah, 02h
    int 21h

    mov ah, al
    and ah, 0Fh
    add ah, 30h
    cmp ah, 39h
    jle sixth
    add ah, 7 

sixth:
    mov dl, ah
    mov ah, 02h
    int 21h

    mov ah, ah
    and ah, 0F0h
    shr ah, 4
    add ah, 30h
    cmp ah, 39h
    jle seventh
    add ah, 7 

seventh:
    mov dl, ah
    mov ah, 02h
    int 21h

    mov ah, ah
    and ah, 0Fh
    add ah, 30h
    cmp ah, 39h
    jle eighth
    add ah, 7 

eighth:
    mov dl, ah
    mov ah, 02h
    int 21h

    mov ah, 4Ch
    int 21h