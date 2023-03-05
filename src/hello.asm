; nasm -f elf64 src/hello.asm

section .data
  msg db 'Hello World!'
  tam equ $- msg

section .text

  global _start

  _start:

    mov EAX, 0x4
    mov EBX, 0x1
    mov ECX, msg
    mov EDX, tam
    int 0x80

  
      ; destino, origem EAX = 1 
    mov EAX, 0x1 ; Systema Operacional estou terminando o programa
    mov EBX, 0x0 ; SO o valor de retorno é 0 (1 = error | 0 = Success)

    int 0x80 ; pega toda essa info e processa
