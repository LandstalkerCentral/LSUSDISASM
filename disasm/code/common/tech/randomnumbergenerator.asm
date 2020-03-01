
; ASM FILE code\common\tech\randomnumbergenerator.asm :
; 0x1164..0x1184 : Random Number Generator

; =============== S U B R O U T I N E =======================================

; d6=range

GenerateRandomNumber:
                
                move.w  (RNG_SEED).l,d7 
                mulu.w  #$D,d7
                addi.w  #7,d7
                andi.l  #$FFFF,d7
                move.w  d7,(RNG_SEED).l 
                mulu.w  d6,d7
                swap    d7
                rts

    ; End of function GenerateRandomNumber

