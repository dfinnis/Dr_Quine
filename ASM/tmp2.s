section .data%1$c
self: db %2$c%4$s%2$c,0%1$c
filename: db %2$cSully_%3$cd.s%2$c,0%1$c
cmd: db %2$cnasm -f macho64 Sully_%3$c1$d.s; gcc Sully_%3$c1$d.o -o Sully_%3$c1$d; ./Sully_%3$c1$d%2$c,0%1$c
x: dd 5%1$c
%1$c
section .text%1$c
global _start%1$c
global _main%1$c
extern _system%1$c
extern _dprintf%1$c
extern _sprintf%1$c
%1$c
_start:%1$c
_main:%1$c
	push rbp%1$c
	mov rbp, rsp%1$c
%1$c
	; Create filename%1$c
	lea rdi, [rel filename]%1$c
	lea rsi, [rel filename]%1$c
	mov rdx, [rel x]%1$c
	cmp rdx, 0%1$c
	jle .ret%1$c
	dec rdx%1$c
	call _sprintf%1$c
%1$c
	; Open file%1$c
	mov rax, 0x2000005		; Open file syscall%1$c
	lea rdi, [rel filename]%1$c
	mov rsi, 03001o			; Create, write only%1$c
	mov rdx, 0644o			; Permissions%1$c
	syscall%1$c
%1$c
	; Print self in file%1$c
	mov rdi, rax%1$c
	lea rsi, [rel self]%1$c
	mov rdx, 10%1$c
	mov rcx, 34%1$c
	mov r8, 37%1$c
	lea r9, [rel self]%1$c
	mov r10, [rel x]%1$c
	dec r10%1$c
	call _dprintf%1$c
%1$c
	; Close file%1$c
	mov rax, 0x20000006	; Close file syscall%1$c
	syscall%1$c
	mov rax, 0%1$c
%1$c
	; Create compile and execute command%1$c
	lea rdi, [rel cmd]%1$c
	lea rsi, [rel cmd]%1$c
	mov rdx, [rel x]%1$c
	dec rdx%1$c
	call _sprintf%1$c
%1$c
	; Compile and execute%1$c
	lea rdi, [rel cmd]%1$c
	call _system%1$c
%1$c
.ret:%1$c
	leave%1$c
	ret%1$c
%1$c
.bad:%1$c
	mov rax, 1%1$c
	jmp .ret%1$c
