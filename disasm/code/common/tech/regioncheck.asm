
; ASM FILE code\common\tech\regioncheck.asm :
; 0x11EA64..0x11F314 : Region check code

; =============== S U B R O U T I N E =======================================

CheckRegion:
                
                move.b  #$80,d1
                bne.s   loc_11EA6C
                rts
loc_11EA6C:
                
                move.b  (HW_Info).l,d0  
                andi.b  #$C0,d0
                cmp.b   d0,d1
                bne.s   loc_11EA7C
                rts
loc_11EA7C:
                
                jsr     (j_DisableDisplayAndInterrupts).l
                lea     aDevelopedForUs(pc), a0
                lea     (byte_FF8488).l,a1
                bsr.w   sub_11EB40
                move.b  #$80,d1
                cmpi.b  #$80,d1
                bne.s   loc_11EAAA
                lea     aNtscGenesis(pc), a0
                lea     (byte_FF8608).l,a1
                bsr.w   sub_11EB40
                bra.s   loc_11EAB8
loc_11EAAA:
                
                lea     aPalAndFrenchSe(pc), a0
                lea     (byte_FF8608).l,a1
                bsr.w   sub_11EB40
loc_11EAB8:
                
                lea     aSystems_(pc), a0
                lea     (byte_FF8788).l,a1
                bsr.w   sub_11EB40
                jsr     (j_EnableDisplayAndInterrupts).l
                lea     (byte_FF8000).l,a0
                lea     ($C000).l,a1
                move.w  #$800,d0
                moveq   #2,d1
                jsr     (j_ApplyVIntVramDMA).l
                lea     RegionLockFont(pc), a0
                nop
                lea     ($400).w,a1
                move.w  #$3B0,d0
                moveq   #2,d1
                jsr     (j_ApplyVIntVramDMA).l
                move.w  #$EEE,(word_FF0ED2).l
                clr.l   (dword_FF0ED4).l
                clr.l   (dword_FF0ED8).l
                clr.l   (dword_FF0EDC).l
                clr.l   (dword_FF0EE0).l
                clr.l   (dword_FF0EE4).l
                clr.l   (dword_FF0EE8).l
                clr.l   (byte_FF0EEC).l
                jsr     (j_AppyCRAMDMA).l
                jsr     (j_EnableDMAQueueProcessing).l
loc_11EB38:
                
                jsr     (j_WaitForVInt).l
                bra.s   loc_11EB38

    ; End of function CheckRegion


; =============== S U B R O U T I N E =======================================

sub_11EB40:
                
                clr.w   d0
                move.b  (a0)+,d0
                bne.s   loc_11EB48
                rts
loc_11EB48:
                
                move.w  d0,(a1)+
                bra.s   sub_11EB40

    ; End of function sub_11EB40

aDevelopedForUs:dc.b '  DEVELOPED FOR USE ONLY WITH',0
aNtscGenesis:   dc.b '         NTSC GENESIS',0
aPalAndFrenchSe:dc.b 'PAL AND FRENCH SECAM MEGA DRIVE',0
aSystems_:      dc.b '           SYSTEMS.',0
RegionLockFont: incbin "data/graphics/tech/fonts/regionlockfont.bin"
