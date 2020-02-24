; LSCONST.ASM INCLUDED AT START OF LS.ASM

; START OF SEGMENT SRAM OFFSETS FROM SRAM:00200000 TO 0:00204000
SRAM_STRING: equ $200011
SRAM_SAVES: equ $200031
; END OF SEGMENT SRAM OFFSETS FROM SRAM:00200000 TO 0:00204000

; START OF SEGMENT Z80 OFFSETS FROM Z80:00A00000 TO IO:00A10000
Z80_Memory: equ $A00000
Z80_UNKNOWN: equ $A01283
Z80_CHANNEL_1_INACTIVE: equ $A01303
Z80_FADE_IN_DATA: equ $A01FFC
Z80_MUSIC_LEVEL: equ $A01FFD
Z80_SOUND_COMMAND: equ $A01FFF
; END OF SEGMENT Z80 OFFSETS FROM Z80:00A00000 TO IO:00A10000

; START OF SEGMENT IO OFFSETS FROM IO:00A10000 TO Control:00A11000
HW_Info: equ $A10001
DATA1: equ $A10003
DATA2: equ $A10005
DATA3: equ $A10007
CTRL1: equ $A10008
CTRL1_BIS: equ $A10009
CTRL2: equ $A1000B
CTRL3: equ $A1000C
CTRL3_BIS: equ $A1000D
TxDATA1: equ $A1000F
RxDATA1: equ $A10011
SCTRL1: equ $A10013
TxDATA2: equ $A10015
RxDATA2: equ $A10017
SCTRL2: equ $A10019
TxDATA3: equ $A1001B
RxDATA3: equ $A1001D
SCTRL3: equ $A1001F
; END OF SEGMENT IO OFFSETS FROM IO:00A10000 TO Control:00A11000

; START OF SEGMENT Control OFFSETS FROM Control:00A11000 TO 0:00A12000
MemMode: equ $A11000
Z80BusReq: equ $A11100
Z80BusReset: equ $A11200
; END OF SEGMENT Control OFFSETS FROM Control:00A11000 TO 0:00A12000

; START OF SEGMENT VDP OFFSETS FROM VDP:00C00000 TO 0:00C00012
VDP_Data: equ $C00000
VDP_Control: equ $C00004
HV_Counter: equ $C00008
PSG: equ $C00011
; END OF SEGMENT VDP OFFSETS FROM VDP:00C00000 TO 0:00C00012

; START OF SEGMENT RAM OFFSETS FROM RAM:00FF0000 TO 0:01000000
byte_FF0000: equ $FF0000
SAVE_SLOT: equ $FF0010
PALETTE_1_BASE: equ $FF0080
word_FF0082: equ $FF0082
byte_FF0084: equ $FF0084
byte_FF0094: equ $FF0094
word_FF009E: equ $FF009E
byte_FF00A0: equ $FF00A0
byte_FF00A2: equ $FF00A2
byte_FF00A4: equ $FF00A4
byte_FF00AC: equ $FF00AC
byte_FF00B0: equ $FF00B0
word_FF00BA: equ $FF00BA
word_FF00BC: equ $FF00BC
byte_FF00C0: equ $FF00C0
byte_FF00D6: equ $FF00D6
word_FF00DA: equ $FF00DA
word_FF00DC: equ $FF00DC
byte_FF00E0: equ $FF00E0
word_FF00E4: equ $FF00E4
word_FF00E6: equ $FF00E6
word_FF00E8: equ $FF00E8
word_FF00EA: equ $FF00EA
word_FF00F0: equ $FF00F0
word_FF00F2: equ $FF00F2
byte_FF00F4: equ $FF00F4
word_FF00F6: equ $FF00F6
word_FF00FE: equ $FF00FE
HORIZONTAL_SCROLL_DATA: equ $FF0100
byte_FF0160: equ $FF0160
VERTICAL_SCROLL_DATA: equ $FF0500
SPRITE_TABLE: equ $FF0550
byte_FF0552: equ $FF0552
word_FF0554: equ $FF0554
word_FF0556: equ $FF0556
byte_FF0558: equ $FF0558
word_FF0560: equ $FF0560
byte_FF0562: equ $FF0562
word_FF0564: equ $FF0564
word_FF0566: equ $FF0566
byte_FF0568: equ $FF0568
byte_FF0570: equ $FF0570
word_FF0576: equ $FF0576
word_FF0586: equ $FF0586
word_FF0588: equ $FF0588
word_FF058E: equ $FF058E
byte_FF0590: equ $FF0590
byte_FF05B0: equ $FF05B0
byte_FF05CB: equ $FF05CB
byte_FF05D0: equ $FF05D0
byte_FF0640: equ $FF0640
byte_FF07C3: equ $FF07C3
word_FF07C8: equ $FF07C8
byte_FF07CA: equ $FF07CA
word_FF07CC: equ $FF07CC
word_FF07CE: equ $FF07CE
DMA_QUEUE: equ $FF07D0
VDP_COMMAND_QUEUE: equ $FF0CD0
PALETTE_1_CURRENT: equ $FF0ED0
word_FF0ED2: equ $FF0ED2
dword_FF0ED4: equ $FF0ED4
dword_FF0ED8: equ $FF0ED8
dword_FF0EDC: equ $FF0EDC
dword_FF0EE0: equ $FF0EE0
dword_FF0EE4: equ $FF0EE4
dword_FF0EE8: equ $FF0EE8
byte_FF0EEC: equ $FF0EEC
word_FF0F0A: equ $FF0F0A
word_FF0F0C: equ $FF0F0C
word_FF0F2A: equ $FF0F2A
word_FF0F2C: equ $FF0F2C
word_FF0F34: equ $FF0F34
word_FF0F36: equ $FF0F36
word_FF0F38: equ $FF0F38
word_FF0F3A: equ $FF0F3A
word_FF0F40: equ $FF0F40
word_FF0F42: equ $FF0F42
word_FF0F46: equ $FF0F46
word_FF0F4E: equ $FF0F4E
word_FF0F50: equ $FF0F50
word_FF0F52: equ $FF0F52
byte_FF0F54: equ $FF0F54
WAIT_FOR_MUSIC_END: equ $FF0F7F
MUSIC_STACK_LENGTH: equ $FF0F80
MUSIC_STACK: equ $FF0F81
INTERRUPT_PARAMETERS: equ $FF0F8B
VDP_COMMAND_COUNTER: equ $FF0F8C
DMA_QUEUE_SIZE: equ $FF0F8D
P1_INPUT: equ $FF0F8E
P2_INPUT: equ $FF0F8F
byte_FF0F90: equ $FF0F90
byte_FF0F91: equ $FF0F91
byte_FF0F92: equ $FF0F92
unk_FF0F96: equ $FF0F96
unk_FF0F97: equ $FF0F97
unk_FF0F98: equ $FF0F98
unk_FF0F99: equ $FF0F99
unk_FF0F9A: equ $FF0F9A
unk_FF0F9B: equ $FF0F9B
byte_FF0F9C: equ $FF0F9C
byte_FF0F9D: equ $FF0F9D
SOUND_COMMAND_QUEUE: equ $FF0FA0
DMA_ADDR_MSBYTE: equ $FF0FA8
RNG_SEED: equ $FF0FAA
word_FF0FAC: equ $FF0FAC
word_FF0FAE: equ $FF0FAE
VDP_REG00_STATUS: equ $FF0FB0
VDP_REG01_STATUS: equ $FF0FB2
VDP_REG01_VALUE: equ $FF0FB3
VDP_REG0A_STATUS: equ $FF0FC4
VDP_REG0A_VALUE: equ $FF0FC5
VDP_REG12_STATUS: equ $FF0FD4
VDP_COMMAND_QUEUE_POINTER: equ $FF0FD6
DMA_QUEUE_POINTER: equ $FF0FDA
FRAME_COUNTER: equ $FF0FDE
MINUTE_COUNTER: equ $FF0FE0
HOUR_COUNTER: equ $FF0FE2
MAIN_FLAGS: equ $FF1000
byte_FF1001: equ $FF1001
byte_FF1002: equ $FF1002
byte_FF1003: equ $FF1003
byte_FF1004: equ $FF1004
byte_FF1005: equ $FF1005
byte_FF1007: equ $FF1007
byte_FF1008: equ $FF1008
byte_FF1009: equ $FF1009
word_FF100A: equ $FF100A
byte_FF100C: equ $FF100C
byte_FF1012: equ $FF1012
byte_FF1013: equ $FF1013
byte_FF1014: equ $FF1014
byte_FF1015: equ $FF1015
byte_FF1016: equ $FF1016
byte_FF1017: equ $FF1017
dword_FF1020: equ $FF1020
word_FF1024: equ $FF1024
byte_FF1026: equ $FF1026
byte_FF1027: equ $FF1027
byte_FF1028: equ $FF1028
byte_FF1029: equ $FF1029
byte_FF102A: equ $FF102A
byte_FF102B: equ $FF102B
byte_FF1031: equ $FF1031
byte_FF1038: equ $FF1038
byte_FF1039: equ $FF1039
byte_FF103A: equ $FF103A
byte_FF103B: equ $FF103B
byte_FF103C: equ $FF103C
INVENTORY_FLAGS: equ $FF1040
CHEST_FLAGS: equ $FF1080
VISITED_MAP_FLAGS: equ $FF10C0
byte_FF1124: equ $FF1124
byte_FF1125: equ $FF1125
word_FF1126: equ $FF1126
byte_FF1128: equ $FF1128
byte_FF1129: equ $FF1129
byte_FF112A: equ $FF112A
TEXT_LINE_COMPRESSED_LENGTH: equ $FF112B
byte_FF112C: equ $FF112C
byte_FF112D: equ $FF112D
byte_FF112E: equ $FF112E
byte_FF112F: equ $FF112F
byte_FF1130: equ $FF1130
byte_FF1131: equ $FF1131
byte_FF1132: equ $FF1132
byte_FF1133: equ $FF1133
byte_FF1134: equ $FF1134
byte_FF113C: equ $FF113C
byte_FF113D: equ $FF113D
byte_FF113E: equ $FF113E
byte_FF113F: equ $FF113F
byte_FF1140: equ $FF1140
byte_FF1141: equ $FF1141
byte_FF1142: equ $FF1142
byte_FF1143: equ $FF1143
byte_FF1144: equ $FF1144
byte_FF1145: equ $FF1145
STATUS_BITMAP: equ $FF1146
byte_FF1147: equ $FF1147
byte_FF1148: equ $FF1148
byte_FF1149: equ $FF1149
byte_FF114A: equ $FF114A
byte_FF114B: equ $FF114B
byte_FF114C: equ $FF114C
byte_FF114D: equ $FF114D
byte_FF114E: equ $FF114E
byte_FF114F: equ $FF114F
byte_FF1150: equ $FF1150
byte_FF1151: equ $FF1151
byte_FF1152: equ $FF1152
byte_FF1153: equ $FF1153
byte_FF1154: equ $FF1154
byte_FF1155: equ $FF1155
MUSIC_INDEX: equ $FF1156
byte_FF1157: equ $FF1157
byte_FF1158: equ $FF1158
byte_FF1159: equ $FF1159
byte_FF115A: equ $FF115A
word_FF1180: equ $FF1180
word_FF1182: equ $FF1182
word_FF1184: equ $FF1184
byte_FF1186: equ $FF1186
word_FF1192: equ $FF1192
word_FF1194: equ $FF1194
word_FF1196: equ $FF1196
word_FF1198: equ $FF1198
word_FF119A: equ $FF119A
word_FF119C: equ $FF119C
byte_FF119E: equ $FF119E
byte_FF11DE: equ $FF11DE
PLAYER_X: equ $FF1200
PLAYER_Y: equ $FF1202
CURRENT_MAP: equ $FF1204
word_FF1206: equ $FF1206
unk_FF1208: equ $FF1208
byte_FF1209: equ $FF1209
word_FF120A: equ $FF120A
word_FF120C: equ $FF120C
GOLD: equ $FF120E
byte_FF1210: equ $FF1210
byte_FF1218: equ $FF1218
word_FF12DA: equ $FF12DA
word_FF12DC: equ $FF12DC
byte_FF12DE: equ $FF12DE
byte_FF12DF: equ $FF12DF
word_FF12E0: equ $FF12E0
word_FF12E2: equ $FF12E2
unk_FF12E4: equ $FF12E4
byte_FF12E5: equ $FF12E5
word_FF12E6: equ $FF12E6
word_FF12E8: equ $FF12E8
word_FF12EA: equ $FF12EA
word_FF12EC: equ $FF12EC
word_FF12EE: equ $FF12EE
word_FF12F0: equ $FF12F0
byte_FF1400: equ $FF1400
byte_FF1440: equ $FF1440
word_FF1800: equ $FF1800
dword_FF1804: equ $FF1804
word_FF1808: equ $FF1808
word_FF180C: equ $FF180C
byte_FF1838: equ $FF1838
byte_FF183C: equ $FF183C
dword_FF1840: equ $FF1840
dword_FF1844: equ $FF1844
dword_FF1848: equ $FF1848
dword_FF184C: equ $FF184C
dword_FF1850: equ $FF1850
word_FF1854: equ $FF1854
dword_FF1858: equ $FF1858
word_FF185C: equ $FF185C
byte_FF1860: equ $FF1860
dword_FF1870: equ $FF1870
dword_FF1874: equ $FF1874
dword_FF1878: equ $FF1878
dword_FF187C: equ $FF187C
dword_FF1880: equ $FF1880
byte_FF1900: equ $FF1900
byte_FF1902: equ $FF1902
byte_FF1903: equ $FF1903
byte_FF1904: equ $FF1904
byte_FF1906: equ $FF1906
byte_FF190E: equ $FF190E
byte_FF1916: equ $FF1916
byte_FF1917: equ $FF1917
word_FF1920: equ $FF1920
word_FF1922: equ $FF1922
word_FF1924: equ $FF1924
word_FF1926: equ $FF1926
word_FF1928: equ $FF1928
byte_FF192A: equ $FF192A
byte_FF193E: equ $FF193E
word_FF1A7E: equ $FF1A7E
word_FF1A80: equ $FF1A80
byte_FF1A84: equ $FF1A84
word_FF1B04: equ $FF1B04
word_FF1B08: equ $FF1B08
byte_FF1B0C: equ $FF1B0C
word_FF1BF0: equ $FF1BF0
byte_FF1BF2: equ $FF1BF2
byte_FF1BF3: equ $FF1BF3
byte_FF1BF4: equ $FF1BF4
byte_FF1BFA: equ $FF1BFA
byte_FF1BFB: equ $FF1BFB
word_FF1C00: equ $FF1C00
byte_FF1C80: equ $FF1C80
byte_FF1C88: equ $FF1C88
byte_FF1C96: equ $FF1C96
byte_FF1CA4: equ $FF1CA4
byte_FF1CAE: equ $FF1CAE
byte_FF1CB4: equ $FF1CB4
byte_FF1CBE: equ $FF1CBE
byte_FF1CC2: equ $FF1CC2
byte_FF1D24: equ $FF1D24
byte_FF1D80: equ $FF1D80
byte_FF1E04: equ $FF1E04
byte_FF2600: equ $FF2600
byte_FF2700: equ $FF2700
byte_FF2C00: equ $FF2C00
unk_FF2C01: equ $FF2C01
byte_FF2C02: equ $FF2C02
word_FF2C04: equ $FF2C04
word_FF2C06: equ $FF2C06
byte_FF2C08: equ $FF2C08
byte_FF2C0A: equ $FF2C0A
byte_FF2C0C: equ $FF2C0C
byte_FF2C0E: equ $FF2C0E
byte_FF2C10: equ $FF2C10
byte_FF2C18: equ $FF2C18
byte_FF2C1A: equ $FF2C1A
byte_FF2C1C: equ $FF2C1C
byte_FF2C52: equ $FF2C52
byte_FF2C56: equ $FF2C56
byte_FF2C5C: equ $FF2C5C
byte_FF2C7A: equ $FF2C7A
byte_FF2C84: equ $FF2C84
byte_FF2D40: equ $FF2D40
byte_FF2F76: equ $FF2F76
byte_FF2F9A: equ $FF2F9A
byte_FF3338: equ $FF3338
byte_FF34C2: equ $FF34C2
byte_FF3562: equ $FF3562
byte_FF3900: equ $FF3900
byte_FF3940: equ $FF3940
byte_FF4103: equ $FF4103
dword_FF5400: equ $FF5400
byte_FF5404: equ $FF5404
byte_FF5405: equ $FF5405
word_FF540A: equ $FF540A
byte_FF540C: equ $FF540C
word_FF5412: equ $FF5412
dword_FF5414: equ $FF5414
dword_FF5418: equ $FF5418
dword_FF541C: equ $FF541C
word_FF5420: equ $FF5420
word_FF5422: equ $FF5422
word_FF5424: equ $FF5424
word_FF5426: equ $FF5426
dword_FF5428: equ $FF5428
dword_FF542C: equ $FF542C
byte_FF5430: equ $FF5430
byte_FF5438: equ $FF5438
word_FF5439: equ $FF5439
byte_FF543B: equ $FF543B
word_FF543C: equ $FF543C
CURRENT_HP: equ $FF543E
byte_FF5448: equ $FF5448
word_FF5454: equ $FF5454
byte_FF5458: equ $FF5458
word_FF546D: equ $FF546D
byte_FF546F: equ $FF546F
word_FF547C: equ $FF547C
MAX_HP: equ $FF547E
byte_FF5480: equ $FF5480
byte_FF5488: equ $FF5488
byte_FF5489: equ $FF5489
byte_FF548C: equ $FF548C
byte_FF54A0: equ $FF54A0
word_FF54AA: equ $FF54AA
byte_FF54D5: equ $FF54D5
word_FF5500: equ $FF5500
byte_FF5502: equ $FF5502
byte_FF5508: equ $FF5508
byte_FF550C: equ $FF550C
word_FF5512: equ $FF5512
byte_FF552A: equ $FF552A
byte_FF552D: equ $FF552D
word_FF5530: equ $FF5530
byte_FF5539: equ $FF5539
byte_FF553E: equ $FF553E
byte_FF554C: equ $FF554C
byte_FF5580: equ $FF5580
byte_FF5584: equ $FF5584
byte_FF558C: equ $FF558C
byte_FF55A1: equ $FF55A1
word_FF55BE: equ $FF55BE
byte_FF55C8: equ $FF55C8
byte_FF55CC: equ $FF55CC
byte_FF5600: equ $FF5600
byte_FF560C: equ $FF560C
word_FF562A: equ $FF562A
word_FF563E: equ $FF563E
byte_FF564C: equ $FF564C
byte_FF5680: equ $FF5680
byte_FF568C: equ $FF568C
word_FF56BE: equ $FF56BE
byte_FF56CC: equ $FF56CC
byte_FF570C: equ $FF570C
byte_FF578C: equ $FF578C
byte_FF580C: equ $FF580C
byte_FF5880: equ $FF5880
byte_FF588C: equ $FF588C
word_FF58BE: equ $FF58BE
byte_FF58CC: equ $FF58CC
byte_FF5900: equ $FF5900
byte_FF5A00: equ $FF5A00
byte_FF5C02: equ $FF5C02
byte_FF5C04: equ $FF5C04
byte_FF5C5E: equ $FF5C5E
byte_FF5C82: equ $FF5C82
byte_FF5CB8: equ $FF5CB8
byte_FF5D4E: equ $FF5D4E
byte_FF7C02: equ $FF7C02
byte_FF7D80: equ $FF7D80
byte_FF7D82: equ $FF7D82
byte_FF7E06: equ $FF7E06
byte_FF8000: equ $FF8000
byte_FF8488: equ $FF8488
byte_FF8608: equ $FF8608
byte_FF8788: equ $FF8788
byte_FFA6CA: equ $FFA6CA
byte_FFD192: equ $FFD192
byte_FFE574: equ $FFE574
byte_FFE608: equ $FFE608
byte_FFE69C: equ $FFE69C
byte_FFFC5A: equ $FFFC5A
dword_FFFFF8: equ $FFFFF8
dword_FFFFFC: equ $FFFFFC
; END OF SEGMENT RAM OFFSETS FROM RAM:00FF0000 TO 0:01000000

