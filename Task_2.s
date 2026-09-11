.section .bss
.globl ram
.lcomm ram, 256

.section .text
.globl fill_ram

fill_ram:
    lea ram+0x50(%rip), %rbx
    mov $9, %rcx

loop_fill:
    movb $0xFF, (%rbx)
    inc %rbx
    dec %rcx
    jne loop_fill

    ret

.section .note.GNU-stack,"",@progbits
