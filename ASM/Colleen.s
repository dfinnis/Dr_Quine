;whoami?
section .data
self: db "self string"

section .text
global start
global _main
extern _printf

_main:
		push rbp
		mov rbp, rsp
		;I must express myself

		lea rdi, [self]
		call _printf
		call _return

_return:
		leave
		ret