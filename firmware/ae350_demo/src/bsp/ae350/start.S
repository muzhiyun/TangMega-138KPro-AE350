/*
 * ******************************************************************************************
 * File		: start.S
 * Author	: GowinSemiconductor
 * Chip		: AE350_SOC
 * Function	: AE350_SOC start up assembler
 * ******************************************************************************************
 */

 // No Vectored PLIC

// Includes ---------------------------------------------------------------------------------
#include "core_v5.h"


// Definitions ------------------------------------------------------------------------------

	.section .nds_vector, "ax"

	.global reset_vector

reset_vector:

    li t0, 1000000  #10s
delay_loop:
    nop
    addi t0, t0, -1
    bnez t0, delay_loop
	#li t0, 0   # 将零加载到寄存器 t0
	#csrw mstatus, t0  # 将 t0 的值写入 mstatus 寄存器
	/* Decide whether this is an NMI or cold reset */
	#csrr t0, mcause
	#bnez t0, nmi_handler

	.global _start
	.type _start,@function

_start:
    #csrwi mstatus, 0x0000
	/* Initialize global pointer */
	.option push
	.option norelax
	la gp, __global_pointer$
	.option pop

	/* Initialize stack pointer */
	la t0, _stack
	mv sp, t0

#ifdef __nds_execit
	/* Initialize EXEC.IT table */
	la t0, _ITB_BASE_
	csrw uitb, t0
#endif

#ifdef __riscv_flen
	/* Enable FPU */
	li t0, MSTATUS_FS
	csrrs t0, mstatus, t0

	/* Initialize FCSR */
	fscsr zero
#endif

	/* Initial machine trap-vector Base */
	la t0, trap_entry
	csrw mtvec, t0

	/* Do system low level setup. It must be a leaf function */
	call __platform_init

	/* System reset handler */
	call reset_handler

	/* Infinite loop, if returned accidently */
1:	j 1b

	.weak __platform_init
__platform_init:
	ret

	.weak nmi_handler
nmi_handler:
1:	j 1b

	.weak trap_handler
trap_handler:
1:	j 1b
