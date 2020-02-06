; I must clone myself, spawning my kid
%define SELF "oh hi%1$cnewline%1$c%2$cquotes%2$c%3$s"
%define DECLARE_MAIN global _main
%define MAIN _main:
section .data
self db SELF, 0
kidsname db "Grace_kid.s", 0
section .text
extern _dprintf
DECLARE_MAIN
MAIN
push rbp
mov rbp, rsp
lea rdi, [rel kidsname]
mov rsi, 0x0202
mov rax, 0x2000005
syscall
mov rdi, rax
lea rsi, [rel self]
mov rdx, 10
mov rcx, 34
lea r8, [rel self]
call _dprintf
leave
ret