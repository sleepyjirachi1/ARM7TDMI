/*  Looping Over Imaginary Table of Sellable Item IDs  */
.text
.align 2
.thumb
.thumb_func

main:
    push {r0-r2, lr}
    ldr r0, =(0x8740000)
    mov r2, 0xff
    lsl r2, r2, #0x8
    add r2, #0xff
loop:
    ldrh r1, [r0]
    cmp r1, r2
    beq table_end
    add r0, r0, #0x2
    cmp r1, #0x55
    bne loop
found:
    mov r0, 0x0
    b end
table_end:
    mov r0, 0x1
end:
    pop {r0-r2, pc}

.align 2
