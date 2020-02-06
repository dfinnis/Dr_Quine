; whoami?
section .data
self: db "; whoami?%1$csection .data%1$cself: db %2$c%3$s%2$c%1$c%1$csection .text%1$cglobal _main%1$cextern _printf%1$c%1$c_main:%1$cpush rbp%1$cmov rbp, rsp%1$c%1$c; I must express myself%1$clea rdi, [rel self]%1$cmov rsi, 10%1$cmov rdx, 34%1$clea rcx, [rel self]%1$ccall _printf%1$ccall _return%1$c%1$c_return:%1$cleave%1$cret"

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