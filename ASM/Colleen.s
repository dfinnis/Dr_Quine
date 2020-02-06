; whoami?
section .data
self: db "I am Colleen%1$cI can newline%1$c%2$cand also quotes%2$c%1$c"

section .text
global _main
extern _printf

_main:
push rbp
mov rbp, rsp

; I must express myself
lea rdi, [rel self]
mov rsi, 10
mov rdx, 34
lea rcx, [rel self]
call _printf
call _return

_return:
leave
ret