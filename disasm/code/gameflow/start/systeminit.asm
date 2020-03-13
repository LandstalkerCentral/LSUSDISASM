
; ASM FILE code\gameflow\start\systeminit.asm :
; 0x4B8..0x75E : System Initialization

; =============== S U B R O U T I N E =======================================

sub_4B8:
                
                lea     (initStack).w,sp
                bra.s   loc_4CE
loc_4BE:
                
                lea     (initStack).w,sp
                sndCom  SOUND_COMMAND_FFFADE_OUT
                move.w  #$B4,d0 
                bsr.w   Sleep           
loc_4CE:
                
                bsr.w   DisableDisplayAndInterrupts
                bsr.s   InitializeVDP
                bsr.s   InitializeVDPData
                jmp     (StartGame).l

    ; End of function sub_4B8


; =============== S U B R O U T I N E =======================================

sub_4DC:
                
                lea     (initStack).w,sp
                sndCom  SOUND_COMMAND_FFFADE_OUT
                bsr.w   sub_9A8
                move.w  #$B4,d0 
                bsr.w   Sleep           
                bsr.w   DisableDisplayAndInterrupts
                bsr.s   InitializeVDP
                bsr.s   InitializeVDPData
                jmp     (loc_16CA).l

    ; End of function sub_4DC


; =============== S U B R O U T I N E =======================================

InitializeSystem:
                
                bsr.s   InitializeVDP
                bsr.w   InitializeZ80
                bsr.s   InitializeVDPData
                jsr     j_CheckRegion
                bsr.w   CheckSRAM
                jmp     (StartGame).l

    ; End of function InitializeSystem


; =============== S U B R O U T I N E =======================================

InitializeVDP:
                
                move.w     word_5C6(pc), d0
                nop
                bsr.w   SetVDPRegister
                move.w  #$3FDE,d0
                lea     (PALETTE_1_BASE).l,a0
loc_52A:
                
                clr.l   (a0)+
                dbf     d0,loc_52A
                lea     VDPInitParams(pc), a0
                moveq   #$12,d1
loc_536:
                
                move.w  (a0)+,d0
                bsr.w   SetVDPRegister
                dbf     d1,loc_536
                clr.w   d0
                clr.w   d1
                clr.w   d2
                bsr.w   ApplyVramDMAFill
                rts

    ; End of function InitializeVDP


; =============== S U B R O U T I N E =======================================

InitializeVDPData:
                
                move.l  #VDP_COMMAND_QUEUE,(VDP_COMMAND_QUEUE_POINTER).l
                move.l  #DMA_QUEUE,(DMA_QUEUE_POINTER).l
                moveq   #$40,d0 
                move.b  d0,(CTRL1_BIS).l
                move.b  d0,(CTRL2).l
                move.b  d0,(CTRL3_BIS).l
                lea     (HORIZONTAL_SCROLL_DATA).l,a0
                move.w  #$FF,d0
loc_57E:
                
                move.w  #0,(a0)+
                move.w  #0,(a0)+
                dbf     d0,loc_57E
                lea     (VERTICAL_SCROLL_DATA).l,a0
                move.w  #$13,d0
loc_594:
                
                move.w  #0,(a0)+
                move.w  #0,(a0)+
                dbf     d0,loc_594
                lea     (PALETTE_1_BASE).l,a0
                moveq   #$7F,d1 
loc_5A8:
                
                clr.w   (a0)+
                dbf     d1,loc_5A8
                bsr.w   ClearSpriteTable
                bsr.w   UpdateVDPHScrollData
                bsr.w   UpdateVDPVScrollData
                bsr.w   DuplicatePalettes
                bsr.w   EnableDMAQueueProcessing
                rts

    ; End of function InitializeVDPData

VDPInitParams:  dc.w $8004
word_5C6:       dc.w $8124
                dc.w $8230
                dc.w $833C
                dc.w $8407
                dc.w $856A
                dc.w $8600
                dc.w $8700
                dc.w $8800
                dc.w $8900
                dc.w $8A00
                dc.w $8B07
                dc.w $8C81
                dc.w $8D34
                dc.w $8E00
                dc.w $8F02
                dc.w $9001
                dc.w $9100
                dc.w $9200

; =============== S U B R O U T I N E =======================================

Start:
                
                tst.l   (CTRL1).l
                bne.s   loc_5F8
                tst.w   (CTRL3).l
loc_5F8:
                
                bne.s   loc_676
                lea     StartParams(pc), a5
                movem.w (a5)+,d5-d7
                movem.l (a5)+,a0-a4
                move.b  -$10FF(a1),d0
                andi.b  #$F,d0
                beq.s   loc_618
                move.l  #$53454741,$2F00(a1)
loc_618:
                
                move.w  (a4),d0
                moveq   #0,d0
                movea.l d0,a6
                move.l  a6,usp
                moveq   #$17,d1
loc_622:
                
                move.b  (a5)+,d5
                move.w  d5,(a4)
                add.w   d7,d5
                dbf     d1,loc_622
                move.l  (a5)+,(a4)
                move.w  d0,(a3)
                move.w  d7,(a1)
                move.w  d7,(a2)
loc_634:
                
                btst    d0,(a1)
                bne.s   loc_634
                moveq   #$25,d2 
loc_63A:
                
                move.b  (a5)+,(a0)+
                dbf     d2,loc_63A
                move.w  d0,(a2)
                move.w  d0,(a1)
                move.w  d7,(a2)
loc_646:
                
                move.l  d0,-(a6)
                dbf     d6,loc_646
                move.l  (a5)+,(a4)
                move.l  (a5)+,(a4)
                moveq   #$1F,d3
loc_652:
                
                move.l  d0,(a3)
                dbf     d3,loc_652
                move.l  (a5)+,(a4)
                moveq   #$13,d4
loc_65C:
                
                move.l  d0,(a3)
                dbf     d4,loc_65C
                moveq   #3,d5
loc_664:
                
                move.b  (a5)+,$11(a3)
                dbf     d5,loc_664
                move.w  d0,(a2)
                movem.l (a6),d0-a6
                move    #$2700,sr
loc_676:
                
                bra.s   loc_6E4
StartParams:
                
                dc.w $8000
                dc.w $3FFF
                dc.w $100
                dc.l Z80_Memory
                dc.l Z80BusReq          
                dc.l Z80BusReset        
                dc.l VDP_Data
                dc.l VDP_Control
                dc.b 4
                dc.b $14
                dc.b $30
                dc.b $3C
                dc.b 7
                dc.b $6C
                dc.b 0
                dc.b 0
                dc.b 0
                dc.b 0
                dc.b $FF
                dc.b 0
                dc.b $81
                dc.b $37
                dc.b 0
                dc.b 1
                dc.b 1
                dc.b 0
                dc.b 0
                dc.b $FF
                dc.b $FF
                dc.b 0
                dc.b 0
                dc.b $80
                dc.b $40
                dc.b 0
                dc.b 0
                dc.b $80
                dc.b $AF
                dc.b 1
                dc.b $D9
                dc.b $1F
                dc.b $11
                dc.b $27
                dc.b 0
                dc.b $21
                dc.b $26
                dc.b 0
                dc.b $F9
                dc.b $77
                dc.b $ED
                dc.b $B0
                dc.b $DD
                dc.b $E1
                dc.b $FD
                dc.b $E1
                dc.b $ED
                dc.b $47
                dc.b $ED
                dc.b $4F
                dc.b $D1
                dc.b $E1
                dc.b $F1
                dc.b 8
                dc.b $D9
                dc.b $C1
                dc.b $D1
                dc.b $E1
                dc.b $F1
                dc.b $F9
                dc.b $F3
                dc.b $ED
                dc.b $56
                dc.b $36
                dc.b $E9
                dc.b $E9
                dc.b $81
                dc.b 4
                dc.b $8F
                dc.b 2
                dc.b $C0
                dc.b 0
                dc.b 0
                dc.b 0
                dc.b $40
                dc.b 0
                dc.b 0
                dc.b $10
                dc.b $9F
                dc.b $BF
                dc.b $DF
                dc.b $FF
loc_6E4:
                
                tst.w   (VDP_Control).l
loc_6EA:
                
                move.w  (VDP_Control).l,d0
                andi.w  #2,d0
                bne.s   loc_6EA
                bra.w   InitializeSystem

    ; End of function Start


; =============== S U B R O U T I N E =======================================

InitializeZ80:
                
                movem.l d0-a1,-(sp)
                move.w  #$100,(Z80BusReq).l
                move.w  #$100,(Z80BusReset).l
                lea     (Z80_Memory).l,a0
                move.w  #$1F80,d7
                lea     (SoundDriver).l,a1
loc_71E:
                
                move.b  (a1)+,d0
                bsr.w   CopyByteToZ80
                dbf     d7,loc_71E
                move.w  #0,(Z80BusReset).l
                nop
                nop
                nop
                nop
                move.w  #$100,(Z80BusReset).l
                move.w  #0,(Z80BusReq).l
                movem.l (sp)+,d0-a1
                rts

    ; End of function InitializeZ80


; =============== S U B R O U T I N E =======================================

CopyWordToZ80:
                
                bsr.w   CopyByteToZ80
                lsr.w   #8,d0

    ; End of function CopyWordToZ80


; =============== S U B R O U T I N E =======================================

CopyByteToZ80:
                
                move.b  d0,(a0)
                cmp.b   (a0),d0
                bne.s   CopyByteToZ80
                addq.l  #1,a0
                rts

    ; End of function CopyByteToZ80

