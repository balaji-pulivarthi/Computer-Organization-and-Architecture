org 100h           ; Origin, to specify that the program starts at 100h (COM file format)

; Display message "Two-digit number is: "
mov dx,offset msg_output   ; Load the address of the message
mov ah,09h                 ; Function 09h of INT 21h is used to display a string
int 21h                      ; Call DOS interrupt to print the message

; Set two-digit number in the program
mov al, '5'      ; First digit (tens place)
mov bl, '4'      ; Second digit (ones place)

; Display first digit (tens place)
mov dl,al       ; Load first digit (AL) into DL for printing
mov ah, 02h     ; Function 02h of INT 21h to print a character
int 21h         ; Call DOS interrupt to display the first digit

; Display second digit (ones place)
mov dl,bl       ; Load second digit (BL) into DL for printing
mov ah, 02h     ; Function 02h of INT 21h to print a character
int 21h         ; Call DOS interrupt to display the second digit

EndProgram:
mov ah, 4Ch     ; Function 4Ch of INT 21h terminates the program
int 21h         ; Call DOS interrupt to exit

msg_output DB 'Two-digit number is: $'          


