
; ASM FILE code\common\tech\gamesaves.asm :
; 0x14F2..0x16B6 : Game save SRAM management

; =============== S U B R O U T I N E =======================================

CheckSRAM:
                enableSram
                lea     (SRAM_STRING).l,a0
                lea     SramCheckString(pc), a1
                moveq   #9,d7
loc_14FE:
                
                move.b  (a1)+,d0
loc_1500:
                
                cmp.b   (a0),d0
                bne.s   InitializeSRAM
                addq.w  #2,a0
                dbf     d7,loc_14FE
                clr.b   d0
                bsr.s   VerifySave
                bsr.s   VerifySave
                bsr.s   VerifySave
                bsr.s   VerifySave
                disableSram
                rts

    ; End of function CheckSRAM


; =============== S U B R O U T I N E =======================================

VerifySave:
                
                bsr.s   VerifyChecksum
                beq.s   loc_151C
                bsr.s   EraseSave
loc_151C:
                
                addq.b  #1,d0
                rts

    ; End of function VerifySave


; =============== S U B R O U T I N E =======================================

InitializeSRAM:
                
                lea     (SRAM_STRING).l,a0
                lea     SramCheckString(pc), a1
                moveq   #9,d7
loc_152C:
                
                move.b  (a1)+,(a0)
                addq.w  #2,a0
                dbf     d7,loc_152C
                clr.b   d0
                bsr.s   EraseSave
                move.b  #1,d0
                bsr.s   EraseSave
                move.b  #2,d0
                bsr.s   EraseSave
                move.b  #3,d0
                bsr.s   EraseSave
                rts

    ; End of function InitializeSRAM


; =============== S U B R O U T I N E =======================================

GetSaveSlot:
                
                move.b  (SAVE_SLOT).l,d0

    ; End of function GetSaveSlot


; =============== S U B R O U T I N E =======================================

EraseSave:
                
                bsr.s   GetSave
                move.w  #$3FF,d7
loc_1558:
                
                clr.b   (a0)
                addq.w  #2,a0
                dbf     d7,loc_1558
                rts

    ; End of function EraseSave

SramCheckString:dc.b 'KAN&MAKIKO'       ; <3

; =============== S U B R O U T I N E =======================================

VerifyChecksum:
                
                bsr.s   GetSave
                clr.w   d1
                move.w  #$3FE,d7
loc_1574:
                
                add.b   (a0),d1
                addq.w  #2,a0
                dbf     d7,loc_1574
                cmp.b   (a0),d1
                rts

    ; End of function VerifyChecksum


; =============== S U B R O U T I N E =======================================

GetSave:
                
                clr.w   d1
                move.b  d0,d1
                mulu.w  #$800,d1
                lea     (SRAM_SAVES).l,a0
                adda.w  d1,a0
                rts

    ; End of function GetSave


; =============== S U B R O U T I N E =======================================

WriteSave:
                
                movem.l d0-d1/d7-a2,-(sp)
                enableSram
                move.b  (SAVE_SLOT).l,d0
                bsr.s   GetSave
                lea     pt_FlagMap(pc), a1
loc_15A2:
                
                movea.l (a1)+,a2
                cmpa.l  #0,a2
                beq.s   loc_15B8
                move.w  (a1)+,d7
loc_15AE:
                
                move.b  (a2)+,(a0)
                addq.w  #2,a0
                dbf     d7,loc_15AE
                bra.s   loc_15A2
loc_15B8:
                
                bsr.s   VerifyChecksum
                move.b  d1,(a0)
                disableSram
                movem.l (sp)+,d0-d1/d7-a2
                rts

    ; End of function WriteSave


; =============== S U B R O U T I N E =======================================

LoadSave:
                
                move.b  (SAVE_SLOT).l,d0
                enableSram
                bsr.s   GetSave
                lea     pt_FlagMap(pc), a1
loc_15CE:
                
                movea.l (a1)+,a2
                cmpa.l  #0,a2
                beq.s   return_15E4
                move.w  (a1)+,d7
loc_15DA:
                
                move.b  (a0),(a2)+
                addq.w  #2,a0
                dbf     d7,loc_15DA
                bra.s   loc_15CE
return_15E4:
                disableSram
                
                rts

    ; End of function LoadSave


; =============== S U B R O U T I N E =======================================

CopySave:
                
                movem.w d1,-(sp)
                enableSram
                conditionalShortBsr   GetSave
                movea.l a0,a1
                movem.w (sp)+,d0
                conditionalShortBsr   GetSave
                move.w  #$3FF,d7
loc_15F8:
                
                move.b  (a1),(a0)
                addq.w  #2,a0
                addq.w  #2,a1
                dbf     d7,loc_15F8
                disableSram
                rts

    ; End of function CopySave


; =============== S U B R O U T I N E =======================================

sub_1604:
                
                enableSram
                lea     pt_FlagMap(pc), a1
                clr.w   d2
loc_160A:
                
                cmpa.l  (a1),a0
                beq.s   loc_1618
                add.w   4(a1),d2
                addq.w  #1,d2
                addq.w  #6,a1
                bra.s   loc_160A
loc_1618:
                
                move.b  (SAVE_SLOT).l,d0
                bsr.w   GetSave
                add.w   d2,d2
                adda.w  d2,a0
                disableSram
                rts

    ; End of function sub_1604

pt_FlagMap:     dc.l MAIN_FLAGS
                dc.b   0
                dc.b $1F
                dc.l INVENTORY_FLAGS
                dc.b   0
                dc.b $3F 
                dc.l CHEST_FLAGS
                dc.b   0
                dc.b $3F 
                dc.l dword_FF5400
                dc.b   0
                dc.b   1
                dc.l byte_FF5404
                dc.b   0
                dc.b   0
                dc.l CURRENT_MAP
                dc.b   0
                dc.b   1
                dc.l GOLD
                dc.b   0
                dc.b   1
                dc.l word_FF543C
                dc.b   0
                dc.b   1
                dc.l CURRENT_HP
                dc.b   0
                dc.b   1
                dc.l word_FF547C        
                dc.b   0
                dc.b   1
                dc.l MAX_HP
                dc.b   0
                dc.b   1
                dc.l VISITED_MAP_FLAGS
                dc.b   0
                dc.b $63 
                dc.l word_FF1BF0
                dc.b   0
                dc.b   1
                dc.l byte_FF114E        
                dc.b   0
                dc.b   0
                dc.l byte_FF114F
                dc.b   0
                dc.b   0
                dc.l byte_FF1150
                dc.b   0
                dc.b   0
                dc.l byte_FF1151
                dc.b   0
                dc.b   0
                dc.l FRAME_COUNTER
                dc.b   0
                dc.b   1
                dc.l MINUTE_COUNTER
                dc.b   0
                dc.b   1
                dc.l HOUR_COUNTER
                dc.b   0
                dc.b   1
                dc.l dword_FF1020
                dc.b   0
                dc.b $1F
                dc.l STATUS_BITMAP
                dc.b   0
                dc.b   0
                dc.l word_FF1206        
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
