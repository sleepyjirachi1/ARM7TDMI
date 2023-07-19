/*  Load the First Letter of the 20th Move in the Move Name Table  */
.text
.align 2
.thumb
.thumb_func

main:
    push {r0-r1, lr}
    mov r0, #0xd
    mov r1, #0x14
    mul r1, r1, r0
    ldr r0, =(0x8247094)
    add r0, r0, r1
    ldrb r0, [r0]
    pop {r0-r1, pc}

.align 2
