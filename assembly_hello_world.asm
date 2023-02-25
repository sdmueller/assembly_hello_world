; Hello World in x86 Assembly

global _start                           ; nasm specific directive to make _start symbol known to linker

section .text:                          ; define logic (syscalls can be found via file 'unistd_32.h')

_start:                                 ; default entry point name
  mov eax, 0x4                          ; use syscall 'write' (documentation: 'man 2 write')
  mov ebx, 1                            ; use stdout as the file descriptor
  mov ecx, message                      ; use the defined message as the buffer
  mov edx, message_length               ; supply message length
  int 0x80                              ; invoke the syscall

  mov eax, 0x1                          ; use syscall 'exit'
  mov ebx, 0                            ; supply status (0 = success)
  int 0x80                              ; invoke the syscall

section .data:                          ; define variables
message        db   "Hello World!", 0xA ; db = define bytes, 0xA = '\n'
message_length equ  $-message           ; $-message = current address ($) - message's address -> length of message (only works right after definition of message)