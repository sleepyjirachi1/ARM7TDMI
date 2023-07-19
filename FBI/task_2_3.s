/*  Copying FF Terminated Strings from the Move Name Table into RAM  */
.text
.align 2
.thumb
.thumb_func

main:
    push {r0-r2, lr}
    mov r0, #0xd
    ldr r1, =(0x20370D0)
    ldrh r1, [r1]
    mul r0, r0, r1
    ldr r1, =(0x8247094)
    add r1, r0, r1
    ldr r0, =(0x2021D18)
    ldr r2, =(0x8008D84 +1)
    bl linker
    pop {r0-r2, pc}
linker:
    bx r2

.align 2
