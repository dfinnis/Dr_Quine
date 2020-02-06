section .data
selfevolved: db "I am Sully"
;name:


section .text
global _main
extern _printf

_main:
		push rbp
		mov rbp, rsp
		;I must express myself
		lea rdi, [rel selfevolved]
		call _printf
		call _return

_return:
		leave
		ret