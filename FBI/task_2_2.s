.text
.align 2
.thumb
.thumb_func

main:
    push {lr}
    lsr r0, r0, #0x10
    lsl r0, r0, #0x10
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    add r0, r0, r1 @ same as orr r0, r0, r1 in this case
    pop {pc}

.align 2
