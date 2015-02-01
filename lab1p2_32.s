	.file	"lab1_1EH.c"
	.text
	.globl	powerI
	.type	powerI, @function
powerI:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	$1, -4(%ebp)
	movl	$0, -8(%ebp)
	jmp	.L2
.L3:
	movl	-4(%ebp), %eax # acc = acc * base;
	imull	12(%ebp), %eax
	movl	%eax, -4(%ebp)
	addl	$1, -8(%ebp)
.L2:
	movl	-8(%ebp), %eax # for (acc=1,p=0; p < pow; p++)
	cmpl	8(%ebp), %eax
	jl	.L3
	movl	-4(%ebp), %eax # return acc;
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	powerI, .-powerI
	.ident	"GCC: (Debian 4.7.2-5) 4.7.2"
	.section	.note.GNU-stack,"",@progbits
