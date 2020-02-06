section .data
self: db "section .data%1$cfilename: db %2$cSully_%%d.s%2$c,0%1$cself: db %2$c%3$s%2$c,0%1$cx: dd %4$d%1$c%1$csection .text%1$cglobal _main%1$cextern _dprintf%1$cextern _sprintf%1$c%1$c_main:%1$c	push rbp%1$c	mov rbp, rsp%1$c	lea rdi, [rel filename]%1$c	lea rsi, [rel filename]%1$c	mov rdx, [rel x]%1$c	cmp rdx, 0%1$c	jle .ret%1$c	dec rdx%1$c	call _sprintf%1$c%1$c	mov rax, 0x2000005%1$c	lea rdi, [rel filename]%1$c	mov rsi, 1537%1$c	mov rdx, 448%1$c	syscall%1$c	jc .ret%1$c	cmp rax, 0%1$c	jle .bad%1$c%1$c	mov rdi, rax%1$c	lea rsi, [rel self]%1$c	mov rdx, 10%1$c	mov rcx, 34%1$c	lea r8, [rel self]%1$c	mov r9, [rel x]%1$c	dec r9%1$c	call _dprintf%1$c%1$c	mov rax, 0x20000006%1$c	mov rdi, r14%1$c	syscall%1$c	mov rax, 0%1$c%1$c.ret:%1$c	leave%1$c	ret%1$c%1$c.bad:%1$c	mov rax, 1%1$c	jmp .ret%1$c",0
filename: db "Sully_%d.s",0
compile: db "nasm -f macho64 Sully_%1$d.s%2$d gcc Sully_%1$d.o -o Sully_%1$d"
execute: db "./Sully_%d",0
x: dd 5

section .text
global _main
extern _dprintf
extern _sprintf

_main:
	push rbp
	mov rbp, rsp

	; if Sully_5 exists decrement x
	; ??

	; Create filename
	lea rdi, [rel filename]
	lea rsi, [rel filename]
	mov rdx, [rel x]
	cmp rdx, 0
	jle .ret
	dec rdx
	call _sprintf

	; Open file
	mov rax, 0x2000005
	lea rdi, [rel filename]
	mov rsi, 03001o
	; mov rsi, 1537 ; need correct permissions
	; mov rdx, 448
	syscall
	; jc .ret
	; cmp rax, 0
	; jle .bad

	; Print self in file
	mov rdi, rax
	lea rsi, [rel self]
	mov rdx, 10
	mov rcx, 34
	lea r8, [rel self]
	mov r9, [rel x]
	dec r9
	call _dprintf

	; Close file
	mov rax, 0x20000006
	mov rdi, r14
	syscall
	mov rax, 0

	; Compile string
	; lea rdi, [rel compile]
	; lea rsi, [rel compile]
	; mov rdx, [rel x]
	; dec rdx
	; call _sprintf

	; Compile
	; mov rax, 0x20000004
	; mov rdi, r14
	; mov rsi, [rel compile]
	; syscall

	; Execute string
	; lea rdi, [rel execute]
	; lea rsi, [rel execute]
	; mov rdx, [rel x]
	; dec rdx
	; call _sprintf

	; Execute
	; mov rax, 0x20000004
	; mov rdi, r14 ; stdin?
	; mov rsi, [rel execute]
	; syscall
	; mov rax, 0

.ret:
	leave
	ret

.bad:
	mov rax, 1
	jmp .ret
