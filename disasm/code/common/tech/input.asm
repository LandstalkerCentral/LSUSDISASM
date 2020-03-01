
; ASM FILE code\common\tech\input.asm :
; 0x1040..0x1164 : Player input functions

; =============== S U B R O U T I N E =======================================

RefreshPlayerInput:
                
                movem.l d5-d7/a5-a6,-(sp)
                move    sr,d5
                bsr.w   DisableInterrupts
                move.w  #$100,(Z80BusReq).l
loc_1052:
                
                btst    #0,(Z80BusReq).l
                bne.s   loc_1052
                bsr.s   UpdatePlayerInputs
                move.w  #0,(Z80BusReq).l
                move    d5,sr
                movem.l (sp)+,d5-d7/a5-a6
                rts

    ; End of function RefreshPlayerInput


; =============== S U B R O U T I N E =======================================

UpdatePlayerInputs:
                
                lea     (P1_INPUT).l,a5 
                lea     (DATA1).l,a6    
                bsr.s   loc_1086
                neg.b   d6
                add.w   d6,(RNG_SEED).l 
                addq.w  #2,a6
loc_1086:
                
                move.b  #0,(a6)
                nop
                nop
                move.b  (a6),d6
                lsl.b   #2,d6
                andi.b  #$C0,d6
                move.b  #$40,(a6) 
                nop
                nop
                move.b  (a6),d7
                andi.b  #$3F,d7 
                or.b    d7,d6
                add.w   d6,(RNG_SEED).l 
                not.b   d6
                move.b  d6,(a5)+
                rts

    ; End of function UpdatePlayerInputs


; =============== S U B R O U T I N E =======================================

WaitForPlayer1Input:
                
                bsr.s   RefreshPlayerInput
                andi.b  #$FF,(P1_INPUT).l
                bne.s   return_10C4
                bsr.w   WaitForVInt
                bra.s   WaitForPlayer1Input
return_10C4:
                
                rts

    ; End of function WaitForPlayer1Input


; =============== S U B R O U T I N E =======================================

WaitForPlayer1NewButtonPush:
                
                bsr.w   RefreshPlayerInput
                andi.b  #$FF,(P1_INPUT).l
                beq.s   loc_10DA
                bsr.w   WaitForVInt
                bra.s   WaitForPlayer1NewButtonPush
loc_10DA:
                
                bsr.w   RefreshPlayerInput
                andi.b  #$FF,(P1_INPUT).l
                bne.s   return_10EE
                bsr.w   WaitForVInt
                bra.s   loc_10DA
return_10EE:
                
                rts

    ; End of function WaitForPlayer1NewButtonPush


; =============== S U B R O U T I N E =======================================

sub_10F0:
                
                movem.l d7,-(sp)
                bsr.w   RefreshPlayerInput
                move.b  (P1_INPUT).l,d7 
                and.b   (byte_FF0F90).l,d7
                beq.s   loc_1124
                addq.b  #1,(byte_FF0F91).l
                move.b  (byte_FF0F91).l,d7
                cmpi.b  #$A,d7
                bcc.s   loc_1124
                clr.b   (P1_INPUT).l    
                movem.l (sp)+,d7
                rts

    ; End of function sub_10F0


; START OF FUNCTION CHUNK FOR sub_10F0

loc_1124:
                
                clr.b   (byte_FF0F90).l
                clr.b   (byte_FF0F91).l
                movem.l (sp)+,d7
                rts

; END OF FUNCTION CHUNK FOR sub_10F0


; =============== S U B R O U T I N E =======================================

WaitForPlayer1InputFor1Second:
                
                movem.l d5,-(sp)
                moveq   #$3B,d5 
loc_113C:
                
                bsr.w   RefreshPlayerInput
                andi.b  #$FF,(P1_INPUT).l
                bne.s   loc_1152
                bsr.w   WaitForVInt
                dbf     d5,loc_113C
loc_1152:
                
                movem.l (sp)+,d5
                rts

    ; End of function WaitForPlayer1InputFor1Second


; =============== S U B R O U T I N E =======================================

WaitForPlayer1InputFor3Seconds:
                
                movem.l d5,-(sp)
                move.l  #$B3,d5 
                bra.s   loc_113C

    ; End of function WaitForPlayer1InputFor3Seconds

