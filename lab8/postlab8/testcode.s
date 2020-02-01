	.text
	.intel_syntax noprefix
	.file	"testcode.cpp"
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function __cxx_global_var_init
	.type	__cxx_global_var_init,@function
__cxx_global_var_init:                  # @__cxx_global_var_init
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	movabs	rdi, offset _ZStL8__ioinit
	call	_ZNSt8ios_base4InitC1Ev
	movabs	rdi, offset _ZNSt8ios_base4InitD1Ev
	movabs	rsi, offset _ZStL8__ioinit
	movabs	rdx, offset __dso_handle
	call	__cxa_atexit
	mov	dword ptr [rsp + 4], eax # 4-byte Spill
	pop	rax
	ret
.Lfunc_end0:
	.size	__cxx_global_var_init, .Lfunc_end0-__cxx_global_var_init
	.cfi_endproc
                                        # -- End function
	.p2align	4, 0x90         # -- Begin function __cxx_global_var_init.1
	.type	__cxx_global_var_init.1,@function
__cxx_global_var_init.1:                # @__cxx_global_var_init.1
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	eax, 4
	mov	edi, eax
	call	_Znwm
	mov	rdi, rax
	mov	dword ptr [rax], 3
	mov	qword ptr [intVal], rdi
	pop	rax
	ret
.Lfunc_end1:
	.size	__cxx_global_var_init.1, .Lfunc_end1-__cxx_global_var_init.1
	.cfi_endproc
                                        # -- End function
	.text
	.globl	main                    # -- Begin function main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
.Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception0
# %bb.0:
	sub	rsp, 104
	.cfi_def_cfa_offset 112
	mov	dword ptr [rsp + 100], 0
	mov	eax, 24
	mov	edi, eax
	call	_Znwm
	mov	rdi, rax
	mov	qword ptr [rsp + 24], rax # 8-byte Spill
	call	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	mov	rax, qword ptr [rsp + 24] # 8-byte Reload
	mov	qword ptr [rsp + 88], rax
	mov	rdi, qword ptr [rsp + 88]
	lea	rcx, [rsp + 48]
	mov	qword ptr [rsp + 16], rdi # 8-byte Spill
	mov	rdi, rcx
	mov	qword ptr [rsp + 8], rcx # 8-byte Spill
	call	_ZNSaIcEC1Ev
.Ltmp0:
	mov	edx, offset .L.str
	mov	esi, edx
	lea	rdi, [rsp + 56]
	mov	rdx, qword ptr [rsp + 8] # 8-byte Reload
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EPKcRKS3_
.Ltmp1:
	jmp	.LBB2_1
.LBB2_1:
.Ltmp3:
	lea	rsi, [rsp + 56]
	mov	rdi, qword ptr [rsp + 16] # 8-byte Reload
	call	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10push_frontEOS5_
.Ltmp4:
	jmp	.LBB2_2
.LBB2_2:
	lea	rdi, [rsp + 56]
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
	lea	rdi, [rsp + 48]
	call	_ZNSaIcED1Ev
	xor	eax, eax
	add	rsp, 104
	ret
.LBB2_3:
.Ltmp2:
	mov	ecx, edx
	mov	qword ptr [rsp + 40], rax
	mov	dword ptr [rsp + 36], ecx
	jmp	.LBB2_5
.LBB2_4:
.Ltmp5:
	lea	rdi, [rsp + 56]
	mov	ecx, edx
	mov	qword ptr [rsp + 40], rax
	mov	dword ptr [rsp + 36], ecx
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED1Ev
.LBB2_5:
	lea	rdi, [rsp + 48]
	call	_ZNSaIcED1Ev
# %bb.6:
	mov	rdi, qword ptr [rsp + 40]
	call	_Unwind_Resume
.Lfunc_end2:
	.size	main, .Lfunc_end2-main
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table2:
.Lexception0:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.asciz	"\266\200\200"          # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	52                      # Call site table length
	.long	.Lfunc_begin0-.Lfunc_begin0 # >> Call Site 1 <<
	.long	.Ltmp0-.Lfunc_begin0    #   Call between .Lfunc_begin0 and .Ltmp0
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp0-.Lfunc_begin0    # >> Call Site 2 <<
	.long	.Ltmp1-.Ltmp0           #   Call between .Ltmp0 and .Ltmp1
	.long	.Ltmp2-.Lfunc_begin0    #     jumps to .Ltmp2
	.byte	0                       #   On action: cleanup
	.long	.Ltmp3-.Lfunc_begin0    # >> Call Site 3 <<
	.long	.Ltmp4-.Ltmp3           #   Call between .Ltmp3 and .Ltmp4
	.long	.Ltmp5-.Lfunc_begin0    #     jumps to .Ltmp5
	.byte	0                       #   On action: cleanup
	.long	.Ltmp4-.Lfunc_begin0    # >> Call Site 4 <<
	.long	.Lfunc_end2-.Ltmp4      #   Call between .Ltmp4 and .Lfunc_end2
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev,comdat
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev # -- Begin function _ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev,@function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev: # @_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
.Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception1
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	rdi, qword ptr [rsp + 16]
.Ltmp6:
	call	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
.Ltmp7:
	jmp	.LBB3_1
.LBB3_1:
	add	rsp, 24
	ret
.LBB3_2:
.Ltmp8:
	mov	ecx, edx
	mov	rdi, rax
	mov	dword ptr [rsp + 12], ecx # 4-byte Spill
	call	__clang_call_terminate
.Lfunc_end3:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, .Lfunc_end3-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table3:
.Lexception1:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	21                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	13                      # Call site table length
	.long	.Ltmp6-.Lfunc_begin1    # >> Call Site 1 <<
	.long	.Ltmp7-.Ltmp6           #   Call between .Ltmp6 and .Ltmp7
	.long	.Ltmp8-.Lfunc_begin1    #     jumps to .Ltmp8
	.byte	1                       #   On action: 1
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10push_frontEOS5_,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10push_frontEOS5_,comdat
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10push_frontEOS5_ # -- Begin function _ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10push_frontEOS5_
	.p2align	4, 0x90
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10push_frontEOS5_,@function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10push_frontEOS5_: # @_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10push_frontEOS5_
	.cfi_startproc
# %bb.0:
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	qword ptr [rsp + 32], rdi
	mov	qword ptr [rsp + 24], rsi
	mov	rsi, qword ptr [rsp + 32]
	mov	rdi, rsi
	mov	qword ptr [rsp + 8], rsi # 8-byte Spill
	call	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv
	mov	qword ptr [rsp + 16], rax
	mov	rdi, qword ptr [rsp + 24]
	call	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	mov	rsi, qword ptr [rsp + 16]
	mov	rdi, qword ptr [rsp + 8] # 8-byte Reload
	mov	rdx, rax
	call	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_
	add	rsp, 40
	ret
.Lfunc_end4:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10push_frontEOS5_, .Lfunc_end4-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10push_frontEOS5_
	.cfi_endproc
                                        # -- End function
	.text
	.globl	_Z6addOnePi             # -- Begin function _Z6addOnePi
	.p2align	4, 0x90
	.type	_Z6addOnePi,@function
_Z6addOnePi:                            # @_Z6addOnePi
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rdi, qword ptr [rsp - 8]
	mov	eax, dword ptr [rdi]
	add	eax, 1
	mov	dword ptr [rdi], eax
	ret
.Lfunc_end5:
	.size	_Z6addOnePi, .Lfunc_end5-_Z6addOnePi
	.cfi_endproc
                                        # -- End function
	.globl	_Z9addOneRefRi          # -- Begin function _Z9addOneRefRi
	.p2align	4, 0x90
	.type	_Z9addOneRefRi,@function
_Z9addOneRefRi:                         # @_Z9addOneRefRi
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rdi, qword ptr [rsp - 8]
	mov	eax, dword ptr [rdi]
	add	eax, 1
	mov	dword ptr [rdi], eax
	ret
.Lfunc_end6:
	.size	_Z9addOneRefRi, .Lfunc_end6-_Z9addOneRefRi
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev,comdat
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev # -- Begin function _ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev,@function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev: # @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	rdi, qword ptr [rsp + 16]
	mov	qword ptr [rsp + 8], rdi # 8-byte Spill
	call	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev
	mov	rdi, qword ptr [rsp + 8] # 8-byte Reload
	call	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7_M_initEv
	add	rsp, 24
	ret
.Lfunc_end7:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev, .Lfunc_end7-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text.__clang_call_terminate,"axG",@progbits,__clang_call_terminate,comdat
	.hidden	__clang_call_terminate  # -- Begin function __clang_call_terminate
	.weak	__clang_call_terminate
	.p2align	4, 0x90
	.type	__clang_call_terminate,@function
__clang_call_terminate:                 # @__clang_call_terminate
# %bb.0:
	push	rax
	call	__cxa_begin_catch
	mov	qword ptr [rsp], rax    # 8-byte Spill
	call	_ZSt9terminatev
.Lfunc_end8:
	.size	__clang_call_terminate, .Lfunc_end8-__clang_call_terminate
                                        # -- End function
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev,comdat
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev # -- Begin function _ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev,@function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev: # @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	rdi, qword ptr [rsp + 16]
	mov	rax, rdi
	mov	qword ptr [rsp + 8], rdi # 8-byte Spill
	mov	rdi, rax
	call	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
	xor	esi, esi
	mov	ecx, 24
	mov	edx, ecx
	mov	rax, qword ptr [rsp + 8] # 8-byte Reload
	mov	rdi, rax
	call	memset
	add	rsp, 24
	ret
.Lfunc_end9:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev, .Lfunc_end9-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE10_List_implC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7_M_initEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7_M_initEv,comdat
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7_M_initEv # -- Begin function _ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7_M_initEv
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7_M_initEv,@function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7_M_initEv: # @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7_M_initEv
.Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception2
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	rdi, qword ptr [rsp + 16]
	mov	qword ptr [rdi], rdi
	mov	qword ptr [rdi + 8], rdi
.Ltmp9:
	xor	eax, eax
	mov	esi, eax
	call	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_set_sizeEm
.Ltmp10:
	jmp	.LBB10_1
.LBB10_1:
	add	rsp, 24
	ret
.LBB10_2:
.Ltmp11:
	mov	ecx, edx
	mov	rdi, rax
	mov	dword ptr [rsp + 12], ecx # 4-byte Spill
	call	__clang_call_terminate
.Lfunc_end10:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7_M_initEv, .Lfunc_end10-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE7_M_initEv
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table10:
.Lexception2:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	21                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	13                      # Call site table length
	.long	.Ltmp9-.Lfunc_begin2    # >> Call Site 1 <<
	.long	.Ltmp10-.Ltmp9          #   Call between .Ltmp9 and .Ltmp10
	.long	.Ltmp11-.Lfunc_begin2   #     jumps to .Ltmp11
	.byte	1                       #   On action: 1
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text._ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev,"axG",@progbits,_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev,comdat
	.weak	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev # -- Begin function _ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
	.p2align	4, 0x90
	.type	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev,@function
_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev: # @_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
	pop	rax
	ret
.Lfunc_end11:
	.size	_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev, .Lfunc_end11-_ZNSaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev # -- Begin function _ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev,@function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev: # @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	ret
.Lfunc_end12:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev, .Lfunc_end12-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEC2Ev
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_set_sizeEm,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_set_sizeEm,comdat
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_set_sizeEm # -- Begin function _ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_set_sizeEm
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_set_sizeEm,@function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_set_sizeEm: # @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_set_sizeEm
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rdi, qword ptr [rsp + 16]
	mov	rsi, qword ptr [rsp + 8]
	mov	qword ptr [rsp], rsi    # 8-byte Spill
	call	_ZNSt10_List_nodeImE9_M_valptrEv
	mov	rsi, qword ptr [rsp]    # 8-byte Reload
	mov	qword ptr [rax], rsi
	add	rsp, 24
	ret
.Lfunc_end13:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_set_sizeEm, .Lfunc_end13-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_set_sizeEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10_List_nodeImE9_M_valptrEv,"axG",@progbits,_ZNSt10_List_nodeImE9_M_valptrEv,comdat
	.weak	_ZNSt10_List_nodeImE9_M_valptrEv # -- Begin function _ZNSt10_List_nodeImE9_M_valptrEv
	.p2align	4, 0x90
	.type	_ZNSt10_List_nodeImE9_M_valptrEv,@function
_ZNSt10_List_nodeImE9_M_valptrEv:       # @_ZNSt10_List_nodeImE9_M_valptrEv
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	add	rdi, 16
	call	_ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv
	pop	rcx
	ret
.Lfunc_end14:
	.size	_ZNSt10_List_nodeImE9_M_valptrEv, .Lfunc_end14-_ZNSt10_List_nodeImE9_M_valptrEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv,comdat
	.weak	_ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv # -- Begin function _ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv,@function
_ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv: # @_ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	_ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv
	pop	rcx
	ret
.Lfunc_end15:
	.size	_ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv, .Lfunc_end15-_ZN9__gnu_cxx16__aligned_membufImE6_M_ptrEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv,comdat
	.weak	_ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv # -- Begin function _ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv,@function
_ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv: # @_ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rdi, qword ptr [rsp - 8]
	mov	rax, rdi
	ret
.Lfunc_end16:
	.size	_ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv, .Lfunc_end16-_ZN9__gnu_cxx16__aligned_membufImE7_M_addrEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_,comdat
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_ # -- Begin function _ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_
	.p2align	4, 0x90
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_,@function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_: # @_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_
	.cfi_startproc
# %bb.0:
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	qword ptr [rsp + 32], rsi
	mov	qword ptr [rsp + 24], rdi
	mov	qword ptr [rsp + 16], rdx
	mov	rdx, qword ptr [rsp + 24]
	mov	rdi, qword ptr [rsp + 16]
	mov	qword ptr [rsp], rdx    # 8-byte Spill
	call	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	mov	rdi, qword ptr [rsp]    # 8-byte Reload
	mov	rsi, rax
	call	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_
	mov	qword ptr [rsp + 8], rax
	mov	rax, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rsp + 32]
	mov	rdi, rax
	call	_ZNSt8__detail15_List_node_base7_M_hookEPS0_
	mov	ecx, 1
	mov	esi, ecx
	mov	rax, qword ptr [rsp]    # 8-byte Reload
	mov	rdi, rax
	call	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm
	add	rsp, 40
	ret
.Lfunc_end17:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_, .Lfunc_end17-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9_M_insertIJS5_EEEvSt14_List_iteratorIS5_EDpOT_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv,comdat
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv # -- Begin function _ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv
	.p2align	4, 0x90
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv,@function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv: # @_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	lea	rax, [rsp + 16]
	mov	qword ptr [rsp + 8], rdi
	mov	rdi, qword ptr [rsp + 8]
	mov	rsi, qword ptr [rdi]
	mov	rdi, rax
	call	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE
	mov	rax, qword ptr [rsp + 16]
	add	rsp, 24
	ret
.Lfunc_end18:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv, .Lfunc_end18-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_,"axG",@progbits,_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_,comdat
	.weak	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_ # -- Begin function _ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	.p2align	4, 0x90
	.type	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_,@function
_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_: # @_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rax, qword ptr [rsp - 8]
	ret
.Lfunc_end19:
	.size	_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_, .Lfunc_end19-_ZSt4moveIRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEONSt16remove_referenceIT_E4typeEOS8_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_,"axG",@progbits,_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_,comdat
	.weak	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_ # -- Begin function _ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_
	.p2align	4, 0x90
	.type	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_,@function
_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_: # @_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_
.Lfunc_begin3:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception3
# %bb.0:
	sub	rsp, 104
	.cfi_def_cfa_offset 112
	mov	qword ptr [rsp + 96], rdi
	mov	qword ptr [rsp + 88], rsi
	mov	rsi, qword ptr [rsp + 96]
	mov	rdi, rsi
	mov	qword ptr [rsp + 32], rsi # 8-byte Spill
	call	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv
	mov	qword ptr [rsp + 80], rax
	mov	rdi, qword ptr [rsp + 32] # 8-byte Reload
	call	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv
	mov	qword ptr [rsp + 72], rax
	mov	rsi, qword ptr [rsp + 72]
	mov	rdx, qword ptr [rsp + 80]
	lea	rdi, [rsp + 56]
	call	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_
	mov	rdi, qword ptr [rsp + 72]
	mov	rax, qword ptr [rsp + 80]
.Ltmp12:
	mov	qword ptr [rsp + 24], rdi # 8-byte Spill
	mov	rdi, rax
	call	_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv
.Ltmp13:
	mov	qword ptr [rsp + 16], rax # 8-byte Spill
	jmp	.LBB20_1
.LBB20_1:
	mov	rdi, qword ptr [rsp + 88]
	call	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
.Ltmp14:
	mov	rdi, qword ptr [rsp + 24] # 8-byte Reload
	mov	rsi, qword ptr [rsp + 16] # 8-byte Reload
	mov	rdx, rax
	call	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_
.Ltmp15:
	jmp	.LBB20_2
.LBB20_2:
	lea	rdi, [rsp + 56]
	xor	eax, eax
	mov	esi, eax
	call	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn
	lea	rdi, [rsp + 56]
	mov	rsi, qword ptr [rsp + 80]
	mov	qword ptr [rsp + 8], rax # 8-byte Spill
	mov	qword ptr [rsp], rsi    # 8-byte Spill
	call	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev
	mov	rax, qword ptr [rsp]    # 8-byte Reload
	add	rsp, 104
	ret
.LBB20_3:
.Ltmp16:
	lea	rdi, [rsp + 56]
	mov	ecx, edx
	mov	qword ptr [rsp + 48], rax
	mov	dword ptr [rsp + 44], ecx
	call	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev
# %bb.4:
	mov	rdi, qword ptr [rsp + 48]
	call	_Unwind_Resume
.Lfunc_end20:
	.size	_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_, .Lfunc_end20-_ZNSt7__cxx114listINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE14_M_create_nodeIJS5_EEEPSt10_List_nodeIS5_EDpOT_
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table20:
.Lexception3:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	41                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	39                      # Call site table length
	.long	.Lfunc_begin3-.Lfunc_begin3 # >> Call Site 1 <<
	.long	.Ltmp12-.Lfunc_begin3   #   Call between .Lfunc_begin3 and .Ltmp12
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.long	.Ltmp12-.Lfunc_begin3   # >> Call Site 2 <<
	.long	.Ltmp15-.Ltmp12         #   Call between .Ltmp12 and .Ltmp15
	.long	.Ltmp16-.Lfunc_begin3   #     jumps to .Ltmp16
	.byte	0                       #   On action: cleanup
	.long	.Ltmp15-.Lfunc_begin3   # >> Call Site 3 <<
	.long	.Lfunc_end20-.Ltmp15    #   Call between .Ltmp15 and .Lfunc_end20
	.long	0                       #     has no landing pad
	.byte	0                       #   On action: cleanup
	.p2align	2
                                        # -- End function
	.section	.text._ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE,"axG",@progbits,_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE,comdat
	.weak	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE # -- Begin function _ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	.p2align	4, 0x90
	.type	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE,@function
_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE: # @_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rax, qword ptr [rsp - 8]
	ret
.Lfunc_end21:
	.size	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE, .Lfunc_end21-_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm,comdat
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm # -- Begin function _ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm,@function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm: # @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rdi, qword ptr [rsp + 16]
	mov	rsi, qword ptr [rsp + 8]
	mov	qword ptr [rsp], rsi    # 8-byte Spill
	call	_ZNSt10_List_nodeImE9_M_valptrEv
	mov	rsi, qword ptr [rsp]    # 8-byte Reload
	add	rsi, qword ptr [rax]
	mov	qword ptr [rax], rsi
	add	rsp, 24
	ret
.Lfunc_end22:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm, .Lfunc_end22-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_inc_sizeEm
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv,comdat
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv # -- Begin function _ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv,@function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv: # @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	eax, 1
	mov	esi, eax
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m
	pop	rcx
	ret
.Lfunc_end23:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv, .Lfunc_end23-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_get_nodeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv,"axG",@progbits,_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv,comdat
	.weak	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv # -- Begin function _ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv
	.p2align	4, 0x90
	.type	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv,@function
_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv: # @_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rdi, qword ptr [rsp - 8]
	mov	rax, rdi
	ret
.Lfunc_end24:
	.size	_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv, .Lfunc_end24-_ZNSt7__cxx1110_List_baseINS_12basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE21_M_get_Node_allocatorEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_,"axG",@progbits,_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_,comdat
	.weak	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_ # -- Begin function _ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_
	.p2align	4, 0x90
	.type	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_,@function
_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_: # @_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_
	.cfi_startproc
# %bb.0:
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	qword ptr [rsp + 32], rdi
	mov	qword ptr [rsp + 24], rsi
	mov	qword ptr [rsp + 16], rdx
	mov	rdx, qword ptr [rsp + 32]
	mov	rdi, qword ptr [rsp + 24]
	mov	qword ptr [rsp + 8], rdx # 8-byte Spill
	call	_ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_
	mov	rdx, qword ptr [rsp + 8] # 8-byte Reload
	mov	qword ptr [rdx], rax
	mov	rax, qword ptr [rsp + 16]
	mov	qword ptr [rdx + 8], rax
	add	rsp, 40
	ret
.Lfunc_end25:
	.size	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_, .Lfunc_end25-_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEC2ERS8_PS7_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_,"axG",@progbits,_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_,comdat
	.weak	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_ # -- Begin function _ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_,@function
_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_: # @_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_
	.cfi_startproc
# %bb.0:
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	qword ptr [rsp + 32], rdi
	mov	qword ptr [rsp + 24], rsi
	mov	qword ptr [rsp + 16], rdx
	mov	rdx, qword ptr [rsp + 32]
	mov	rsi, qword ptr [rsp + 24]
	mov	rdi, qword ptr [rsp + 16]
	mov	qword ptr [rsp + 8], rdx # 8-byte Spill
	mov	qword ptr [rsp], rsi    # 8-byte Spill
	call	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	mov	rdi, qword ptr [rsp + 8] # 8-byte Reload
	mov	rsi, qword ptr [rsp]    # 8-byte Reload
	mov	rdx, rax
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_
	add	rsp, 40
	ret
.Lfunc_end26:
	.size	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_, .Lfunc_end26-_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE9constructIS6_JS6_EEEvRS8_PT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv,"axG",@progbits,_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv,comdat
	.weak	_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv # -- Begin function _ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv
	.p2align	4, 0x90
	.type	_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv,@function
_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv: # @_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	add	rdi, 16
	call	_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv
	pop	rcx
	ret
.Lfunc_end27:
	.size	_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv, .Lfunc_end27-_ZNSt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE9_M_valptrEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn,"axG",@progbits,_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn,comdat
	.weak	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn # -- Begin function _ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn
	.p2align	4, 0x90
	.type	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn,@function
_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn: # @_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	qword ptr [rsp - 16], rsi
	mov	rsi, qword ptr [rsp - 8]
	mov	qword ptr [rsi + 8], 0
	mov	rax, rsi
	ret
.Lfunc_end28:
	.size	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn, .Lfunc_end28-_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEaSEDn
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev,"axG",@progbits,_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev,comdat
	.weak	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev # -- Begin function _ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev
	.p2align	4, 0x90
	.type	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev,@function
_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev: # @_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev
.Lfunc_begin4:
	.cfi_startproc
	.cfi_personality 3, __gxx_personality_v0
	.cfi_lsda 3, .Lexception4
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	rdi, qword ptr [rsp + 16]
	cmp	qword ptr [rdi + 8], 0
	mov	qword ptr [rsp + 8], rdi # 8-byte Spill
	je	.LBB29_3
# %bb.1:
	mov	rax, qword ptr [rsp + 8] # 8-byte Reload
	mov	rdi, qword ptr [rax]
	mov	rsi, qword ptr [rax + 8]
.Ltmp17:
	mov	ecx, 1
	mov	edx, ecx
	call	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m
.Ltmp18:
	jmp	.LBB29_2
.LBB29_2:
	jmp	.LBB29_3
.LBB29_3:
	add	rsp, 24
	ret
.LBB29_4:
.Ltmp19:
	mov	ecx, edx
	mov	rdi, rax
	mov	dword ptr [rsp + 4], ecx # 4-byte Spill
	call	__clang_call_terminate
.Lfunc_end29:
	.size	_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev, .Lfunc_end29-_ZNSt15__allocated_ptrISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEED2Ev
	.cfi_endproc
	.section	.gcc_except_table,"a",@progbits
	.p2align	2
GCC_except_table29:
.Lexception4:
	.byte	255                     # @LPStart Encoding = omit
	.byte	3                       # @TType Encoding = udata4
	.byte	21                      # @TType base offset
	.byte	3                       # Call site Encoding = udata4
	.byte	13                      # Call site table length
	.long	.Ltmp17-.Lfunc_begin4   # >> Call Site 1 <<
	.long	.Ltmp18-.Ltmp17         #   Call between .Ltmp17 and .Ltmp18
	.long	.Ltmp19-.Lfunc_begin4   #     jumps to .Ltmp19
	.byte	1                       #   On action: 1
	.byte	1                       # >> Action Record 1 <<
                                        #   Catch TypeInfo 1
	.byte	0                       #   No further actions
                                        # >> Catch TypeInfos <<
	.long	0                       # TypeInfo 1
	.p2align	2
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m # -- Begin function _ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m,@function
_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m: # @_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	xor	eax, eax
	mov	edx, eax
	mov	qword ptr [rsp + 16], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	rsi, qword ptr [rsp + 16]
	mov	rdi, qword ptr [rsp + 8]
	mov	qword ptr [rsp], rdi    # 8-byte Spill
	mov	rdi, rsi
	mov	rsi, qword ptr [rsp]    # 8-byte Reload
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv
	add	rsp, 24
	ret
.Lfunc_end30:
	.size	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m, .Lfunc_end30-_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE8allocateERS8_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv # -- Begin function _ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv,@function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv: # @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv
	.cfi_startproc
# %bb.0:
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	qword ptr [rsp + 32], rdi
	mov	qword ptr [rsp + 24], rsi
	mov	qword ptr [rsp + 16], rdx
	mov	rdi, qword ptr [rsp + 32]
	mov	rdx, qword ptr [rsp + 24]
	mov	qword ptr [rsp + 8], rdx # 8-byte Spill
	call	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeEv
	mov	rdx, qword ptr [rsp + 8] # 8-byte Reload
	cmp	rdx, rax
	jbe	.LBB31_2
# %bb.1:
	call	_ZSt17__throw_bad_allocv
.LBB31_2:
	imul	rdi, qword ptr [rsp + 24], 48
	call	_Znwm
	add	rsp, 40
	ret
.Lfunc_end31:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv, .Lfunc_end31-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateEmPKv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeEv,comdat
	.weak	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeEv # -- Begin function _ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeEv
	.p2align	4, 0x90
	.type	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeEv,@function
_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeEv: # @_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeEv
	.cfi_startproc
# %bb.0:
	movabs	rax, 384307168202282325
	mov	qword ptr [rsp - 8], rdi
	ret
.Lfunc_end32:
	.size	_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeEv, .Lfunc_end32-_ZNK9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_,"axG",@progbits,_ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_,comdat
	.weak	_ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_ # -- Begin function _ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_
	.p2align	4, 0x90
	.type	_ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_,@function
_ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_: # @_ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rax, qword ptr [rsp - 8]
	ret
.Lfunc_end33:
	.size	_ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_, .Lfunc_end33-_ZSt11__addressofISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEPT_RS9_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_ # -- Begin function _ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_,@function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_: # @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_
	.cfi_startproc
# %bb.0:
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	qword ptr [rsp + 32], rdi
	mov	qword ptr [rsp + 24], rsi
	mov	qword ptr [rsp + 16], rdx
	mov	rdx, qword ptr [rsp + 24]
	mov	rdi, qword ptr [rsp + 16]
	mov	qword ptr [rsp + 8], rdx # 8-byte Spill
	call	_ZSt7forwardINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEOT_RNSt16remove_referenceIS6_E4typeE
	mov	rdi, qword ptr [rsp + 8] # 8-byte Reload
	mov	rsi, rax
	call	_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1EOS4_
	add	rsp, 40
	ret
.Lfunc_end34:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_, .Lfunc_end34-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE9constructIS7_JS7_EEEvPT_DpOT0_
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv,comdat
	.weak	_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv # -- Begin function _ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv,@function
_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv: # @_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	mov	qword ptr [rsp], rdi
	mov	rdi, qword ptr [rsp]
	call	_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv
	pop	rcx
	ret
.Lfunc_end35:
	.size	_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv, .Lfunc_end35-_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE6_M_ptrEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv,"axG",@progbits,_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv,comdat
	.weak	_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv # -- Begin function _ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv,@function
_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv: # @_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	rdi, qword ptr [rsp - 8]
	mov	rax, rdi
	ret
.Lfunc_end36:
	.size	_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv, .Lfunc_end36-_ZN9__gnu_cxx16__aligned_membufINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE7_M_addrEv
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m,"axG",@progbits,_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m,comdat
	.weak	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m # -- Begin function _ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m
	.p2align	4, 0x90
	.type	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m,@function
_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m: # @_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m
	.cfi_startproc
# %bb.0:
	sub	rsp, 40
	.cfi_def_cfa_offset 48
	mov	qword ptr [rsp + 32], rdi
	mov	qword ptr [rsp + 24], rsi
	mov	qword ptr [rsp + 16], rdx
	mov	rdx, qword ptr [rsp + 32]
	mov	rsi, qword ptr [rsp + 24]
	mov	rdi, qword ptr [rsp + 16]
	mov	qword ptr [rsp + 8], rdi # 8-byte Spill
	mov	rdi, rdx
	mov	rdx, qword ptr [rsp + 8] # 8-byte Reload
	call	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m
	add	rsp, 40
	ret
.Lfunc_end37:
	.size	_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m, .Lfunc_end37-_ZNSt16allocator_traitsISaISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEE10deallocateERS8_PS7_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m,comdat
	.weak	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m # -- Begin function _ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m
	.p2align	4, 0x90
	.type	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m,@function
_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m: # @_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m
	.cfi_startproc
# %bb.0:
	sub	rsp, 24
	.cfi_def_cfa_offset 32
	mov	qword ptr [rsp + 16], rdi
	mov	qword ptr [rsp + 8], rsi
	mov	qword ptr [rsp], rdx
	mov	rdx, qword ptr [rsp + 8]
	mov	rdi, rdx
	call	_ZdlPv
	add	rsp, 24
	ret
.Lfunc_end38:
	.size	_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m, .Lfunc_end38-_ZN9__gnu_cxx13new_allocatorISt10_List_nodeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE10deallocateEPS8_m
	.cfi_endproc
                                        # -- End function
	.section	.text._ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE,"axG",@progbits,_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE,comdat
	.weak	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE # -- Begin function _ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE
	.p2align	4, 0x90
	.type	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE,@function
_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE: # @_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE
	.cfi_startproc
# %bb.0:
	mov	qword ptr [rsp - 8], rdi
	mov	qword ptr [rsp - 16], rsi
	mov	rsi, qword ptr [rsp - 8]
	mov	rdi, qword ptr [rsp - 16]
	mov	qword ptr [rsi], rdi
	ret
.Lfunc_end39:
	.size	_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE, .Lfunc_end39-_ZNSt14_List_iteratorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2EPNSt8__detail15_List_node_baseE
	.cfi_endproc
                                        # -- End function
	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90         # -- Begin function _GLOBAL__sub_I_testcode.cpp
	.type	_GLOBAL__sub_I_testcode.cpp,@function
_GLOBAL__sub_I_testcode.cpp:            # @_GLOBAL__sub_I_testcode.cpp
	.cfi_startproc
# %bb.0:
	push	rax
	.cfi_def_cfa_offset 16
	call	__cxx_global_var_init
	call	__cxx_global_var_init.1
	pop	rax
	ret
.Lfunc_end40:
	.size	_GLOBAL__sub_I_testcode.cpp, .Lfunc_end40-_GLOBAL__sub_I_testcode.cpp
	.cfi_endproc
                                        # -- End function
	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.hidden	__dso_handle
	.type	intVal,@object          # @intVal
	.bss
	.globl	intVal
	.p2align	3
intVal:
	.quad	0
	.size	intVal, 8

	.type	intVal2,@object         # @intVal2
	.data
	.globl	intVal2
	.p2align	2
intVal2:
	.long	8                       # 0x8
	.size	intVal2, 4

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"word"
	.size	.L.str, 5

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_testcode.cpp

	.ident	"clang version 6.0.0-1ubuntu2 (tags/RELEASE_600/final)"
	.section	".note.GNU-stack","",@progbits
