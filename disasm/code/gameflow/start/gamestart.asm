
; ASM FILE code\gameflow\start\gamestart.asm :
; 0x16B6..0x16DC : Game start

; =============== S U B R O U T I N E =======================================

StartGame:
                
                lea     (initStack).w,sp
                jsr     j_DisplaySegaLogo
                jsr     j_ExecuteIntroLoop
                bcc.w   loc_4B8
loc_16CA:
                
                bsr.w   sub_26E8
                bsr.w   sub_8D84
loc_16D2:
                
                bsr.w   MainLoop
                bcc.s   loc_16D2
                bra.w   loc_4DC

    ; End of function StartGame

