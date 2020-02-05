;whoami?
section .data
self: db "self string"

section .text
global start
global _main
extern _printf

_main:
	push rpb
	mov rbp, rsp
	;I must express myself
	lea rdi, [rel fmt]
	call _printf
	call _return

_return:
	leave
	ret