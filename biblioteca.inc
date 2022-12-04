segment .data
  LF equ              0xA
  NULL equ            0xD

  S_EXIT equ          0x1
  R_EXIT equ          0x0

  STD_IN equ          0x0
  STD_OUT equ         0x1
  S_READ  equ         0x3
  S_WRITE equ         0x4

  READ_FILE equ       0x3
  WRITE_FILE equ      0x4
  OPEN_FILE  equ      0x5
  CLOSE_FILE equ      0x6
  CREATE_FILE equ     0x8

  OPEN_READ equ       0x0
  OPEN_WRITE equ      0x1
  OPEN_RW    equ      0x2
  OPEN_CREATE  equ    0x40
  OPEN_APPEND  equ    0x400

  SYS_CALL equ 0x80