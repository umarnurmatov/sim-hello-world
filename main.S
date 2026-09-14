.section .rodata

msg:  .ascii "hello world!"
      .equ msg_len, . - msg

.section .text
.global _start

_start:
      li a7, 0x40     # syscall: write
      li a0, 1        # fd
      la a1, msg      # buf
      li a2, msg_len  # count
      ecall

      li a7, 0x5d     # syscall: exit
      li a0, 0        # error_code
      ecall
