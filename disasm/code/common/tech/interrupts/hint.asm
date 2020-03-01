
; ASM FILE code\common\tech\interrupts\hint.asm :
; 0x1184..0x11DE : Horizontal Interrupt

; =============== S U B R O U T I N E =======================================

HInt:
                
                bsr.w   DisableInterrupts
                cmpi.w  #$8AA0,(VDP_REG0A_STATUS).l
                beq.s   loc_11D0
                movem.l d0-a6,-(sp)
                move.b  (HV_Counter).l,d0
loc_119C:
                
                cmp.b   (HV_Counter).l,d0
                beq.s   loc_119C
                move.w  #$8124,(VDP_Control).l
                move.w  #$8124,(VDP_REG01_STATUS).l
                bsr.w   sub_2686
loc_11B8:
                
                btst    #ENABLE_INT,(INTERRUPT_PARAMETERS).l
                beq.s   loc_11C6
                bsr.w   ProcessVDPQueues
loc_11C6:
                
                bsr.w   EnableInterrupts
                movem.l (sp)+,d0-a6
                rte
loc_11D0:
                
                movem.l d0-a6,-(sp)
                move.w  #$921C,(VDP_Control).l
                bra.s   loc_11B8

    ; End of function HInt

