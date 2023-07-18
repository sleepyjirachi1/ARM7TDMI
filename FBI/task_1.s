.text
.align 2
.thumb
.thumb_func

main:
    push {r0-r1, lr}
    ldr r0, .v8000
    ldr r1, .v800D
    ldrh r0, [r0]
    ldrh r1, [r1]
    add r0, r0, r1
    ldr r1, .v800D
    strh r0, [r1]
    pop {r0-r1, pc}

.align 2

.v8000: .word 0x20370B8
.v800D: .word 0x20370D0
