
; ASM FILE code\common\tech\sound\musicend.asm :
; 0x820..0x868 : Music end-related functions

; =============== S U B R O U T I N E =======================================

WaitForMusicEnd:
                
                movem.w d0,-(sp)
loc_824:
                
                bsr.w   WaitForVInt
                move.w  #$100,(Z80BusReq).l
loc_830:
                
                btst    #0,(Z80BusReq).l
                bne.s   loc_830
                move.b  (Z80_CHANNEL_1_INACTIVE).l,d0
                move.w  #0,(Z80BusReq).l
                tst.b   d0
                beq.s   loc_824
                movem.w (sp)+,d0
                rts

    ; End of function WaitForMusicEnd


; =============== S U B R O U T I N E =======================================

PlayMusicAfterCurrentOne:
                
                movem.w d0,-(sp)
                bsr.s   WaitForMusicEnd
                move.b  (MUSIC_INDEX).l,d0
                sndCom  SOUND_COMMAND_GET_D0_PARAMETER
                movem.w (sp)+,d0
                rts

    ; End of function PlayMusicAfterCurrentOne

