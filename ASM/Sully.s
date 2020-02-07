section .data
self: db "section .data%1$cself: db %2$c%3$s%2$c,0%1$cfilename: db %2$cSully_%%d.s%2$c,0%1$ccmd: db %2$cnasm -f macho64 Sully_%%1$d.s; gcc Sully_%%1$d.o -o Sully_%%1$d; ./Sully_%%1$d%2$c,0%1$cinitial: db %2$cSully_5.s%2$c,0%1$c%1$csection .text%1$cglobal _start%1$cglobal _main%1$cextern _system%1$cextern _dprintf%1$cextern _sprintf%1$c%1$c_start:%1$c_main:%1$c	push rbp%1$c	mov rbp, rsp%1$c%1$c	; Establish x%1$c	mov r12, %4$d%1$c	lea rdi, [rel initial]%1$c	mov rsi, 0%1$c	mov rax, 0x2000021		; Access file syscall%1$c	syscall%1$c%1$c	jb .dec					; Skip decrement x if Sully_5.s doesn't exist%1$c	dec r12%1$c%1$c.dec:%1$c	; Create filename%1$c	lea rdi, [rel filename]%1$c	lea rsi, [rel filename]%1$c	mov rdx, r12%1$c	call _sprintf%1$c%1$c	; Open file%1$c	mov rax, 0x2000005		; Open file syscall%1$c	lea rdi, [rel filename]%1$c	mov rsi, 03001o			; Create, write only%1$c	mov rdx, 0644o			; Permissions%1$c	syscall%1$c%1$c	; Print self in file%1$c	mov rdi, rax%1$c	lea rsi, [rel self]%1$c	mov rdx, 10%1$c	mov rcx, 34%1$c	lea r8, [rel self]%1$c	mov r9, r12%1$c	call _dprintf%1$c%1$c	; Close file%1$c	mov rax, 0x20000006	; Close file syscall%1$c	syscall%1$c	mov rax, 0%1$c%1$c	; Stop self_replicating at 0%1$c	cmp r12, 0%1$c	jle .ret%1$c%1$c	; Create compile and execute command%1$c	lea rdi, [rel cmd]%1$c	lea rsi, [rel cmd]%1$c	mov rdx, r12%1$c	call _sprintf%1$c%1$c	; Compile and execute%1$c	lea rdi, [rel cmd]%1$c	call _system%1$c%1$c.bad:%1$c	mov rax, 1%1$c	jmp .ret%1$c%1$c.ret:%1$c	leave%1$c	ret%1$c",0
filename: db "Sully_%d.s",0
cmd: db "nasm -f macho64 Sully_%1$d.s; gcc Sully_%1$d.o -o Sully_%1$d; ./Sully_%1$d",0
initial: db "Sully_5.s",0

section .text
global _start
global _main
extern _system
extern _dprintf
extern _sprintf

_start:
_main:
	push rbp
	mov rbp, rsp

	; Establish x
	mov r12, 5
	lea rdi, [rel initial]
	mov rsi, 0
	mov rax, 0x2000021		; Access file syscall
	syscall

	jb .dec					; Skip decrement x if Sully_5.s doesn't exist
	dec r12

.dec:
	; Create filename
	lea rdi, [rel filename]
	lea rsi, [rel filename]
	mov rdx, r12
	call _sprintf

	; Open file
	mov rax, 0x2000005		; Open file syscall
	lea rdi, [rel filename]
	mov rsi, 03001o			; Create, write only
	mov rdx, 0644o			; Permissions
	syscall

	; Print self in file
	mov rdi, rax
	lea rsi, [rel self]
	mov rdx, 10
	mov rcx, 34
	lea r8, [rel self]
	mov r9, r12
	call _dprintf

	; Close file
	mov rax, 0x20000006	; Close file syscall
	syscall
	mov rax, 0

	; Stop self_replicating at 0
	cmp r12, 0
	jle .ret

	; Create compile and execute command
	lea rdi, [rel cmd]
	lea rsi, [rel cmd]
	mov rdx, r12
	call _sprintf

	; Compile and execute
	lea rdi, [rel cmd]
	call _system

.bad:
	mov rax, 1
	jmp .ret

.ret:
	leave
	ret
