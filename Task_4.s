.section .bss
.globl ram
.lcomm ram, 256

.section .text
.globl fill_ram

fill_ram:
    movb $0, %al
    movb $1, %bl

sum_loop:
    addb %bl, %al
    incb %bl
    cmpb $11, %bl
    jne sum_loop

    movb %al, ram+0x50

    ret

.section .note.GNU-stack,"",@progbits
