
; ASM FILE code\common\maps\mapengine.asm :
; 0x2824..0x2DCE : Map Engine

; =============== S U B R O U T I N E =======================================

sub_2824:
                
                clr.w   d1
                move.b  (byte_FF1131).l,d1
                movem.w d0-d1,-(sp)
                clr.b   (byte_FF1001).l
                bsr.w   sub_295E
                move.w  (CURRENT_MAP).l,d0
                bsr.w   SetVisitedMapFlag
                bsr.w   LoadMap
                bsr.w   sub_2A46
                lea     (dword_FF5400).l,a1
                jsr     sub_1038E
                movem.w (sp)+,d0/d3
                bsr.s   sub_2896
                jsr     sub_10388
                bsr.w   sub_2DCE
                bsr.w   sub_9EF8        
                bsr.w   sub_A114
                bsr.w   sub_7274
                bsr.w   WaitForDMAQueueProcessing
                bsr.w   sub_4042
                bsr.w   WaitForDMAQueueProcessing
                bsr.w   sub_401C
                bsr.w   sub_9D36        
                bsr.w   loc_29E8
                bsr.w   WaitForDMAQueueProcessing
                bsr.w   sub_76EC
                rts

    ; End of function sub_2824


; =============== S U B R O U T I N E =======================================

sub_2896:
                
                clr.w   d1
                move.b  (byte_FF1131).l,d1
                move.w  #$10,d2
                subi.b  #8,d1
                cmpi.b  #1,d0
                beq.w   loc_2920
                movem.w d0/d3,-(sp)
                lea     (dword_FF5400).l,a0
                move.w  #$FFFF,d7
                bsr.w   sub_3302
                movem.w (sp)+,d0/d3
                move.w  d4,d1
                tst.b   d0
                beq.s   loc_2902
                cmpi.b  #2,d0
                bne.s   loc_28FC
                move.w  (word_FF5412).l,d2
                sub.w   d3,d2
                clr.w   d1
                move.b  (word_FF5422).l,d1
                lsl.b   #4,d1
                move.b  d1,(word_FF5439).l
                add.b   d2,d1
                move.w  d1,(word_FF5412).l
                move.b  (word_FF5420).l,d2
                addi.b  #7,d1
                bra.s   loc_2920
loc_28FC:
                
                addq.b  #1,d1
                clr.w   d2
                bra.s   loc_2920
loc_2902:
                
                move.w  (word_FF5412).l,d2
                clr.w   d4
                move.b  (word_FF5439).l,d4
                sub.w   d4,d2
                move.b  d1,(word_FF5439).l
                add.w   d2,d1
                move.b  (word_FF5420).l,d2
loc_2920:
                
                move.w  d1,(word_FF5412).l
                add.b   (byte_FF5405).l,d1
                subq.b  #1,d1
                move.w  d1,(word_FF5454).l
                move.b  d2,(word_FF5420).l
                rts

    ; End of function sub_2896


; =============== S U B R O U T I N E =======================================

SetVisitedMapFlag:
                
                move.w  d0,d1
                add.w   d1,d1
                lea     (VisitedMapFlagmap).l,a0
                move.w  (a0,d1.w),d1
                move.w  d1,d2
                andi.b  #7,d1
                lsr.w   #3,d2
                lea     (VISITED_MAP_FLAGS).l,a0
                bset    d1,(a0,d2.w)
                rts

    ; End of function SetVisitedMapFlag


; =============== S U B R O U T I N E =======================================

sub_295E:
                
                bclr    #7,(byte_FF1005).l
                beq.s   return_2994
                bclr    #4,(STATUS_BITMAP).l
                bclr    #2,(byte_FF1153).l
                move.w  (byte_FF5458).l,(CURRENT_HP).l
                jsr     sub_103AA
                jsr     sub_1036C
                jsr     sub_10340
return_2994:
                
                rts

    ; End of function sub_295E


; =============== S U B R O U T I N E =======================================

sub_2996:
                
                move.w  #$8A18,(VDP_REG0A_STATUS).l
                move.w  #$8A18,(VDP_Control).l
                move.b  #$FF,(MAP_BLOCK_SET).l
                move.b  #$FF,(byte_FF112D).l
                move.b  #$FF,(byte_FF112E).l
                move.b  #$FF,(MAP_PALETTE_INDEX).l
                move.w  (CURRENT_MAP).l,d0
                bsr.w   LoadMap
                bsr.w   WaitForDMAQueueProcessing
                bsr.w   ClearSpriteTable
                bsr.w   sub_9046
                bsr.w   sub_4042
                bsr.w   sub_401C
                bra.w   EnableDMAQueueProcessing
loc_29E8:
                
                btst    #3,(byte_FF1027).l
                bne.s   return_2A30
                move.b  (byte_FF1140).l,d0
                ext.w   d0
                move.b  unk_2A32(pc,d0.w),d0
                cmpi.b  #$23,d0 
                bne.s   loc_2A12
                btst    #5,(byte_FF1002).l
                beq.s   loc_2A12
                move.b  #$24,d0 
loc_2A12:
                
                cmpi.b  #$13,d0
                bne.s   loc_2A26
                btst    #4,(byte_FF1028).l
                beq.s   loc_2A26
                move.b  #$12,d0
loc_2A26:
                
                move.b  d0,(MUSIC_INDEX).l
                sndCom  SOUND_COMMAND_GET_D0_PARAMETER
return_2A30:
                
                rts

    ; End of function sub_2996

unk_2A32:       dc.b $25 
                dc.b   3
                dc.b $13
                dc.b   1
                dc.b   2
                dc.b $21 
                dc.b $23 
                dc.b $1D
                dc.b $13
                dc.b $26 
                dc.b $27 
                dc.b  $A
                dc.b $14
                dc.b $2B 
                dc.b $2A 
                dc.b $22 
                dc.b $15
                dc.b $29 
                dc.b $FD 
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_2A46:
                
                bsr.w   sub_2AF2
                clr.b   (byte_FF1133).l
                clr.w   (word_FF120C).l
                clr.b   (byte_FF1147).l
                clr.b   (byte_FF1148).l
                lea     (dword_FF5400).l,a1
                move.w  #$C0,d1 
                move.w  (dword_FF542C).l,d0
                and.w   d1,d0
                beq.s   loc_2A80
                eori.w  #$FFFF,d1
                and.w   d1,(dword_FF542C).l
loc_2A80:
                
                lea     (byte_FF1124).l,a0
                move.l  (a1)+,(a0)
                andi.b  #$C1,(a1)
                ori.b   #8,(a1)+
                move.b  #$1F,(a1)+
                andi.w  #$800,(a1)
                move.w  #$439E,(a1)+
                move.w  #0,(a1)+
                addq.w  #4,a1
                move.w  #0,(a1)+
                move.w  #0,(a1)+
                addq.w  #2,a1
                move.w  #0,(a1)+
                move.w  #0,(a1)+
                move.w  #0,(a1)+
                move.w  #0,(a1)+
                move.w  #0,(a1)+
                move.w  #0,(a1)+
                addq.w  #2,a1
                move.w  #0,(a1)+
                addq.w  #4,a1
                move.w  #0,(a1)+
                move.w  #0,(a1)+
                addq.w  #4,a1
                move.w  #$FFFF,(a1)+
                move.w  #0,(a1)+
                move.w  #0,(a1)+
                move.w  #0,(a1)+
                move.b  #0,(a1)+
                addq.w  #1,a1
                move.w  #0,(a1)+
                rts

    ; End of function sub_2A46


; =============== S U B R O U T I N E =======================================

sub_2AF2:
                
                btst    #4,(byte_FF1003).l
                beq.s   return_2B46
                lea     word_2B48(pc), a0
                move.w  (CURRENT_MAP).l,d0
                moveq   #2,d7
loc_2B08:
                
                cmp.w   (a0)+,d0
                beq.s   loc_2B22
                dbf     d7,loc_2B08
                move.w  #$141,(word_FF540A).l
                move.b  #$7A,(byte_FF543B).l 
                rts
loc_2B22:
                
                move.w  #0,(word_FF540A).l
                move.b  #0,(byte_FF546F).l
                bclr    #4,(byte_FF1003).l
                andi.b  #$F8,(byte_FF1153).l
                bsr.w   sub_8FB4
return_2B46:
                
                rts

    ; End of function sub_2AF2

word_2B48:      dc.w $276
                dc.w $27E
                dc.w $1C6

; =============== S U B R O U T I N E =======================================

LoadMap:
                
                mulu.w  #8,d0
                movea.l (p_pt_Maps).l,a0
                movea.l (a0,d0.w),a2
                move.b  4(a0,d0.w),d3
                ext.w   d3
                move.b  7(a0,d0.w),d2
                lsr.b   #5,d2
                ext.w   d2
                moveq   #0,d4
                move.b  5(a0,d0.w),d4
                move.b  6(a0,d0.w),d7
                move.b  d7,(byte_FF1131).l
                andi.b  #$F0,(byte_FF1131).l
                lsl.b   #4,d7
                move.b  d7,(byte_FF1130).l
                move.b  7(a0,d0.w),d0
                andi.b  #$1F,d0
                cmp.b   (byte_FF1140).l,d0
                beq.s   loc_2BA4
                sndCom  SOUND_COMMAND_FFFADE_OUT
                move.b  d0,(byte_FF1140).l
loc_2BA4:
                
                movem.l a2,-(sp)
                bsr.w   LoadMapTileset
                movem.l (sp)+,a2
                movem.w d4/d7,-(sp)
                bsr.s   LoadMapData
                movem.w (sp)+,d4/d7
                bsr.w   LoadMapBlocks
                bsr.w   LoadMapPalette
                bsr.w   sub_4DF6
                rts

    ; End of function LoadMap


; =============== S U B R O U T I N E =======================================

LoadMapData:
                
                lea     (HEIGHT_MAP).l,a1
                move.w  #$AB1,d7
loc_2BD2:
                
                move.l  #$40004000,(a1)+
                dbf     d7,loc_2BD2
                movea.l a2,a0
                lea     (byte_FF7C02).l,a1
                jsr     DecompressMapData
                movem.w d0-d4,-(sp)
                lea     (byte_FF7C02).l,a0
                move.b  (a0)+,d0
                move.b  (a0)+,d1
                move.b  (a0)+,d2
                move.b  (a0)+,d3
                ext.w   d0
                ext.w   d1
                ext.w   d2
                ext.w   d3
                movem.w d1,-(sp)
                movem.w d0,-(sp)
                movem.w d2-d3,-(sp)
                addq.w  #1,d2
                addq.w  #1,d3
                mulu.w  d2,d3
                add.w   d3,d3
                add.w   d3,d3
                adda.w  d3,a0
                movem.w (sp)+,d2-d3
                add.w   d2,d0
                add.w   d3,d1
                movem.w (sp)+,d7
                movem.w (sp)+,d5
                lea     (HEIGHT_MAP).l,a1
                movem.w d0-d3/d5/d7,-(sp)
                bsr.s   sub_2C4A
                movem.w (sp)+,d0-d3/d5/d7
                lea     (byte_FFA6CA).l,a1
                bsr.s   sub_2C4A
                movem.w (sp)+,d0-d4
                rts

    ; End of function LoadMapData


; =============== S U B R O U T I N E =======================================

sub_2C4A:
                
                move.w  #$48,d4 
                sub.w   d1,d4
                bmi.s   loc_2C60
loc_2C52:
                
                move.w  #$49,d6 
loc_2C56:
                
                clr.w   -(a1)
                dbf     d6,loc_2C56
                dbf     d4,loc_2C52
loc_2C60:
                
                move.w  #$48,d6 
                sub.w   d0,d6
                subq.w  #1,d7
loc_2C68:
                
                movem.w d2/d6-d7,-(sp)
                tst.w   d6
                bmi.s   loc_2C76
loc_2C70:
                
                clr.w   -(a1)
                dbf     d6,loc_2C70
loc_2C76:
                
                move.w  -(a0),-(a1)
                dbf     d2,loc_2C76
                tst.w   d7
                bmi.s   loc_2C86
loc_2C80:
                
                clr.w   -(a1)
                dbf     d7,loc_2C80
loc_2C86:
                
                movem.w (sp)+,d2/d6-d7
                dbf     d3,loc_2C68
                subq.w  #1,d5
                bmi.s   return_2CA0
loc_2C92:
                
                move.w  #$49,d7 
loc_2C96:
                
                clr.w   -(a1)
                dbf     d7,loc_2C96
                dbf     d5,loc_2C92
return_2CA0:
                
                rts

    ; End of function sub_2C4A


; =============== S U B R O U T I N E =======================================

LoadMapBlocks:
                
                movea.l (p_pt_MapBlocks).l,a2
                movea.l (a2,d3.w),a2
                movea.l (dword_FF1874).l,a1
                cmp.b   (MAP_BLOCK_SET).l,d3
                beq.s   loc_2CDA
                move.b  d3,(MAP_BLOCK_SET).l
                movea.l (a2),a0
                lea     (MAP_BLOCKS).l,a1
                jsr     DecompressMapBlocks
                lsl.w   #3,d0
                adda.w  d0,a1
                move.l  a1,(dword_FF1874).l
                bra.s   loc_2CE2
loc_2CDA:
                
                cmp.b   (byte_FF112D).l,d2
                beq.s   return_2CF4
loc_2CE2:
                
                move.b  d2,(byte_FF112D).l
                lsl.w   #2,d2
                movea.l 4(a2,d2.w),a0
                jsr     DecompressMapBlocks
return_2CF4:
                
                rts

    ; End of function LoadMapBlocks


; =============== S U B R O U T I N E =======================================

LoadMapTileset:
                
                movem.w d3,-(sp)
                clr.b   d7
                andi.b  #$1F,d3
                cmp.b   (byte_FF112E).l,d3
                beq.w   loc_2D5C
                move.b  d3,(byte_FF112E).l
                movea.l (p_pt_MapTilesets).l,a0
                lsl.w   #2,d3
                movea.l (a0,d3.w),a0
                movem.w d2-d4,-(sp)
                lea     (byte_FF7C02).l,a1
                lea     (0).w,a2
                movem.l a2,-(sp)
                movea.l a1,a2
                bsr.w   DecompressLZ77Graphics
                move.l  a1,d0
                sub.l   a2,d0
                lsr.w   #2,d0
                movea.l a2,a0
                movem.l (sp)+,a1
                lea     (byte_FF7C02).l,a0
                lea     (0).w,a1
                move.w  #$3A80,d0
                bsr.w   WaitForDMAQueueProcessing
                bsr.w   ApplyImmediateVramDMA
                movem.w (sp)+,d2-d4
                moveq   #1,d7
loc_2D5C:
                
                movem.w (sp)+,d3
                lsl.w   #2,d3
                rts

    ; End of function LoadMapTileset


; =============== S U B R O U T I N E =======================================

LoadMapPalette:
                
                bsr.w   sub_87BE
                lea     DefaultMapPalette(pc), a0
                bcc.s   loc_2D76
                move.b  d4,(MAP_PALETTE_INDEX).l
                bra.s   loc_2D90
loc_2D76:
                
                cmp.b   (MAP_PALETTE_INDEX).l,d4
                beq.s   return_2DB2
                move.b  d4,(MAP_PALETTE_INDEX).l
                movea.l (p_MapPalettes).l,a0
                mulu.w  #$1A,d4
                adda.l  d4,a0
loc_2D90:
                
                lea     (MAP_PALETTE).l,a1
                move.w  #$C,d0
                bsr.w   loc_96A
                clr.w   (PALETTE_1_BASE).l
                move.w  #$CCC,(word_FF0082).l
                clr.w   (word_FF009E).l
return_2DB2:
                
                rts

    ; End of function LoadMapPalette

DefaultMapPalette:
                dc.w $8EE
                dc.w $240
                dc.w $244
                dc.w $280
                dc.w $8A6
                dc.w $EE
                dc.w $C84
                dc.w $888
                dc.w $220
                dc.w $840
                dc.w $E48
                dc.w $E20
                dc.w $E60
