	.file	"counter.cpp"
	.text
#APP
	.globl _ZSt21ios_base_library_initv
#NO_APP
	.section	.text._ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_
	.type	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_, @function
_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_:
.LFB2251:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2251:
	.size	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_, .-_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_
	.section	.text._ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv,comdat
	.align 2
	.weak	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.type	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, @function
_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv:
.LFB2253:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2253:
	.size	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv, .-_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	.text
	.globl	_Z16iteratedFunctionf
	.type	_Z16iteratedFunctionf, @function
_Z16iteratedFunctionf:
.LFB2276:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movss	%xmm0, -4(%rbp)
	movss	-4(%rbp), %xmm0
	movaps	%xmm0, %xmm1
	mulss	%xmm0, %xmm1
	movss	-4(%rbp), %xmm0
	mulss	%xmm0, %xmm0
	subss	%xmm0, %xmm1
	movss	-4(%rbp), %xmm2
	movss	.LC0(%rip), %xmm0
	mulss	%xmm2, %xmm0
	addss	%xmm1, %xmm0
	movss	-4(%rbp), %xmm2
	movss	.LC1(%rip), %xmm1
	mulss	%xmm2, %xmm1
	subss	%xmm1, %xmm0
	addss	-4(%rbp), %xmm0
	addss	-4(%rbp), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2276:
	.size	_Z16iteratedFunctionf, .-_Z16iteratedFunctionf
	.section	.text._ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,"axG",@progbits,_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE,comdat
	.weak	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.type	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, @function
_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE:
.LFB2279:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	movq	%rax, -16(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	movq	%rax, -24(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2279:
	.size	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE, .-_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	.section	.text._ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,"axG",@progbits,_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv,comdat
	.align 2
	.weak	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.type	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, @function
_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv:
.LFB2280:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2280:
	.size	_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv, .-_ZNKSt6chrono10time_pointINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv
	.section	.rodata
.LC2:
	.string	"Type a number of iterations: "
.LC3:
	.string	"Invalid value"
.LC6:
	.string	"Time for "
.LC7:
	.string	" iterations: "
.LC8:
	.string	" seconds"
.LC9:
	.string	"Accumulated value "
	.text
	.globl	main
	.type	main, @function
main:
.LFB2277:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	leaq	.LC2(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	leaq	-72(%rbp), %rax
	movq	%rax, %rsi
	leaq	_ZSt3cin(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSirsERi@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	16+_ZSt3cin(%rip), %rax
	movq	%rax, %rdi
	call	_ZNKSt9basic_iosIcSt11char_traitsIcEE4failEv@PLT
	testb	%al, %al
	je	.L12
	leaq	.LC3(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movl	$1, %eax
	jmp	.L16
.L12:
	movss	.LC4(%rip), %xmm0
	movss	%xmm0, -60(%rbp)
	pxor	%xmm0, %xmm0
	movss	%xmm0, -68(%rbp)
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -56(%rbp)
	movl	$0, -64(%rbp)
	jmp	.L14
.L15:
	movl	-60(%rbp), %eax
	movd	%eax, %xmm0
	call	_Z16iteratedFunctionf
	movss	-68(%rbp), %xmm1
	addss	%xmm1, %xmm0
	movss	%xmm0, -68(%rbp)
	addl	$1, -64(%rbp)
.L14:
	movl	-72(%rbp), %eax
	cmpl	%eax, -64(%rbp)
	jl	.L15
	call	_ZNSt6chrono3_V212system_clock3nowEv@PLT
	movq	%rax, -48(%rbp)
	leaq	-56(%rbp), %rdx
	leaq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chronomiINS_3_V212system_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE
	movq	%rax, -32(%rbp)
	leaq	-32(%rbp), %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	leaq	.LC6(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cout(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movl	-72(%rbp), %eax
	movl	%eax, %esi
	movq	%rdx, %rdi
	call	_ZNSolsEi@PLT
	movq	%rax, %rdx
	leaq	.LC7(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rbx
	leaq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	movq	%xmm0, %rax
	movq	%rax, %xmm0
	movq	%rbx, %rdi
	call	_ZNSolsEd@PLT
	movq	%rax, %rdx
	leaq	.LC8(%rip), %rax
	movq	%rax, %rsi
	movq	%rdx, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	leaq	.LC9(%rip), %rax
	movq	%rax, %rsi
	leaq	_ZSt4cerr(%rip), %rax
	movq	%rax, %rdi
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@PLT
	movq	%rax, %rdx
	movl	-68(%rbp), %eax
	movd	%eax, %xmm0
	movq	%rdx, %rdi
	call	_ZNSolsEf@PLT
	movq	_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@GOTPCREL(%rip), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSolsEPFRSoS_E@PLT
	movl	$0, %eax
.L16:
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L17
	call	__stack_chk_fail@PLT
.L17:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2277:
	.size	main, .-main
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC5IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, @function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE:
.LFB2567:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	movsd	%xmm0, -16(%rbp)
	leaq	-16(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	movq	%xmm0, %rax
	movq	-24(%rbp), %rdx
	movq	%rax, (%rdx)
	nop
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2567:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.set	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IlS1_ILl1ELl1000000000EEvEERKNS0_IT_T0_EE
	.section	.text._ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,"axG",@progbits,_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_,comdat
	.weak	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.type	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, @function
_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_:
.LFB2569:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$72, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -72(%rbp)
	movq	%rsi, -80(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-72(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -56(%rbp)
	leaq	-56(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	movq	%rax, %rbx
	movq	-80(%rbp), %rax
	movq	(%rax), %rax
	movq	%rax, -48(%rbp)
	leaq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	subq	%rax, %rbx
	movq	%rbx, %rdx
	movq	%rdx, -40(%rbp)
	leaq	-40(%rbp), %rdx
	leaq	-32(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_
	movq	-32(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L22
	call	__stack_chk_fail@PLT
.L22:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2569:
	.size	_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_, .-_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_
	.section	.text._ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv,"axG",@progbits,_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv,comdat
	.align 2
	.weak	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	.type	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv, @function
_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv:
.LFB2570:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movsd	(%rax), %xmm0
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2570:
	.size	_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv, .-_ZNKSt6chrono8durationIdSt5ratioILl1ELl1EEE5countEv
	.section	.text._ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,"axG",@progbits,_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE,comdat
	.weak	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.type	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, @function
_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE:
.LFB2687:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2687:
	.size	_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE, .-_ZNSt6chrono13duration_castINS_8durationIdSt5ratioILl1ELl1EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsrNS_13__is_durationIT_EE5valueES8_E4typeERKNS1_IT0_T1_EE
	.section	.text._ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE,"axG",@progbits,_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE,comdat
	.weak	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	.type	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE, @function
_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE:
.LFB2757:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv
	pxor	%xmm0, %xmm0
	cvtsi2sdq	%rax, %xmm0
	movsd	.LC10(%rip), %xmm1
	divsd	%xmm1, %xmm0
	movsd	%xmm0, -24(%rbp)
	leaq	-24(%rbp), %rdx
	leaq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_
	movsd	-16(%rbp), %xmm0
	movq	-8(%rbp), %rax
	subq	%fs:40, %rax
	je	.L29
	call	__stack_chk_fail@PLT
.L29:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2757:
	.size	_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE, .-_ZNSt6chrono20__duration_cast_implINS_8durationIdSt5ratioILl1ELl1EEEES2_ILl1ELl1000000000EEdLb1ELb0EE6__castIlS5_EES4_RKNS1_IT_T0_EE
	.section	.text._ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_,"axG",@progbits,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC5IdvEERKT_,comdat
	.align 2
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.type	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_, @function
_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_:
.LFB2814:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movsd	(%rax), %xmm0
	movq	-8(%rbp), %rax
	movsd	%xmm0, (%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2814:
	.size	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_, .-_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.weak	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_
	.set	_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC1IdvEERKT_,_ZNSt6chrono8durationIdSt5ratioILl1ELl1EEEC2IdvEERKT_
	.section	.rodata
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.type	_ZSt12__is_ratio_vISt5ratioILl1ELl1000000000EEE, @object
	.size	_ZSt12__is_ratio_vISt5ratioILl1ELl1000000000EEE, 1
_ZSt12__is_ratio_vISt5ratioILl1ELl1000000000EEE:
	.byte	1
	.type	_ZSt12__is_ratio_vISt5ratioILl1ELl1EEE, @object
	.size	_ZSt12__is_ratio_vISt5ratioILl1ELl1EEE, 1
_ZSt12__is_ratio_vISt5ratioILl1ELl1EEE:
	.byte	1
	.type	_ZSt12__is_ratio_vISt5ratioILl1000000000ELl1EEE, @object
	.size	_ZSt12__is_ratio_vISt5ratioILl1000000000ELl1EEE, 1
_ZSt12__is_ratio_vISt5ratioILl1000000000ELl1EEE:
	.byte	1
	.align 4
.LC0:
	.long	1082130432
	.align 4
.LC1:
	.long	1084227584
	.align 4
.LC4:
	.long	1040522936
	.align 8
.LC10:
	.long	0
	.long	1104006501
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
