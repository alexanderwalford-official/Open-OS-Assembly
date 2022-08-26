; kernel.asm
; OpenOS
; by Alexander Walford 2022


section .text
  global _start


_start:
  mov	edx, len  ; message length
  mov	ecx, msg  ; message to write
  mov	ebx, 1    ; file descriptor (stdout)
  mov	eax, 4    ; system call number (sys_write)
  int	0x80     ; call kernel

  mov	eax, 1    ; system call number (sys_exit)
  int	0x80     ; call kernel
	
section	.data
  ; if we wanted to print a registry value, we would need to convert it to ASCII
  msg db 'Open OS - Alexander Walford 2022',0xa ; a message
  len equ $ - msg  ; length of message
