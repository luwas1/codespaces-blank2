.section .bss
.globl ram
.lcomm ram, 256

.section .text
.globl fill_ram

fill_ram:
    lea ram+0x50(%rip), %rbx
    mov $9, %rcx

clear_loop:
    movb $0x00, (%rbx)
    inc %rbx
    dec %rcx
    jne clear_loop

    ret

.section .note.GNU-stack,"",@progbits
