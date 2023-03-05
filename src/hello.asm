; nasm -f elf64 src/hello.asm  - Compile in Linux x64
; ld -s -o hello hello.o

section .data
  msg db 'Hello World!', 0xA ; 0xA -> break line
  msg_length equ $- msg

section .text
  
  global _start

  _start:

    mov EAX, 0x4          ; quero fazer uma saida
    mov EBX, 0x1          ; a saida é na saida padrão
    mov ECX, msg          ; a mensagem é essa
    mov EDX, msg_length   ; esse é o tamannho da mensagem
    int 0x80              ; pega tudo que eu falei e executa
          
  
      ; destino, origem EAX = 1 
    mov EAX, 0x1 ; Systema Operacional estou terminando o programa
    mov EBX, 0x0 ; SO o valor de retorno é 0 (1 = error | 0 = Success)
  
    int 0x80 ; pega toda essa i  fnfo e processa
