; I must clone myself, spawning my kid
%define SELF "here I am"
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
lea rdx, [rel self]
mov rcx, 10
mov r8, 34
call _dprintf
leave
ret