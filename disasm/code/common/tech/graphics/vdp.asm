
; ASM FILE code\common\tech\graphics\vdp.asm :
; 0x868..0xFDA : VDP functions

; =============== S U B R O U T I N E =======================================

GetVDPRegisterStatus:
                
                movem.l a0,-(sp)
                lea     (VDP_REG00_STATUS).l,a0
                add.w   d0,d0
                move.w  (a0,d0.w),d0
                movem.l (sp)+,a0
                rts

    ; End of function GetVDPRegisterStatus


; =============== S U B R O U T I N E =======================================

SetVDPRegister:
                
                movem.l d0-d1/a0,-(sp)
                lea     (VDP_REG00_STATUS).l,a0
                move.w  d0,(VDP_Control).l
                move.w  d0,d1
                andi.w  #$7F00,d0
                lsr.w   #7,d0
                move.w  d1,(a0,d0.w)
                movem.l (sp)+,d0-d1/a0
                rts

    ; End of function SetVDPRegister


; =============== S U B R O U T I N E =======================================

ApplyLogicalOrOnVDPRegister:
                
                movem.l d0-d1/a0,-(sp)
                lea     (VDP_REG00_STATUS).l,a0
                add.w   d0,d0
                or.b    d1,1(a0,d0.w)
                bra.s   SendVDPCommand

    ; End of function ApplyLogicalOrOnVDPRegister


; =============== S U B R O U T I N E =======================================

ApplyLogicalAndOnVDPRegister:
                
                movem.l d0-d1/a0,-(sp)
                lea     (VDP_REG00_STATUS).l,a0
                add.w   d0,d0
                and.b   d1,1(a0,d0.w)

    ; End of function ApplyLogicalAndOnVDPRegister


; START OF FUNCTION CHUNK FOR ApplyLogicalOrOnVDPRegister

SendVDPCommand:
                
                move.w  (a0,d0.w),d1
                move.w  d1,(VDP_Control).l
                movem.l (sp)+,d0-d1/a0
                rts

; END OF FUNCTION CHUNK FOR ApplyLogicalOrOnVDPRegister


; =============== S U B R O U T I N E =======================================

EnableDisplayOnVDP:
                
                move.w  #1,d0
                move.w  #$40,d1 
                bra.s   ApplyLogicalOrOnVDPRegister

    ; End of function EnableDisplayOnVDP


; =============== S U B R O U T I N E =======================================

DisableDisplayOnVDP:
                
                move.w  #1,d0
                move.w  #$BF,d1 
                bra.s   ApplyLogicalAndOnVDPRegister

    ; End of function DisableDisplayOnVDP


; =============== S U B R O U T I N E =======================================

EnableInterrupts:
                
                move    #$2300,sr
                rts

    ; End of function EnableInterrupts


; =============== S U B R O U T I N E =======================================

DisableInterrupts:
                
                move    #$2700,sr
                rts

    ; End of function DisableInterrupts


; =============== S U B R O U T I N E =======================================

EnableDisplayAndInterrupts:
                
                bsr.s   EnableDisplayOnVDP
                bra.s   EnableInterrupts

    ; End of function EnableDisplayAndInterrupts


; =============== S U B R O U T I N E =======================================

DisableDisplayAndInterrupts:
                
                bsr.s   DisableInterrupts
                bra.s   DisableDisplayOnVDP

    ; End of function DisableDisplayAndInterrupts


; =============== S U B R O U T I N E =======================================

ActivateIntDMAQueueProcessing:
                
                bclr    #DEACTIVATE_DMA,(INTERRUPT_PARAMETERS).l
                rts

    ; End of function ActivateIntDMAQueueProcessing


; =============== S U B R O U T I N E =======================================

DeactivateIntDMAQueueProcessing:
                
                bset    #DEACTIVATE_DMA,(INTERRUPT_PARAMETERS).l
                rts

    ; End of function DeactivateIntDMAQueueProcessing


; =============== S U B R O U T I N E =======================================

DuplicatePalettes:
                
                movem.l d7/a5-a6,-(sp)
                lea     (PALETTE_1_BASE).l,a5
                lea     (PALETTE_1_CURRENT).l,a6
                move.w  #$3F,d7 
loc_922:
                
                move.w  (a5)+,(a6)+
                dbf     d7,loc_922
                movem.l (sp)+,d7/a5-a6

    ; End of function DuplicatePalettes


; =============== S U B R O U T I N E =======================================

ApplyDMAForCRAM:
                
                movem.l a6,-(sp)
                movea.l (DMA_QUEUE_POINTER).l,a6
                move.l  #$8F029400,(a6)+
                move.l  #$93409687,(a6)+
                move.l  #$9568977F,(a6)+
                move.l  #$C0000080,(a6)+
                move.l  a6,(DMA_QUEUE_POINTER).l
                addq.b  #1,(DMA_QUEUE_SIZE).l
                movem.l (sp)+,a6
                rts

    ; End of function ApplyDMAForCRAM


; =============== S U B R O U T I N E =======================================

CopyPalette:
                
                lea     (PALETTE_1_BASE).l,a1
loc_966:
                
                move.w  #$F,d0
loc_96A:
                
                move.w  (a0)+,(a1)+
                dbf     d0,loc_96A
                rts

    ; End of function CopyPalette


; =============== S U B R O U T I N E =======================================

sub_972:
                
                move.w  #$C00,(word_FF0F50).l
                move.w  #$FE00,(word_FF0F52).l
                clr.w   (byte_FF0F54).l
                rts

    ; End of function sub_972


; =============== S U B R O U T I N E =======================================

sub_98A:
                
                bsr.s   sub_972
                bra.w   loc_9AA

    ; End of function sub_98A


; =============== S U B R O U T I N E =======================================

sub_990:
                
                move.w  #$200,(word_FF0F50).l
                move.w  #$200,(word_FF0F52).l
                clr.w   (byte_FF0F54).l
                rts

    ; End of function sub_990


; =============== S U B R O U T I N E =======================================

sub_9A8:
                
                bsr.s   sub_990
loc_9AA:
                
                move.w  #6,d6
loc_9AE:
                
                bsr.s   sub_9BE
                move.w  #1,d0
                bsr.w   Sleep           
                dbf     d6,loc_9AE
                rts

    ; End of function sub_9A8


; =============== S U B R O U T I N E =======================================

sub_9BE:
                
                lea     (PALETTE_1_BASE).l,a0
                lea     (PALETTE_1_CURRENT).l,a1
                move.w  #$3F,d5 

    ; End of function sub_9BE


; =============== S U B R O U T I N E =======================================

sub_9CE:
                
                move.w  (word_FF0F50).l,d3
                move.w  (word_FF0F52).l,d4
                move.w  (byte_FF0F54).l,d7
loc_9E0:
                
                move.w  (a0)+,d0
                bsr.s   sub_9FC
                move.w  d0,(a1)+
                dbf     d5,loc_9E0
                bsr.w   ApplyDMAForCRAM
                bsr.w   EnableDMAQueueProcessing
                add.w   d4,d3
                move.w  d3,(word_FF0F50).l
                rts

    ; End of function sub_9CE


; =============== S U B R O U T I N E =======================================

sub_9FC:
                
                move.w  d0,d1
                andi.w  #$E00,d1
                sub.w   d3,d1
                andi.w  #$1E00,d1
                cmpi.w  #$1000,d1
                bcs.s   loc_A10
                move.w  d7,d1
loc_A10:
                
                lsr.w   #4,d3
                move.w  d0,d2
                andi.w  #$E0,d2 
                sub.w   d3,d2
                andi.w  #$1E0,d2
                cmpi.w  #$100,d2
                bcs.s   loc_A26
                move.w  d7,d2
loc_A26:
                
                lsr.w   #4,d3
                andi.w  #$E,d0
                sub.w   d3,d0
                andi.w  #$1E,d0
                cmpi.w  #$10,d0
                bcs.s   loc_A3A
                move.w  d7,d0
loc_A3A:
                
                lsl.w   #8,d3
                or.w    d2,d0
                or.w    d1,d0
                rts

    ; End of function sub_9FC


; =============== S U B R O U T I N E =======================================

sub_A42:
                
                move.w  #$C00,d3
                move.w  #$FE00,d4
                move.w  #$E00,d7
                bra.w   loc_A5E

    ; End of function sub_A42


; =============== S U B R O U T I N E =======================================

sub_A52:
                
                move.w  #$200,d3
                move.w  #$200,d4
                move.w  #$E00,d7

    ; End of function sub_A52


; START OF FUNCTION CHUNK FOR sub_A42

loc_A5E:
                
                move.w  #6,d6
loc_A62:
                
                lea     (PALETTE_1_BASE).l,a0
                lea     (PALETTE_1_CURRENT).l,a1
                move.w  #$3F,d5 
loc_A72:
                
                move.w  (a0)+,d0
                bsr.s   sub_A94
                move.w  d0,(a1)+
                dbf     d5,loc_A72
                bsr.w   ApplyDMAForCRAM
                bsr.w   EnableDMAQueueProcessing
                move.w  #4,d0
                bsr.w   Sleep           
                add.w   d4,d3
                dbf     d6,loc_A62
                rts

; END OF FUNCTION CHUNK FOR sub_A42


; =============== S U B R O U T I N E =======================================

sub_A94:
                
                move.w  d0,d1
                andi.w  #$E00,d1
                add.w   d3,d1
                andi.w  #$1E00,d1
                cmpi.w  #$1000,d1
                bcs.s   loc_AA8
                move.w  d7,d1
loc_AA8:
                
                lsr.w   #4,d3
                lsr.w   #4,d7
                move.w  d0,d2
                andi.w  #$E0,d2 
                add.w   d3,d2
                andi.w  #$1E0,d2
                cmpi.w  #$100,d2
                bcs.s   loc_AC0
                move.w  d7,d2
loc_AC0:
                
                lsr.w   #4,d3
                lsr.w   #4,d7
                andi.w  #$E,d0
                add.w   d3,d0
                andi.w  #$1E,d0
                cmpi.w  #$10,d0
                bcs.s   loc_AD6
                move.w  d7,d0
loc_AD6:
                
                lsl.w   #8,d3
                lsl.w   #8,d7
                or.w    d2,d0
                or.w    d1,d0
                rts

    ; End of function sub_A94


; =============== S U B R O U T I N E =======================================

ClearVsramAndSprites:
                
                bsr.s   ClearScrollTableData
                bsr.s   ClearSpriteTable

    ; End of function ClearVsramAndSprites


; =============== S U B R O U T I N E =======================================

UpdateVDPSpriteTable:
                
                lea     (VDP_Control).l,a6
                move.w  #$8134,(a6)
                move.l  #$94019340,(a6)
                move.l  #$968295A8,(a6)
                move.l  #$977F5400,(a6)
                move.w  #$83,(DMA_ADDR_MSBYTE).l 
                move.w  (DMA_ADDR_MSBYTE).l,(a6)
                move.w  (VDP_REG01_STATUS).l,(a6)
                rts

    ; End of function UpdateVDPSpriteTable


; =============== S U B R O U T I N E =======================================

ClearSpriteTable:
                
                movem.l d0-d1/a0,-(sp)
                lea     (SPRITE_TABLE).l,a0
                moveq   #$4F,d1 
                moveq   #1,d0
loc_B24:
                
                move.l  d0,(a0)+
                clr.l   (a0)+
                addq.b  #1,d0
                dbf     d1,loc_B24
                clr.b   -5(a0)
                movem.l (sp)+,d0-d1/a0
                rts

    ; End of function ClearSpriteTable


; =============== S U B R O U T I N E =======================================

ClearScrollTableData:
                
                movem.l d7/a6,-(sp)
                move.w  #$C000,d0
                move.w  #$FFF,d1
                clr.w   d2
                bsr.w   ApplyVramDMAFill
                move.w  #$E000,d0
                move.w  #$FFF,d1
                clr.w   d2
                bsr.w   ApplyVramDMAFill
                movem.l (sp)+,d7/a6
                rts

    ; End of function ClearScrollTableData


; =============== S U B R O U T I N E =======================================

WaitForVInt:
                
                bsr.w   nullsub_1
                bsr.w   sub_354E
                bset    #ENABLE_INT,(INTERRUPT_PARAMETERS).l
loc_B6E:
                
                btst    #ENABLE_INT,(INTERRUPT_PARAMETERS).l
                bne.s   loc_B6E
                rts

    ; End of function WaitForVInt


; =============== S U B R O U T I N E =======================================

; d0=frames

Sleep:
                
                movem.w d0,-(sp)
loc_B7E:
                
                bsr.s   WaitForVInt
                dbf     d0,loc_B7E
                movem.w (sp)+,d0
                rts

    ; End of function Sleep


; =============== S U B R O U T I N E =======================================

RequestVDPCommandQueueProcessing:
                
                bset    #VDP_COMMAND_REQUEST,(INTERRUPT_PARAMETERS).l
                rts

    ; End of function RequestVDPCommandQueueProcessing


; =============== S U B R O U T I N E =======================================

WaitForVDPCommandQueueProcessing:
                
                bsr.s   RequestVDPCommandQueueProcessing
                bra.w   WaitForVInt

    ; End of function WaitForVDPCommandQueueProcessing


; =============== S U B R O U T I N E =======================================

EnableDMAQueueProcessing:
                
                bset    #DMA_REQUEST,(INTERRUPT_PARAMETERS).l
                rts

    ; End of function EnableDMAQueueProcessing


; =============== S U B R O U T I N E =======================================

WaitForDMAQueueProcessing:
                
                bsr.s   EnableDMAQueueProcessing
                bra.w   WaitForVInt

    ; End of function WaitForDMAQueueProcessing


; =============== S U B R O U T I N E =======================================

sub_BAA:
                
                movem.l d7/a4-a5,-(sp)
                movea.l (VDP_COMMAND_QUEUE_POINTER).l,a4
                moveq   #0,d7
                move.w  d7,(a4)+
                bsr.s   sub_BF6
                move.w  a6,(a4)+
loc_BBC:
                
                move.w  d0,(a4)+
                move.l  a4,(VDP_COMMAND_QUEUE_POINTER).l
                move.b  #1,(VDP_COMMAND_COUNTER).l
                clr.l   d7
                move.w  a6,d7
                ori.l   #byte_FF0000,d7
                movea.l d7,a6
                move.w  d0,(a6)
                movem.l (sp)+,d7/a4-a5
                rts
loc_BE0:
                
                movem.l d7/a4-a5,-(sp)
                movea.l (VDP_COMMAND_QUEUE_POINTER).l,a4
                moveq   #0,d7
                move.w  d7,(a4)+
                bsr.s   sub_BF6
                bsr.s   SwapA6
                move.w  a6,(a4)+
                bra.s   loc_BBC

    ; End of function sub_BAA


; =============== S U B R O U T I N E =======================================

sub_BF6:
                
                movem.l d5-d7,-(sp)
                lea     ($E000).l,a6
                lsl.w   #1,d5
                move.w  (HORIZONTAL_SCROLL_DATA+2).l,d7
                lsr.w   #2,d7
                add.w   d7,d5
                andi.w  #$3E,d5 
                lsl.w   #6,d6
                move.w  (VERTICAL_SCROLL_DATA+2).l,d7
                lsl.w   #3,d7
                add.w   d7,d6
                andi.w  #$7C0,d6
                or.w    d6,d5
                adda.w  d5,a6
                bsr.s   SwapA6
                movem.l (sp)+,d5-d6
                movem.l d5-d6,-(sp)
                adda.l  #$C000,a6
                lsl.w   #1,d5
                move.w  (HORIZONTAL_SCROLL_DATA).l,d7
                lsr.w   #2,d7
                add.w   d7,d5
                andi.w  #$3E,d5 
                lsl.w   #6,d6
                move.w  (VERTICAL_SCROLL_DATA).l,d7
                lsl.w   #3,d7
                add.w   d7,d6
                andi.w  #$7C0,d6
                or.w    d6,d5
                adda.w  d5,a6
                movem.l (sp)+,d5-d7
                andi.w  #$3E,d5 
                andi.w  #$7C0,d6
                rts

    ; End of function sub_BF6


; =============== S U B R O U T I N E =======================================

SwapA6:
                
                movem.l d7,-(sp)
                move.l  a6,d7
                swap    d7
                movea.l d7,a6
                movem.l (sp)+,d7
                rts

    ; End of function SwapA6


; =============== S U B R O U T I N E =======================================

sub_C76:
                
                lea     (byte_FF2C00).l,a4
loc_C7C:
                
                movem.l d5-d6,-(sp)
                move.w  (word_FF0FAC).l,d5
                lsr.w   #8,d5
                move.w  (word_FF0FAC).l,d6
                andi.w  #$FF,d6
                bsr.w   sub_BF6
                movem.l (sp)+,d5-d6
loc_C9A:
                
                movem.l d3-d4/a3-a6,-(sp)
                clr.l   d3
                move.w  a6,d3
                ori.l   #byte_FF0000,d3
                movea.l d3,a3
                movea.l (VDP_COMMAND_QUEUE_POINTER).l,a5
                move.w  (word_FF0FAE).l,d3
                andi.l  #$FF,d3
                move.b  d3,(VDP_COMMAND_COUNTER).l
                subq.w  #1,d3
loc_CC4:
                
                movem.l a3,-(sp)
                move.w  (word_FF0FAE).l,d4
                andi.l  #$FF00,d4
                lsr.w   #8,d4
                subq.w  #1,d4
                move.w  d4,(a5)+
                move.w  a6,(a5)+
loc_CDC:
                
                move.w  (a4),(a5)+
                move.w  (a4)+,(a3)+
                dbf     d4,loc_CDC
                adda.w  #$40,a6 
                movem.l (sp)+,a3
                adda.w  #$40,a3 
                dbf     d3,loc_CC4
                movem.l (sp)+,d3-d4/a3-a6
                bra.w   WaitForVDPCommandQueueProcessing
loc_CFC:
                
                movem.l d5-d6,-(sp)
                move.w  (word_FF0FAC).l,d5
                lsr.w   #8,d5
                move.w  (word_FF0FAC).l,d6
                andi.w  #$FF,d6
                bsr.w   sub_BF6
                movem.l (sp)+,d5-d6
                bsr.w   SwapA6
                bra.w   loc_C9A

    ; End of function sub_C76


; =============== S U B R O U T I N E =======================================

; A0=Source, A1=Destination, D0=Length, D1=Auto-increment

ApplyImmediateVramDMA:
                
                movem.l d2/d7,-(sp)
                move    sr,-(sp)
                move    #$2700,sr
loc_D2C:
                
                movem.l d0/a0-a1/a6,-(sp)
                lea     (VDP_Control).l,a6
                move.w  (VDP_REG01_STATUS).l,d7
                ori.b   #$10,d7
                move.w  d7,(a6)
                move.l  #$94009300,d2
                move.b  d0,d2
                lsl.l   #8,d0
                andi.l  #$FF0000,d0
                or.l    d0,d2
                move.l  d2,(a6)
                move.l  #$96009500,d2
                move.l  a0,d0
                lsr.l   #1,d0
                move.b  d0,d2
                lsl.l   #8,d0
                andi.l  #$FF0000,d0
                or.l    d0,d2
                move.l  d2,(a6)
                move.l  a0,d0
                swap    d0
                lsr.w   #1,d0
                ori.w   #$9700,d0
                move.w  d0,(a6)
                move.w  a1,d0
                andi.w  #$3FFF,d0
                ori.w   #$4000,d0
                move.w  d0,(a6)
                move.w  a1,d0
                rol.w   #2,d0
                andi.w  #3,d0
                ori.b   #$80,d0
                move.w  d0,(DMA_ADDR_MSBYTE).l
                move.w  (DMA_ADDR_MSBYTE).l,(a6)
                move.w  (VDP_REG01_STATUS).l,(a6)
                movem.l (sp)+,d0/a0-a1/a6
                clr.l   d2
                move.w  d0,d2
                add.w   d2,d2
                move.l  a0,d7
                swap    d7
                adda.l  d2,a0
                adda.w  d2,a1
                move.l  a0,d2
                swap    d2
                cmp.b   d2,d7
                beq.s   loc_DCE
                swap    d2
                suba.w  d2,a1
                lsr.w   #1,d2
                move.w  d2,d0
                clr.w   d2
                movea.l d2,a0
                bra.w   loc_D2C
loc_DCE:
                
                move    (sp)+,sr
                movem.l (sp)+,d2/d7
                rts

    ; End of function ApplyImmediateVramDMA


; =============== S U B R O U T I N E =======================================

; A0=Source, A1=Destination, D0=Length, D1=Auto-increment

ApplyVIntVramDMA:
                
                movem.l d2/d7,-(sp)
loc_DDA:
                
                movem.l d0/a0-a1/a6,-(sp)
                movea.l (DMA_QUEUE_POINTER).l,a6
                move.w  #$8F02,(a6)+
                move.l  #$94009300,(a6)+
                movep.w d0,-3(a6)
                move.l  a0,d0
                lsr.l   #1,d0
                move.l  #$96009500,(a6)+
                movep.w d0,-3(a6)
                move.l  a0,d0
                swap    d0
                lsr.w   #1,d0
                ori.w   #$9700,d0
                move.w  d0,(a6)+
                move.w  a1,d0
                andi.w  #$3FFF,d0
                ori.w   #$4000,d0
                move.w  d0,(a6)+
                move.w  a1,d0
                rol.w   #2,d0
                andi.w  #3,d0
                ori.b   #$80,d0
                move.w  d0,(a6)+
                move.l  a6,(DMA_QUEUE_POINTER).l
                addq.b  #1,(DMA_QUEUE_SIZE).l
                movem.l (sp)+,d0/a0-a1/a6
                moveq   #0,d2
                move.w  d0,d2
                add.w   d2,d2
                move.l  a0,d7
                swap    d7
                adda.l  d2,a0
                adda.w  d2,a1
                move.l  a0,d2
                swap    d2
                cmp.b   d2,d7
                beq.s   loc_E5E
                swap    d2
                suba.w  d2,a1
                lsr.w   #1,d2
                beq.s   loc_E5E
                move.w  d2,d0
                clr.w   d2
                movea.l d2,a0
                bra.w   loc_DDA
loc_E5E:
                
                movem.l (sp)+,d2/d7
                rts

    ; End of function ApplyVIntVramDMA


; =============== S U B R O U T I N E =======================================

sub_E64:
                
                movem.w d7,-(sp)
                move.w  a6,d7
                andi.w  #$3FFF,d7
                ori.w   #$4000,d7
                move.w  d7,(VDP_Control).l
                move.w  a6,d7
                lsr.w   #8,d7
                lsr.w   #6,d7
                move.w  d7,(VDP_Control).l
                movem.w (sp)+,d7
                rts

    ; End of function sub_E64


; =============== S U B R O U T I N E =======================================

UpdateVDPHScrollData:
                
                movem.l a6,-(sp)
                movea.l (DMA_QUEUE_POINTER).l,a6
                move.l  #$8F029402,(a6)+
                move.l  #$93009680,(a6)+
                move.l  #$9580977F,(a6)+
                move.l  #$50000083,(a6)+
                move.l  a6,(DMA_QUEUE_POINTER).l
                addq.b  #1,(DMA_QUEUE_SIZE).l
                movem.l (sp)+,a6
                rts

    ; End of function UpdateVDPHScrollData


; =============== S U B R O U T I N E =======================================

UpdateForegroundHScrollData:
                
                movem.l d7/a6,-(sp)
                lea     (HORIZONTAL_SCROLL_DATA).l,a6
loc_EC8:
                
                move.w  #$FF,d7
loc_ECC:
                
                move.w  d6,(a6)+
                addq.w  #2,a6
                dbf     d7,loc_ECC
                movem.l (sp)+,d7/a6
                bra.s   UpdateVDPHScrollData

    ; End of function UpdateForegroundHScrollData


; =============== S U B R O U T I N E =======================================

UpdateBackgroundHScrollData:
                
                movem.l d7/a6,-(sp)
                lea     ((HORIZONTAL_SCROLL_DATA+2)).l,a6
                bra.s   loc_EC8

    ; End of function UpdateBackgroundHScrollData


; =============== S U B R O U T I N E =======================================

UpdateVDPVScrollData:
                
                movem.l a6,-(sp)
                movea.l (DMA_QUEUE_POINTER).l,a6
                move.l  #$8F029400,(a6)+
                move.l  #$93289682,(a6)+
                move.l  #$9580977F,(a6)+
                move.l  #$40000090,(a6)+
                move.l  a6,(DMA_QUEUE_POINTER).l
                addq.b  #1,(DMA_QUEUE_SIZE).l
                movem.l (sp)+,a6
                rts

    ; End of function UpdateVDPVScrollData


; =============== S U B R O U T I N E =======================================

UpdateForegroundVScrolData:
                
                movem.l d7/a6,-(sp)
                lea     (VERTICAL_SCROLL_DATA).l,a6
loc_F24:
                
                move.w  #$13,d7
loc_F28:
                
                move.w  d6,(a6)+
                addq.w  #2,a6
                dbf     d7,loc_F28
                movem.l (sp)+,d7/a6
                bra.s   UpdateVDPVScrollData

    ; End of function UpdateForegroundVScrolData


; =============== S U B R O U T I N E =======================================

UpdateBackgroundVScrollData:
                
                movem.l d7/a6,-(sp)
                lea     ((VERTICAL_SCROLL_DATA+2)).l,a6
                bra.s   loc_F24

    ; End of function UpdateBackgroundVScrollData


; =============== S U B R O U T I N E =======================================

; D0=Destination, D1=Length, D2=Filler value

ApplyVramDMAFill:
                
                movem.l d0-d3,-(sp)
                move.w  (VDP_REG01_STATUS).l,d3
                ori.b   #$10,d3
                move.w  d3,(VDP_Control).l
                move.w  #$8F01,(VDP_Control).l
                movem.l d1,-(sp)
                andi.w  #$FF,d1
                ori.w   #$9300,d1
                move.w  d1,(VDP_Control).l
                movem.l (sp)+,d1
                lsr.w   #8,d1
                ori.w   #$9400,d1
                move.w  d1,(VDP_Control).l
                move.w  #$9780,(VDP_Control).l
                movem.l d0,-(sp)
                andi.w  #$3FFF,d0
                ori.w   #$4000,d0
                move.w  d0,(VDP_Control).l
                movem.l (sp)+,d0
                rol.w   #2,d0
                andi.w  #3,d0
                ori.w   #$80,d0 
                move.w  d0,(VDP_Control).l
                move.w  d2,(VDP_Data).l
loc_FB4:
                
                move.w  (VDP_Control).l,d0
                andi.w  #2,d0
                bne.s   loc_FB4
                move.w  (VDP_REG01_STATUS).l,d3
                move.w  d3,(VDP_Control).l
                move.w  #$8F02,(VDP_Control).l
                movem.l (sp)+,d0-d3
                rts

    ; End of function ApplyVramDMAFill

