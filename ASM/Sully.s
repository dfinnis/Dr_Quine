section .data
self: db "section .data%1$cself: db %2$c%3$s%2$c,0%1$cfilename: db %2$cSully_%%d.s%2$c,0%1$ccompile: db %2$cnasm -f macho64 Sully_%%1$d.s; gcc Sully_%%1$d.o -o Sully_%%1$d%2$c,0%1$cexecute: db %2$c./Sully_%%1$d%2$c,0%1$cinitial: db %2$cSully.s%2$c,0%1$cfilename_str: times 100 db 0%1$cexecute_str: times 100 db 0%1$ccompile_str: times 100 db 0%1$cMY_FILENAME db __FILE__, 0%1$c%1$csection .text%1$cglobal _start%1$cglobal _main%1$cextern _system%1$cextern _dprintf%1$cextern _sprintf%1$cextern _strcmp%1$c%1$c_start:%1$c_main:%1$c	push rbp%1$c	mov rbp, rsp%1$c%1$c	; Establish x%1$c	mov r12, %4$d%1$c	lea rdi, [rel initial]%1$c	lea rsi, [rel MY_FILENAME]%1$c	call _strcmp%1$c	test rax, rax%1$c	jz .dec%1$c	dec r12%1$c%1$c.dec:%1$c	; Create filename%1$c	lea rdi, [rel filename_str]%1$c	lea rsi, [rel filename]%1$c	mov rdx, r12%1$c	call _sprintf%1$c%1$c	; Open file%1$c	mov rax, 0x2000005		; Open file syscall%1$c	lea rdi, [rel filename_str]%1$c	mov rsi, 03001o			; Create, write only%1$c	mov rdx, 0644o			; Permissions%1$c	syscall%1$c	cmp rax, 0%1$c	jb .ret%1$c%1$c	; Print self in file%1$c	mov rdi, rax%1$c	lea rsi, [rel self]%1$c	mov rdx, 10%1$c	mov rcx, 34%1$c	lea r8, [rel self]%1$c	mov r9, r12%1$c	call _dprintf%1$c%1$c	; Close file%1$c	mov rax, 0x20000006		; Close file syscall%1$c	syscall%1$c%1$c	; Compile%1$c	lea rdi, [rel compile_str]%1$c	lea rsi, [rel compile]%1$c	mov rdx, r12%1$c	call _sprintf%1$c	lea rdi, [rel compile_str]%1$c	call _system%1$c%1$c	; Stop at Sully_0%1$c	cmp r12, 0%1$c	jle .ret%1$c%1$c	; Execute%1$c	lea rdi, [rel execute_str]%1$c	lea rsi, [rel execute]%1$c	mov rdx, r12%1$c	call _sprintf%1$c	lea rdi, [rel execute_str]%1$c	call _system%1$c%1$c.ret:%1$c	leave%1$c	ret%1$c",0
filename: db "Sully_%d.s",0
compile: db "nasm -f macho64 Sully_%1$d.s; gcc Sully_%1$d.o -o Sully_%1$d",0
execute: db "./Sully_%1$d",0
initial: db "Sully.s",0
filename_str: times 100 db 0
execute_str: times 100 db 0
compile_str: times 100 db 0
MY_FILENAME db __FILE__, 0

section .text
global _start
global _main
extern _system
extern _dprintf
extern _sprintf
extern _strcmp

_start:
_main:
	push rbp
	mov rbp, rsp

	; Establish x
	mov r12, 5
	lea rdi, [rel initial]
	lea rsi, [rel MY_FILENAME]
	call _strcmp
	test rax, rax
	jz .dec
	dec r12

.dec:
	; Create filename
	lea rdi, [rel filename_str]
	lea rsi, [rel filename]
	mov rdx, r12
	call _sprintf

	; Open file
	mov rax, 0x2000005		; Open file syscall
	lea rdi, [rel filename_str]
	mov rsi, 03001o			; Create, write only
	mov rdx, 0644o			; Permissions
	syscall
	cmp rax, 0
	jb .ret

	; Print self in file
	mov rdi, rax
	lea rsi, [rel self]
	mov rdx, 10
	mov rcx, 34
	lea r8, [rel self]
	mov r9, r12
	call _dprintf

	; Close file
	mov rax, 0x20000006		; Close file syscall
	syscall

	; Compile
	lea rdi, [rel compile_str]
	lea rsi, [rel compile]
	mov rdx, r12
	call _sprintf
	lea rdi, [rel compile_str]
	call _system

	; Stop at Sully_0
	cmp r12, 0
	jle .ret

	; Execute
	lea rdi, [rel execute_str]
	lea rsi, [rel execute]
	mov rdx, r12
	call _sprintf
	lea rdi, [rel execute_str]
	call _system

.ret:
	leave
	ret
