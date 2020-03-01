
; ASM FILE code\common\maps\maploading.asm :
; 0xCDAE..0xD25C : Map Loading

; =============== S U B R O U T I N E =======================================

DecompressMapData:
                
                movem.l d0-a5,-(sp)
                link    a6,#-$18
                clr.w   d6
                clr.w   d4
                moveq   #7,d7
loc_CDBC:
                
                dbf     d6,loc_CDC4
                moveq   #7,d6
                move.b  (a0)+,d5
loc_CDC4:
                
                add.b   d5,d5
                addx.w  d4,d4
                dbf     d7,loc_CDBC
                move.b  d4,(a1)+
                clr.w   d4
                moveq   #7,d7
loc_CDD2:
                
                dbf     d6,loc_CDDA
                moveq   #7,d6
                move.b  (a0)+,d5
loc_CDDA:
                
                add.b   d5,d5
                addx.w  d4,d4
                dbf     d7,loc_CDD2
                move.b  d4,(a1)+
                clr.w   d4
                moveq   #7,d7
loc_CDE8:
                
                dbf     d6,loc_CDF0
                moveq   #7,d6
                move.b  (a0)+,d5
loc_CDF0:
                
                add.b   d5,d5
                addx.w  d4,d4
                dbf     d7,loc_CDE8
                move.b  d4,(a1)+
                addq.w  #1,d4
                add.w   d4,d4
                clr.w   d3
                moveq   #7,d7
loc_CE02:
                
                dbf     d6,loc_CE0A
                moveq   #7,d6
                move.b  (a0)+,d5
loc_CE0A:
                
                add.b   d5,d5
                addx.w  d3,d3
                dbf     d7,loc_CE02
                addq.w  #1,d3
                lsr.w   #1,d3
                subq.w  #1,d3
                move.b  d3,(a1)+
                addq.w  #1,d3
                add.w   d3,d3
                mulu.w  d4,d3
                lea     (a1,d3.w),a3
                move.l  a1,-4(a6)
                lsr.w   #1,d3
                subq.w  #1,d3
                movea.l a3,a2
                moveq   #0,d0
loc_CE30:
                
                move.w  d0,-(a2)
                dbf     d3,loc_CE30
                clr.w   d0
                moveq   #9,d7
loc_CE3A:
                
                dbf     d6,loc_CE42
                moveq   #7,d6
                move.b  (a0)+,d5
loc_CE42:
                
                add.b   d5,d5
                addx.w  d0,d0
                dbf     d7,loc_CE3A
                move.w  d0,-$16(a6)
                clr.w   d0
                moveq   #9,d7
loc_CE52:
                
                dbf     d6,loc_CE5A
                moveq   #7,d6
                move.b  (a0)+,d5
loc_CE5A:
                
                add.b   d5,d5
                addx.w  d0,d0
                dbf     d7,loc_CE52
                move.w  d0,-$18(a6)
                moveq   #7,d3
                lea     -$14(a6),a2
loc_CE6C:
                
                clr.w   d0
                moveq   #$B,d7
loc_CE70:
                
                dbf     d6,loc_CE78
                moveq   #7,d6
                move.b  (a0)+,d5
loc_CE78:
                
                add.b   d5,d5
                addx.w  d0,d0
                dbf     d7,loc_CE70
                move.w  d0,(a2)+
                dbf     d3,loc_CE6C
                movea.l a1,a2
                subq.w  #2,a2
loc_CE8A:
                
                moveq   #$FFFFFFFF,d1
                moveq   #4,d0
loc_CE8E:
                
                dbf     d6,loc_CE96
                moveq   #7,d6
                move.b  (a0)+,d5
loc_CE96:
                
                add.b   d5,d5
                dbcs    d1,loc_CE8E
                negx.w  d1
                dbf     d1,loc_CEA8
                addq.l  #2,a2
                bra.w   loc_CEC4
loc_CEA8:
                
                lsl.w   d1,d0
                lea     (a2,d0.w),a2
                clr.w   d0
loc_CEB0:
                
                dbf     d6,loc_CEB8
                moveq   #7,d6
                move.b  (a0)+,d5
loc_CEB8:
                
                add.b   d5,d5
                addx.w  d0,d0
                dbf     d1,loc_CEB0
                add.w   d0,d0
                adda.w  d0,a2
loc_CEC4:
                
                cmpa.l  a3,a2
                bge.w   loc_CF94
                dbf     d6,loc_CED2
                moveq   #7,d6
                move.b  (a0)+,d5
loc_CED2:
                
                add.b   d5,d5
                bcs.s   loc_CF0A
                dbf     d6,loc_CEDE
                moveq   #7,d6
                move.b  (a0)+,d5
loc_CEDE:
                
                add.b   d5,d5
                bcs.s   loc_CEF6
                dbf     d6,loc_CEEA
                moveq   #7,d6
                move.b  (a0)+,d5
loc_CEEA:
                
                add.b   d5,d5
                bcs.s   loc_CEF2
                moveq   #$FFFFFFFF,d1
                bra.s   loc_CF4A
loc_CEF2:
                
                moveq   #2,d1
                bra.s   loc_CF4A
loc_CEF6:
                
                dbf     d6,loc_CEFE
                moveq   #7,d6
                move.b  (a0)+,d5
loc_CEFE:
                
                add.b   d5,d5
                bcs.s   loc_CF06
                moveq   #4,d1
                bra.s   loc_CF4A
loc_CF06:
                
                move.w  d4,d1
                bra.s   loc_CF4A
loc_CF0A:
                
                dbf     d6,loc_CF12
                moveq   #7,d6
                move.b  (a0)+,d5
loc_CF12:
                
                add.b   d5,d5
                bcs.s   loc_CF2E
                dbf     d6,loc_CF1E
                moveq   #7,d6
                move.b  (a0)+,d5
loc_CF1E:
                
                add.b   d5,d5
                bcs.s   loc_CF28
                move.w  d4,d1
                add.w   d1,d1
                bra.s   loc_CF4A
loc_CF28:
                
                move.w  d4,d1
                addq.w  #2,d1
                bra.s   loc_CF4A
loc_CF2E:
                
                clr.w   d1
                moveq   #2,d7
loc_CF32:
                
                dbf     d6,loc_CF3A
                moveq   #7,d6
                move.b  (a0)+,d5
loc_CF3A:
                
                add.b   d5,d5
                addx.w  d1,d1
                dbf     d7,loc_CF32
                add.w   d1,d1
                move.w  -$14(a6,d1.w),d1
                add.w   d1,d1
loc_CF4A:
                
                move.w  d1,(a2)
                dbf     d6,loc_CF54
                moveq   #7,d6
                move.b  (a0)+,d5
loc_CF54:
                
                add.b   d5,d5
                bcc.w   loc_CE8A
                clr.w   d0
                dbf     d6,loc_CF64
                moveq   #7,d6
                move.b  (a0)+,d5
loc_CF64:
                
                add.b   d5,d5
                addx.w  d0,d0
                add.w   d0,d0
                movea.l a2,a1
loc_CF6C:
                
                move.w  d0,d3
                add.w   d4,d3
loc_CF70:
                
                adda.w  d3,a1
                move.w  d1,(a1)
                dbf     d6,loc_CF7C
                moveq   #7,d6
                move.b  (a0)+,d5
loc_CF7C:
                
                add.b   d5,d5
                bcs.s   loc_CF70
                dbf     d6,loc_CF88
                moveq   #7,d6
                move.b  (a0)+,d5
loc_CF88:
                
                add.b   d5,d5
                bcc.w   loc_CE8A
                bchg    #1,d0
                bra.s   loc_CF6C
loc_CF94:
                
                movea.l -4(a6),a2
                movea.w -$18(a6),a4
                movea.w -$16(a6),a5
                move.w  #$FFFF,(a3)
loc_CFA4:
                
                move.w  (a2),d0
                bne.s   loc_CFAA
                jmp     (a1)
loc_CFAA:
                
                bmi.s   loc_CFD2
                neg.w   d0
                move.w  d0,d2
                lea     loc_CFB4(pc), a1
loc_CFB4:
                
                move.w  (a2,d2.w),(a2)+
loc_CFB8:
                
                move.w  (a2),d0
                bne.s   loc_CFAA
                move.w  (a2,d2.w),(a2)+
                move.w  (a2),d0
                bne.s   loc_CFAA
                move.w  (a2,d2.w),(a2)+
                move.w  (a2),d0
                bne.s   loc_CFAA
                move.w  (a2,d2.w),(a2)+
                bra.s   loc_CFB8
loc_CFD2:
                
                lea     loc_CFD8(pc), a1
                nop
loc_CFD8:
                
                cmpa.l  a2,a3
                bls.w   loc_D050
                dbf     d6,loc_CFE6
                moveq   #7,d6
                move.b  (a0)+,d5
loc_CFE6:
                
                add.b   d5,d5
                bcc.w   loc_D004
                dbf     d6,loc_CFF4
                moveq   #7,d6
                move.b  (a0)+,d5
loc_CFF4:
                
                add.b   d5,d5
                bcs.s   loc_CFFE
                move.w  a4,(a2)+
                addq.w  #1,a4
                bra.s   loc_CFA4
loc_CFFE:
                
                move.w  a5,(a2)+
                addq.w  #1,a5
                bra.s   loc_CFA4
loc_D004:
                
                dbf     d6,loc_D00C
                moveq   #7,d6
                move.b  (a0)+,d5
loc_D00C:
                
                add.b   d5,d5
                bcs.s   loc_D02C
                clr.w   d0
                move.w  a4,d7
                beq.s   loc_D026
loc_D016:
                
                dbf     d6,loc_D01E
                moveq   #7,d6
                move.b  (a0)+,d5
loc_D01E:
                
                add.b   d5,d5
                addx.w  d0,d0
                lsr.w   #1,d7
                bne.s   loc_D016
loc_D026:
                
                move.w  d0,(a2)+
                bra.w   loc_CFA4
loc_D02C:
                
                clr.w   d0
                move.w  a5,d7
                sub.w   -$16(a6),d7
                beq.s   loc_D046
loc_D036:
                
                dbf     d6,loc_D03E
                moveq   #7,d6
                move.b  (a0)+,d5
loc_D03E:
                
                add.b   d5,d5
                addx.w  d0,d0
                lsr.w   #1,d7
                bne.s   loc_D036
loc_D046:
                
                add.w   -$16(a6),d0
                move.w  d0,(a2)+
                bra.w   loc_CFA4
loc_D050:
                
                movea.l -4(a6),a1
                lea     $5C94(a1),a1
                movea.l a1,a2
                clr.w   d3
                move.b  (a0)+,d3
                subq.w  #1,d3
                move.w  d3,d4
                clr.w   d5
                move.b  (a0)+,d5
                subq.w  #1,d5
loc_D068:
                
                move.b  (a0)+,d0
                lsl.w   #8,d0
                move.b  (a0)+,d0
                clr.w   d1
                clr.w   d2
loc_D072:
                
                move.b  (a0)+,d1
                add.w   d1,d2
                addq.b  #1,d1
                beq.s   loc_D072
loc_D07A:
                
                move.w  d0,(a2)+
                dbf     d4,loc_D08E
                lea     $94(a1),a1
                movea.l a1,a2
                move.w  d3,d4
                dbf     d5,loc_D08E
                bra.s   loc_D094
loc_D08E:
                
                dbf     d2,loc_D07A
                bra.s   loc_D068
loc_D094:
                
                unlk    a6
                movem.l (sp)+,d0-a5
                rts

    ; End of function DecompressMapData


; =============== S U B R O U T I N E =======================================

DecompressMapBlocks:
                
                movem.l d1-a5,-(sp)
                link    a6,#-$20
                clr.w   d6
                clr.w   d4
                moveq   #$F,d7
loc_D0AA:
                
                dbf     d6,loc_D0B2
                moveq   #7,d6
                move.b  (a0)+,d5
loc_D0B2:
                
                add.b   d5,d5
                addx.w  d4,d4
                dbf     d7,loc_D0AA
                lsl.w   #2,d4
                lea     -$20(a6),a2
                move.w  #$F,d3
                clr.w   d0
loc_D0C6:
                
                move.w  d0,(a2)+
                dbf     d3,loc_D0C6
                movea.l a1,a2
                clr.w   d3
                clr.w   d7
                bsr.w   sub_D1A4
                dbf     d2,loc_D0E2
                bchg    #$F,d7
                bsr.w   sub_D1A4
loc_D0E2:
                
                add.w   d2,d3
                addq.w  #1,d3
loc_D0E6:
                
                move.w  d7,(a2)+
                dbf     d2,loc_D0E6
                bchg    #$F,d7
                cmp.w   d4,d3
                bcc.s   loc_D0FA
                bsr.w   sub_D1A4
                bra.s   loc_D0E2
loc_D0FA:
                
                movea.l a1,a2
                clr.w   d3
                move.w  #$1000,d7
                bsr.w   sub_D1A4
                dbf     d2,loc_D120
                bsr.w   sub_D1A4
loc_D10E:
                
                addq.w  #1,d3
                add.w   d2,d3
loc_D112:
                
                or.w    d7,(a2)+
                dbf     d2,loc_D112
                cmp.w   d4,d3
                bcc.s   loc_D132
                bsr.w   sub_D1A4
loc_D120:
                
                addq.w  #1,d2
                adda.w  d2,a2
                adda.w  d2,a2
                add.w   d2,d3
                cmp.w   d4,d3
                bcc.s   loc_D132
                bsr.w   sub_D1A4
                bra.s   loc_D10E
loc_D132:
                
                movea.l a1,a2
                clr.w   d3
                move.w  #$800,d7
                bsr.s   sub_D1A4
                dbf     d2,loc_D152
                bsr.s   sub_D1A4
loc_D142:
                
                addq.w  #1,d3
                add.w   d2,d3
loc_D146:
                
                or.w    d7,(a2)+
                dbf     d2,loc_D146
                cmp.w   d4,d3
                bcc.s   loc_D162
                bsr.s   sub_D1A4
loc_D152:
                
                addq.w  #1,d2
                adda.w  d2,a2
                adda.w  d2,a2
                add.w   d2,d3
                cmp.w   d4,d3
                bcc.s   loc_D162
                bsr.s   sub_D1A4
                bra.s   loc_D142
loc_D162:
                
                clr.w   d0
                movea.l a1,a2
                move.w  d4,d3
                lsr.w   #1,d3
                bra.s   loc_D194
loc_D16C:
                
                bsr.s   sub_D1DC
                or.w    d2,(a2)+
                dbf     d6,loc_D178
                moveq   #7,d6
                move.b  (a0)+,d5
loc_D178:
                
                add.b   d5,d5
                bcs.s   loc_D180
                bsr.s   sub_D1DC
                bra.s   loc_D192
loc_D180:
                
                andi.w  #$7FF,d2
                btst    #3,-2(a2)
                bne.s   loc_D190
                addq.w  #1,d2
                bra.s   loc_D192
loc_D190:
                
                subq.w  #1,d2
loc_D192:
                
                or.w    d2,(a2)+
loc_D194:
                
                dbf     d3,loc_D16C
                move.w  d4,d0
                lsr.w   #2,d0
                unlk    a6
                movem.l (sp)+,d1-a5
                rts

    ; End of function DecompressMapBlocks


; =============== S U B R O U T I N E =======================================

sub_D1A4:
                
                moveq   #$FFFFFFFF,d1
loc_D1A6:
                
                dbf     d6,loc_D1AE
                moveq   #7,d6
                move.b  (a0)+,d5
loc_D1AE:
                
                add.b   d5,d5
                dbcs    d1,loc_D1A6
                negx.w  d1
                dbf     d1,loc_D1BE
                clr.w   d2
                rts
loc_D1BE:
                
                moveq   #2,d0
                lsl.w   d1,d0
                subq.w  #1,d0
                move.w  d0,d2
                clr.w   d0
loc_D1C8:
                
                dbf     d6,loc_D1D0
                moveq   #7,d6
                move.b  (a0)+,d5
loc_D1D0:
                
                add.b   d5,d5
                addx.w  d0,d0
                dbf     d1,loc_D1C8
                add.w   d0,d2
                rts

    ; End of function sub_D1A4


; =============== S U B R O U T I N E =======================================

sub_D1DC:
                
                dbf     d6,loc_D1E4
                moveq   #7,d6
                move.b  (a0)+,d5
loc_D1E4:
                
                add.b   d5,d5
                bcc.w   loc_D236
                clr.w   d2
                moveq   #3,d7
loc_D1EE:
                
                dbf     d6,loc_D1F6
                moveq   #7,d6
                move.b  (a0)+,d5
loc_D1F6:
                
                add.b   d5,d5
                addx.w  d2,d2
                dbf     d7,loc_D1EE
                move.w  d2,d1
                beq.w   loc_D256
                add.w   d2,d2
                add.w   d0,d2
                andi.w  #$1E,d2
                move.w  -$20(a6,d2.w),-(sp)
                subq.w  #1,d1
loc_D212:
                
                subq.w  #2,d2
                andi.w  #$1E,d2
                move.w  -$20(a6,d2.w),-(sp)
                addq.w  #2,d2
                andi.w  #$1E,d2
                move.w  (sp)+,-$20(a6,d2.w)
                subq.w  #2,d2
                dbf     d1,loc_D212
                move.w  (sp)+,-$20(a6,d0.w)
                move.w  -$20(a6,d0.w),d2
                bra.s   return_D254
loc_D236:
                
                subq.w  #2,d0
                clr.w   d2
                moveq   #$A,d7
loc_D23C:
                
                dbf     d6,loc_D244
                moveq   #7,d6
                move.b  (a0)+,d5
loc_D244:
                
                add.b   d5,d5
                addx.w  d2,d2
                dbf     d7,loc_D23C
                andi.w  #$1F,d0
                move.w  d2,-$20(a6,d0.w)
return_D254:
                
                rts
loc_D256:
                
                move.w  -$20(a6,d0.w),d2
                rts

    ; End of function sub_D1DC

