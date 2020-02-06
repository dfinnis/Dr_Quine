	.section	__TEXT,__text,regular,pure_instructions
	.globl	_express
	.align	4, 0x90
_express:                               ## @express
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp2:
	.cfi_def_cfa_offset 16
Ltmp3:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp4:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	movl	$10, %esi
	movl	$34, %edx
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rdi
	movq	-8(%rbp), %rcx
	movb	$0, %al
	callq	_printf
	movl	%eax, -12(%rbp)         ## 4-byte Spill
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.globl	_main
	.align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushq	%rbp
Ltmp7:
	.cfi_def_cfa_offset 16
Ltmp8:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp9:
	.cfi_def_cfa_register %rbp
	subq	$16, %rsp
	leaq	L_.str(%rip), %rax
	movl	$0, -4(%rbp)
	movq	%rax, -16(%rbp)
	movq	-16(%rbp), %rdi
	callq	_express
	movl	$0, %eax
	addq	$16, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"# include <stdio.h>%1$c/*%1$c   whoami?%1$c*/%1$cvoid\texpress(char *self){%1$c\tprintf(self,10,34,self);%1$c}%1$c%1$cint\tmain() {%1$c\t/*%1$c\t   I must define and express myself%1$c\t*/%1$c\tchar *self=%2$c%3$s%2$c;%1$c\texpress(self);%1$c\treturn (0);%1$c}"


.subsections_via_symbols
