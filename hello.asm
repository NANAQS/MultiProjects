%include "biblioteca.inc"

SECTION .data
  msg db '{ "nome": "ola mundo" }', LF
  tamMsg equ $- msg
  arq db "data.json"
  tamArq equ $- arq
  fd dq 0 ;  FILE DESCRIPTOR

SECTION .text

global _start:

_start:
  mov eax, CREATE_FILE
  mov ebx, arq
  mov ecx, 0o664
  ; NECESSITA OCTAL 1 x 2 w 3 wx 4 r 5 rx 6 rw 7 rwx
  mov edx, tamArq
  int SYS_CALL

write:
  mov [fd], eax
  mov eax, WRITE_FILE
  mov ebx, [fd]
  mov ecx, msg
  mov edx, tamMsg 
  int SYS_CALL

closeFile:
  mov eax, CLOSE_FILE
  mov ebx, [fd]
  int SYS_CALL

termino:
  mov eax, S_EXIT
  mov ebx, R_EXIT
  int SYS_CALL