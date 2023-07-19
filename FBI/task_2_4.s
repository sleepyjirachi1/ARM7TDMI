.text
.align 2
.thumb
.thumb_func

@ strcopy (char* dest | r0, const char* src | r1)

main:
    push {r0-r2, lr}
    mov r0, #0xd
    ldr r1, =(0x20370D0)
    ldrh r1, [r1]
    mul r0, r0, r1
    ldr r1, =(0x8247094)
    add r1, r0, r1
    ldr r0, =(0x2021D18)
strcpy:
    ldrb r2, [r1]
    strb r2, [r0]
    add r0, r0, #0x1
    add r1, r1, #0x1
    cmp r2, #0xff
    bne strcpy
end:
    pop {r0-r2, pc}

.align 2
