;whoami?
section .data
self: db "self string"

section .text
global _main
extern _printf

_main:
		push rbp
		mov rbp, rsp
		;I must express myself
		lea rdi, [rel self]
		call _printf
		call _return

_return:
		leave
		ret