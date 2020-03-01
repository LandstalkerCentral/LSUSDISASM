
; ASM FILE code\common\tech\interrupts\interrupts.asm :
; 0x75E..0x820 : Misc. Interruptions

; =============== S U B R O U T I N E =======================================

Trap0_SoundCommand:
                
                movem.l d0-d1/a0,-(sp)
                movea.l $E(sp),a0
                move.w  (a0),d1
                addq.l  #2,$E(sp)
                cmpi.w  #$FFFF,d1
                bne.s   loc_774
                move.w  d0,d1
loc_774:
                
                lea     (SOUND_COMMAND_QUEUE).l,a0
                moveq   #3,d0
loc_77C:
                
                tst.w   (a0)+
                dbeq    d0,loc_77C
                move.w  d1,-2(a0)
                movem.l (sp)+,d0-d1/a0
                rte

    ; End of function Trap0_SoundCommand


; =============== S U B R O U T I N E =======================================

Int_AddressError:
                
                move.l  #'ADDR',(ERROR_TYPE).l
                move.l  $A(sp),(ERROR_ADDRESS).l
                bra.s   EInt

    ; End of function Int_AddressError


; =============== S U B R O U T I N E =======================================

Int_IllegalInstruction:
                
                move.l  #'BAD ',(ERROR_TYPE).l
                move.l  2(sp),(ERROR_ADDRESS).l
                bra.s   EInt

    ; End of function Int_IllegalInstruction


; =============== S U B R O U T I N E =======================================

Int_ZeroDivide:
                
                move.l  #'ZERO',(ERROR_TYPE).l
                move.l  1(sp),(ERROR_ADDRESS).l
                bra.s   EInt

    ; End of function Int_ZeroDivide


; =============== S U B R O U T I N E =======================================

Int_OtherError:
                
                move.l  #'OTHR',(ERROR_TYPE).l
                move.l  2(sp),(ERROR_ADDRESS).l
                bra.w   *+4

    ; End of function Int_OtherError


; START OF FUNCTION CHUNK FOR Int_AddressError

EInt:
                
                nop
                nop
                bra.s   EInt

; END OF FUNCTION CHUNK FOR Int_AddressError


; =============== S U B R O U T I N E =======================================

IntLvl7:
                
                nop
                bra.s   IntLvl7

    ; End of function IntLvl7


; =============== S U B R O U T I N E =======================================

Trap1_:
                
                movem.l d0/a0,-(sp)
                movea.l $A(sp),a0
                move.w  (a0),d0
                addq.l  #2,$A(sp)
                jsr     sub_22EE4
                movem.l (sp)+,d0/a0
                rte

    ; End of function Trap1_


; =============== S U B R O U T I N E =======================================

Trap2_:
                
                movem.l d0/a1,-(sp)
                movea.l $A(sp),a1
                move.w  (a1),d0
                move.w  (a0,d0.w),d0
                addq.l  #2,$A(sp)
                jsr     sub_22EE4
                movem.l (sp)+,d0/a1
                rte

    ; End of function Trap2_

