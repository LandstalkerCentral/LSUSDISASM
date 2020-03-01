
; ASM FILE code\common\tech\interrupts\vint.asm :
; 0x11DE..0x14F2 : Vertical Interrupt

; =============== S U B R O U T I N E =======================================

VInt:
                
                movem.l d0-a6,-(sp)
                bclr    #ENABLE_INT,(INTERRUPT_PARAMETERS).l
                beq.s   loc_11F6
                bsr.w   DisableDisplay
                bsr.w   UpdateSprites
                bsr.s   ProcessVDPQueues
loc_11F6:
                
                bsr.w   EnableDisplayOnVDP
                addq.w  #1,(word_FF0F9C).l
                addq.w  #1,(RNG_SEED).l 
                move.w  (VDP_REG12_STATUS).l,(VDP_Control).l
                bsr.w   ApplyZ80Updates
                addq.w  #1,(FRAME_COUNTER).l
                cmpi.w  #$E10,(FRAME_COUNTER).l
                bcs.s   loc_1246
                clr.w   (FRAME_COUNTER).l
                addq.w  #1,(MINUTE_COUNTER).l
                cmpi.w  #$3C,(MINUTE_COUNTER).l 
                bcs.s   loc_1246
                clr.w   (MINUTE_COUNTER).l
                addq.w  #1,(HOUR_COUNTER).l
loc_1246:
                
                movem.l (sp)+,d0-a6
                rte

    ; End of function VInt


; =============== S U B R O U T I N E =======================================

DisableDisplay:
                
                andi.b  #$BF,(VDP_REG01_VALUE).l
                move.w  (VDP_REG01_STATUS).l,(VDP_Control).l
                rts

    ; End of function DisableDisplay


; =============== S U B R O U T I N E =======================================

ProcessVDPQueues:
                
                bsr.s   ProcessVdpCommandQueue
                bsr.w   ProcessVramRead
                bsr.w   ProcessDMAQueue
                rts

    ; End of function ProcessVDPQueues


; =============== S U B R O U T I N E =======================================

ProcessVdpCommandQueue:
                
                bclr    #VDP_COMMAND_REQUEST,(INTERRUPT_PARAMETERS).l
                beq.w   return_12EE
                tst.b   (VDP_COMMAND_COUNTER).l
                beq.w   return_12EE
                lea     (VDP_COMMAND_QUEUE).l,a0
loc_1288:
                
                move.w  (a0)+,d0
                move.w  #$8F02,d1
                bclr    #$F,d0
                beq.s   loc_12A2
                move.w  #$8F40,d1
                bclr    #$E,d0
                beq.s   loc_12A2
                move.w  #$8F80,d1
loc_12A2:
                
                move.w  d1,(VDP_Control).l
                move.w  (a0)+,d2
                move.w  d2,d1
                andi.w  #$3FFF,d2
                ori.w   #$4000,d2
                move.w  d2,(VDP_Control).l
                clr.w   d2
                lsl.w   #1,d1
                roxl.w  #1,d2
                lsl.w   #1,d1
                roxl.w  #1,d2
                move.w  d2,(VDP_Control).l
loc_12CA:
                
                move.w  (a0)+,(VDP_Data).l
                dbf     d0,loc_12CA
                subq.b  #1,(VDP_COMMAND_COUNTER).l
                bne.s   loc_1288
                move.w  #$8F02,(VDP_Control).l
                move.l  #VDP_COMMAND_QUEUE,(VDP_COMMAND_QUEUE_POINTER).l
return_12EE:
                
                rts

    ; End of function ProcessVdpCommandQueue


; =============== S U B R O U T I N E =======================================

ProcessVramRead:
                
                bclr    #VRAM_READ_REQUEST,(INTERRUPT_PARAMETERS).l
                beq.s   return_132E
                lea     (VDP_COMMAND_QUEUE).l,a0
                move.w  #$8F02,(VDP_Control).l
                move.w  (a0),d7
                andi.w  #$3FFF,d7
                move.w  d7,(VDP_Control).l
                move.w  (a0)+,d7
                rol.w   #2,d7
                andi.w  #3,d7
                move.w  d7,(VDP_Control).l
                move.w  (a0)+,d7
loc_1324:
                
                move.w  (VDP_Data).l,(a0)+
                dbf     d7,loc_1324
return_132E:
                
                rts

    ; End of function ProcessVramRead


; =============== S U B R O U T I N E =======================================

UpdateSprites:
                
                btst    #DEACTIVATE_DMA,(INTERRUPT_PARAMETERS).l
                bne.s   return_133E
                bsr.w   UpdateVDPSpriteTable
return_133E:
                
                rts

    ; End of function UpdateSprites


; =============== S U B R O U T I N E =======================================

ProcessDMAQueue:
                
                bclr    #DMA_REQUEST,(INTERRUPT_PARAMETERS).l
                beq.s   return_13B4
                tst.b   (DMA_QUEUE_SIZE).l
                beq.s   return_13B4
                move.w  #$100,(Z80BusReq).l
loc_135A:
                
                btst    #0,(Z80BusReq).l
                bne.s   loc_135A
                lea     (DMA_QUEUE).l,a0
                lea     (VDP_Control).l,a6
                move.w  (VDP_REG01_STATUS).l,d7
                ori.b   #$10,d7
                move.w  d7,(a6)
loc_137C:
                
                move.l  (a0)+,(a6)
                move.l  (a0)+,(a6)
                move.l  (a0)+,(a6)
                move.w  (a0)+,(a6)
                move.w  (a0)+,(DMA_ADDR_MSBYTE).l
                move.w  (DMA_ADDR_MSBYTE).l,(a6)
                subq.b  #1,(DMA_QUEUE_SIZE).l
                bne.s   loc_137C
                move.w  (VDP_REG01_STATUS).l,(a6)
                move.w  #$8F02,(a6)
                move.w  #0,(Z80BusReq).l
                move.l  #DMA_QUEUE,(DMA_QUEUE_POINTER).l
return_13B4:
                
                rts

    ; End of function ProcessDMAQueue


; =============== S U B R O U T I N E =======================================

ApplyZ80Updates:
                
                move.w  #$100,(Z80BusReq).l
loc_13BE:
                
                btst    #0,(Z80BusReq).l
                bne.s   loc_13BE
                tst.b   (WAIT_FOR_MUSIC_END).l
                beq.w   loc_13E2
                tst.b   (Z80_UNKNOWN).l 
                beq.w   loc_14E6
                clr.b   (WAIT_FOR_MUSIC_END).l
loc_13E2:
                
                lea     (SOUND_COMMAND_QUEUE).l,a0
                move.l  4(a0),d0
                or.l    (a0),d0
                beq.w   loc_14E6
                move.b  (a0),d1
                move.b  1(a0),d0
                move.w  2(a0),(a0)+
                move.w  2(a0),(a0)+
                move.w  2(a0),(a0)+
                clr.w   (a0)
                cmpi.b  #$FB,d0
                bne.s   loc_1440
                tst.b   (MUSIC_STACK_LENGTH).l
                beq.s   loc_1432
                movem.l d7-a0,-(sp)
                lea     (MUSIC_STACK).l,a0
                moveq   #8,d7
loc_1420:
                
                move.b  1(a0),(a0)+
                dbf     d7,loc_1420
                movem.l (sp)+,d7-a0
                subq.b  #1,(MUSIC_STACK_LENGTH).l
loc_1432:
                
                move.b  (MUSIC_STACK).l,(Z80_SOUND_COMMAND).l
                bra.w   loc_14E6
loc_1440:
                
                cmpi.b  #$FD,d0
                bcs.s   loc_1450
                move.b  d0,(Z80_SOUND_COMMAND).l
                bra.w   loc_14E6
loc_1450:
                
                cmpi.b  #$F0,d0
                bne.s   loc_1462
                move.b  #1,(WAIT_FOR_MUSIC_END).l
                bra.w   loc_14E6
loc_1462:
                
                cmpi.b  #$FC,d0
                bne.s   loc_147C
                andi.b  #$F,d1
                move.b  d1,(Z80_MUSIC_LEVEL).l
                move.b  d0,(Z80_SOUND_COMMAND).l
                bra.w   loc_14E6
loc_147C:
                
                movem.l d0,-(sp)
                andi.b  #$7F,d0 
                cmp.b   (MUSIC_STACK).l,d0
                movem.l (sp)+,d0
                bne.s   loc_1494
                bra.w   loc_14E6
loc_1494:
                
                bclr    #7,d0
                beq.s   loc_14A2
                move.b  d1,(Z80_FADE_IN_DATA).l
                bra.s   loc_14B0
loc_14A2:
                
                cmpi.b  #$40,d0 
                bgt.s   loc_14B0
                move.b  #$F,(Z80_FADE_IN_DATA).l
loc_14B0:
                
                move.b  d0,(Z80_SOUND_COMMAND).l
                cmpi.b  #$40,d0 
                bge.s   loc_14E6
                movem.l d7-a0,-(sp)
                lea     (INTERRUPT_PARAMETERS).l,a0
                moveq   #8,d7
loc_14C8:
                
                move.b  -2(a0),-(a0)
                dbf     d7,loc_14C8
                move.b  d0,-(a0)
                movem.l (sp)+,d7-a0
                cmpi.b  #$A,(MUSIC_STACK_LENGTH).l
                bge.s   loc_14E6
                addq.b  #1,(MUSIC_STACK_LENGTH).l
loc_14E6:
                
                move.w  #0,(Z80BusReq).l
                rts

    ; End of function ApplyZ80Updates


; =============== S U B R O U T I N E =======================================

nullsub_5:
                
                rts

    ; End of function nullsub_5

