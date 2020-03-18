
; GAME SECTION 01 :
; 0x000000..0x010300 : Technical Layer, Initialization, Low Level Game Engine
; FREE SPACE : 628 bytes.


                include "code\romheader.asm"    ; ROM header
MainLoopDelay:  dc.w 0
BuildDate:      dc.b '93/07/13 20:03'
DebugModeAccessWord:
                dc.w $FFFF

; =============== S U B R O U T I N E =======================================

j_EnableDisplayOnVDP:
                
                jmp     (EnableDisplayOnVDP).l

    ; End of function j_EnableDisplayOnVDP


; =============== S U B R O U T I N E =======================================

j_DisableDisplayOnVDP:
                
                jmp     (DisableDisplayOnVDP).l

    ; End of function j_DisableDisplayOnVDP


; =============== S U B R O U T I N E =======================================

j_EnableInterrupts:
                
                jmp     (EnableInterrupts).l

    ; End of function j_EnableInterrupts


; =============== S U B R O U T I N E =======================================

j_DisableInterrupts:
                
                jmp     (DisableInterrupts).l

    ; End of function j_DisableInterrupts


; =============== S U B R O U T I N E =======================================

j_EnableDisplayAndInterrupts:
                
                jmp     (EnableDisplayAndInterrupts).l

    ; End of function j_EnableDisplayAndInterrupts


; =============== S U B R O U T I N E =======================================

j_DisableDisplayAndInterrupts:
                
                jmp     (DisableDisplayAndInterrupts).l

    ; End of function j_DisableDisplayAndInterrupts


; =============== S U B R O U T I N E =======================================

j_ActivateIntDMAQueueProcessing:
                
                jmp     (ActivateIntDMAQueueProcessing).l

    ; End of function j_ActivateIntDMAQueueProcessing


; =============== S U B R O U T I N E =======================================

j_DeactivateIntDMAQueueProcessing:
                
                jmp     (DeactivateIntDMAQueueProcessing).l

    ; End of function j_DeactivateIntDMAQueueProcessing


; =============== S U B R O U T I N E =======================================

j_DuplicatePalettes:
                
                jmp     (DuplicatePalettes).l

    ; End of function j_DuplicatePalettes


; =============== S U B R O U T I N E =======================================

j_AppyCRAMDMA:
                
                jmp     (ApplyDMAForCRAM).l

    ; End of function j_AppyCRAMDMA


; =============== S U B R O U T I N E =======================================

sub_24E:
                
                jmp     (sub_98A).l

    ; End of function sub_24E


; =============== S U B R O U T I N E =======================================

sub_254:
                
                jmp     (sub_9A8).l

    ; End of function sub_254


; =============== S U B R O U T I N E =======================================

j_ClearVsramAndSprites:
                
                jmp     (ClearVsramAndSprites).l

    ; End of function j_ClearVsramAndSprites


; =============== S U B R O U T I N E =======================================

j_ClearScrollTableData:
                
                jmp     (ClearScrollTableData).l

    ; End of function j_ClearScrollTableData


; =============== S U B R O U T I N E =======================================

j_ClearSpriteTable:
                
                jmp     (ClearSpriteTable).l

    ; End of function j_ClearSpriteTable


; =============== S U B R O U T I N E =======================================

j_UpdateVDPSpriteTable:
                
                jmp     (UpdateVDPSpriteTable).l

    ; End of function j_UpdateVDPSpriteTable


; =============== S U B R O U T I N E =======================================

j_WaitForVInt:
                
                jmp     (WaitForVInt).l

    ; End of function j_WaitForVInt


; =============== S U B R O U T I N E =======================================

j_Sleep:
                
                jmp     (Sleep).l       

    ; End of function j_Sleep


; =============== S U B R O U T I N E =======================================

sub_27E:
                
                jmp     (sub_BAA).l

    ; End of function sub_27E


; =============== S U B R O U T I N E =======================================

sub_284:
                
                jmp     (loc_BE0).l

    ; End of function sub_284


; =============== S U B R O U T I N E =======================================

sub_28A:
                
                jmp     (sub_BF6).l

    ; End of function sub_28A


; =============== S U B R O U T I N E =======================================

sub_290:
                
                jmp     (sub_E64).l

    ; End of function sub_290


; =============== S U B R O U T I N E =======================================

j_RequestVDPCommandQueueProcessing:
                
                jmp     (RequestVDPCommandQueueProcessing).l

    ; End of function j_RequestVDPCommandQueueProcessing


; =============== S U B R O U T I N E =======================================

j_WaitForVDPCommandQueueProcessing:
                
                jmp     (WaitForVDPCommandQueueProcessing).l

    ; End of function j_WaitForVDPCommandQueueProcessing


; =============== S U B R O U T I N E =======================================

j_EnableDMAQueueProcessing:
                
                jmp     (EnableDMAQueueProcessing).l

    ; End of function j_EnableDMAQueueProcessing


; =============== S U B R O U T I N E =======================================

j_WaitForDMAQueueProcessing:
                
                jmp     (WaitForDMAQueueProcessing).l

    ; End of function j_WaitForDMAQueueProcessing


; =============== S U B R O U T I N E =======================================

sub_2AE:
                
                jmp     (sub_C76).l

    ; End of function sub_2AE


; =============== S U B R O U T I N E =======================================

sub_2B4:
                
                jmp     (loc_CFC).l

    ; End of function sub_2B4


; =============== S U B R O U T I N E =======================================

sub_2BA:
                
                jmp     (loc_C7C).l

    ; End of function sub_2BA


; =============== S U B R O U T I N E =======================================

j_ApplyImmediateVramDMA:
                
                jmp     (ApplyImmediateVramDMA).l

    ; End of function j_ApplyImmediateVramDMA


; =============== S U B R O U T I N E =======================================

j_ApplyVIntVramDMA:
                
                jmp     (ApplyVIntVramDMA).l

    ; End of function j_ApplyVIntVramDMA


; =============== S U B R O U T I N E =======================================

j_UpdateVDPHScrollData:
                
                jmp     (UpdateVDPHScrollData).l

    ; End of function j_UpdateVDPHScrollData


; =============== S U B R O U T I N E =======================================

j_UpdateForegroundHScrollData:
                
                jmp     (UpdateForegroundHScrollData).l

    ; End of function j_UpdateForegroundHScrollData


; =============== S U B R O U T I N E =======================================

j_UpdateBackgroundHScrollData:
                
                jmp     (UpdateBackgroundHScrollData).l

    ; End of function j_UpdateBackgroundHScrollData


; =============== S U B R O U T I N E =======================================

j_UpdateVDPVScrollData:
                
                jmp     (UpdateVDPVScrollData).l

    ; End of function j_UpdateVDPVScrollData


; =============== S U B R O U T I N E =======================================

j_UpdateForegroundVScrolData:
                
                jmp     (UpdateForegroundVScrolData).l

    ; End of function j_UpdateForegroundVScrolData


; =============== S U B R O U T I N E =======================================

j_UpdateBackgroundVScrollData:
                
                jmp     (UpdateBackgroundVScrollData).l

    ; End of function j_UpdateBackgroundVScrollData


; =============== S U B R O U T I N E =======================================

; related to decompression

sub_2F0:
                
                jmp     (sub_4A94).l

    ; End of function sub_2F0


; =============== S U B R O U T I N E =======================================

; could also be related to decompression

sub_2F6:
                
                jmp     (sub_4A7A).l

    ; End of function sub_2F6


; =============== S U B R O U T I N E =======================================

sub_2FC:
                
                jmp     (sub_7984).l

    ; End of function sub_2FC


; =============== S U B R O U T I N E =======================================

sub_302:
                
                jmp     sub_C3B4

    ; End of function sub_302


; =============== S U B R O U T I N E =======================================

j_GetVDPRegisterStatus:
                
                jmp     (GetVDPRegisterStatus).l

    ; End of function j_GetVDPRegisterStatus


; =============== S U B R O U T I N E =======================================

j_SetVDPRegister:
                
                jmp     (SetVDPRegister).l

    ; End of function j_SetVDPRegister


; =============== S U B R O U T I N E =======================================

j_ApplyLogicalOrOnVDPRegister:
                
                jmp     (ApplyLogicalOrOnVDPRegister).l

    ; End of function j_ApplyLogicalOrOnVDPRegister


; =============== S U B R O U T I N E =======================================

j_ApplyLogicalAndOnVDPRegister:
                
                jmp     (ApplyLogicalAndOnVDPRegister).l

    ; End of function j_ApplyLogicalAndOnVDPRegister


; =============== S U B R O U T I N E =======================================

j_ApplyVramDMAFill:
                
                jmp     (ApplyVramDMAFill).l

    ; End of function j_ApplyVramDMAFill


; =============== S U B R O U T I N E =======================================

j_CopyPalette:
                
                jmp     (CopyPalette).l

    ; End of function j_CopyPalette


; =============== S U B R O U T I N E =======================================

sub_32C:
                
                jmp     (loc_966).l

    ; End of function sub_32C


; =============== S U B R O U T I N E =======================================

sub_332:
                
                jmp     (loc_96A).l

    ; End of function sub_332


; =============== S U B R O U T I N E =======================================

j_WriteAsciiNumber:
                
                jmp     (WriteAsciiNumber).l

    ; End of function j_WriteAsciiNumber


; =============== S U B R O U T I N E =======================================

j_RefreshPlayerInput:
                
                jmp     (RefreshPlayerInput).l

    ; End of function j_RefreshPlayerInput


; =============== S U B R O U T I N E =======================================

j_WaitForPlayerInput:
                
                jmp     (WaitForPlayer1Input).l

    ; End of function j_WaitForPlayerInput


; =============== S U B R O U T I N E =======================================

j_WaitForPlayer1NewButtonPush:
                
                jmp     (WaitForPlayer1NewButtonPush).l

    ; End of function j_WaitForPlayer1NewButtonPush


; =============== S U B R O U T I N E =======================================

sub_350:
                
                jmp     (sub_10F0).l

    ; End of function sub_350


; =============== S U B R O U T I N E =======================================

j_WaitForPlayer1InputFor1Second:
                
                jmp     (WaitForPlayer1InputFor1Second).l

    ; End of function j_WaitForPlayer1InputFor1Second


; =============== S U B R O U T I N E =======================================

j_WaitForPlayer1InputFor3Seconds:
                
                jmp     (WaitForPlayer1InputFor3Seconds).l

    ; End of function j_WaitForPlayer1InputFor3Seconds


; =============== S U B R O U T I N E =======================================

; d6=range

j_GenerateRandomNumber:
                
                jmp     (GenerateRandomNumber).l

    ; End of function j_GenerateRandomNumber


; =============== S U B R O U T I N E =======================================

sub_368:
                
                jmp     (sub_972).l

    ; End of function sub_368


; =============== S U B R O U T I N E =======================================

sub_36E:
                
                jmp     (sub_990).l

    ; End of function sub_36E


; =============== S U B R O U T I N E =======================================

sub_374:
                
                jmp     (sub_9BE).l

    ; End of function sub_374


; =============== S U B R O U T I N E =======================================

sub_37A:
                
                jmp     (sub_9CE).l

    ; End of function sub_37A


; =============== S U B R O U T I N E =======================================

sub_380:
                
                jmp     (sub_31A6).l

    ; End of function sub_380


; =============== S U B R O U T I N E =======================================

sub_386:
                
                jmp     (sub_31FE).l

    ; End of function sub_386


; =============== S U B R O U T I N E =======================================

sub_38C:
                
                jmp     (sub_31A0).l

    ; End of function sub_38C


; =============== S U B R O U T I N E =======================================

sub_392:
                
                jmp     (sub_31F8).l

    ; End of function sub_392


; =============== S U B R O U T I N E =======================================

sub_398:
                
                jmp     sub_D4AE

    ; End of function sub_398


; =============== S U B R O U T I N E =======================================

sub_39E:
                
                jmp     sub_EC34

    ; End of function sub_39E


; =============== S U B R O U T I N E =======================================

sub_3A4:
                
                jmp     (sub_2F76).l

    ; End of function sub_3A4


; =============== S U B R O U T I N E =======================================

sub_3AA:
                
                jmp     (loc_3FD4).l

    ; End of function sub_3AA


; =============== S U B R O U T I N E =======================================

sub_3B0:
                
                jmp     sub_9C82

    ; End of function sub_3B0


; =============== S U B R O U T I N E =======================================

sub_3B6:
                
                jmp     (sub_79B8).l

    ; End of function sub_3B6


; =============== S U B R O U T I N E =======================================

sub_3BC:
                
                jmp     (sub_3456).l

    ; End of function sub_3BC


; =============== S U B R O U T I N E =======================================

sub_3C2:
                
                jmp     (sub_44C4).l

    ; End of function sub_3C2


; =============== S U B R O U T I N E =======================================

sub_3C8:
                
                jmp     (sub_3302).l

    ; End of function sub_3C8


; =============== S U B R O U T I N E =======================================

j_SaveGame:
                
                jmp     (WriteSave).l

    ; End of function j_SaveGame


; =============== S U B R O U T I N E =======================================

sub_3D4:
                
                jmp     (sub_2FEA).l

    ; End of function sub_3D4


; =============== S U B R O U T I N E =======================================

sub_3DA:
                
                jmp     (sub_2824).l

    ; End of function sub_3DA


; =============== S U B R O U T I N E =======================================

sub_3E0:
                
                jmp     sub_8E9C

    ; End of function sub_3E0


; =============== S U B R O U T I N E =======================================

sub_3E6:
                
                jmp     sub_8EF4

    ; End of function sub_3E6


; =============== S U B R O U T I N E =======================================

sub_3EC:
                
                jmp     (sub_620E).l

    ; End of function sub_3EC


; =============== S U B R O U T I N E =======================================

sub_3F2:
                
                jmp     sub_A14C

    ; End of function sub_3F2


; =============== S U B R O U T I N E =======================================

sub_3F8:
                
                jmp     (sub_401C).l

    ; End of function sub_3F8


; =============== S U B R O U T I N E =======================================

sub_3FE:
                
                jmp     (loc_72E8).l

    ; End of function sub_3FE


; =============== S U B R O U T I N E =======================================

sub_404:
                
                jmp     (sub_249A).l

    ; End of function sub_404


; =============== S U B R O U T I N E =======================================

sub_40A:
                
                jmp     (sub_4B52).l

    ; End of function sub_40A


; =============== S U B R O U T I N E =======================================

sub_410:
                
                jmp     sub_8EA0

    ; End of function sub_410


; =============== S U B R O U T I N E =======================================

sub_416:
                
                jmp     sub_8EB4

    ; End of function sub_416


; =============== S U B R O U T I N E =======================================

sub_41C:
                
                jmp     sub_95AC

    ; End of function sub_41C


; =============== S U B R O U T I N E =======================================

sub_422:
                
                jmp     sub_D9FC

    ; End of function sub_422


; =============== S U B R O U T I N E =======================================

sub_428:
                
                jmp     sub_8FB4

    ; End of function sub_428


; =============== S U B R O U T I N E =======================================

sub_42E:
                
                jmp     (loc_6212).l

    ; End of function sub_42E


; =============== S U B R O U T I N E =======================================

sub_434:
                
                jmp     sub_A0C2

    ; End of function sub_434


; =============== S U B R O U T I N E =======================================

sub_43A:
                
                jmp     (sub_6224).l

    ; End of function sub_43A


; =============== S U B R O U T I N E =======================================

sub_440:
                
                jmp     sub_A180

    ; End of function sub_440


; =============== S U B R O U T I N E =======================================

j_PlayMusicAfterCurrentOne:
                
                jmp     PlayMusicAfterCurrentOne(pc)

    ; End of function j_PlayMusicAfterCurrentOne


; =============== S U B R O U T I N E =======================================

sub_44A:
                
                nop

    ; End of function sub_44A


; =============== S U B R O U T I N E =======================================

sub_44C:
                
                jmp     sub_E154

    ; End of function sub_44C


; =============== S U B R O U T I N E =======================================

sub_452:
                
                jmp     (sub_792C).l

    ; End of function sub_452


; =============== S U B R O U T I N E =======================================

sub_458:
                
                jmp     (sub_7958).l

    ; End of function sub_458


; =============== S U B R O U T I N E =======================================

sub_45E:
                
                jmp     sub_E110

    ; End of function sub_45E


; =============== S U B R O U T I N E =======================================

sub_464:
                
                jmp     (sub_77A6).l

    ; End of function sub_464


; =============== S U B R O U T I N E =======================================

sub_46A:
                
                jmp     (sub_78B6).l

    ; End of function sub_46A


; =============== S U B R O U T I N E =======================================

j_WaitForMusicEnd:
                
                jmp     WaitForMusicEnd(pc)

    ; End of function j_WaitForMusicEnd


; =============== S U B R O U T I N E =======================================

sub_474:
                
                nop

    ; End of function sub_474


; =============== S U B R O U T I N E =======================================

sub_476:
                
                jmp     (sub_A42).l

    ; End of function sub_476


; =============== S U B R O U T I N E =======================================

sub_47C:
                
                jmp     (sub_A52).l

    ; End of function sub_47C


; =============== S U B R O U T I N E =======================================

sub_482:
                
                jmp     sub_86FA

    ; End of function sub_482


; =============== S U B R O U T I N E =======================================

sub_488:
                
                jmp     (sub_77F4).l

    ; End of function sub_488


; =============== S U B R O U T I N E =======================================

sub_48E:
                
                jmp     sub_FB1E

    ; End of function sub_48E


; =============== S U B R O U T I N E =======================================

sub_494:
                
                jmp     (sub_2996).l

    ; End of function sub_494


; =============== S U B R O U T I N E =======================================

sub_49A:
                
                jmp     sub_9CC2

    ; End of function sub_49A


; =============== S U B R O U T I N E =======================================

sub_4A0:
                
                jmp     sub_9D04

    ; End of function sub_4A0


; =============== S U B R O U T I N E =======================================

sub_4A6:
                
                jmp     sub_8D84

    ; End of function sub_4A6


; START OF FUNCTION CHUNK FOR sub_15530

loc_4AC:
                
                jmp     loc_4BE(pc)

; END OF FUNCTION CHUNK FOR sub_15530


; =============== S U B R O U T I N E =======================================

sub_4B0:
                
                nop

    ; End of function sub_4B0


; =============== S U B R O U T I N E =======================================

sub_4B2:
                
                jmp     (sub_79E4).l

    ; End of function sub_4B2

                include "code\gameflow\start\systeminit.asm"    ; System Initialization
                include "code\common\tech\interrupts\interrupts.asm"    ; Misc. Interruptions
                include "code\common\tech\sound\musicend.asm"    ; Music end-related functions
                include "code\common\tech\graphics\vdp.asm"    ; VDP functions

; =============== S U B R O U T I N E =======================================

WriteAsciiNumber:
                
                movem.l d5-d7/a5-a6,-(sp)
                lea     PowersOfTen(pc), a5
                nop
                lea     (LOADED_NUMBER).l,a6
                moveq   #9,d5
loc_FEC:
                
                clr.b   d6
loc_FEE:
                
                addq.w  #1,d6
                sub.l   (a5),d7
                bcc.s   loc_FEE
                move.b  d6,(a6)+
                add.l   (a5)+,d7
                dbf     d5,loc_FEC
                lea     (LOADED_NUMBER).l,a6
                moveq   #8,d6
loc_1004:
                
                cmpi.b  #1,(a6)
                bne.w   loc_1012
                clr.b   (a6)+
                dbf     d6,loc_1004
loc_1012:
                
                movem.l (sp)+,d5-d7/a5-a6
                rts

    ; End of function WriteAsciiNumber

PowersOfTen:    dc.l 1000000000
                dc.l 100000000
                dc.l 10000000
                dc.l 1000000
                dc.l 100000
                dc.l 10000
                dc.l 1000
                dc.l 100
                dc.l 10
                dc.l 1
                include "code\common\tech\input.asm"    ; Player input functions
                include "code\common\tech\randomnumbergenerator.asm"    ; Random Number Generator
                include "code\common\tech\interrupts\hint.asm"    ; Horizontal Interrupt
                include "code\common\tech\interrupts\vint.asm"    ; Vertical Interrupt
                include "code\common\tech\sram\gamesaves.asm"    ; Game save SRAM management
                include "code\gameflow\start\gamestart.asm"    ; Game start
                include "code\gameflow\mainloop.asm"    ; Main Loop

; =============== S U B R O U T I N E =======================================

sub_1788:
                
                move.w  (word_FF12DE).l,d0
                beq.s   loc_17C6
                move.b  (word_FF12DE).l,(P1_INPUT).l
                cmpi.b  #$FE,d0
                beq.s   return_17BE
                subq.b  #1,d0
                bne.s   loc_17B8
                movea.l (dword_FF1870).l,a0
                move.b  (a0)+,d0
                bmi.s   loc_17C0
                lsl.w   #8,d0
                move.b  (a0)+,d0
                move.l  a0,(dword_FF1870).l
loc_17B8:
                
                move.w  d0,(word_FF12DE).l
return_17BE:
                
                rts
loc_17C0:
                
                clr.w   (word_FF12DE).l
loc_17C6:
                
                tst.b   (byte_FF1145).l
                bne.s   loc_17E6
                bsr.w   RefreshPlayerInput
                btst    #2,(STATUS_BITMAP).l
                beq.s   return_17E4
                andi.b  #$80,(P1_INPUT).l
return_17E4:
                
                rts
loc_17E6:
                
                clr.b   (P1_INPUT).l    
                rts

    ; End of function sub_1788


; =============== S U B R O U T I N E =======================================

sub_17EE:
                
                move.w  (byte_FF5430).l,d0
                bmi.s   return_1856
                lea     (dword_FF5400).l,a0
                adda.w  d0,a0
                move.w  (word_FF1182).l,d2
                move.b  9(a0),d0
                andi.w  #$F,d0
                beq.s   return_1856
                move.w  d0,(word_FF1182).l
                bset    #3,(dword_FF542C).l
                move.b  $2D(a0),d1
                move.b  #9,d0
                lsr.b   #1,d1
                bcs.w   loc_192A
                move.b  #6,d0
                lsr.b   #1,d1
                bcs.w   loc_192A
                move.b  #5,d0
                lsr.b   #1,d1
                bcs.w   loc_192A
                move.b  #$A,d0
                lsr.b   #1,d1
                bcs.w   loc_192A
                move.w  d2,(word_FF1182).l
                bclr    #3,(dword_FF542C).l
return_1856:
                
                rts

    ; End of function sub_17EE


; =============== S U B R O U T I N E =======================================

sub_1858:
                
                move.w  (byte_FF5430).l,d0
                bmi.s   return_18C2
                lea     (dword_FF5400).l,a0
                adda.w  d0,a0
                btst    #5,$2D(a0)
                beq.s   loc_188E
                move.w  $54(a0),d7
                sub.w   (word_FF5412).l,d7
                addq.w  #1,d7
                beq.s   return_18C2
                add.w   d7,(word_FF5412).l
                add.w   d7,(word_FF5454).l
                bra.w   loc_2326
loc_188E:
                
                btst    #4,$2D(a0)
                beq.s   return_18C2
                move.w  (word_FF5412).l,d7
                sub.w   $54(a0),d7
                subq.w  #1,d7
                beq.s   return_18C2
                lea     (dword_FF5400).l,a0
                bsr.w   sub_32C6
                move.b  d5,d7
                beq.s   return_18C2
                sub.w   d7,(word_FF5412).l
                sub.w   d7,(word_FF5454).l
                bra.w   loc_2242
return_18C2:
                
                rts

    ; End of function sub_1858


; =============== S U B R O U T I N E =======================================

sub_18C4:
                
                bclr    #6,(STATUS_BITMAP).l
                clr.w   d0
                bsr.w   sub_2FEA
                bcc.s   loc_18DC
                bset    #6,(STATUS_BITMAP).l
loc_18DC:
                
                tst.w   (DebugModeAccessWord).w
                bmi.s   loc_18F4
                move.w  #8,(word_FF1182).l
                btst    #INPUT_C,(P2_INPUT).l
                bne.s   loc_18FC
loc_18F4:
                
                move.w  #2,(word_FF1182).l
loc_18FC:
                
                move.b  (P1_INPUT).l,d0 
                lea     (dword_FF5400).l,a5
                andi.b  #$F,d0
                tst.w   (word_FF12DE).l
                bne.s   loc_1922
                move.b  (STATUS_BITMAP).l,d1
                andi.b  #2,d1
                lsl.b   #3,d1
                or.b    d1,d0
loc_1922:
                
                lsl.b   #2,d0
                ext.w   d0
                jmp     sub_1936(pc,d0.w)

    ; End of function sub_18C4


; START OF FUNCTION CHUNK FOR sub_17EE

loc_192A:
                
                lea     (dword_FF5400).l,a5
                andi.b  #$F,d0
                bra.s   loc_1922

; END OF FUNCTION CHUNK FOR sub_17EE


; =============== S U B R O U T I N E =======================================

sub_1936:
                
                bra.w   nullsub_3
                bra.w   sub_19B8
                bra.w   sub_1A00
                bra.w   nullsub_3
                bra.w   sub_1A24
                bra.w   loc_1F7C
                bra.w   loc_1DF2
                bra.w   nullsub_3
                bra.w   sub_19DC
                bra.w   loc_1A48
                bra.w   loc_1C5C
                bra.w   nullsub_3
                bra.w   nullsub_3
                bra.w   nullsub_3
                bra.w   nullsub_3
                bra.w   nullsub_3
                bra.w   nullsub_3
                bra.w   sub_1A00
                bra.w   sub_19B8
                bra.w   nullsub_3
                bra.w   sub_19DC
                bra.w   loc_1C5C
                bra.w   loc_1A48
                bra.w   nullsub_3
                bra.w   sub_1A24
                bra.w   loc_1DF2
                bra.w   loc_1F7C
                bra.w   nullsub_3
                bra.w   nullsub_3
                bra.w   nullsub_3
                bra.w   nullsub_3
                bra.w   *+4
nullsub_3:
                
                rts

    ; End of function sub_1936


; =============== S U B R O U T I N E =======================================

sub_19B8:
                
                tst.b   (STATUS_BITMAP).l
                bmi.s   loc_19CE
                btst    #6,4(a5)
                beq.w   loc_1A48
                bra.w   loc_1F7C

    ; End of function sub_19B8


; START OF FUNCTION CHUNK FOR sub_19B8

loc_19CE:
                
                btst    #6,4(a5)
                beq.w   loc_1F7C
                bra.w   loc_1A48

; END OF FUNCTION CHUNK FOR sub_19B8


; =============== S U B R O U T I N E =======================================

sub_19DC:
                
                tst.b   (STATUS_BITMAP).l
                bmi.s   loc_19F2
                btst    #6,4(a5)
                beq.w   loc_1A48
                bra.w   loc_1C5C

    ; End of function sub_19DC


; START OF FUNCTION CHUNK FOR sub_19DC

loc_19F2:
                
                btst    #6,4(a5)
                beq.w   loc_1C5C
                bra.w   loc_1A48

; END OF FUNCTION CHUNK FOR sub_19DC


; =============== S U B R O U T I N E =======================================

sub_1A00:
                
                tst.b   (STATUS_BITMAP).l
                bmi.s   loc_1A16
                btst    #6,4(a5)
                beq.w   loc_1DF2
                bra.w   loc_1C5C

    ; End of function sub_1A00


; START OF FUNCTION CHUNK FOR sub_1A00

loc_1A16:
                
                btst    #6,4(a5)
                beq.w   loc_1C5C
                bra.w   loc_1DF2

; END OF FUNCTION CHUNK FOR sub_1A00


; =============== S U B R O U T I N E =======================================

sub_1A24:
                
                tst.b   (STATUS_BITMAP).l
                bmi.s   loc_1A3A
                btst    #6,4(a5)
                beq.w   loc_1DF2
                bra.w   loc_1F7C

    ; End of function sub_1A24


; START OF FUNCTION CHUNK FOR sub_1A24

loc_1A3A:
                
                btst    #6,4(a5)
                beq.w   loc_1F7C
                bra.w   loc_1DF2

; END OF FUNCTION CHUNK FOR sub_1A24


; START OF FUNCTION CHUNK FOR sub_1936

loc_1A48:
                
                tst.w   (word_FF12DE).l
                bne.s   loc_1A58
                bclr    #7,(STATUS_BITMAP).l
loc_1A58:
                
                move.w  $1C(a5),d1
                move.w  (word_FF1182).l,d0
                sub.w   d0,$1C(a5)
                sub.w   d0,$1E(a5)
                move.w  $1C(a5),d0
                andi.b  #8,d0
                andi.b  #8,d1
                cmp.b   d0,d1
                bcc.w   loc_1B36
                bsr.w   sub_30E4
                bcc.w   loc_1B36
                btst    #3,(dword_FF542C).l
                beq.s   loc_1A98
                btst    #4,$22(a0)
                bne.w   loc_1B36
loc_1A98:
                
                bsr.w   sub_1B6E
                move.b  2(a5),d2
                addq.b  #1,d2
                andi.b  #$FE,d2
                cmpi.b  #8,d2
                bne.s   loc_1B0A
                move.b  $23(a5),d2
                andi.b  #$3F,d2 
                cmpi.b  #$C,d2
                bne.s   loc_1B0A
                bsr.w   sub_33EA
                tst.w   d5
                bne.s   loc_1AC4
                rts
loc_1AC4:
                
                addq.w  #1,$12(a5)
                addq.w  #1,$54(a5)
                bset    #4,(dword_FF542C).l
                bne.s   loc_1AE6
                clr.w   $26(a5)
                move.b  #$FF,$D(a5)
                andi.b  #$E0,$21(a5)
loc_1AE6:
                
                andi.b  #$3F,4(a5) 
                addq.b  #1,$D(a5)
                clr.b   $20(a5)
                move.b  (word_FF0F9C+1).l,d7
                andi.b  #3,d7
                bne.s   loc_1B04

; END OF FUNCTION CHUNK FOR sub_1936

                sndCom  SFX_STEP

; START OF FUNCTION CHUNK FOR sub_1936

loc_1B04:
                
                moveq   #1,d7
                bra.w   loc_2326
loc_1B0A:
                
                bclr    #4,(dword_FF542C).l
                move.w  #1,(word_FF1182).l
                andi.b  #$3F,d5 
                cmpi.b  #$E,d5
                beq.w   loc_1C38
                cmp.b   d0,d3
                bcc.w   loc_1F7C
                cmp.b   d1,d3
                bcc.w   loc_1C5C
                bra.w   loc_1C38
loc_1B36:
                
                bclr    #4,(dword_FF542C).l
                clr.w   d0
                tst.b   (byte_FF1142).l 
                beq.s   loc_1B4E
loc_1B48:
                
                bsr.w   sub_3058
                bra.s   loc_1B5C
loc_1B4E:
                
                btst    #6,(STATUS_BITMAP).l
                bne.s   loc_1B48
                bsr.w   sub_2F76
loc_1B5C:
                
                bcc.s   loc_1B7E
                tst.b   $C(a0)
                bpl.s   loc_1B68
                bsr.w   sub_25B2
loc_1B68:
                
                bsr.s   sub_1B6E
                bra.w   loc_1C38

; END OF FUNCTION CHUNK FOR sub_1936


; =============== S U B R O U T I N E =======================================

sub_1B6E:
                
                move.w  (word_FF1182).l,d2
                add.w   d2,$1C(a5)
                add.w   d2,$1E(a5)
                rts

    ; End of function sub_1B6E


; START OF FUNCTION CHUNK FOR sub_1936

loc_1B7E:
                
                btst    #4,8(a5)
                beq.s   loc_1B8E
                lsr     (word_FF1182).l
                bsr.s   sub_1B6E
loc_1B8E:
                
                move.w  $16(a5),d0
                move.b  d0,d1
                sub.w   (word_FF1182).l,d0
                move.w  d0,$16(a5)
                andi.b  #$F,d0
                move.b  d0,3(a5)
                andi.b  #8,d0
                andi.b  #8,d1
                cmp.b   d0,d1
                bcc.s   loc_1BD0
                subq.b  #1,(dword_FF5400+1).l
                subi.w  #$94,(dword_FF5428).l 
                movea.w $28(a5),a6
                move.w  $22(a5),(unk_FF1208).l
                move.w  (a6),$22(a5)
loc_1BD0:
                
                move.w  (PLAYER_Y).l,d0
                move.b  d0,d1
                sub.w   (word_FF1182).l,d0
                move.w  d0,(PLAYER_Y).l
                andi.b  #$F,d0
                move.b  d0,(word_FF1126+1).l
                andi.b  #8,d0
                andi.b  #8,d1
                cmp.b   d0,d1
                bcc.s   loc_1C30
                subq.b  #1,(byte_FF1125).l
                subi.w  #$20,(word_FF1184).l 
                bpl.s   loc_1C24
                addi.w  #$210,(word_FF1184).l
                cmpi.w  #$200,(word_FF1184).l
                bcs.s   loc_1C24
                subi.w  #$20,(word_FF1184).l 
loc_1C24:
                
                jsr     sub_A730
                jsr     sub_A61C
loc_1C30:
                
                bsr.w   sub_240A
                bsr.w   sub_2436
loc_1C38:
                
                bclr    #3,(dword_FF542C).l
                bne.s   return_1C5A
                andi.b  #$3F,(byte_FF5404).l 
                bset    #0,(dword_FF542C+1).l
                bset    #0,(word_FF546D).l
return_1C5A:
                
                rts
loc_1C5C:
                
                tst.w   (word_FF12DE).l
                bne.s   loc_1C6C
                bclr    #7,(STATUS_BITMAP).l
loc_1C6C:
                
                bclr    #4,(dword_FF542C).l
                move.w  $1A(a5),d1
                move.w  (word_FF1182).l,d0
                add.w   d0,$18(a5)
                add.w   d0,$1A(a5)
                move.w  $1A(a5),d0
                andi.b  #8,d0
                andi.b  #8,d1
                cmp.b   d0,d1
                bls.s   loc_1CD6
                bsr.w   loc_3146
                bcc.s   loc_1CD6
                btst    #3,(dword_FF542C).l
                beq.s   loc_1CB0
                btst    #4,$22(a0)
                bne.w   loc_1CD6
loc_1CB0:
                
                bsr.s   sub_1D06
                move.w  #1,(word_FF1182).l
                andi.b  #$3F,d5 
                cmpi.b  #$E,d5
                beq.w   loc_1DC6
                cmp.b   d0,d3
                bcc.w   loc_1A48
                cmp.b   d1,d3
                bcc.w   loc_1DF2
                bra.w   loc_1DC6
loc_1CD6:
                
                clr.w   d0
                tst.b   (byte_FF1142).l 
                beq.s   loc_1CE6
loc_1CE0:
                
                bsr.w   sub_3058
                bra.s   loc_1CF4
loc_1CE6:
                
                btst    #6,(STATUS_BITMAP).l
                bne.s   loc_1CE0
                bsr.w   sub_2F76
loc_1CF4:
                
                bcc.s   loc_1D16
                tst.b   $C(a0)
                bpl.s   loc_1D00
                bsr.w   sub_25B2
loc_1D00:
                
                bsr.s   sub_1D06
                bra.w   loc_1DC6

; END OF FUNCTION CHUNK FOR sub_1936


; =============== S U B R O U T I N E =======================================

sub_1D06:
                
                move.w  (word_FF1182).l,d2
                sub.w   d2,$18(a5)
                sub.w   d2,$1A(a5)
                rts

    ; End of function sub_1D06


; START OF FUNCTION CHUNK FOR sub_1936

loc_1D16:
                
                btst    #4,8(a5)
                beq.s   loc_1D26
                lsr     (word_FF1182).l
                bsr.s   sub_1D06
loc_1D26:
                
                move.w  $14(a5),d0
                move.b  d0,d1
                add.w   (word_FF1182).l,d0
                move.w  d0,$14(a5)
                andi.b  #$F,d0
                move.b  d0,2(a5)
                andi.b  #8,d0
                andi.b  #8,d1
                cmp.b   d1,d0
                bcc.s   loc_1D66
                addq.b  #1,(dword_FF5400).l
                addi.w  #2,$28(a5)
                movea.w $28(a5),a6
                move.w  $22(a5),(unk_FF1208).l
                move.w  (a6),$22(a5)
loc_1D66:
                
                move.w  (PLAYER_X).l,d0
                move.b  d0,d1
                add.w   (word_FF1182).l,d0
                move.w  d0,(PLAYER_X).l
                andi.b  #$F,d0
                move.b  d0,(word_FF1126).l
                andi.b  #8,d0
                andi.b  #8,d1
                cmp.b   d1,d0
                bcc.s   loc_1DBE
                addq.b  #1,(byte_FF1124).l
                move.w  (word_FF1184).l,d0
                addq.w  #1,d0
                move.w  d0,(word_FF1184).l
                andi.w  #$1F,d0
                bne.s   loc_1DB2
                subi.w  #$20,(word_FF1184).l 
loc_1DB2:
                
                jsr     sub_A730
                jsr     sub_A698
loc_1DBE:
                
                bsr.w   sub_2452
                bsr.w   sub_2436
loc_1DC6:
                
                bclr    #3,(dword_FF542C).l
                bne.s   return_1DF0
                andi.b  #$3F,(byte_FF5404).l 
                ori.b   #$40,(byte_FF5404).l 
                bset    #3,(dword_FF542C+1).l
                bset    #3,(word_FF546D).l
return_1DF0:
                
                rts
loc_1DF2:
                
                tst.w   (word_FF12DE).l
                bne.s   loc_1E02
                bclr    #7,(STATUS_BITMAP).l
loc_1E02:
                
                bclr    #4,(dword_FF542C).l
                move.w  $1E(a5),d1
                move.w  (word_FF1182).l,d0
                add.w   d0,$1C(a5)
                add.w   d0,$1E(a5)
                move.w  $1E(a5),d0
                andi.b  #8,d0
                andi.b  #8,d1
                cmp.b   d0,d1
                bls.s   loc_1E58
                bsr.w   sub_30DC
                bcc.s   loc_1E58
                bsr.s   sub_1E88
                move.w  #1,(word_FF1182).l
                andi.b  #$3F,d5 
                cmpi.b  #$E,d5
                beq.w   loc_1F50
                cmp.b   d0,d3
                bcc.w   loc_1F7C
                cmp.b   d1,d3
                bcc.w   loc_1C5C
                bra.w   loc_1F50
loc_1E58:
                
                clr.w   d0
                tst.b   (byte_FF1142).l 
                beq.s   loc_1E68
loc_1E62:
                
                bsr.w   sub_3058
                bra.s   loc_1E76
loc_1E68:
                
                btst    #6,(STATUS_BITMAP).l
                bne.s   loc_1E62
                bsr.w   sub_2F76
loc_1E76:
                
                bcc.s   loc_1E98
                tst.b   $C(a0)
                bpl.s   loc_1E82
                bsr.w   sub_25B2
loc_1E82:
                
                bsr.s   sub_1E88
                bra.w   loc_1F50

; END OF FUNCTION CHUNK FOR sub_1936


; =============== S U B R O U T I N E =======================================

sub_1E88:
                
                move.w  (word_FF1182).l,d2
                sub.w   d2,$1C(a5)
                sub.w   d2,$1E(a5)
                rts

    ; End of function sub_1E88


; START OF FUNCTION CHUNK FOR sub_1936

loc_1E98:
                
                btst    #4,8(a5)
                beq.s   loc_1EA8
                lsr     (word_FF1182).l
                bsr.s   sub_1E88
loc_1EA8:
                
                move.w  $16(a5),d0
                move.b  d0,d1
                add.w   (word_FF1182).l,d0
                move.w  d0,$16(a5)
                andi.b  #$F,d0
                move.b  d0,3(a5)
                andi.b  #8,d0
                andi.b  #8,d1
                cmp.b   d1,d0
                bcc.s   loc_1EE8
                addq.b  #1,(dword_FF5400+1).l
                addi.w  #$94,$28(a5) 
                movea.w $28(a5),a6
                move.w  $22(a5),(unk_FF1208).l
                move.w  (a6),$22(a5)
loc_1EE8:
                
                move.w  (PLAYER_Y).l,d0
                move.b  d0,d1
                add.w   (word_FF1182).l,d0
                move.w  d0,(PLAYER_Y).l
                andi.b  #$F,d0
                move.b  d0,(word_FF1126+1).l
                andi.b  #8,d0
                andi.b  #8,d1
                cmp.b   d1,d0
                bcc.s   loc_1F48
                addq.b  #1,(byte_FF1125).l
                addi.w  #$20,(word_FF1184).l 
                cmpi.w  #$200,(word_FF1184).l
                bcs.s   loc_1F3C
                subi.w  #$210,(word_FF1184).l
                bpl.s   loc_1F3C
                addi.w  #$20,(word_FF1184).l 
loc_1F3C:
                
                jsr     sub_A698
                jsr     sub_A6B0
loc_1F48:
                
                bsr.w   sub_2452
                bsr.w   sub_247E
loc_1F50:
                
                bclr    #3,(dword_FF542C).l
                bne.s   return_1F7A
                andi.b  #$3F,(byte_FF5404).l 
                ori.b   #$80,(byte_FF5404).l
                bset    #1,(dword_FF542C+1).l
                bset    #1,(word_FF546D).l
return_1F7A:
                
                rts
loc_1F7C:
                
                tst.w   (word_FF12DE).l
                bne.s   loc_1F8C
                bclr    #7,(STATUS_BITMAP).l
loc_1F8C:
                
                move.w  $18(a5),d1
                move.w  (word_FF1182).l,d0
                sub.w   d0,$18(a5)
                sub.w   d0,$1A(a5)
                move.w  $18(a5),d0
                andi.b  #8,d0
                andi.b  #8,d1
                cmp.b   d0,d1
                bcc.w   loc_2056
                bsr.w   sub_313E
                bcc.w   loc_2056
                bsr.w   sub_208E
                move.b  2(a5),d2
                addq.b  #1,d2
                andi.b  #$FE,d2
                cmpi.b  #8,d2
                bne.s   loc_202A
                move.b  $23(a5),d2
                andi.b  #$3F,d2 
                cmpi.b  #$B,d2
                bne.s   loc_202A
                bsr.w   sub_33EA
                tst.w   d5
                bne.s   loc_1FE4
                rts
loc_1FE4:
                
                addq.w  #1,$12(a5)
                addq.w  #1,$54(a5)
                bset    #4,(dword_FF542C).l
                bne.s   loc_2006
                clr.w   $26(a5)
                move.b  #$FF,$D(a5)
                andi.w  #$60E0,$20(a5)
loc_2006:
                
                ori.b   #$C0,4(a5)
                addq.b  #1,$D(a5)
                clr.b   $20(a5)
                move.b  (word_FF0F9C+1).l,d7
                andi.b  #3,d7
                bne.s   loc_2024

; END OF FUNCTION CHUNK FOR sub_1936

                sndCom  SFX_STEP

; START OF FUNCTION CHUNK FOR sub_1936

loc_2024:
                
                moveq   #1,d7
                bra.w   loc_2326
loc_202A:
                
                bclr    #4,(dword_FF542C).l
                move.w  #1,(word_FF1182).l
                andi.b  #$3F,d5 
                cmpi.b  #$E,d5
                beq.w   loc_2154
                cmp.b   d0,d3
                bcc.w   loc_1A48
                cmp.b   d1,d3
                bcc.w   loc_1DF2
                bra.w   loc_2154
loc_2056:
                
                bclr    #4,(dword_FF542C).l
                clr.w   d0
                tst.b   (byte_FF1142).l 
                beq.s   loc_206E
loc_2068:
                
                bsr.w   sub_3058
                bra.s   loc_207C
loc_206E:
                
                btst    #6,(STATUS_BITMAP).l
                bne.s   loc_2068
                bsr.w   sub_2F76
loc_207C:
                
                bcc.s   loc_209E
                tst.b   $C(a0)
                bpl.s   loc_2088
                bsr.w   sub_25B2
loc_2088:
                
                bsr.s   sub_208E
                bra.w   loc_2154

; END OF FUNCTION CHUNK FOR sub_1936


; =============== S U B R O U T I N E =======================================

sub_208E:
                
                move.w  (word_FF1182).l,d2
                add.w   d2,$18(a5)
                add.w   d2,$1A(a5)
                rts

    ; End of function sub_208E


; START OF FUNCTION CHUNK FOR sub_1936

loc_209E:
                
                btst    #4,8(a5)
                beq.w   loc_20B0
                lsr     (word_FF1182).l
                bsr.s   sub_208E
loc_20B0:
                
                move.w  $14(a5),d0
                move.b  d0,d1
                sub.w   (word_FF1182).l,d0
                move.w  d0,$14(a5)
                andi.b  #$F,d0
                move.b  d0,2(a5)
                andi.b  #8,d0
                andi.b  #8,d1
                cmp.b   d0,d1
                bcc.s   loc_20F0
                subq.b  #1,(dword_FF5400).l
                subi.w  #2,$28(a5)
                movea.w $28(a5),a6
                move.w  $22(a5),(unk_FF1208).l
                move.w  (a6),$22(a5)
loc_20F0:
                
                move.w  (PLAYER_X).l,d0
                move.b  d0,d1
                sub.w   (word_FF1182).l,d0
                move.w  d0,(PLAYER_X).l
                andi.b  #$F,d0
                move.b  d0,(word_FF1126).l
                andi.b  #8,d0
                andi.b  #8,d1
                cmp.b   d0,d1
                bcc.s   loc_214C
                subq.b  #1,(byte_FF1124).l
                move.w  (word_FF1184).l,d0
                subq.w  #1,d0
                move.w  d0,(word_FF1184).l
                andi.w  #$1F,d0
                cmpi.w  #$1F,d0
                bne.s   loc_2140
                addi.w  #$20,(word_FF1184).l 
loc_2140:
                
                jsr     sub_A61C
                jsr     sub_A6B0
loc_214C:
                
                bsr.w   sub_240A
                bsr.w   sub_247E
loc_2154:
                
                bclr    #3,(dword_FF542C).l
                bne.s   return_2176
                ori.b   #$C0,(byte_FF5404).l
                bset    #2,(dword_FF542C+1).l
                bset    #2,(word_FF546D).l
return_2176:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1936


; =============== S U B R O U T I N E =======================================

sub_2178:
                
                move.b  (P1_INPUT).l,d1 
                and.b   d1,(byte_FF113E).l
                btst    #4,(dword_FF542C).l
                bne.s   return_21AC
                bsr.s   sub_21AE
                tst.b   d7
                bne.w   loc_2242
                btst    #4,(dword_FF542C+3).l
                beq.s   loc_21A4
                sndCom  SFX_DOUBLE_STEP
loc_21A4:
                
                bsr.s   sub_21B6
                tst.b   d7
                bne.w   loc_2326
return_21AC:
                
                rts

    ; End of function sub_2178


; =============== S U B R O U T I N E =======================================

sub_21AE:
                
                bsr.w   sub_324C
                move.w  d6,d7
                rts

    ; End of function sub_21AE


; =============== S U B R O U T I N E =======================================

sub_21B6:
                
                lea     (dword_FF5400).l,a0
                move.w  $12(a0),d7
                movem.w d7,-(sp)
                bsr.w   sub_3F92
                movem.w (sp)+,d6
                move.w  $12(a0),d7
                sub.w   d6,d7
                beq.s   return_21DC
                bset    #5,(dword_FF542C+1).l
return_21DC:
                
                rts

    ; End of function sub_21B6


; =============== S U B R O U T I N E =======================================

sub_21DE:
                
                lea     (byte_FF5480).l,a0
                moveq   #$E,d7
loc_21E6:
                
                cmpi.b  #$25,$3B(a0) 
                bne.s   loc_21FC
                tst.b   $4D(a0)
                beq.s   loc_21FC
                andi.w  #$6700,$2C(a0)
                bra.s   loc_2202
loc_21FC:
                
                andi.w  #$6000,$2C(a0)
loc_2202:
                
                move.b  (a0),d0
                bmi.s   return_2230
                cmpi.b  #$7F,d0 
                beq.s   loc_2228
                movem.l d7-a0,-(sp)
                bsr.s   sub_2232
                tst.b   d7
                beq.s   loc_2222
                movem.l (sp)+,d7-a0
                bset    #4,$2D(a0)
                bra.s   loc_2228
loc_2222:
                
                bsr.s   sub_223A
                movem.l (sp)+,d7-a0
loc_2228:
                
                lea     $80(a0),a0
                dbf     d7,loc_21E6
return_2230:
                
                rts

    ; End of function sub_21DE


; =============== S U B R O U T I N E =======================================

sub_2232:
                
                bsr.w   sub_3252
                move.w  d6,d7
                rts

    ; End of function sub_2232


; =============== S U B R O U T I N E =======================================

sub_223A:
                
                jsr     sub_103D2
                rts

    ; End of function sub_223A


; START OF FUNCTION CHUNK FOR sub_1858

loc_2242:
                
                clr.b   d1
                move.w  (PLAYER_X).l,d2
                move.b  d2,d3
                add.w   d7,d2
                move.w  d2,(PLAYER_X).l
                andi.b  #$F,d2
                move.b  d2,(word_FF1126).l
                andi.b  #8,d2
                andi.b  #8,d3
                cmp.b   d3,d2
                bcc.s   loc_229C
                addq.b  #1,(byte_FF1124).l
                move.w  (word_FF1184).l,d0
                addq.w  #1,d0
                move.w  d0,(word_FF1184).l
                andi.w  #$1F,d0
                bne.s   loc_228C
                subi.w  #$20,(word_FF1184).l 
loc_228C:
                
                movem.w d7,-(sp)
                jsr     sub_A698
                movem.w (sp)+,d7
                moveq   #1,d1
loc_229C:
                
                move.w  (PLAYER_Y).l,d2
                move.b  d2,d3
                add.w   d7,d2
                move.w  d2,(PLAYER_Y).l
                andi.b  #$F,d2
                move.b  d2,(word_FF1126+1).l
                andi.b  #8,d2
                andi.b  #8,d3
                cmp.b   d3,d2
                bcc.s   loc_230C
                addq.b  #1,(byte_FF1125).l
                addi.w  #$20,(word_FF1184).l 
                cmpi.w  #$200,(word_FF1184).l
                bcs.s   loc_22EC
                subi.w  #$210,(word_FF1184).l
                bpl.s   loc_22EC
                addi.w  #$20,(word_FF1184).l 
loc_22EC:
                
                movem.w d7,-(sp)
                tst.b   d1
                bne.s   loc_22FA
                jsr     sub_A6B0
loc_22FA:
                
                jsr     sub_A698
                movem.w (sp)+,d7
                add.w   d7,d7
                bsr.w   sub_2458
                rts
loc_230C:
                
                tst.b   d1
                beq.s   loc_231E
                movem.w d7,-(sp)
                jsr     sub_A730
                movem.w (sp)+,d7
loc_231E:
                
                add.w   d7,d7
                bsr.w   sub_2458
                rts
loc_2326:
                
                clr.b   d1
                move.w  (PLAYER_X).l,d2
                move.b  d2,d3
                sub.w   d7,d2
                move.w  d2,(PLAYER_X).l
                andi.b  #$F,d2
                move.b  d2,(word_FF1126).l
                andi.b  #8,d2
                andi.b  #8,d3
                cmp.b   d2,d3
                bcc.s   loc_2384
                subq.b  #1,(byte_FF1124).l
                move.w  (word_FF1184).l,d0
                subq.w  #1,d0
                move.w  d0,(word_FF1184).l
                andi.w  #$1F,d0
                cmpi.w  #$1F,d0
                bne.s   loc_2374
                addi.w  #$20,(word_FF1184).l 
loc_2374:
                
                movem.w d7,-(sp)
                jsr     sub_A61C
                movem.w (sp)+,d7
                moveq   #1,d1
loc_2384:
                
                move.w  (PLAYER_Y).l,d2
                move.w  d2,d3
                sub.w   d7,d2
                move.w  d2,(PLAYER_Y).l
                andi.b  #$F,d2
                move.b  d2,(word_FF1126+1).l
                andi.b  #8,d2
                andi.b  #8,d3
                cmp.b   d2,d3
                bcc.s   loc_23F2
                subq.b  #1,(byte_FF1125).l
                subi.w  #$20,(word_FF1184).l 
                bpl.s   loc_23D4
                addi.w  #$210,(word_FF1184).l
                cmpi.w  #$200,(word_FF1184).l
                bcs.s   loc_23D4
                subi.w  #$20,(word_FF1184).l 
loc_23D4:
                
                movem.w d7,-(sp)
                tst.b   d1
                bne.s   loc_23E2
                jsr     sub_A730
loc_23E2:
                
                jsr     sub_A61C
                movem.w (sp)+,d7
                add.w   d7,d7
                bsr.s   sub_2410
                rts
loc_23F2:
                
                tst.b   d1
                beq.s   loc_2404
                movem.w d7,-(sp)
                jsr     sub_A6B0
                movem.w (sp)+,d7
loc_2404:
                
                add.w   d7,d7
                bsr.s   sub_2410
                rts

; END OF FUNCTION CHUNK FOR sub_1858


; =============== S U B R O U T I N E =======================================

sub_240A:
                
                move.w  (word_FF1182).l,d7

    ; End of function sub_240A


; =============== S U B R O U T I N E =======================================

sub_2410:
                
                subq.w  #1,d7
loc_2412:
                
                eori.w  #1,(word_FF1180).l
                bne.s   loc_2428
                subq.w  #1,(VERTICAL_SCROLL_DATA).l
                subq.w  #1,(VERTICAL_SCROLL_DATA+2).l
loc_2428:
                
                dbf     d7,loc_2412
                move.b  #1,(byte_FF113C).l
                rts

    ; End of function sub_2410


; =============== S U B R O U T I N E =======================================

sub_2436:
                
                move.w  (word_FF1182).l,d7
                sub.w   d7,(HORIZONTAL_SCROLL_DATA).l
                sub.w   d7,(HORIZONTAL_SCROLL_DATA+2).l
                move.b  #1,(byte_FF113C).l
                rts

    ; End of function sub_2436


; =============== S U B R O U T I N E =======================================

sub_2452:
                
                move.w  (word_FF1182).l,d7

    ; End of function sub_2452


; =============== S U B R O U T I N E =======================================

sub_2458:
                
                subq.w  #1,d7
loc_245A:
                
                eori.w  #1,(word_FF1180).l
                beq.s   loc_2470
                addq.w  #1,(VERTICAL_SCROLL_DATA).l
                addq.w  #1,(VERTICAL_SCROLL_DATA+2).l
loc_2470:
                
                dbf     d7,loc_245A
                move.b  #1,(byte_FF113C).l
                rts

    ; End of function sub_2458


; =============== S U B R O U T I N E =======================================

sub_247E:
                
                move.w  (word_FF1182).l,d7
                add.w   d7,(HORIZONTAL_SCROLL_DATA).l
                add.w   d7,(HORIZONTAL_SCROLL_DATA+2).l
                move.b  #1,(byte_FF113C).l
                rts

    ; End of function sub_247E


; =============== S U B R O U T I N E =======================================

sub_249A:
                
                tst.b   (byte_FF113C).l
                beq.s   return_24F2
                clr.b   (byte_FF113C).l
                movea.l (VDP_COMMAND_QUEUE_POINTER).l,a0
                move.w  #1,(a0)+
                move.w  #$D000,(a0)+
                move.l  (HORIZONTAL_SCROLL_DATA).l,(a0)+
                move.l  a0,(VDP_COMMAND_QUEUE_POINTER).l
                addq.b  #1,(VDP_COMMAND_COUNTER).l
                movea.l (DMA_QUEUE_POINTER).l,a6
                move.l  #$8F029400,(a6)+
                move.l  #$93029682,(a6)+
                move.l  #$9580977F,(a6)+
                move.l  #$40000090,(a6)+
                move.l  a6,(DMA_QUEUE_POINTER).l
                addq.b  #1,(DMA_QUEUE_SIZE).l
return_24F2:
                
                rts

    ; End of function sub_249A


; =============== S U B R O U T I N E =======================================

sub_24F4:
                
                lea     (dword_FF5400).l,a5
                moveq   #$F,d7
loc_24FC:
                
                movem.w d7,-(sp)
                bsr.w   sub_3498
                movem.w (sp)+,d7
                bra.s   loc_250E
loc_250A:
                
                move.w  #$FFFF,d0
loc_250E:
                
                move.w  d0,$30(a5)
                bne.s   loc_2520
                tst.b   $C(a5)
                bpl.s   loc_2520
                movea.l a5,a0
                bsr.w   sub_25B2
loc_2520:
                
                lea     $80(a5),a5
                move.w  (a5),d0
                bmi.s   return_253E
                cmpi.b  #$7F,d0 
                beq.s   loc_250A
                tst.w   $2A(a5)
                bne.s   loc_24FC
                btst    #5,$C(a5)
                beq.s   loc_250A
                bra.s   loc_24FC
return_253E:
                
                rts

    ; End of function sub_24F4


; =============== S U B R O U T I N E =======================================

sub_2540:
                
                lea     (dword_FF5400).l,a5
                moveq   #$F,d7
loc_2548:
                
                move.w  (a5),d0
                bmi.s   return_25B0
                move.w  $30(a5),d1
                bmi.s   loc_25A8
                cmpi.b  #$7F,d0 
                beq.s   loc_25A8
                lea     (dword_FF5400).l,a0
                adda.w  d1,a0
                move.w  $12(a5),d0
                subq.w  #1,d0
                move.w  $18(a5),d1
                move.w  $1A(a5),d2
                move.w  $1C(a5),d3
                move.w  $1E(a5),d4
                cmp.w   $1A(a0),d1
                bhi.s   loc_25A2
                cmp.w   $18(a0),d2
                bcs.s   loc_25A2
                cmp.w   $1E(a0),d3
                bhi.s   loc_25A2
                cmp.w   $1C(a0),d4
                bcs.s   loc_25A2
                cmpa.l  #dword_FF5400,a5
                bne.s   loc_25A8
                tst.b   $C(a0)
                bpl.s   loc_25A8
                bsr.w   sub_25B2
                bra.s   loc_25A8
loc_25A2:
                
                move.w  #$FFFF,$30(a5)
loc_25A8:
                
                lea     $80(a5),a5
                dbf     d7,loc_2548
return_25B0:
                
                rts

    ; End of function sub_2540


; =============== S U B R O U T I N E =======================================

sub_25B2:
                
                move.w  $3C(a0),(word_FF543C).l
                beq.s   return_25C4
                move.b  #$80,(byte_FF1143).l
return_25C4:
                
                rts

    ; End of function sub_25B2


; =============== S U B R O U T I N E =======================================

sub_25C6:
                
                cmpi.w  #$20C,(CURRENT_MAP).l
                bne.s   return_260C
                move.b  (word_FF0F9C+1).l,d0
                andi.b  #$F,d0
                bne.s   return_260C
                move.b  (word_FF0F9C+1).l,d0
                andi.w  #$70,d0 
                lsr.b   #2,d0
                move.l  #$C0100000,(VDP_Control).l
                move.w  word_260E(pc,d0.w),(VDP_Data).l
                move.l  #$C0120000,(VDP_Control).l
                move.w  word_2610(pc,d0.w),(VDP_Data).l
return_260C:
                
                rts

    ; End of function sub_25C6

word_260E:      dc.w $A
word_2610:      dc.w $8E
                dc.w 8
                dc.w $6E
                dc.w 6
                dc.w $4C
                dc.w 4
                dc.w $2A
                dc.w 2
                dc.w $28
                dc.w 4
                dc.w $2A
                dc.w 6
                dc.w $4C
                dc.w 8
                dc.w $6E

; =============== S U B R O U T I N E =======================================

nullsub_1:
                
                rts

    ; End of function nullsub_1


; =============== S U B R O U T I N E =======================================

sub_2630:
                
                movem.l d0/a0,-(sp)
                move.w  #$C000,(VDP_Control).l
                move.w  #0,(VDP_Control).l
                move.w  #$F,d0
loc_2648:
                
                move.w  #$E0,(VDP_Data).l 
                dbf     d0,loc_2648
                move.w  #$1E,d0
loc_2658:
                
                dbf     d0,loc_2658
                move.w  #$C000,(VDP_Control).l
                move.w  #0,(VDP_Control).l
                move.w  #$F,d0
                lea     (PALETTE_1_CURRENT).l,a0
loc_2676:
                
                move.w  (a0)+,(VDP_Data).l
                dbf     d0,loc_2676
                movem.l (sp)+,d0/a0
                rts

    ; End of function sub_2630


; =============== S U B R O U T I N E =======================================

sub_2686:
                
                tst.b   (byte_FF1128).l
                beq.w   return_26E6
                movem.l a0-a2,-(sp)
                move.w  #$8F02,(VDP_Control).l
                lea     (byte_FF3900).l,a0
                lea     (VDP_Control).l,a1
                lea     (VDP_Data).l,a2
loc_26AE:
                
                move.w  (a0)+,(a1)
                move.w  #3,(a1)
                move.l  (a0)+,(a2)
                move.w  (a0)+,(a1)
                move.w  #3,(a1)
                move.l  (a0)+,(a2)
                move.w  (a0)+,(a1)
                move.w  #3,(a1)
                move.l  (a0)+,(a2)
                move.w  (a0)+,(a1)
                move.w  #3,(a1)
                move.l  (a0)+,(a2)
                subq.b  #1,(byte_FF1128).l
                bne.w   loc_26AE
                movem.l (sp)+,a0-a2
                move.l  #byte_FF3900,(dword_FF1840).l
return_26E6:
                
                rts

    ; End of function sub_2686


; =============== S U B R O U T I N E =======================================

sub_26E8:
                
                bsr.s   sub_2726
                jsr     sub_22EC0
                bsr.w   sub_2F26
                bsr.w   ClearVsramAndSprites
                tst.w   (dword_FF5400).l
                bne.s   loc_271A
                bset    #3,(byte_FF1027).l
                move.b  #3,(byte_FF103B).l
                bsr.w   sub_27B2
                clr.b   d0
                bra.w   sub_2824
loc_271A:
                
                clr.b   d0
                bsr.w   sub_2824
                bsr.w   sub_77A6
                rts

    ; End of function sub_26E8


; =============== S U B R O U T I N E =======================================

sub_2726:
                
                move.w  #0,d0
                move.b  #$EF,d1
                bsr.w   ApplyLogicalAndOnVDPRegister
                move.w  #$9200,d0
                bsr.w   SetVDPRegister
                lea     (dword_FF5400).l,a0
                move.w  #$7F,d7 
loc_2744:
                
                clr.b   (a0)+
                dbf     d7,loc_2744
                clr.b   (byte_FF1143).l
                clr.b   (byte_FF1142).l 
                clr.b   (byte_FF1145).l
                clr.b   (byte_FF1128).l
                clr.b   (word_FF12DE).l
                clr.b   (word_FF12DE+1).l
                move.l  #byte_FF3900,(dword_FF1840).l
                move.b  #$FF,(MAP_BLOCK_SET).l
                move.b  #$FF,(byte_FF112D).l
                move.b  #$FF,(byte_FF112E).l
                move.b  #$FF,(MAP_PALETTE_INDEX).l
                move.b  #8,(dword_FF5400+2).l
                move.b  #8,(dword_FF5400+3).l
                move.w  #0,(word_FF540A).l
                rts

    ; End of function sub_2726


; =============== S U B R O U T I N E =======================================

sub_27B2:
                
                move.w  #$3FF,(CURRENT_HP).l
                move.w  #$3FF,(MAX_HP).l
                move.w  #$100,(word_FF547C).l
                clr.w   (word_FF1BF0).l
                clr.w   (FRAME_COUNTER).l
                clr.w   (MINUTE_COUNTER).l
                clr.w   (HOUR_COUNTER).l
                lea     (CHEST_FLAGS).l,a0
                move.w  #$3F,d7 
loc_27EC:
                
                clr.b   (a0)+
                dbf     d7,loc_27EC
                move.w  #$8B,(CURRENT_MAP).l 
                move.b  #$3E,(dword_FF5400).l 
                move.b  #$18,(dword_FF5400+1).l
                move.b  #$90,(word_FF5439).l
                move.w  #$90,(word_FF5412).l 
                move.w  #$FE,(word_FF12DE).l 
                rts

    ; End of function sub_27B2

                include "code\common\maps\mapengine.asm"    ; Map Engine

; =============== S U B R O U T I N E =======================================

sub_2DCE:
                
                move.b  (byte_FF1124).l,d0
                ext.w   d0
                lsl.w   #4,d0
                add.b   (word_FF1126).l,d0
                move.w  (word_FF5412).l,d1
                sub.w   d1,d0
                move.w  d0,(PLAYER_X).l
                move.w  d0,d2
                andi.b  #$F,d0
                move.b  d0,(word_FF1126).l
                lsr.w   #4,d2
                move.b  d2,(byte_FF1124).l
                move.b  (byte_FF1125).l,d0
                ext.w   d0
                lsl.w   #4,d0
                add.b   (word_FF1126+1).l,d0
                sub.w   d1,d0
                move.w  d0,(PLAYER_Y).l
                move.w  d0,d2
                andi.b  #$F,d0
                move.b  d0,(word_FF1126+1).l
                lsr.w   #4,d2
                move.b  d2,(byte_FF1125).l
                rts

    ; End of function sub_2DCE


; =============== S U B R O U T I N E =======================================

LoadNextMapInDebugMode:
                
                tst.w   (DebugModeAccessWord).w
                bmi.w   return_2F24
                tst.b   (byte_FF1008).l
                beq.s   loc_2E4C
byte_2E3E:
                
                sndCom  SFX_MONSTER_SKREECH
                move.w  #$3C,d0 
                bsr.w   Sleep           
                bra.s   byte_2E3E
loc_2E4C:
                
                tst.b   (P2_INPUT).l    
                bpl.w   loc_2EB8
                bsr.w   sub_8EF4
loc_2E5A:
                
                addq.w  #1,(CURRENT_MAP).l
                move.w  (CURRENT_MAP).l,d0
                bsr.w   LoadMap
                lea     (HEIGHT_MAP).l,a0
loc_2E70:
                
                cmpa.l  #byte_FFFC5A,a0
                bcc.s   loc_2E5A
                move.w  (a0)+,d0
                andi.w  #$403F,d0
                bne.s   loc_2E70
                move.l  a0,d0
                subq.w  #2,d0
                subi.l  #HEIGHT_MAP,d0
                divu.w  #$94,d0 
                move.b  d0,(dword_FF5400+1).l
                swap    d0
                lsr.b   #1,d0
                move.b  d0,(dword_FF5400).l
                move.b  #8,(dword_FF5400+2).l
                move.b  #8,(dword_FF5400+3).l
                clr.b   d0
                bsr.w   sub_2824
                bra.w   sub_8E9C
loc_2EB8:
                
                btst    #INPUT_B,(P2_INPUT).l
                beq.s   loc_2EF8
loc_2EC2:
                
                bsr.w   WaitForVInt
                bsr.w   RefreshPlayerInput
                btst    #INPUT_B,(P2_INPUT).l
                bne.s   loc_2EC2
loc_2ED4:
                
                bsr.w   WaitForVInt
                bsr.w   RefreshPlayerInput
                btst    #INPUT_B,(P2_INPUT).l
                beq.s   loc_2ED4
loc_2EE6:
                
                bsr.w   WaitForVInt
                bsr.w   RefreshPlayerInput
                btst    #INPUT_B,(P2_INPUT).l
                bne.s   loc_2EE6
loc_2EF8:
                
                btst    #INPUT_UP,(P2_INPUT).l
                beq.s   return_2F0A
                jsr     sub_22F00
                rts
return_2F0A:
                
                rts

    ; End of function LoadNextMapInDebugMode


; =============== S U B R O U T I N E =======================================

SaveInDebugMode:
                
                tst.w   (DebugModeAccessWord).w
                bmi.w   return_2F24
                btst    #INPUT_A,(P2_INPUT).l
                beq.w   loc_2EB8
                bsr.w   WriteSave
return_2F24:
                
                rts

    ; End of function SaveInDebugMode


; =============== S U B R O U T I N E =======================================

sub_2F26:
                
                bsr.s   sub_2F3C
                move.b  (SAVE_SLOT).l,d0
                jsr     sub_EE84
                jsr     sub_22EA0
                rts

    ; End of function sub_2F26


; =============== S U B R O U T I N E =======================================

sub_2F3C:
                
                lea     (byte_FF0000).l,a0
                lea     aKanMakiko(pc), a1
                moveq   #9,d7
loc_2F48:
                
                cmpm.b  (a1)+,(a0)+
                bne.s   loc_2F52
                dbf     d7,loc_2F48
                rts
loc_2F52:
                
                lea     (byte_FF0000).l,a0
                lea     aKanMakiko(pc), a1
                moveq   #9,d7
loc_2F5E:
                
                move.b  (a1)+,(a0)+
                dbf     d7,loc_2F5E
                clr.b   (SAVE_SLOT).l
                rts

    ; End of function sub_2F3C

aKanMakiko:     dc.b 'Kan&Makiko'       ; <3 bis

; =============== S U B R O U T I N E =======================================

sub_2F76:
                
                lea     (dword_FF5400).l,a0
                move.w  $18(a0,d0.w),d1
                move.w  $1A(a0,d0.w),d2
                move.w  $1C(a0,d0.w),d3
                move.w  $1E(a0,d0.w),d4
                move.w  $12(a0,d0.w),d6
                move.w  $54(a0,d0.w),d5
                clr.w   d7
                movea.l a0,a1
loc_2F98:
                
                cmp.w   d7,d0
                beq.s   loc_2FD8
                tst.w   (a0)
                bmi.s   loc_2FE6
                cmp.w   $1A(a0),d1
                bhi.s   loc_2FD8
                cmp.w   $18(a0),d2
                bcs.s   loc_2FD8
                cmp.w   $1E(a0),d3
                bhi.s   loc_2FD8
                cmp.w   $1C(a0),d4
                bcs.s   loc_2FD8
                cmp.w   $54(a0),d6
                bhi.s   loc_2FD8
                cmp.w   $12(a0),d5
                bcs.s   loc_2FD8
                movea.l a0,a1
                tst.b   8(a0)
                bne.s   loc_2FD8
                cmp.w   $30(a0),d0
                beq.s   loc_2FD8
                ori     #1,ccr
                rts
loc_2FD8:
                
                lea     $80(a0),a0
                addi.w  #$80,d7 
                cmpi.w  #$800,d7
                bcs.s   loc_2F98
loc_2FE6:
                
                tst.b   d0
                rts

    ; End of function sub_2F76


; =============== S U B R O U T I N E =======================================

sub_2FEA:
                
                lea     (dword_FF5400).l,a0
                move.w  $18(a0,d0.w),d1
                move.w  $1A(a0,d0.w),d2
                move.w  $1C(a0,d0.w),d3
                move.w  $1E(a0,d0.w),d4
                move.w  $12(a0,d0.w),d6
                move.w  $54(a0,d0.w),d5
                clr.w   d7
                movea.l a0,a1
loc_300C:
                
                cmp.w   d7,d0
                beq.s   loc_3046
                tst.w   (a0)
                bmi.s   loc_3054
                cmp.w   $1A(a0),d1
                bhi.s   loc_3046
                cmp.w   $18(a0),d2
                bcs.s   loc_3046
                cmp.w   $1E(a0),d3
                bhi.s   loc_3046
                cmp.w   $1C(a0),d4
                bcs.s   loc_3046
                cmp.w   $54(a0),d6
                bhi.s   loc_3046
                cmp.w   $12(a0),d5
                bcs.s   loc_3046
                movea.l a0,a1
                tst.b   8(a0)
                bne.s   loc_3046
                ori     #1,ccr
                rts
loc_3046:
                
                lea     $80(a0),a0
                addi.w  #$80,d7 
                cmpi.w  #$800,d7
                bcs.s   loc_300C
loc_3054:
                
                tst.b   d0
                rts

    ; End of function sub_2FEA


; =============== S U B R O U T I N E =======================================

sub_3058:
                
                lea     (dword_FF5400).l,a0
                move.w  $18(a0),d1
                move.w  $1A(a0),d2
                move.w  $1C(a0),d3
                move.w  $1E(a0),d4
                move.w  $12(a0),d6
                move.w  $54(a0),d5
                move.w  #$80,d7 
                movea.l a0,a1
                lea     $80(a0),a0
loc_3080:
                
                tst.w   (a0)
                bmi.s   loc_30D8
                tst.b   $C(a0)
                bmi.s   loc_30BC
loc_308A:
                
                cmp.w   $1A(a0),d1
                bhi.s   loc_30CA
                cmp.w   $18(a0),d2
                bcs.s   loc_30CA
                cmp.w   $1E(a0),d3
                bhi.s   loc_30CA
                cmp.w   $1C(a0),d4
                bcs.s   loc_30CA
                cmp.w   $54(a0),d6
                bhi.s   loc_30CA
                cmp.w   $12(a0),d5
                bcs.s   loc_30CA
                movea.l a0,a1
                tst.b   8(a0)
                bne.s   loc_30CA
                ori     #1,ccr
                rts
loc_30BC:
                
                cmpi.w  #1,$78(a0)
                bne.s   loc_30CA
                tst.b   $36(a0)
                beq.s   loc_308A
loc_30CA:
                
                lea     $80(a0),a0
                addi.w  #$80,d7 
                cmpi.w  #$800,d7
                bcs.s   loc_3080
loc_30D8:
                
                tst.b   d0
                rts

    ; End of function sub_3058


; =============== S U B R O U T I N E =======================================

sub_30DC:
                
                move.w  (dword_FF541C+2).l,d2
                bra.s   loc_30EA

    ; End of function sub_30DC


; =============== S U B R O U T I N E =======================================

sub_30E4:
                
                move.w  (dword_FF541C).l,d2
loc_30EA:
                
                move.w  (dword_FF5418).l,d1
                move.w  (dword_FF5418+2).l,d4
                lsr.w   #3,d1
                lsr.w   #3,d4
                andi.b  #$FE,d1
                andi.b  #$FE,d4
                move.w  (word_FF5412).l,d3
                lsr.w   #4,d3
                lea     (HEIGHT_MAP).l,a6
                lsr.w   #4,d2
                jsr     sub_C3AA
                adda.w  d2,a6
                adda.w  d1,a6
                move.b  #$4F,d2 
                move.b  (a6),d0
                and.b   d2,d0
                move.b  1(a6),d5
                sub.w   d1,d4
                beq.s   loc_312E
                addq.w  #2,a6
loc_312E:
                
                move.b  (a6),d1
                and.b   d2,d1
                cmp.b   d0,d3
                bcs.s   return_313C
                move.b  1(a6),d5
                cmp.b   d1,d3
return_313C:
                
                rts

    ; End of function sub_30E4


; =============== S U B R O U T I N E =======================================

sub_313E:
                
                move.w  (dword_FF5418).l,d2
                bra.s   loc_314C
loc_3146:
                
                move.w  (dword_FF5418+2).l,d2
loc_314C:
                
                move.w  (dword_FF541C).l,d1
                move.w  (dword_FF541C+2).l,d4
                lsr.w   #4,d1
                lsr.w   #4,d4
                sub.w   d1,d4
                move.w  (word_FF5412).l,d3
                lsr.w   #4,d3
                lea     (HEIGHT_MAP).l,a6
                jsr     sub_C3A0
                adda.w  d1,a6
                lsr.w   #3,d2
                andi.b  #$FE,d2
                adda.w  d2,a6
                move.b  #$4F,d2 
                move.b  (a6),d0
                and.b   d2,d0
                move.b  1(a6),d5
                tst.w   d4
                beq.s   loc_3190
                lea     $94(a6),a6
loc_3190:
                
                move.b  (a6),d1
                and.b   d2,d1
                cmp.b   d0,d3
                bcs.s   return_319E
                move.b  1(a6),d5
                cmp.b   d1,d3
return_319E:
                
                rts

    ; End of function sub_313E


; =============== S U B R O U T I N E =======================================

sub_31A0:
                
                move.w  $1E(a5),d2
                bra.s   loc_31AA

    ; End of function sub_31A0


; =============== S U B R O U T I N E =======================================

sub_31A6:
                
                move.w  $1C(a5),d2
loc_31AA:
                
                btst    #4,$22(a0)
                bne.s   loc_31F4
                move.w  $18(a5),d1
                move.w  $1A(a5),d4
                lsr.w   #3,d1
                lsr.w   #3,d4
                andi.b  #$FE,d1
                andi.b  #$FE,d4
                sub.w   d1,d4
                lsr.w   #1,d4
                move.w  $12(a5),d3
                lsr.w   #4,d3
                lea     (HEIGHT_MAP).l,a6
                lsr.w   #4,d2
                jsr     sub_C3AA
                adda.w  d2,a6
                adda.w  d1,a6
                move.b  #$6F,d1 
loc_31E6:
                
                move.b  (a6),d0
                and.b   d1,d0
                cmp.b   d0,d3
                bcs.s   return_31F6
                addq.w  #2,a6
                dbf     d4,loc_31E6
loc_31F4:
                
                tst.b   d0
return_31F6:
                
                rts

    ; End of function sub_31A6


; =============== S U B R O U T I N E =======================================

sub_31F8:
                
                move.w  $18(a5),d2
                bra.s   loc_3202

    ; End of function sub_31F8


; =============== S U B R O U T I N E =======================================

sub_31FE:
                
                move.w  $1A(a5),d2
loc_3202:
                
                btst    #4,$22(a0)
                bne.s   loc_31F4
                move.w  $1C(a5),d1
                move.w  $1E(a5),d4
                lsr.w   #4,d1
                lsr.w   #4,d4
                sub.w   d1,d4
                move.w  $12(a5),d3
                lsr.w   #4,d3
                lea     (HEIGHT_MAP).l,a6
                jsr     sub_C3A0
                adda.w  d1,a6
                lsr.w   #3,d2
                andi.b  #$FE,d2
                adda.w  d2,a6
                move.b  #$6F,d1 
loc_3238:
                
                move.b  (a6),d0
                and.b   d1,d0
                cmp.b   d0,d3
                bcs.s   return_324A
                lea     $94(a6),a6
                dbf     d4,loc_3238
                tst.b   d0
return_324A:
                
                rts

    ; End of function sub_31FE


; =============== S U B R O U T I N E =======================================

sub_324C:
                
                lea     (dword_FF5400).l,a0

    ; End of function sub_324C


; =============== S U B R O U T I N E =======================================

sub_3252:
                
                move.w  $12(a0),d6
                bsr.s   sub_3266
                sub.w   $12(a0),d6
                beq.s   return_3264
                bset    #4,$2D(a0)
return_3264:
                
                rts

    ; End of function sub_3252


; =============== S U B R O U T I N E =======================================

sub_3266:
                
                move.b  (byte_FF1130).l,d4
                andi.w  #$FF,d4
                cmp.w   $12(a0),d4
                beq.s   return_32B2
                move.b  $20(a0),d0
                bmi.s   return_32B2
                andi.b  #$1F,d0
                ext.w   d0
                cmpi.b  #$10,d0
                bls.s   loc_328C
                move.b  #$10,d0
loc_328C:
                
                andi.b  #$E0,$20(a0)
                clr.w   d2
                move.b  unk_32B4(pc,d0.w),d2
                addq.b  #1,d0
                bsr.s   sub_32C6
                cmp.w   d2,d5
                bhi.s   loc_32A6
                clr.b   d0
                move.w  d5,d2
                beq.s   loc_32AE
loc_32A6:
                
                sub.w   d2,$12(a0)
                sub.w   d2,$54(a0)
loc_32AE:
                
                or.b    d0,$20(a0)
return_32B2:
                
                rts

    ; End of function sub_3266

unk_32B4:       dc.b   1
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b   2
                dc.b   2
                dc.b   2
                dc.b   3
                dc.b   3
                dc.b   3
                dc.b   4
                dc.b   4
                dc.b   4
                dc.b   5
                dc.b   6
                dc.b   7
                dc.b   8
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_32C6:
                
                movem.w d0/d2/d6-d7,-(sp)
                clr.w   d4
                move.b  $39(a0),d4
                move.b  $6D(a0),d7
                andi.b  #$F,d7
                beq.s   loc_32E4
                move.w  $12(a0),d7
                bsr.s   sub_3302
                move.b  d4,$39(a0)
loc_32E4:
                
                movem.w d4,-(sp)
                bsr.w   sub_338C
                movem.w (sp)+,d4
                cmp.w   d5,d4
                bcc.s   loc_32F6
                move.w  d5,d4
loc_32F6:
                
                move.w  $12(a0),d5
                sub.w   d4,d5
                movem.w (sp)+,d0/d2/d6-d7
                rts

    ; End of function sub_32C6


; =============== S U B R O U T I N E =======================================

sub_3302:
                
                clr.b   d0
                btst    #4,$22(a0)
                bne.s   loc_331C
                move.b  #$40,d0 
                cmpa.l  #dword_FF5400,a0
                beq.s   loc_331C
                move.b  #$60,d0 
loc_331C:
                
                clr.w   d4
                move.w  $18(a0),d1
                move.w  $1C(a0),d2
                move.w  $1E(a0),d6
                move.w  d2,d5
                lsr.w   #4,d5
                lsr.w   #4,d6
                sub.w   d5,d6
                lsr.w   #4,d2
                jsr     sub_C3AA
                lea     (HEIGHT_MAP).l,a6
                adda.w  d2,a6
                move.w  d1,d3
                lsr.w   #3,d1
                andi.b  #$FE,d1
                adda.w  d1,a6
                move.w  $1A(a0),d5
                lsr.w   #4,d3
                lsr.w   #4,d5
                sub.w   d3,d5
                clr.b   d1
loc_3358:
                
                movem.l d5/a6,-(sp)
loc_335C:
                
                move.b  (a6),d3
                move.b  d3,d2
                and.b   d0,d2
                beq.s   loc_3368
                move.b  #1,d1
loc_3368:
                
                andi.w  #$F,d3
                lsl.b   #4,d3
                cmp.w   d4,d3
                bls.s   loc_3378
                cmp.w   d7,d3
                bhi.s   loc_3378
                move.w  d3,d4
loc_3378:
                
                addq.w  #2,a6
                dbf     d5,loc_335C
                movem.l (sp)+,d5/a6
                lea     $94(a6),a6
                dbf     d6,loc_3358
                rts

    ; End of function sub_3302


; =============== S U B R O U T I N E =======================================

sub_338C:
                
                move.w  $18(a0),d1
                move.w  $1A(a0),d2
                move.w  $1C(a0),d3
                move.w  $1E(a0),d4
                move.w  $12(a0),d6
                clr.w   d5
                lea     (dword_FF5400).l,a1
                moveq   #$F,d7
loc_33AA:
                
                cmpa.l  a0,a1
                beq.s   loc_33DE
                cmp.w   $1A(a1),d1
                bhi.s   loc_33DE
                cmp.w   $18(a1),d2
                bcs.s   loc_33DE
                cmp.w   $1E(a1),d3
                bhi.s   loc_33DE
                cmp.w   $1C(a1),d4
                bcs.s   loc_33DE
                cmp.w   $54(a1),d6
                bls.s   loc_33DE
                cmp.w   $54(a1),d5
                bhi.s   loc_33DE
                tst.b   8(a1)
                bne.s   loc_33DE
                move.w  $54(a1),d5
                addq.w  #1,d5
loc_33DE:
                
                lea     $80(a1),a1
                tst.b   (a1)
                dbmi    d7,loc_33AA
                rts

    ; End of function sub_338C


; =============== S U B R O U T I N E =======================================

sub_33EA:
                
                move.w  $18(a5),d1
                move.w  $1A(a5),d2
                move.w  $1C(a5),d3
                move.w  $1E(a5),d4
                move.w  $54(a5),d6
                move.w  #$FFFF,d5
                lea     (dword_FF5400).l,a1
                moveq   #$F,d7
loc_340A:
                
                cmpa.l  a5,a1
                beq.s   loc_3444
                btst    #6,8(a1)
                bne.s   loc_3444
                cmp.w   $1A(a1),d1
                bhi.s   loc_3444
                cmp.w   $18(a1),d2
                bcs.s   loc_3444
                cmp.w   $1E(a1),d3
                bhi.s   loc_3444
                cmp.w   $1C(a1),d4
                bcs.s   loc_3444
                cmp.w   $12(a1),d6
                bcc.s   loc_3444
                cmp.w   $12(a1),d5
                bls.s   loc_3444
                tst.b   8(a1)
                bne.s   loc_3444
                move.w  $12(a1),d5
loc_3444:
                
                lea     $80(a1),a1
                tst.b   (a1)
                dbmi    d7,loc_340A
                subq.b  #1,d5
                sub.w   $54(a5),d5
                rts

    ; End of function sub_33EA


; =============== S U B R O U T I N E =======================================

sub_3456:
                
                movem.l a5,-(sp)
                move.l  a5,d0
                subi.l  #dword_FF5400,d0
                bsr.w   sub_2FEA
                bcs.s   loc_3482
                movem.l (sp)+,a0
                move.b  ($FF).w,d7      
                bsr.w   sub_3302
                tst.b   d1
                bne.s   loc_348C
                cmp.w   $12(a0),d4
                bhi.s   loc_348C
                tst.b   d0
                rts
loc_3482:
                
                movem.l (sp)+,a5
                ori     #1,ccr
                rts
loc_348C:
                
                movea.l #0,a1
                ori     #1,ccr
                rts

    ; End of function sub_3456


; =============== S U B R O U T I N E =======================================

sub_3498:
                
                lea     (dword_FF5400).l,a0
                move.w  $12(a5),d0
                subq.w  #1,d0
                clr.w   (word_FF1800).l
                clr.l   (dword_FF1804).l
                moveq   #$F,d7
loc_34B2:
                
                cmp.w   $54(a0),d0
                bne.s   loc_3530
                move.w  $18(a5),d1
                move.w  $1A(a5),d2
                move.w  $1C(a5),d3
                move.w  $1E(a5),d4
                cmp.w   $1A(a0),d1
                bhi.s   loc_3530
                cmp.w   $18(a0),d2
                bcs.s   loc_3530
                cmp.w   $1E(a0),d3
                bhi.s   loc_3530
                cmp.w   $1C(a0),d4
                bcs.s   loc_3530
                move.w  $1A(a0),d5
                sub.w   d1,d5
                move.w  d2,d6
                sub.w   $18(a0),d6
                cmp.w   d5,d6
                bcc.s   loc_34F2
                move.w  d6,d5
loc_34F2:
                
                move.w  $1E(a0),d6
                sub.w   d3,d6
                sub.w   $1C(a0),d4
                cmp.w   d6,d4
                bcc.s   loc_3502
                move.w  d4,d6
loc_3502:
                
                move.b  4(a5),d4
                andi.b  #$3E,d4 
                cmp.b   d4,d5
                bcs.s   loc_3516
                cmp.b   d4,d6
                bcs.s   loc_3516
                move.l  a0,d0
                bra.s   loc_3542
loc_3516:
                
                move.w  $1E(a5),d4
                add.w   d5,d6
                cmp.w   (word_FF1800).l,d6
                bls.s   loc_3530
                move.w  d6,(word_FF1800).l
                move.l  a0,(dword_FF1804).l
loc_3530:
                
                lea     $80(a0),a0
                tst.b   (a0)
                dbmi    d7,loc_34B2
                move.l  (dword_FF1804).l,d0
                beq.s   loc_354A
loc_3542:
                
                subi.l  #dword_FF5400,d0
                rts
loc_354A:
                
                moveq   #$FFFFFFFF,d0
                rts

    ; End of function sub_3498


; =============== S U B R O U T I N E =======================================

sub_354E:
                
                movem.l d0-a6,-(sp)
                move.b  (byte_FF114B).l,d0
                beq.w   loc_3632
                cmpi.w  #$8A18,(VDP_REG0A_STATUS).l
                beq.w   loc_3632
                cmpi.w  #$921C,(VDP_REG12_STATUS).l
                beq.w   loc_3632
                cmpi.b  #$10,d0
                bls.w   loc_3638
                cmpi.b  #$20,d0 
                bls.w   loc_36C2
                cmpi.b  #$21,d0 
                bls.w   loc_3776
                cmpi.b  #$22,d0 
                bls.w   loc_379C
                cmpi.b  #$24,d0 
                bls.w   loc_3632
                cmpi.b  #$30,d0 
                bls.w   loc_3746
                cmpi.b  #$40,d0 
                bls.w   loc_37AE
                cmpi.b  #$50,d0 
                bls.w   loc_37EE
                cmpi.b  #$52,d0 
                bls.w   loc_38A2
                cmpi.b  #$54,d0 
                bls.w   loc_38AE
                cmpi.b  #$56,d0 
                bls.w   loc_38BA
                cmpi.b  #$58,d0 
                bls.w   loc_38C4
                cmpi.b  #$5A,d0 
                bls.w   loc_38CE
                cmpi.b  #$5C,d0 
                bls.w   loc_38D8
                cmpi.b  #$5E,d0 
                bls.w   loc_38E2
                cmpi.b  #$60,d0 
                bls.w   loc_38EC
                cmpi.b  #$62,d0 
                bls.w   loc_38F6
                cmpi.b  #$64,d0 
                bls.w   loc_3900
                cmpi.b  #$66,d0 
                bls.w   loc_390A
                cmpi.b  #$68,d0 
                bls.w   loc_3914
                cmpi.b  #$6A,d0 
                bls.w   loc_391E
                cmpi.b  #$6C,d0 
                bls.w   loc_3928
                cmpi.b  #$6E,d0 
                bls.w   loc_3932
                clr.b   (byte_FF114B).l
loc_3632:
                
                movem.l (sp)+,d0-a6
                rts
loc_3638:
                
                cmpi.b  #1,d0
                bhi.s   loc_3664
                clr.b   (byte_FF114C).l
                move.b  #2,(byte_FF114B).l
                lea     (word_FF0588).l,a0
                move.w  #$C8,(a0)+ 
                move.w  #$A08,(a0)+
                move.w  #$C7F0,(a0)+
                move.w  #$118,(a0)+
                bra.s   loc_3632
loc_3664:
                
                subq.w  #2,(word_FF0588).l
                bsr.s   sub_3672
                bsr.s   sub_3692
                bra.w   loc_379C

    ; End of function sub_354E


; =============== S U B R O U T I N E =======================================

sub_3672:
                
                clr.w   d0
                move.b  (byte_FF114C).l,d0
                addq.b  #4,(byte_FF114C).l
                lsr.b   #2,d0
                cmpi.b  #8,d0
                bcs.s   loc_368C
                eori.b  #$F,d0
loc_368C:
                
                move.b  unk_36BA(pc,d0.w),d0
                rts

    ; End of function sub_3672


; =============== S U B R O U T I N E =======================================

sub_3692:
                
                ext.w   d0
                addi.w  #$118,d0
                move.w  d0,(word_FF058E).l
                cmpi.b  #$40,(byte_FF114C).l 
                bls.s   return_36B8
                clr.b   (byte_FF114B).l
                move.b  (byte_FF114D).l,(byte_FF114B).l
return_36B8:
                
                rts

    ; End of function sub_3692

unk_36BA:       dc.b $FD 
                dc.b $F9 
                dc.b $F6 
                dc.b $F4 
                dc.b $F3 
                dc.b $F2 
                dc.b $F1 
                dc.b $F0 

; START OF FUNCTION CHUNK FOR sub_354E

loc_36C2:
                
                cmpi.b  #$11,d0
                bhi.s   loc_36D6
                clr.b   (byte_FF114C).l
                move.b  #$12,(byte_FF114B).l
loc_36D6:
                
                move.b  (byte_FF114C).l,d0
                addq.b  #4,(byte_FF114C).l
                lsr.b   #2,d0
                cmpi.b  #$20,d0 
                bcc.s   loc_3738
                andi.w  #$1F,d0
                cmpi.b  #8,d0
                bcs.s   loc_370A
                cmpi.b  #$10,d0
                bcs.s   loc_3702
                cmpi.b  #$18,d0
                bcs.s   loc_371C
                bra.s   loc_3718
loc_3702:
                
                andi.b  #7,d0
                eori.b  #7,d0
loc_370A:
                
                addq.w  #1,(word_FF0588).l
                move.b  unk_36BA(pc,d0.w),d0
                neg.b   d0
                bra.s   loc_372A
loc_3718:
                
                eori.b  #$F,d0
loc_371C:
                
                andi.b  #7,d0
                subq.w  #1,(word_FF0588).l
                move.b  unk_36BA(pc,d0.w),d0
loc_372A:
                
                ext.w   d0
                addi.w  #$118,d0
                move.w  d0,(word_FF058E).l
                bra.s   loc_379C
loc_3738:
                
                move.b  (byte_FF114D).l,(byte_FF114B).l
                bra.w   loc_3632
loc_3746:
                
                move.b  (byte_FF114D).l,(byte_FF114B).l
                addq.b  #1,(byte_FF114C).l
                lea     (word_FF0588).l,a0
                btst    #0,(byte_FF114C).l
                beq.s   loc_376E
                addq.w  #1,(a0)
                addq.w  #1,6(a0)
                bra.s   loc_379C
loc_376E:
                
                subq.w  #1,(a0)
                subq.w  #1,6(a0)
                bra.s   loc_379C
loc_3776:
                
                lea     (word_FF0588).l,a0
                move.w  #$A6,(a0)+ 
                move.w  #$A08,(a0)+
                move.w  #$C7F0,(a0)+
                move.w  #$115,(a0)+
                move.b  (byte_FF114D).l,(byte_FF114B).l
                addq.b  #1,(byte_FF114C).l
loc_379C:
                
                move.b  (byte_FF114C).l,d3
                andi.w  #$C,d3
                bsr.w   sub_388C
                bra.w   loc_3632
loc_37AE:
                
                cmpi.b  #$31,d0 
                bhi.w   loc_37CA
                clr.b   (byte_FF114C).l
                move.b  #$32,(byte_FF114B).l 
                clr.b   (byte_FF114D).l
loc_37CA:
                
                addq.w  #2,(word_FF0588).l
                bsr.w   sub_3672
                neg.b   d0
                bsr.w   sub_3692
                tst.b   (byte_FF114B).l
                bne.s   loc_37EC
                clr.w   (word_FF0588).l
                bra.w   loc_3632
loc_37EC:
                
                bra.s   loc_379C
loc_37EE:
                
                cmpi.b  #$41,d0 
                bhi.w   loc_3804
                clr.b   (byte_FF114C).l
                move.b  #$42,(byte_FF114B).l 
loc_3804:
                
                move.b  (byte_FF114C).l,d0
                addq.b  #1,(byte_FF114C).l
                move.w  #8,d2
                tst.b   d0
                bne.s   loc_381C
                clr.w   d3
                bra.s   loc_3886
loc_381C:
                
                cmpi.b  #$A,d0
                bne.s   loc_3828
                move.w  #4,d3
                bra.s   loc_3886
loc_3828:
                
                cmpi.b  #$1E,d0
                bcs.w   loc_3632
                bne.s   loc_383C

; END OF FUNCTION CHUNK FOR sub_354E

                sndCom  SFX_FRIDAY_REVIVE
                move.w  #8,d3
                bra.s   loc_3886

; START OF FUNCTION CHUNK FOR sub_354E

loc_383C:
                
                cmpi.b  #$3C,d0 
                bcc.s   loc_3872
                clr.w   d1
                btst    #0,d0
                bne.s   loc_384E
                move.w  #$EEE,d1
loc_384E:
                
                move.l  #$C0000000,(VDP_Control).l
                move.w  d1,(VDP_Data).l
                move.l  #$C01E0000,(VDP_Control).l
                move.w  d1,(VDP_Data).l
                bra.w   loc_3632
loc_3872:
                
                move.b  #$21,(byte_FF114B).l 
                move.b  #$21,(byte_FF114D).l 
                bra.w   loc_3632
loc_3886:
                
                bsr.s   sub_3890
                bra.w   loc_3632

; END OF FUNCTION CHUNK FOR sub_354E


; =============== S U B R O U T I N E =======================================

sub_388C:
                
                move.w  #4,d2

    ; End of function sub_388C


; =============== S U B R O U T I N E =======================================

sub_3890:
                
                move.l  #$63,d0 
                move.w  #$7F0,d1
                bsr.w   sub_46DC
                bra.w   EnableDMAQueueProcessing

    ; End of function sub_3890


; START OF FUNCTION CHUNK FOR sub_354E

loc_38A2:
                
                lea     word_3A04(pc), a1
                move.b  #$51,d1 
                bra.w   loc_393A
loc_38AE:
                
                lea     word_3A6A(pc), a1
                move.b  #$53,d1 
                bra.w   loc_393A
loc_38BA:
                
                lea     word_3B06(pc), a1
                move.b  #$55,d1 
                bra.s   loc_393A
loc_38C4:
                
                lea     word_3BF6(pc), a1
                move.b  #$57,d1 
                bra.s   loc_393A
loc_38CE:
                
                lea     word_3C08(pc), a1
                move.b  #$59,d1 
                bra.s   loc_393A
loc_38D8:
                
                lea     word_3C2C(pc), a1
                move.b  #$5B,d1 
                bra.s   loc_393A
loc_38E2:
                
                lea     word_3C3E(pc), a1
                move.b  #$5D,d1 
                bra.s   loc_393A
loc_38EC:
                
                lea     word_3C4A(pc), a1
                move.b  #$5F,d1 
                bra.s   loc_393A
loc_38F6:
                
                lea     word_3C56(pc), a1
                move.b  #$61,d1 
                bra.s   loc_393A
loc_3900:
                
                lea     word_3C62(pc), a1
                move.b  #$63,d1 
                bra.s   loc_393A
loc_390A:
                
                lea     word_3C92(pc), a1
                move.b  #$65,d1 
                bra.s   loc_393A
loc_3914:
                
                lea     word_3C9E(pc), a1
                move.b  #$67,d1 
                bra.s   loc_393A
loc_391E:
                
                lea     word_3CB0(pc), a1
                move.b  #$69,d1 
                bra.s   loc_393A
loc_3928:
                
                lea     word_3F26(pc), a1
                move.b  #$6B,d1 
                bra.s   loc_393A
loc_3932:
                
                lea     word_3F62(pc), a1
                move.b  #$6D,d1 
loc_393A:
                
                cmp.b   d1,d0
                bhi.s   loc_3968
                clr.b   (byte_FF114C).l
                addq.b  #1,(byte_FF114B).l
                lea     (word_FF0588).l,a0
                move.w  (a1)+,(a0)+
                move.w  #$A08,(a0)+
                move.w  #$C7F0,(a0)+
                move.w  (a1)+,(a0)+
                move.l  a1,(dword_FF1880).l
                clr.w   (word_FF12E6).l
loc_3968:
                
                movea.l (dword_FF1880).l,a1
                tst.w   (word_FF12E6).l
                bne.s   loc_398E
                move.w  (a1)+,d0
                bmi.s   loc_39F6
                move.w  d0,(word_FF12E6).l
                addq.w  #1,(word_FF12E6).l
                addq.w  #4,a1
                move.l  a1,(dword_FF1880).l
loc_398E:
                
                bsr.s   sub_39BE
                subq.w  #1,(word_FF12E6).l
                move.w  (word_FF12E8).l,d0
                add.w   d0,(word_FF058E).l
                move.w  (word_FF12EA).l,d0
                add.w   d0,(word_FF0588).l
                move.b  (byte_FF114C).l,d0
                addq.b  #4,(byte_FF114C).l
                bra.w   loc_379C

; END OF FUNCTION CHUNK FOR sub_354E


; =============== S U B R O U T I N E =======================================

sub_39BE:
                
                move.w  (word_FF12E6).l,d0
                move.w  -4(a1),d2
                move.w  (word_FF058E).l,d1
                sub.w   d2,d1
                ext.l   d1
                divs.w  d0,d1
                neg.w   d1
                move.w  d1,(word_FF12E8).l
                move.w  -2(a1),d2
                move.w  (word_FF0588).l,d1
                sub.w   d2,d1
                ext.l   d1
                divs.w  d0,d1
                neg.w   d1
                move.w  d1,(word_FF12EA).l
                rts

    ; End of function sub_39BE


; START OF FUNCTION CHUNK FOR sub_354E

loc_39F6:
                
                move.b  (byte_FF114D).l,(byte_FF114B).l
                bra.w   loc_379C

; END OF FUNCTION CHUNK FOR sub_354E

word_3A04:      dc.w $A8
                dc.w $1C0
                dc.w 5
                dc.w $1A0
                dc.w $B0
                dc.w 5
                dc.w $184
                dc.w $CD
                dc.w 5
                dc.w $160
                dc.w $E0
                dc.w 5
                dc.w $140
                dc.w $D7
                dc.w 5
                dc.w $120
                dc.w $C0
                dc.w 5
                dc.w $100
                dc.w $B8
                dc.w 5
                dc.w $EA
                dc.w $C0
                dc.w 5
                dc.w $DE
                dc.w $D0
                dc.w 5
                dc.w $EC
                dc.w $E1
                dc.w 5
                dc.w $108
                dc.w $E6
                dc.w 5
                dc.w $127
                dc.w $DE
                dc.w 5
                dc.w $13D
                dc.w $C0
                dc.w 5
                dc.w $140
                dc.w $B4
                dc.w 5
                dc.w $138
                dc.w $A4
                dc.w 5
                dc.w $120
                dc.w $A0
                dc.w 5
                dc.w $115
                dc.w $A6
                dc.w $FFFF
word_3A6A:      dc.w $A6
                dc.w $115
                dc.w 1
                dc.w $100
                dc.w $9C
                dc.w 1
                dc.w $DC
                dc.w $9A
                dc.w 1
                dc.w $C2
                dc.w $A4
                dc.w 1
                dc.w $B0
                dc.w $B4
                dc.w 1
                dc.w $A8
                dc.w $C6
                dc.w 1
                dc.w $B2
                dc.w $DA
                dc.w 1
                dc.w $CE
                dc.w $E4
                dc.w 1
                dc.w $EC
                dc.w $E0
                dc.w 1
                dc.w $100
                dc.w $D4
                dc.w 1
                dc.w $112
                dc.w $C0
                dc.w 1
                dc.w $120
                dc.w $B2
                dc.w 1
                dc.w $130
                dc.w $A3
                dc.w 1
                dc.w $150
                dc.w $9A
                dc.w 1
                dc.w $170
                dc.w $9B
                dc.w 1
                dc.w $18C
                dc.w $A5
                dc.w 1
                dc.w $196
                dc.w $B6
                dc.w 1
                dc.w $198
                dc.w $C0
                dc.w 1
                dc.w $194
                dc.w $D0
                dc.w 1
                dc.w $182
                dc.w $E0
                dc.w 1
                dc.w $170
                dc.w $E4
                dc.w 1
                dc.w $15A
                dc.w $E0
                dc.w 1
                dc.w $145
                dc.w $D0
                dc.w 1
                dc.w $12E
                dc.w $C0
                dc.w 1
                dc.w $120
                dc.w $B2
                dc.w 1
                dc.w $115
                dc.w $A6
                dc.w $FFFF
word_3B06:      dc.w $A6
                dc.w $115
                dc.w 3
                dc.w $120
                dc.w $B4
                dc.w 3
                dc.w $11E
                dc.w $C6
                dc.w 3
                dc.w $110
                dc.w $D8
                dc.w 3
                dc.w $F8
                dc.w $E0
                dc.w 3
                dc.w $E0
                dc.w $DA
                dc.w 3
                dc.w $D4
                dc.w $C8
                dc.w 3
                dc.w $D4
                dc.w $B8
                dc.w 3
                dc.w $DC
                dc.w $AC
                dc.w 3
                dc.w $E4
                dc.w $AA
                dc.w 3
                dc.w $EE
                dc.w $B0
                dc.w 3
                dc.w $F3
                dc.w $C0
                dc.w 3
                dc.w $E8
                dc.w $D2
                dc.w 3
                dc.w $D4
                dc.w $DC
                dc.w 3
                dc.w $C0
                dc.w $DD
                dc.w 5
                dc.w $A8
                dc.w $D8
                dc.w 5
                dc.w $98
                dc.w $C4
                dc.w 5
                dc.w $80
                dc.w $B9
                dc.w 5
                dc.w $B0
                dc.w $98
                dc.w 5
                dc.w $EA
                dc.w $120
                dc.w 5
                dc.w $140
                dc.w $98
                dc.w 5
                dc.w $174
                dc.w $120
                dc.w 5
                dc.w $174
                dc.w $9D
                dc.w 5
                dc.w $186
                dc.w $120
                dc.w 5
                dc.w $18D
                dc.w $9C
                dc.w 5
                dc.w $197
                dc.w $118
                dc.w 5
                dc.w $19E
                dc.w $9C
                dc.w 5
                dc.w $1C0
                dc.w $CB
                dc.w 5
                dc.w $120
                dc.w $E7
                dc.w 8
                dc.w $82
                dc.w $102
                dc.w 8
                dc.w $BC
                dc.w $10D
                dc.w 8
                dc.w $106
                dc.w $11A
                dc.w 8
                dc.w $130
                dc.w $116
                dc.w 8
                dc.w $160
                dc.w $FC
                dc.w 8
                dc.w $170
                dc.w $DE
                dc.w 8
                dc.w $16A
                dc.w $B8
                dc.w 8
                dc.w $152
                dc.w $A8
                dc.w 8
                dc.w $130
                dc.w $A1
                dc.w 8
                dc.w $106
                dc.w $B4
                dc.w 8
                dc.w $100
                dc.w $D0
                dc.w $FFFF
word_3BF6:      dc.w $A6
                dc.w $115
                dc.w $14
                dc.w $129
                dc.w $AE
                dc.w $1C
                dc.w $149
                dc.w $A6
                dc.w $FFFF
word_3C08:      dc.w $A6
                dc.w $149
                dc.w 3
                dc.w $139
                dc.w $A6
                dc.w 2
                dc.w $13D
                dc.w $A6
                dc.w 2
                dc.w $13D
                dc.w $C6
                dc.w 1
                dc.w $13D
                dc.w $C3
                dc.w 1
                dc.w $13D
                dc.w $C6
                dc.w $FFFF
word_3C2C:      dc.w $C6
                dc.w $13D
                dc.w 4
                dc.w $129
                dc.w $B6
                dc.w 4
                dc.w $115
                dc.w $A6
                dc.w $FFFF
word_3C3E:      dc.w $A6
                dc.w $115
                dc.w 2
                dc.w $115
                dc.w $B6
                dc.w $FFFF
word_3C4A:      dc.w $B6
                dc.w $115
                dc.w 3
                dc.w $115
                dc.w $A6
                dc.w $FFFF
word_3C56:      dc.w $B6
                dc.w $115
                dc.w 3
                dc.w $125
                dc.w $BA
                dc.w $FFFF
word_3C62:      dc.w $BA
                dc.w $125
                dc.w 2
                dc.w $125
                dc.w $A6
                dc.w 2
                dc.w $125
                dc.w $BA
                dc.w 2
                dc.w $125
                dc.w $A6
                dc.w 2
                dc.w $125
                dc.w $BA
                dc.w 2
                dc.w $125
                dc.w $A6
                dc.w 2
                dc.w $125
                dc.w $BA
                dc.w 3
                dc.w $115
                dc.w $A6
                dc.w $FFFF
word_3C92:      dc.w $92
                dc.w $80
                dc.w $10
                dc.w $115
                dc.w $BA
                dc.w $FFFF
word_3C9E:      dc.w $A6
                dc.w $115
                dc.w 8
                dc.w $145
                dc.w $BE
                dc.w 8
                dc.w $175
                dc.w $A6
                dc.w $FFFF
word_3CB0:      dc.w $A6
                dc.w $115
                dc.w 1
                dc.w $104
                dc.w $9C
                dc.w 1
                dc.w $F4
                dc.w $99
                dc.w 1
                dc.w $E0
                dc.w $9C
                dc.w 1
                dc.w $D4
                dc.w $A4
                dc.w 1
                dc.w $CB
                dc.w $B0
                dc.w 1
                dc.w $C8
                dc.w $C0
                dc.w 1
                dc.w $CA
                dc.w $D0
                dc.w 1
                dc.w $D3
                dc.w $E0
                dc.w 1
                dc.w $DC
                dc.w $EB
                dc.w 1
                dc.w $E8
                dc.w $F8
                dc.w 1
                dc.w $F6
                dc.w $102
                dc.w 1
                dc.w $104
                dc.w $10A
                dc.w 1
                dc.w $115
                dc.w $113
                dc.w 1
                dc.w $129
                dc.w $10A
                dc.w 1
                dc.w $136
                dc.w $101
                dc.w 1
                dc.w $142
                dc.w $F8
                dc.w 1
                dc.w $150
                dc.w $EB
                dc.w 1
                dc.w $158
                dc.w $E0
                dc.w 1
                dc.w $15F
                dc.w $D0
                dc.w 1
                dc.w $163
                dc.w $C0
                dc.w 1
                dc.w $160
                dc.w $B0
                dc.w 1
                dc.w $158
                dc.w $A4
                dc.w 1
                dc.w $14E
                dc.w $9E
                dc.w 1
                dc.w $140
                dc.w $99
                dc.w 1
                dc.w $12C
                dc.w $9C
                dc.w 1
                dc.w $115
                dc.w $A6
                dc.w 1
                dc.w $104
                dc.w $9C
                dc.w 1
                dc.w $F4
                dc.w $99
                dc.w 1
                dc.w $E0
                dc.w $9C
                dc.w 1
                dc.w $D4
                dc.w $A4
                dc.w 1
                dc.w $CB
                dc.w $B0
                dc.w 1
                dc.w $C8
                dc.w $C0
                dc.w 1
                dc.w $CA
                dc.w $D0
                dc.w 1
                dc.w $D3
                dc.w $E0
                dc.w 1
                dc.w $DC
                dc.w $EB
                dc.w 1
                dc.w $E8
                dc.w $F8
                dc.w 1
                dc.w $F6
                dc.w $102
                dc.w 1
                dc.w $104
                dc.w $10A
                dc.w 1
                dc.w $115
                dc.w $113
                dc.w 1
                dc.w $129
                dc.w $10A
                dc.w 1
                dc.w $136
                dc.w $101
                dc.w 1
                dc.w $142
                dc.w $F8
                dc.w 1
                dc.w $150
                dc.w $EB
                dc.w 1
                dc.w $158
                dc.w $E0
                dc.w 1
                dc.w $15F
                dc.w $D0
                dc.w 1
                dc.w $163
                dc.w $C0
                dc.w 1
                dc.w $160
                dc.w $B0
                dc.w 1
                dc.w $158
                dc.w $A4
                dc.w 1
                dc.w $14E
                dc.w $9E
                dc.w 1
                dc.w $140
                dc.w $99
                dc.w 1
                dc.w $12C
                dc.w $9C
                dc.w 1
                dc.w $115
                dc.w $A6
                dc.w 1
                dc.w $104
                dc.w $9C
                dc.w 1
                dc.w $F4
                dc.w $99
                dc.w 1
                dc.w $E0
                dc.w $9C
                dc.w 1
                dc.w $D4
                dc.w $A4
                dc.w 1
                dc.w $CB
                dc.w $B0
                dc.w 1
                dc.w $C8
                dc.w $C0
                dc.w 1
                dc.w $CA
                dc.w $D0
                dc.w 1
                dc.w $D3
                dc.w $E0
                dc.w 1
                dc.w $DC
                dc.w $EB
                dc.w 1
                dc.w $E8
                dc.w $F8
                dc.w 1
                dc.w $F6
                dc.w $102
                dc.w 1
                dc.w $104
                dc.w $10A
                dc.w 1
                dc.w $115
                dc.w $113
                dc.w 1
                dc.w $129
                dc.w $10A
                dc.w 1
                dc.w $136
                dc.w $101
                dc.w 1
                dc.w $142
                dc.w $F8
                dc.w 1
                dc.w $150
                dc.w $EB
                dc.w 1
                dc.w $158
                dc.w $E0
                dc.w 1
                dc.w $15F
                dc.w $D0
                dc.w 1
                dc.w $163
                dc.w $C0
                dc.w 1
                dc.w $160
                dc.w $B0
                dc.w 1
                dc.w $158
                dc.w $A4
                dc.w 1
                dc.w $14E
                dc.w $9E
                dc.w 1
                dc.w $140
                dc.w $99
                dc.w 1
                dc.w $12C
                dc.w $9C
                dc.w 1
                dc.w $115
                dc.w $A6
                dc.w 1
                dc.w $104
                dc.w $9C
                dc.w 1
                dc.w $F4
                dc.w $99
                dc.w 1
                dc.w $E0
                dc.w $9C
                dc.w 1
                dc.w $D4
                dc.w $A4
                dc.w 1
                dc.w $CB
                dc.w $B0
                dc.w 1
                dc.w $C8
                dc.w $C0
                dc.w 1
                dc.w $CA
                dc.w $D0
                dc.w 1
                dc.w $D3
                dc.w $E0
                dc.w 1
                dc.w $DC
                dc.w $EB
                dc.w 1
                dc.w $E8
                dc.w $F8
                dc.w 1
                dc.w $F6
                dc.w $102
                dc.w 1
                dc.w $104
                dc.w $10A
                dc.w 1
                dc.w $115
                dc.w $113
                dc.w 1
                dc.w $129
                dc.w $10A
                dc.w 1
                dc.w $136
                dc.w $101
                dc.w 1
                dc.w $142
                dc.w $F8
                dc.w 1
                dc.w $150
                dc.w $EB
                dc.w 1
                dc.w $158
                dc.w $E0
                dc.w 1
                dc.w $15F
                dc.w $D0
                dc.w 1
                dc.w $163
                dc.w $C0
                dc.w 1
                dc.w $160
                dc.w $B0
                dc.w 1
                dc.w $158
                dc.w $A4
                dc.w 1
                dc.w $14E
                dc.w $9E
                dc.w 1
                dc.w $140
                dc.w $99
                dc.w 1
                dc.w $12C
                dc.w $9C
                dc.w 1
                dc.w $115
                dc.w $A6
                dc.w $FFFF
word_3F26:      dc.w $A6
                dc.w $115
                dc.w $10
                dc.w $A0
                dc.w $B0
                dc.w $10
                dc.w $A0
                dc.w $B0
                dc.w $10
                dc.w $90
                dc.w $110
                dc.w $10
                dc.w $90
                dc.w $110
                dc.w $10
                dc.w $1A0
                dc.w $100
                dc.w $10
                dc.w $1A0
                dc.w $100
                dc.w $10
                dc.w $190
                dc.w $C0
                dc.w $10
                dc.w $190
                dc.w $C0
                dc.w $30
                dc.w $115
                dc.w $A6
                dc.w $FFFF
word_3F62:      dc.w $A6
                dc.w $115
                dc.w $F
                dc.w $D0
                dc.w $70
                dc.w $F
                dc.w $190
                dc.w $40
                dc.w $F
                dc.w $160
                dc.w $80
                dc.w $F
                dc.w $80
                dc.w $140
                dc.w $F
                dc.w $B0
                dc.w $80
                dc.w $F
                dc.w $140
                dc.w $140
                dc.w $F
                dc.w $115
                dc.w $A6
                dc.w $FFFF

; =============== S U B R O U T I N E =======================================

sub_3F92:
                
                move.b  (word_FF5420+1).l,d0
                andi.w  #$1F,d0
                bne.s   loc_3FCE
                move.b  (byte_FF1133).l,d2
                beq.s   loc_3FAC
                cmpi.b  #$17,d2
                bcs.s   return_400A
loc_3FAC:
                
                tst.b   (byte_FF113E).l
                bne.w   return_400A
                move.b  (P1_INPUT).l,d2 
                andi.b  #$10,d2
                beq.s   return_400A
                move.b  #$10,(byte_FF113E).l
                sndCom  SFX_JUMP
loc_3FCE:
                
                lea     (dword_FF5400).l,a5
loc_3FD4:
                
                bsr.w   sub_33EA
                move.b  unk_400C(pc,d0.w),d1
                ext.w   d1
                cmp.w   d5,d1
                bhi.s   loc_3FF8
                add.w   d1,$12(a5)
                add.w   d1,$54(a5)
                andi.b  #$E0,$21(a5)
                addq.b  #1,d0
                cmpi.b  #$C,d0
                bcs.s   loc_4000
loc_3FF8:
                
                andi.w  #$60E0,$20(a5)
                rts
loc_4000:
                
                or.b    d0,$21(a5)
                ori.b   #$80,$20(a5)
return_400A:
                
                rts

    ; End of function sub_3F92

unk_400C:       dc.b   4
                dc.b   4
                dc.b   3
                dc.b   3
                dc.b   3
                dc.b   2
                dc.b   2
                dc.b   2
                dc.b   2
                dc.b   1
                dc.b   1
                dc.b   1
                dc.b   1
                dc.b   1
                dc.b   1
                dc.b   1

; =============== S U B R O U T I N E =======================================

sub_401C:
                
                move.l     loc_403C(pc), (dword_FF1858).l
                move.w     loc_403C+4(pc), (word_FF185C).l
                bsr.s   sub_40A4
                bsr.w   sub_40F2
                bsr.w   sub_4980
                bsr.w   sub_41F6
                rts

    ; End of function sub_401C

loc_403C:       jmp     (sub_433E).l

; =============== S U B R O U T I N E =======================================

sub_4042:
                
                move.l     j_ApplyVIntVramDMA_0(pc), (dword_FF1850).l
                move.w     j_ApplyVIntVramDMA_0+4(pc), (word_FF1854).l
                move.l     sub_409E(pc), (dword_FF1858).l
                move.w     sub_409E+4(pc), (word_FF185C).l
                bsr.s   sub_40A4
                lea     (dword_FF5400).l,a0
                lea     (byte_FF11DE).l,a1
                clr.w   d0
                moveq   #$F,d7
loc_4074:
                
                move.w  d0,(a1)+
                addi.w  #$80,d0 
                lea     $80(a0),a0
                tst.b   (a0)
                dbmi    d7,loc_4074
                move.w  #$FFFF,(a1)
                bsr.w   sub_4266
                move.l     j_ApplyVIntVramDMA_0(pc), (dword_FF1850).l
                move.w     j_ApplyVIntVramDMA_0+4(pc), (word_FF1854).l
                rts

    ; End of function sub_4042


; =============== S U B R O U T I N E =======================================

sub_409E:
                
                jmp     (sub_427C).l

    ; End of function sub_409E


; =============== S U B R O U T I N E =======================================

sub_40A4:
                
                lea     (byte_FF05D0).l,a2
                moveq   #7,d7
                moveq   #0,d0
                move.l  #$FF,d1
loc_40B4:
                
                and.l   d1,(a2)+
                move.l  d0,(a2)+
                and.l   d1,(a2)+
                move.l  d0,(a2)+
                and.l   d1,(a2)+
                move.l  d0,(a2)+
                and.l   d1,(a2)+
                move.l  d0,(a2)+
                and.l   d1,(a2)+
                move.l  d0,(a2)+
                and.l   d1,(a2)+
                move.l  d0,(a2)+
                and.l   d1,(a2)+
                move.l  d0,(a2)+
                and.l   d1,(a2)+
                move.l  d0,(a2)+
                dbf     d7,loc_40B4
                lea     (byte_FF11DE).l,a2
                moveq   #$FFFFFFFF,d0
                move.l  d0,(a2)+
                move.l  d0,(a2)+
                move.l  d0,(a2)+
                move.l  d0,(a2)+
                move.l  d0,(a2)+
                move.l  d0,(a2)+
                move.l  d0,(a2)+
                move.l  d0,(a2)+
                rts

    ; End of function sub_40A4


; =============== S U B R O U T I N E =======================================

sub_40F2:
                
                lea     (byte_FF11DE).l,a2
                lea     (dword_FF5400).l,a6
                clr.w   d6
                movea.w #0,a5
                move.w  #$100,d4
                move.w  #$200,d5
                bsr.w   sub_4144
                move.w  (word_FF1180).l,d3
                eori.w  #1,d3
                movea.w d3,a5
                lea     (byte_FF5480).l,a6
                move.w  #$80,d6 
                moveq   #$E,d7
loc_4128:
                
                tst.b   (a6)
                bmi.s   return_4142
                move.l  $E(a6),$4E(a6)
                bsr.w   sub_4144
                addi.w  #$80,d6 
                lea     $80(a6),a6
                dbf     d7,loc_4128
return_4142:
                
                rts

    ; End of function sub_40F2


; =============== S U B R O U T I N E =======================================

sub_4144:
                
                btst    #6,$C(a6)
                bne.w   loc_41DE
                btst    #0,8(a6)
                bne.w   loc_41DE
                move.w  $12(a6),d2
                move.w  $14(a6),d0
                sub.w   d2,d0
                move.w  $16(a6),d1
                sub.w   d2,d1
                sub.w   (PLAYER_X).l,d0
                sub.w   (PLAYER_Y).l,d1
                move.w  d0,d2
                move.w  d1,d3
                add.w   d1,d0
                add.w   d4,d0
                cmp.w   d5,d0
                bcc.s   loc_41DE
                sub.w   d3,d2
                add.w   d4,d2
                cmp.w   d5,d2
                bcc.s   loc_41DE
                sub.w   d4,d2
                addi.w  #$120,d2
                cmpi.w  #$60,d2 
                bcs.s   loc_41DE
                cmpi.w  #$1E0,d2
                bcc.s   loc_41DE
                sub.w   d4,d0
                add.w   a5,d0
                lsr.w   #1,d0
                addi.w  #$E8,d0 
                andi.w  #$7FF,d0
                cmpi.w  #$80,d0 
                bcs.s   loc_41DE
                cmpi.w  #$1E0,d0
                bcc.s   loc_41DE
                move.w  d2,$E(a6)
                move.w  d0,$10(a6)
                move.w  d6,(a2)+
                move.w  $18(a6),d0
                add.w   $1C(a6),d0
                lsr.w   #1,d0
                clr.w   d1
                move.b  5(a6),d1
                add.w   d1,d0
                add.w   $12(a6),d0
                add.w   $54(a6),d0
                move.w  d0,$56(a6)
                rts
loc_41DE:
                
                clr.l   $E(a6)
                bclr    #7,$48(a6)
                beq.s   loc_41EE
                move.w  d6,(a2)+
                rts
loc_41EE:
                
                bclr    #7,$A(a6)
                rts

    ; End of function sub_4144


; =============== S U B R O U T I N E =======================================

sub_41F6:
                
                bsr.s   sub_4214
loc_41F8:
                
                move.w  (a3)+,d0
                bmi.s   return_4212
                lea     (dword_FF5400).l,a1
                adda.w  d0,a1
                btst    #0,8(a1)
                bne.s   loc_420E
                bsr.s   sub_4230
loc_420E:
                
                dbf     d7,loc_41F8
return_4212:
                
                rts

    ; End of function sub_41F6


; =============== S U B R O U T I N E =======================================

sub_4214:
                
                lea     (byte_FF05D0).l,a2
                lea     (byte_FF11DE).l,a3
                lea     (p_pt_Sprites).l,a4
                move.w  #$3A8,d2
                moveq   #$F,d7
                clr.b   d6
                rts

    ; End of function sub_4214


; =============== S U B R O U T I N E =======================================

sub_4230:
                
                movea.l (a4),a0
                moveq   #0,d0
                move.b  $B(a1),d0
                lsl.w   #2,d0
                move.w  6(a4,d0.w),d1
                move.w  4(a4,d0.w),d0
                lsl.w   #2,d0
                adda.l  d0,a0
                move.w  $24(a1),d0
                movea.l (a0,d0.w),a0
                move.w  $26(a1),d0
                movea.l (a0,d0.w),a0
                movem.l d7/a1/a3,-(sp)
                jsr     dword_FF1858
                movem.l (sp)+,d7/a1/a3
                rts

    ; End of function sub_4230


; =============== S U B R O U T I N E =======================================

sub_4266:
                
                bsr.s   sub_4214
loc_4268:
                
                move.w  (a3)+,d0
                bmi.s   return_427A
                lea     (dword_FF5400).l,a1
                adda.w  d0,a1
                bsr.s   sub_4230
                dbf     d7,loc_4268
return_427A:
                
                rts

    ; End of function sub_4266


; =============== S U B R O U T I N E =======================================

sub_427C:
                
                andi.w  #$F800,6(a1)
                btst    #4,$71(a1)
                beq.s   loc_42AA
                move.b  $71(a1),d1
                andi.w  #$F,d1
                addq.b  #1,d1
                lsl.w   #7,d1
                lea     (dword_FF5400).l,a3
                move.w  6(a3,d1.w),d1
                andi.w  #$7FF,d1
                or.w    d1,6(a1)
                bra.s   loc_42BE
loc_42AA:
                
                or.w    d2,6(a1)
                cmpa.l  #dword_FF5400,a1
                bne.s   loc_42BC
                addi.w  #$2C,d2 
                bra.s   loc_42BE
loc_42BC:
                
                add.w   d1,d2
loc_42BE:
                
                movem.w d2/d6,-(sp)
                movem.l a1-a2,-(sp)
                bsr.w   loc_45DE
                bsr.w   sub_473E
                movem.l (sp)+,a1-a2
                tst.b   d0
                beq.s   loc_42DC
                bset    #0,$C(a1)
loc_42DC:
                
                bsr.w   sub_4374
                movem.w (sp)+,d2/d6
                cmpi.w  #$3FF,d2
                bcs.s   loc_4318
                bset    #3,d6
                bne.s   loc_42F6
                bsr.w   WaitForDMAQueueProcessing
                bra.s   loc_4318
loc_42F6:
                
                cmpi.w  #$456,d2
                bcs.s   loc_4318
                bset    #1,d6
                bne.s   loc_4308
                bsr.w   WaitForDMAQueueProcessing
                bra.s   loc_4318
loc_4308:
                
                cmpi.w  #$4AD,d2
                bcs.s   loc_4318
                bset    #2,d6
                bne.s   loc_4318
                bsr.w   WaitForDMAQueueProcessing
loc_4318:
                
                tst.w   (DebugModeAccessWord).w
                bmi.s   return_4336
                cmpi.w  #$4F4,d2
                bcs.s   return_4336
                moveq   #$A,d7
byte_4326:
                
                sndCom  SFX_BLOB
                move.w  #3,d0
                bsr.w   Sleep           
                dbf     d7,byte_4326
return_4336:
                
                rts

    ; End of function sub_427C


; =============== S U B R O U T I N E =======================================

j_ApplyImmediateVramDMA_0:
                
                jmp     (ApplyImmediateVramDMA).l

    ; End of function j_ApplyImmediateVramDMA_0


; =============== S U B R O U T I N E =======================================

sub_433E:
                
                bclr    #7,$48(a1)
                beq.s   loc_434E
                bclr    #7,$A(a1)
                bra.s   loc_4356
loc_434E:
                
                bclr    #7,$A(a1)
                beq.s   loc_436A
loc_4356:
                
                movem.l a0-a2,-(sp)
                bsr.w   loc_45DE
                bsr.w   sub_473E
                movem.l (sp)+,a0-a2
                bsr.s   sub_4374
                rts
loc_436A:
                
                bsr.s   sub_437A
                rts

    ; End of function sub_433E

j_ApplyVIntVramDMA_0:
                jmp     (ApplyVIntVramDMA).l

; =============== S U B R O U T I N E =======================================

sub_4374:
                
                movem.l a3-a6,-(sp)
                bra.s   loc_43B2

    ; End of function sub_4374


; =============== S U B R O U T I N E =======================================

sub_437A:
                
                movem.l a3-a6,-(sp)
                bclr    #6,$2C(a1)
                bne.s   loc_43B2
                btst    #6,8(a1)
                bne.s   loc_43B2
                move.w  $30(a1),d0
                bmi.s   loc_43A6
                lea     (dword_FF5400).l,a6
                adda.w  d0,a6
                move.b  9(a6),d0
                andi.b  #$F,d0
                bne.s   loc_43B2
loc_43A6:
                
                move.b  $2F(a1),d0
                andi.b  #$3F,d0 
                beq.w   loc_43B8
loc_43B2:
                
                bsr.w   sub_44C4
                bra.s   loc_43D8
loc_43B8:
                
                tst.l   $4E(a1)
                beq.s   loc_43B2
                move.l  a1,d7
                subi.l  #dword_FF5400,d7
                lsr.w   #1,d7
                movea.l d7,a3
                adda.l  #byte_FF1400,a3
                move.w  4(a3),d0
                andi.w  #$8000,d0
loc_43D8:
                
                cmpa.l  #dword_FF5400,a1
                bne.s   loc_4420
                move.b  (STATUS_BITMAP).l,d1
                andi.b  #$F,d1
                beq.s   loc_4420
                movem.l d0/a1-a3,-(sp)
                jsr     sub_10354
                movem.l (sp)+,d0/a1-a3
                move.w  $10(a1),d1
                subi.w  #$40,d1 
                move.w  d1,(a2)+
                move.w  #$F00,d1
                andi.w  #$FF,(a2)
                or.w    d1,(a2)+
                move.w  #$4514,d1
                or.w    d0,d1
                move.w  d1,(a2)+
                move.w  $E(a1),d1
                subi.w  #$10,d1
                move.w  d1,(a2)+
loc_4420:
                
                btst    #1,$C(a1)
                beq.s   loc_448C
                move.b  $48(a1),d3
                andi.b  #7,d3
                beq.s   loc_448C
                move.w  #$24C4,d3
                cmpa.l  #dword_FF5400,a1
                beq.s   loc_4442
                move.w  #$478C,d3
loc_4442:
                
                btst    #0,(word_FF0F9C+1).l
                beq.s   loc_4450
                addi.w  #$18,d3
loc_4450:
                
                or.w    d0,d3
                move.w  $10(a1),d2
                subi.w  #$28,d2 
                move.w  d2,(a2)+
                move.b  #$F,(a2)
                addq.w  #2,a2
                move.w  d3,(a2)+
                move.w  $E(a1),d1
                subi.w  #$10,d1
                move.w  d1,(a2)+
                move.w  $10(a1),d2
                subi.w  #8,d2
                move.w  d2,(a2)+
                move.b  #$D,(a2)
                addq.w  #2,a2
                addi.w  #$10,d3
                move.w  d3,(a2)+
                move.w  d1,(a2)+
                movem.l (sp)+,a3-a6
                rts
loc_448C:
                
                moveq   #7,d7
loc_448E:
                
                move.w  (a3)+,d1
                cmpi.w  #$FFFF,d1
                beq.s   loc_44BE
                add.w   $10(a1),d1
                move.w  d1,(a2)+
                move.w  (a3)+,d1
                andi.w  #$F00,d1
                andi.w  #$FF,(a2)
                or.w    d1,(a2)+
                move.w  (a3)+,d1
                andi.w  #$7FFF,d1
                or.w    d0,d1
                move.w  d1,(a2)+
                move.w  (a3)+,d1
                add.w   $E(a1),d1
                move.w  d1,(a2)+
                dbf     d7,loc_448E
loc_44BE:
                
                movem.l (sp)+,a3-a6
                rts

    ; End of function sub_437A


; =============== S U B R O U T I N E =======================================

sub_44C4:
                
                clr.w   d0
                move.w  $12(a1),d1
                lsr.w   #4,d1
                movea.w $28(a1),a3
                movea.w a3,a4
                movea.w a3,a5
                addq.w  #2,a3
                lea     $94(a5),a5
                lea     $96(a4),a4
                move.b  2(a1),d2
                move.b  3(a1),d3
                move.b  4(a1),d4
                andi.b  #$3E,d4 
                cmpi.b  #8,d4
                bls.s   loc_4520
                subq.b  #8,d4
                add.b   d4,d2
                cmpi.b  #$10,d2
                bcs.s   loc_4504
                addq.w  #2,a3
                addq.w  #2,a4
                addq.w  #2,a5
loc_4504:
                
                add.b   d4,d3
                cmpi.b  #$10,d3
                bcs.s   loc_4518
                lea     $94(a3),a3
                lea     $94(a4),a4
                lea     $94(a5),a5
loc_4518:
                
                andi.b  #$F,d2
                andi.b  #$F,d3
loc_4520:
                
                cmp.b   d3,d2
                beq.s   loc_454C
                bcs.s   loc_453A
                movea.w a3,a6
                cmpi.b  #8,d2
                bne.s   loc_4534
                cmpi.b  #7,d3
                beq.s   loc_454E
loc_4534:
                
                suba.w  #$94,a6 
                bra.s   loc_454E
loc_453A:
                
                movea.w a5,a6
                cmpi.b  #8,d3
                bne.s   loc_4548
                cmpi.b  #7,d2
                beq.s   loc_454E
loc_4548:
                
                subq.w  #2,a6
                bra.s   loc_454E
loc_454C:
                
                movea.w a4,a6
loc_454E:
                
                clr.b   d4
                cmpi.b  #8,d2
                bls.s   loc_4560
                moveq   #1,d4
                lea     $96(a3),a3
                lea     $96(a6),a6
loc_4560:
                
                cmpi.b  #8,d3
                bls.s   loc_457A
                lea     $96(a5),a5
                lea     $96(a6),a6
                tst.b   d4
                beq.s   loc_457A
                lea     $96(a4),a4
                suba.w  #$96,a6 
loc_457A:
                
                moveq   #$B,d7
                move.b  #$F,d5
loc_4580:
                
                move.b  (a3),d4
                and.b   d5,d4
                cmp.b   d1,d4
                bhi.s   loc_45BA
                move.b  (a4),d4
                and.b   d5,d4
                cmp.b   d1,d4
                bhi.s   loc_45BA
                move.b  (a5),d4
                and.b   d5,d4
                cmp.b   d1,d4
                bhi.s   loc_45BA
                move.b  (a6),d4
                and.b   d5,d4
                cmp.b   d1,d4
                bhi.s   loc_45BA
                addq.b  #1,d1
                lea     $96(a3),a3
                lea     $96(a4),a4
                lea     $96(a5),a5
                lea     $96(a6),a6
                dbf     d7,loc_4580
                move.w  #$8000,d0
loc_45BA:
                
                move.l  a1,d7
                subi.l  #dword_FF5400,d7
                lsr.w   #1,d7
                movea.l d7,a3
                adda.l  #byte_FF1400,a3
                andi.w  #$7FFF,4(a3)
                or.w    d0,4(a3)
                rts

    ; End of function sub_44C4


; =============== S U B R O U T I N E =======================================

sub_45D8:
                
                nop
                nop
                bra.s   sub_45D8
loc_45DE:
                
                cmpa.l  #$60000000,a0
                bhi.s   sub_45D8
                move.l  a1,d1
                subi.l  #dword_FF5400,d1
                lsr.w   #1,d1
                movea.l d1,a3
                adda.l  #byte_FF1400,a3
                move.w  6(a1),d0
                move.b  6(a1),d6
                andi.b  #8,d6
                bsr.s   sub_460C
                move.w  #$FFFF,(a3)
                rts

    ; End of function sub_45D8


; =============== S U B R O U T I N E =======================================

sub_460C:
                
                movem.w d0,-(sp)
                clr.w   d1
loc_4612:
                
                move.b  (a0)+,d3
                add.b   d3,d3
                move.b  d3,d4
                andi.b  #$F8,d3
                ext.w   d3
                move.w  d3,(a3)+
                add.b   d4,d4
                andi.b  #$C,d4
                move.b  (a0)+,d3
                move.b  d3,d5
                add.b   d3,d3
                andi.b  #$F8,d3
                ext.w   d3
                andi.w  #3,d5
                or.b    d4,d5
                move.b  d5,(a3)
                btst    #3,d6
                beq.s   loc_464A
                neg.w   d3
                addq.b  #4,d4
                add.b   d4,d4
                ext.w   d4
                sub.w   d4,d3
loc_464A:
                
                andi.w  #$8000,2(a3)
                or.w    d0,2(a3)
                or.b    d6,2(a3)
                move.b  unk_467A(pc,d5.w),d5
                ext.w   d5
                add.w   d5,d0
                move.w  d3,4(a3)
                addq.w  #6,a3
                addq.b  #1,d1
                cmpi.b  #8,d1
                bcc.s   loc_4674
                tst.b   -1(a0)
                bpl.s   loc_4612
loc_4674:
                
                movem.w (sp)+,d0
                rts

    ; End of function sub_460C

unk_467A:       dc.b   1
                dc.b   2
                dc.b   3
                dc.b   4
                dc.b   2
                dc.b   4
                dc.b   6
                dc.b   8
                dc.b   3
                dc.b   6
                dc.b   9
                dc.b  $C
                dc.b   4
                dc.b   8
                dc.b  $C
                dc.b $10

; =============== S U B R O U T I N E =======================================

; Loads sprite
; d0=sprite index

sub_468A:
                
                move.l     j_ApplyVIntVramDMA_0(pc), (dword_FF1850).l
                move.w     j_ApplyVIntVramDMA_0+4(pc), (word_FF1854).l
                lea     (p_pt_Sprites).l,a4
                movea.l (a4),a0
                lsl.w   #2,d0
                move.w  4(a4,d0.w),d0
                lsl.w   #2,d0
                adda.l  d0,a0
                movea.l (a0,d2.w),a0
                movea.l (a0,d3.w),a0
                movem.w d1,-(sp)
                move.w  d1,d0
                movem.l d4-d5/a3,-(sp)
                bsr.w   sub_460C
                movea.l a3,a6
                movem.l (sp)+,d4-d5/a3
loc_46C8:
                
                add.w   d4,6(a3)
                add.w   d5,(a3)
                addq.w  #8,a3
                cmpa.l  a6,a3
                bcs.s   loc_46C8
                movem.w (sp)+,d0
                bra.s   sub_473E

    ; End of function sub_468A


; =============== S U B R O U T I N E =======================================

sub_46DA:
                
                bsr.s   sub_46EE

    ; End of function sub_46DA


; =============== S U B R O U T I N E =======================================

sub_46DC:
                
                move.l     j_ApplyVIntVramDMA_0(pc), (dword_FF1850).l
                move.w     j_ApplyVIntVramDMA_0+4(pc), (word_FF1854).l
                bra.s   loc_471C

    ; End of function sub_46DC


; =============== S U B R O U T I N E =======================================

sub_46EE:
                
                move.b  d0,d2
                andi.b  #7,d0
                lsl.b   #2,d0
                ext.w   d0
                move.w  d0,d3
                andi.b  #$38,d2 
                lsr.b   #1,d2
                ext.w   d2
                move.l  #$23,d0 
                rts

    ; End of function sub_46EE


; =============== S U B R O U T I N E =======================================

sub_470A:
                
                bsr.s   sub_46EE
                move.l     j_ApplyImmediateVramDMA_0(pc), (dword_FF1850).l
                move.w     j_ApplyImmediateVramDMA_0+4(pc), (word_FF1854).l
loc_471C:
                
                lea     (p_pt_Sprites).l,a4
                movea.l (a4),a0
                lsl.w   #2,d0
                move.w  4(a4,d0.w),d0
                lsl.w   #2,d0
                adda.l  d0,a0
                movea.l (a0,d2.w),a0
                movea.l (a0,d3.w),a0
loc_4736:
                
                addq.l  #1,a0
                tst.b   (a0)+
                bpl.s   loc_4736
                move.w  d1,d0

    ; End of function sub_470A


; =============== S U B R O U T I N E =======================================

sub_473E:
                
                movea.l a0,a6
                lsl.w   #5,d0
                movea.w d0,a1
loc_4744:
                
                move.b  (a6)+,d0
                lsl.w   #8,d0
                move.b  (a6)+,d0
                move.w  d0,d7
                bmi.s   loc_476E
                andi.w  #$2000,d7
                bne.s   loc_4786
                move.w  d0,d7
                andi.w  #$FFF,d0
                movea.l a6,a0
                jsr     dword_FF1850
                movea.l a0,a6
                andi.w  #$4000,d7
                beq.s   loc_4744
                clr.b   d0
                rts
loc_476E:
                
                lea     unk_47A0(pc), a0
                andi.w  #$FFF,d0
                jsr     dword_FF1850
                andi.w  #$4000,d7
                beq.s   loc_4744
                clr.b   d0
                rts
loc_4786:
                
                movea.l a6,a0
                movea.l a1,a2
                lea     (byte_FF2C00).l,a1
                movem.l a3,-(sp)
                bsr.w   sub_4A94
                movem.l (sp)+,a3
                moveq   #$FFFFFFFF,d0
                rts

    ; End of function sub_473E

unk_47A0:       dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

sub_4980:
                
                bra.w   loc_49BA
                lea     (dword_FF5400).l,a0
                lea     (byte_FF11DE).l,a2
loc_4990:
                
                movea.l a2,a3
                tst.w   (a3)+
                move.w  (a2),d2
                bmi.s   return_49B8
loc_4998:
                
                move.w  (a3),d3
                bmi.s   loc_49B4
                move.w  $56(a0,d2.w),d0
                cmp.w   $56(a0,d3.w),d0
                bhi.s   loc_49B0
                move.w  (a2),d0
                move.w  (a3),(a2)
                move.w  d0,(a3)+
                move.w  (a2),d2
                bra.s   loc_4998
loc_49B0:
                
                tst.w   (a3)+
                bra.s   loc_4998
loc_49B4:
                
                tst.w   (a2)+
                bra.s   loc_4990
return_49B8:
                
                rts
loc_49BA:
                
                bsr.s   sub_49C0
                bsr.s   sub_4A3A
                rts

    ; End of function sub_4980


; =============== S U B R O U T I N E =======================================

sub_49C0:
                
                lea     (dword_FF5400).l,a0
                lea     (byte_FF11DE).l,a2
                moveq   #$E,d7
loc_49CE:
                
                movem.w d7,-(sp)
                movea.l a2,a3
                tst.w   (a3)+
                move.w  (a2),d2
                move.w  (a3),d3
loc_49DA:
                
                tst.w   d2
                bmi.s   loc_4A30
                tst.w   d3
                bmi.s   loc_4A1A
                tst.w   (a0,d3.w)
                bmi.s   loc_4A22
                move.w  $18(a0,d2.w),d0
                cmp.w   $1A(a0,d3.w),d0
                bcc.s   loc_4A1A
                move.w  $1C(a0,d2.w),d0
                cmp.w   $1E(a0,d3.w),d0
                bcc.s   loc_4A1A
                move.w  $1A(a0,d2.w),d0
                cmp.w   $18(a0,d3.w),d0
                bls.s   loc_4A30
                move.w  $1E(a0,d2.w),d0
                cmp.w   $1C(a0,d3.w),d0
                bls.s   loc_4A30
                move.w  $12(a0,d2.w),d0
                cmp.w   $12(a0,d3.w),d0
                bcs.s   loc_4A30
loc_4A1A:
                
                tst.w   (a3)+
loc_4A1C:
                
                move.w  (a3),d3
                dbf     d7,loc_49DA
loc_4A22:
                
                movem.w (sp)+,d7
                tst.w   (a2)+
                move.w  (a2),d2
                dbf     d7,loc_49CE
                rts
loc_4A30:
                
                move.w  (a2),d0
                move.w  (a3),(a2)
                move.w  d0,(a3)+
                move.w  (a2),d2
                bra.s   loc_4A1C

    ; End of function sub_49C0


; =============== S U B R O U T I N E =======================================

sub_4A3A:
                
                lea     (byte_FF11DE).l,a3
                lea     (dword_FF5400).l,a1
loc_4A46:
                
                movea.l a3,a0
                tst.w   (a3)+
                move.w  (a0)+,d0
                movea.l a0,a2
loc_4A4E:
                
                move.w  (a0)+,d1
                bmi.s   loc_4A74
                cmp.w   $30(a1,d1.w),d0
                bne.s   loc_4A4E
loc_4A58:
                
                move.w  (a2)+,-4(a2)
                cmpa.l  a2,a0
                bne.s   loc_4A58
                move.w  d0,-2(a2)
                move.w  -2(a3),d0
                tst.w   $30(a1,d0.w)
                bpl.s   loc_4A72
                movea.l a3,a2
                bra.s   loc_4A58
loc_4A72:
                
                tst.w   -(a3)
loc_4A74:
                
                tst.w   (a3)
                bpl.s   loc_4A46
                rts

    ; End of function sub_4A3A


; =============== S U B R O U T I N E =======================================

sub_4A7A:
                
                movem.l a2,-(sp)
                movea.l a1,a2
                bsr.w   DecompressLZ77Graphics
                move.l  a1,d0
                sub.l   a2,d0
                lsr.w   #1,d0
                movea.l a2,a0
                movem.l (sp)+,a1
                bra.w   ApplyVIntVramDMA

    ; End of function sub_4A7A


; =============== S U B R O U T I N E =======================================

sub_4A94:
                
                movem.l a2,-(sp)
                movea.l a1,a2
                bsr.w   DecompressLZ77Graphics
                move.l  a1,d0
                sub.l   a2,d0
                lsr.w   #1,d0
                move.w  #2,d1
                movea.l a2,a0
                movem.l (sp)+,a1
                bra.w   ApplyImmediateVramDMA

    ; End of function sub_4A94


; =============== S U B R O U T I N E =======================================

DecompressLZ77Graphics:
                
                moveq   #$F,d4
loc_4AB4:
                
                moveq   #7,d3
                move.b  (a0)+,d0
                bmi.s   loc_4B04
loc_4ABA:
                
                clr.w   d1
                move.b  (a0)+,d1
                move.w  d1,d2
                and.b   d4,d1
                add.b   d1,d1
                lsl.w   #4,d2
                move.b  (a0)+,d2
                tst.w   d2
                beq.s   return_4B12
                movea.l a1,a3
                suba.w  d2,a3
                move.b  (a3)+,(a1)+
                move.b  (a3)+,(a1)+
                jmp     loc_4AD8(pc,d1.w)
loc_4AD8:
                
                move.b  (a3)+,(a1)+
                move.b  (a3)+,(a1)+
                move.b  (a3)+,(a1)+
                move.b  (a3)+,(a1)+
                move.b  (a3)+,(a1)+
                move.b  (a3)+,(a1)+
                move.b  (a3)+,(a1)+
                move.b  (a3)+,(a1)+
                move.b  (a3)+,(a1)+
                move.b  (a3)+,(a1)+
                move.b  (a3)+,(a1)+
                move.b  (a3)+,(a1)+
                move.b  (a3)+,(a1)+
                move.b  (a3)+,(a1)+
                move.b  (a3)+,(a1)+
                move.b  (a3)+,(a1)+
                add.b   d0,d0
                dbmi    d3,loc_4ABA
                dbpl    d3,loc_4B04
                bra.s   loc_4AB4
loc_4B04:
                
                move.b  (a0)+,(a1)+
                add.b   d0,d0
                dbpl    d3,loc_4B04
                dbmi    d3,loc_4ABA
                bra.s   loc_4AB4
return_4B12:
                
                rts

    ; End of function DecompressLZ77Graphics


; =============== S U B R O U T I N E =======================================

sub_4B14:
                
                movem.l d0-d1/a0,-(sp)
                bsr.w   sub_4CF4
                bcs.s   loc_4B4C
                lea     (word_A77E).l,a1
                lsl.w   #3,d5
                adda.w  d5,a1
                movea.l (dword_FF1840).l,a0
                move.w  (a1),(a0)+
                clr.l   (a0)+
                move.w  (a1),(a0)+
                clr.l   (a0)+
                addq.l  #4,a1
                move.w  (a1),(a0)+
                clr.l   (a0)+
                move.w  (a1),(a0)+
                clr.l   (a0)+
                move.l  a0,(dword_FF1840).l
                addq.b  #1,(byte_FF1128).l
loc_4B4C:
                
                movem.l (sp)+,d0-d1/a0
                rts

    ; End of function sub_4B14


; =============== S U B R O U T I N E =======================================

sub_4B52:
                
                move.b  (byte_FF1128).l,(byte_FF115A).l
                clr.b   (byte_FF1128).l
                movem.w d0,-(sp)
                bsr.w   sub_4EC6
                bsr.w   sub_4DBC
                move.b  (a0)+,d0
                move.b  (a0)+,d1
                move.b  (a0)+,d6
                move.b  (a0)+,d7
                ext.w   d0
                ext.w   d1
                ext.w   d6
                ext.w   d7
                movem.l a0,-(sp)
                bsr.s   sub_4BA0
                movem.l (sp)+,a0
                bsr.w   sub_4EAE
                movem.w (sp)+,d0
                bsr.w   sub_4E94
                move.b  (byte_FF115A).l,(byte_FF1128).l
                rts

    ; End of function sub_4B52


; =============== S U B R O U T I N E =======================================

sub_4BA0:
                
                cmpi.b  #1,9(a0)
                beq.s   loc_4BF2
                bhi.w   loc_4C40
                move.w  d0,d2
                move.w  d1,d3
loc_4BB0:
                
                movem.l d0/d2/d6/a1-a2,-(sp)
loc_4BB4:
                
                bsr.w   sub_4CF4
                bcs.s   loc_4BD0
                movem.w d0-d1/d5,-(sp)
                move.w  d2,d0
                move.w  d3,d1
                bsr.w   sub_4CF4
                movem.w (sp)+,d0-d1/d4
                bcs.s   loc_4BD0
                bsr.w   sub_4C94
loc_4BD0:
                
                addq.w  #2,a1
                addq.w  #2,a2
                addq.b  #1,d0
                addq.b  #1,d2
                dbf     d6,loc_4BB4
                movem.l (sp)+,d0/d2/d6/a1-a2
                lea     $94(a1),a1
                lea     $94(a2),a2
                addq.b  #1,d1
                addq.b  #1,d3
                dbf     d7,loc_4BB0
                rts
loc_4BF2:
                
                move.w  d0,d2
                move.w  d1,d3
                addq.w  #1,d0
                addq.w  #2,a1
loc_4BFA:
                
                movem.l d0/d2/d6/a1-a2,-(sp)
loc_4BFE:
                
                bsr.w   sub_4CF4
                bcs.s   loc_4C1A
                movem.w d0-d1/d5,-(sp)
                move.w  d2,d0
                move.w  d3,d1
                bsr.w   sub_4CF4
                movem.w (sp)+,d0-d1/d4
                bcs.s   loc_4C1A
                bsr.w   sub_4C94
loc_4C1A:
                
                addq.w  #2,a1
                addq.w  #2,a2
                addq.b  #1,d0
                addq.b  #1,d2
                dbf     d6,loc_4BFE
                movem.l (sp)+,d0/d2/d6/a1-a2
                lea     $96(a1),a1
                lea     $96(a2),a2
                addq.b  #1,d0
                addq.b  #1,d2
                addq.b  #1,d1
                addq.b  #1,d3
                dbf     d7,loc_4BFA
                rts
loc_4C40:
                
                move.w  d0,d2
                move.w  d1,d3
                addq.w  #1,d3
                lea     $94(a2),a2
loc_4C4A:
                
                movem.l d1/d3/d6/a1-a2,-(sp)
loc_4C4E:
                
                bsr.w   sub_4CF4
                bcs.s   loc_4C6A
                movem.w d0-d1/d5,-(sp)
                move.w  d2,d0
                move.w  d3,d1
                bsr.w   sub_4CF4
                movem.w (sp)+,d0-d1/d4
                bcs.s   loc_4C6A
                bsr.w   sub_4C94
loc_4C6A:
                
                lea     $94(a1),a1
                lea     $94(a2),a2
                addq.b  #1,d1
                addq.b  #1,d3
                dbf     d6,loc_4C4E
                movem.l (sp)+,d1/d3/d6/a1-a2
                lea     $96(a1),a1
                lea     $96(a2),a2
                addq.b  #1,d0
                addq.b  #1,d2
                addq.b  #1,d1
                addq.b  #1,d3
                dbf     d7,loc_4C4A
                rts

    ; End of function sub_4BA0


; =============== S U B R O U T I N E =======================================

sub_4C94:
                
                movem.l d2-d5/a1-a3,-(sp)
                move.w  (a1),d2
                move.w  (a2),d3
                lsl.w   #3,d2
                lsl.w   #3,d3
                lea     (word_A77E).l,a1
                lsl.w   #3,d4
                adda.w  d4,a1
                lea     (word_A77E).l,a3
                lsl.w   #3,d5
                adda.w  d5,a3
                movea.l (dword_FF1840).l,a0
                lea     (MAP_BLOCKS).l,a2
                move.w  (a1),(a0)+
                move.l  (a2,d2.w),(a0)+
                addq.w  #4,a1
                move.w  2(a3),(a0)+
                move.l  (a2,d3.w),(a0)+
                addq.w  #6,a3
                move.w  (a1),(a0)+
                move.l  4(a2,d2.w),(a0)+
                addq.w  #4,a1
                move.w  (a3),(a0)+
                move.l  4(a2,d3.w),(a0)+
                addq.w  #4,a3
                move.l  a0,(dword_FF1840).l
                addq.b  #1,(byte_FF115A).l
                movem.l (sp)+,d2-d5/a1-a3
                rts

    ; End of function sub_4C94


; =============== S U B R O U T I N E =======================================

sub_4CF4:
                
                movem.w d0-d1/d6-d7,-(sp)
                move.w  (word_FF1184).l,d5
                move.b  (byte_FF1124).l,d6
                move.b  (byte_FF1125).l,d7
                ext.w   d6
                ext.w   d7
                sub.w   d6,d0
                sub.w   d7,d1
                move.w  d0,d6
                move.w  d1,d7
                add.w   d6,d7
                addi.w  #$C,d7
                cmpi.w  #$18,d7
                bcc.w   loc_4DB2
                move.w  d0,d6
                move.w  d1,d7
                sub.w   d7,d6
                addi.w  #$C,d6
                cmpi.w  #$18,d6
                bcc.w   loc_4DB2
                tst.w   d0
                beq.s   loc_4D6C
                bpl.s   loc_4D58
                neg.w   d0
                subq.w  #1,d0
loc_4D40:
                
                subq.w  #1,d5
                move.w  d5,d6
                andi.w  #$1F,d6
                cmpi.w  #$1F,d6
                bne.s   loc_4D52
                addi.w  #$20,d5 
loc_4D52:
                
                dbf     d0,loc_4D40
                bra.s   loc_4D6C
loc_4D58:
                
                subq.w  #1,d0
loc_4D5A:
                
                addq.w  #1,d5
                move.w  d5,d6
                andi.w  #$1F,d6
                bne.s   loc_4D68
                subi.w  #$20,d5 
loc_4D68:
                
                dbf     d0,loc_4D5A
loc_4D6C:
                
                tst.w   d1
                beq.s   loc_4DAA
                bpl.s   loc_4D90
                neg.w   d1
                subq.w  #1,d1
loc_4D76:
                
                subi.w  #$20,d5 
                bpl.s   loc_4D8A
                addi.w  #$210,d5
                cmpi.w  #$200,d5
                bcs.s   loc_4D8A
                subi.w  #$20,d5 
loc_4D8A:
                
                dbf     d1,loc_4D76
                bra.s   loc_4DAA
loc_4D90:
                
                subq.w  #1,d1
loc_4D92:
                
                addi.w  #$20,d5 
                cmpi.w  #$200,d5
                bcs.s   loc_4DA6
                subi.w  #$210,d5
                bpl.s   loc_4DA6
                addi.w  #$20,d5 
loc_4DA6:
                
                dbf     d1,loc_4D92
loc_4DAA:
                
                movem.w (sp)+,d0-d1/d6-d7
                tst.b   d0
                rts
loc_4DB2:
                
                movem.w (sp)+,d0-d1/d6-d7
                ori     #1,ccr
                rts

    ; End of function sub_4CF4


; =============== S U B R O U T I N E =======================================

sub_4DBC:
                
                move.b  (a0)+,d0
                move.b  (a0)+,d1
                ext.w   d0
                ext.w   d1
                bsr.s   sub_4DEC
                lea     (byte_FF7C02).l,a1
                lea     (byte_FFA6CA).l,a2
                adda.w  d1,a1
                adda.w  d1,a2
                rts

    ; End of function sub_4DBC


; =============== S U B R O U T I N E =======================================

sub_4DD8:
                
                move.b  (a0)+,d0
                move.b  (a0)+,d1
                ext.w   d0
                ext.w   d1
                bsr.s   sub_4DEC
                lea     (HEIGHT_MAP).l,a1
                adda.w  d1,a1
                rts

    ; End of function sub_4DD8


; =============== S U B R O U T I N E =======================================

sub_4DEC:
                
                bsr.w   sub_C3A0
                add.w   d0,d1
                add.w   d0,d1
                rts

    ; End of function sub_4DEC


; =============== S U B R O U T I N E =======================================

sub_4DF6:
                
                bsr.s   sub_4DFC
                bsr.s   sub_4E46
                rts

    ; End of function sub_4DF6


; =============== S U B R O U T I N E =======================================

sub_4DFC:
                
                lea     word_4FEA(pc), a0
                lea     (MAIN_FLAGS).l,a1
                bsr.s   sub_4E0C
                lea     word_50B8(pc), a0

    ; End of function sub_4DFC


; =============== S U B R O U T I N E =======================================

sub_4E0C:
                
                move.w  (a0),d0
                bmi.s   return_4E44
                cmp.w   (CURRENT_MAP).l,d0
                bne.s   loc_4E40
                move.b  2(a0),d0
                bmi.s   loc_4E2E
                ext.w   d0
                move.b  3(a0),d1
                andi.b  #7,d1
                btst    d1,(a1,d0.w)
                beq.s   loc_4E40
loc_4E2E:
                
                move.b  3(a0),d0
                andi.b  #$78,d0 
                movem.l a0-a1,-(sp)
                bsr.s   sub_4E90
                movem.l (sp)+,a0-a1
loc_4E40:
                
                addq.l  #4,a0
                bra.s   sub_4E0C
return_4E44:
                
                rts

    ; End of function sub_4E0C


; =============== S U B R O U T I N E =======================================

sub_4E46:
                
                lea     word_5102(pc), a0
                btst    #7,(word_FF1024).l
                beq.s   return_4E8E
loc_4E54:
                
                move.w  (a0),d0
                bmi.s   return_4E8E
                cmp.w   (CURRENT_MAP).l,d0
                bne.s   loc_4E8A
                move.b  2(a0),d0
                ext.w   d0
                move.b  3(a0),d1
                andi.b  #7,d1
                btst    d1,(a1,d0.w)
                beq.s   loc_4E8A
                addq.b  #1,d1
                btst    d1,(a1,d0.w)
                beq.s   loc_4E8A
                move.b  #8,d0
                movem.l a0-a1,-(sp)
                bsr.s   sub_4E90
                movem.l (sp)+,a0-a1
loc_4E8A:
                
                addq.l  #4,a0
                bra.s   loc_4E54
return_4E8E:
                
                rts

    ; End of function sub_4E46


; =============== S U B R O U T I N E =======================================

sub_4E90:
                
                bsr.s   sub_4E94
                bra.s   sub_4EAE

    ; End of function sub_4E90


; =============== S U B R O U T I N E =======================================

sub_4E94:
                
                bsr.s   sub_4EC6
                bsr.w   sub_4DBC
                movea.l a1,a3
                movea.l a2,a4
                bsr.w   sub_4DBC
                move.b  (a0)+,d0
                move.b  (a0)+,d1
                ext.w   d0
                ext.w   d1
                bsr.s   sub_4EF4
                rts

    ; End of function sub_4E94


; =============== S U B R O U T I N E =======================================

sub_4EAE:
                
                bsr.w   sub_4DD8
                movea.l a1,a2
                bsr.w   sub_4DD8
                move.b  (a0)+,d0
                move.b  (a0)+,d1
                ext.w   d0
                ext.w   d1
                bsr.w   sub_4F8C
                rts

    ; End of function sub_4EAE


; =============== S U B R O U T I N E =======================================

sub_4EC6:
                
                subi.b  #8,d0
                lea     unk_512C(pc), a0
loc_4ECE:
                
                move.w  $C(a0),d1
                bmi.s   byte_4EE8
                cmp.w   (CURRENT_MAP).l,d1
                bne.s   loc_4EE2
                cmp.b   $E(a0),d0
                beq.s   return_4EF2
loc_4EE2:
                
                lea     $10(a0),a0
                bra.s   loc_4ECE
byte_4EE8:
                
                sndCom  SFX_ITEM_DROP
                nop
                nop
                bra.s   byte_4EE8
return_4EF2:
                
                rts

    ; End of function sub_4EC6


; =============== S U B R O U T I N E =======================================

sub_4EF4:
                
                cmpi.b  #1,9(a0)
                beq.s   loc_4F24
                bhi.s   loc_4F4E
loc_4EFE:
                
                movem.l d0/a1-a4,-(sp)
loc_4F02:
                
                move.w  (a3)+,(a1)+
                move.w  (a4)+,(a2)+
                dbf     d0,loc_4F02
                movem.l (sp)+,d0/a1-a4
                lea     $94(a1),a1
                lea     $94(a2),a2
                lea     $94(a3),a3
                lea     $94(a4),a4
                dbf     d1,loc_4EFE
                rts
loc_4F24:
                
                addq.w  #2,a1
                addq.w  #2,a3
loc_4F28:
                
                movem.l d0/a1-a4,-(sp)
loc_4F2C:
                
                move.w  (a3)+,(a1)+
                move.w  (a4)+,(a2)+
                dbf     d0,loc_4F2C
                movem.l (sp)+,d0/a1-a4
                lea     $96(a1),a1
                lea     $96(a2),a2
                lea     $96(a3),a3
                lea     $96(a4),a4
                dbf     d1,loc_4F28
                rts
loc_4F4E:
                
                lea     $94(a2),a2
                lea     $94(a4),a4
loc_4F56:
                
                movem.l d0/a1-a4,-(sp)
loc_4F5A:
                
                move.w  (a3),(a1)
                move.w  (a4),(a2)
                lea     $94(a1),a1
                lea     $94(a2),a2
                lea     $94(a3),a3
                lea     $94(a4),a4
                dbf     d0,loc_4F5A
                movem.l (sp)+,d0/a1-a4
                lea     $96(a1),a1
                lea     $96(a2),a2
                lea     $96(a3),a3
                lea     $96(a4),a4
                dbf     d1,loc_4F56
                rts

    ; End of function sub_4EF4


; =============== S U B R O U T I N E =======================================

sub_4F8C:
                
                movem.l d0/a1-a2,-(sp)
loc_4F90:
                
                move.w  (a2)+,(a1)+
                dbf     d0,loc_4F90
                movem.l (sp)+,d0/a1-a2
                lea     $94(a1),a1
                lea     $94(a2),a2
                dbf     d1,sub_4F8C
                rts

    ; End of function sub_4F8C


; =============== S U B R O U T I N E =======================================

sub_4FA8:
                
                lsl.b   #3,d2
                addq.b  #8,d2
                lea     word_50B8(pc), a0
                lea     (MAIN_FLAGS).l,a1
loc_4FB6:
                
                move.w  (a0),d0
                bmi.s   return_4FE4
                cmp.w   (CURRENT_MAP).l,d0
                bne.s   loc_4FE6
                move.b  3(a0),d0
                andi.b  #$78,d0 
                cmp.b   d0,d2
                bne.s   loc_4FE6
                move.b  2(a0),d3
                ext.w   d3
                move.b  3(a0),d1
                andi.b  #7,d1
                bset    d1,(a1,d3.w)
                bsr.w   sub_4B52
return_4FE4:
                
                rts
loc_4FE6:
                
                addq.l  #4,a0
                bra.s   loc_4FB6

    ; End of function sub_4FA8

word_4FEA:      dc.w $1A9
                dc.b   0
                dc.b   8
                dc.w $A0
                dc.b $2A 
                dc.b $16
                dc.w $1B1
                dc.b   0
                dc.b $16
                dc.w $1C6
                dc.b   4
                dc.b  $F
                dc.w $BE
                dc.b  $B
                dc.b   8
                dc.w $CB
                dc.b  $B
                dc.b  $A
                dc.w $E2
                dc.b  $A
                dc.b   9
                dc.w $27D
                dc.b $FF
                dc.b   8
                dc.w $27E
                dc.b  $E
                dc.b   9
                dc.w $29B
                dc.b $14
                dc.b   8
                dc.w $B1
                dc.b   0
                dc.b   8
                dc.w $215
                dc.b $FF
                dc.b $20
                dc.w $215
                dc.b   4
                dc.b $11
                dc.w $55
                dc.b $14
                dc.b   8
                dc.w $2C
                dc.b $20
                dc.b  $F
                dc.w $214
                dc.b $21 
                dc.b   8
                dc.w $244
                dc.b $21 
                dc.b   9
                dc.w $24E
                dc.b $21 
                dc.b  $A
                dc.w $24D
                dc.b $21 
                dc.b  $B
                dc.w $245
                dc.b $21 
                dc.b  $C
                dc.w $274
                dc.b $20
                dc.b  $D
                dc.w $5D
                dc.b $28 
                dc.b  $A
                dc.w $FA
                dc.b  $F
                dc.b   8
                dc.w $F0
                dc.b  $F
                dc.b   9
                dc.w $10A
                dc.b  $F
                dc.b  $A
                dc.w $9B
                dc.b $FF
                dc.b   8
                dc.w $F4
                dc.b $FF
                dc.b   8
                dc.w $F3
                dc.b $28 
                dc.b   8
                dc.w $F2
                dc.b $27 
                dc.b  $D
                dc.w $2D6
                dc.b $2A 
                dc.b   8
                dc.w $5B
                dc.b  $C
                dc.b  $A
                dc.w $1E0
                dc.b $27 
                dc.b  $E
                dc.w $80
                dc.b $11
                dc.b  $B
                dc.w $1CB
                dc.b $28 
                dc.b   8
                dc.w $1D2
                dc.b $28 
                dc.b   8
                dc.w $203
                dc.b $38 
                dc.b   9
                dc.w $196
                dc.b $38 
                dc.b $18
                dc.w $19A
                dc.b $38 
                dc.b   8
                dc.w $AC
                dc.b $38 
                dc.b $10
                dc.w $194
                dc.b $38 
                dc.b  $D
                dc.w $AC
                dc.b $38 
                dc.b $1D
                dc.w $1A1
                dc.b $38 
                dc.b  $A
                dc.w $1A1
                dc.b $38 
                dc.b $12
                dc.w $AC
                dc.b $38 
                dc.b  $A
                dc.w $27D
                dc.b $27 
                dc.b $11
                dc.w $AB
                dc.b $27 
                dc.b   9
                dc.w $77
                dc.b $34 
                dc.b $44 
                dc.w $79
                dc.b $34 
                dc.b $45 
                dc.w $78
                dc.b $34 
                dc.b $37 
                dc.w $76
                dc.b $35 
                dc.b $31 
                dc.w $2BA
                dc.b $2A 
                dc.b  $C
                dc.w $FFFF
word_50B8:      dc.w $A0
                dc.b   0
                dc.b  $C
                dc.w $C5
                dc.b   6
                dc.b   9
                dc.w $D9
                dc.b   6
                dc.b  $A
                dc.w 1
                dc.b   6
                dc.b  $C
                dc.w $13
                dc.b   6
                dc.b  $D
                dc.w $26
                dc.b   7
                dc.b  $A
                dc.w $28A
                dc.b   7
                dc.b  $B
                dc.w $28A
                dc.b   7
                dc.b $13
                dc.w $28A
                dc.b   7
                dc.b $1B
                dc.w $27E
                dc.b   7
                dc.b $16
                dc.w $30B
                dc.b   8
                dc.b $11
                dc.w $E9
                dc.b   8
                dc.b  $B
                dc.w $11B
                dc.b   8
                dc.b  $C
                dc.w $121
                dc.b   8
                dc.b  $D
                dc.w $120
                dc.b   8
                dc.b  $E
                dc.w $11F
                dc.b   8
                dc.b  $F
                dc.w $14A
                dc.b   9
                dc.b  $A
                dc.w $155
                dc.b   9
                dc.b  $B
                dc.w $FFFF
word_5102:      dc.w $1FE
                dc.b $23 
                dc.b   0
                dc.w $1FF
                dc.b $23 
                dc.b   0
                dc.w $200
                dc.b $23 
                dc.b   2
                dc.w $216
                dc.b $23 
                dc.b   2
                dc.w $219
                dc.b $23 
                dc.b   4
                dc.w $21B
                dc.b $23 
                dc.b   4
                dc.w $201
                dc.b $23 
                dc.b   6
                dc.w $218
                dc.b $23 
                dc.b   6
                dc.w $217
                dc.b $25 
                dc.b   0
                dc.w $21A
                dc.b $25 
                dc.b   0
                dc.w $FFFF
unk_512C:       dc.b $32 
                dc.b  $B
                dc.b $21 
                dc.b  $D
                dc.b   1
                dc.b   4
                dc.b $2D 
                dc.b $10
                dc.b $27 
                dc.b $12
                dc.b   1
                dc.b   1
                dc.w 1
                dc.b   0
                dc.b   1
                dc.b  $B
                dc.b $23 
                dc.b  $D
                dc.b $13
                dc.b   1
                dc.b   5
                dc.b $10
                dc.b $13
                dc.b $12
                dc.b $19
                dc.b   1
                dc.b   1
                dc.b   0
                dc.b $13
                dc.b   0
                dc.b   2
                dc.b $14
                dc.b   1
                dc.b $14
                dc.b  $E
                dc.b   0
                dc.b   5
                dc.b $27 
                dc.b $1B
                dc.b $25 
                dc.b $1E
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $23 
                dc.b   0
                dc.b   1
                dc.b $2E 
                dc.b  $E
                dc.b $16
                dc.b  $B
                dc.b   2
                dc.b   4
                dc.b $38 
                dc.b $18
                dc.b $1F
                dc.b $15
                dc.b   1
                dc.b   2
                dc.b   0
                dc.b $26 
                dc.b   0
                dc.b   2
                dc.b $10
                dc.b   1
                dc.b  $A
                dc.b   8
                dc.b   0
                dc.b   4
                dc.b  $F
                dc.b $14
                dc.b  $F
                dc.b  $C
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $2C 
                dc.b   0
                dc.b   1
                dc.b $1D
                dc.b   6
                dc.b  $F
                dc.b $11
                dc.b   7
                dc.b  $E
                dc.b $26 
                dc.b $16
                dc.b $1C
                dc.b $1A
                dc.b   3
                dc.b   3
                dc.b   0
                dc.b $33 
                dc.b   0
                dc.b   1
                dc.b $1D
                dc.b   6
                dc.b  $F
                dc.b $11
                dc.b   7
                dc.b  $E
                dc.b $26 
                dc.b $16
                dc.b $1C
                dc.b $1A
                dc.b   3
                dc.b   3
                dc.b   0
                dc.b $34 
                dc.b   0
                dc.b   1
                dc.b $1D
                dc.b   6
                dc.b  $F
                dc.b $11
                dc.b   7
                dc.b  $E
                dc.b $26 
                dc.b $16
                dc.b $1C
                dc.b $1A
                dc.b   3
                dc.b   3
                dc.b   0
                dc.b $35 
                dc.b   0
                dc.b   1
                dc.b $1D
                dc.b   6
                dc.b  $F
                dc.b $11
                dc.b   7
                dc.b  $E
                dc.b $26 
                dc.b $16
                dc.b $1C
                dc.b $1A
                dc.b   3
                dc.b   3
                dc.b   0
                dc.b $36 
                dc.b   0
                dc.b   1
                dc.b  $C
                dc.b $2A 
                dc.b  $A
                dc.b   8
                dc.b   2
                dc.b   5
                dc.b $11
                dc.b $12
                dc.b $11
                dc.b $12
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $3B 
                dc.b   0
                dc.b   1
                dc.b  $C
                dc.b $2A 
                dc.b  $A
                dc.b   8
                dc.b   2
                dc.b   5
                dc.b $11
                dc.b $12
                dc.b $11
                dc.b $12
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $3C 
                dc.b   0
                dc.b   1
                dc.b  $C
                dc.b $2A 
                dc.b  $A
                dc.b   8
                dc.b   2
                dc.b   5
                dc.b $11
                dc.b $12
                dc.b $11
                dc.b $12
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $3D 
                dc.b   0
                dc.b   1
                dc.b  $C
                dc.b $2A 
                dc.b  $A
                dc.b   8
                dc.b   2
                dc.b   5
                dc.b $11
                dc.b $12
                dc.b $11
                dc.b $12
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $3E 
                dc.b   0
                dc.b   1
                dc.b $2C 
                dc.b $14
                dc.b   9
                dc.b  $D
                dc.b   1
                dc.b   5
                dc.b  $C
                dc.b  $C
                dc.b  $C
                dc.b  $C
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $55 
                dc.b   8
                dc.b   2
                dc.b $2C 
                dc.b $16
                dc.b   9
                dc.b  $D
                dc.b   1
                dc.b   5
                dc.b  $C
                dc.b  $C
                dc.b  $C
                dc.b  $C
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $55 
                dc.b $10
                dc.b   2
                dc.b $2B 
                dc.b  $C
                dc.b $13
                dc.b $12
                dc.b   8
                dc.b   4
                dc.b $22 
                dc.b  $C
                dc.b $14
                dc.b $14
                dc.b   7
                dc.b   2
                dc.b   0
                dc.b $55 
                dc.b   0
                dc.b   0
                dc.b  $D
                dc.b $2A 
                dc.b  $D
                dc.b $16
                dc.b   2
                dc.b   5
                dc.b $24 
                dc.b $20
                dc.b $10
                dc.b $1A
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $5B 
                dc.b   0
                dc.b   2
                dc.b $12
                dc.b $21 
                dc.b  $F
                dc.b $12
                dc.b   0
                dc.b $11
                dc.b $1C
                dc.b $2A 
                dc.b $21 
                dc.b $23 
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $5D 
                dc.b   0
                dc.b   1
                dc.b $14
                dc.b $26 
                dc.b $13
                dc.b $13
                dc.b   7
                dc.b   7
                dc.b  $C
                dc.b $1D
                dc.b $15
                dc.b $15
                dc.b   2
                dc.b   2
                dc.b   0
                dc.b $62 
                dc.b   0
                dc.b   0
                dc.b $14
                dc.b $26 
                dc.b $13
                dc.b $13
                dc.b   7
                dc.b   7
                dc.b  $C
                dc.b $1D
                dc.b $15
                dc.b $15
                dc.b   2
                dc.b   2
                dc.b   0
                dc.b $63 
                dc.b   0
                dc.b   0
                dc.b $33 
                dc.b $19
                dc.b $20
                dc.b  $C
                dc.b  $C
                dc.b   8
                dc.b $26 
                dc.b $11
                dc.b $26 
                dc.b $11
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $6F 
                dc.b   8
                dc.b   2
                dc.b $30 
                dc.b $24 
                dc.b $11
                dc.b $14
                dc.b   3
                dc.b   4
                dc.b $25 
                dc.b $11
                dc.b $25 
                dc.b $11
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $6F 
                dc.b $18
                dc.b   2
                dc.b $36 
                dc.b $2A 
                dc.b $12
                dc.b  $B
                dc.b   5
                dc.b   5
                dc.b $25 
                dc.b $11
                dc.b $17
                dc.b $14
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b $6F 
                dc.b $20
                dc.b   2
                dc.b $30 
                dc.b $2B 
                dc.b $11
                dc.b $14
                dc.b   3
                dc.b   4
                dc.b $26 
                dc.b $11
                dc.b $26 
                dc.b $11
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $6F 
                dc.b $28 
                dc.b   2
                dc.b $36 
                dc.b $31 
                dc.b $12
                dc.b  $B
                dc.b   5
                dc.b   5
                dc.b $24 
                dc.b $11
                dc.b $17
                dc.b $14
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b $6F 
                dc.b $30 
                dc.b   2
                dc.b $33 
                dc.b  $B
                dc.b $20
                dc.b  $C
                dc.b  $C
                dc.b   8
                dc.b $26 
                dc.b $11
                dc.b $26 
                dc.b $11
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $6F 
                dc.b   0
                dc.b   2
                dc.b  $F
                dc.b $20
                dc.b  $F
                dc.b $20
                dc.b   0
                dc.b   0
                dc.b $1D
                dc.b $31 
                dc.b $1D
                dc.b $30 
                dc.b   2
                dc.b   0
                dc.b   0
                dc.b $6F 
                dc.b $38 
                dc.b   0
                dc.b $10
                dc.b $22 
                dc.b $10
                dc.b $22 
                dc.b   0
                dc.b   0
                dc.b $12
                dc.b $20
                dc.b $1D
                dc.b $22 
                dc.b   2
                dc.b $14
                dc.b   0
                dc.b $6F 
                dc.b $10
                dc.b   0
                dc.b   2
                dc.b $28 
                dc.b $20
                dc.b  $C
                dc.b  $C
                dc.b   8
                dc.b $12
                dc.b $22 
                dc.b $1D
                dc.b $22 
                dc.b   2
                dc.b   0
                dc.b   0
                dc.b $70 
                dc.b $10
                dc.b   2
                dc.b  $F
                dc.b $1F
                dc.b  $F
                dc.b $1F
                dc.b   0
                dc.b   0
                dc.b $1D
                dc.b $32 
                dc.b $1D
                dc.b $30 
                dc.b   2
                dc.b   0
                dc.b   0
                dc.b $70 
                dc.b $38 
                dc.b   0
                dc.b $33 
                dc.b  $B
                dc.b $20
                dc.b  $C
                dc.b  $C
                dc.b   8
                dc.b $12
                dc.b $11
                dc.b $12
                dc.b $11
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $70 
                dc.b   0
                dc.b   2
                dc.b $33 
                dc.b $19
                dc.b $20
                dc.b  $C
                dc.b  $C
                dc.b   8
                dc.b $12
                dc.b $11
                dc.b $12
                dc.b $11
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $70 
                dc.b   8
                dc.b   2
                dc.b  $D
                dc.b $34 
                dc.b $12
                dc.b $19
                dc.b   2
                dc.b   3
                dc.b $17
                dc.b $17
                dc.b $17
                dc.b $1F
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $73 
                dc.b   0
                dc.b   2
                dc.b $13
                dc.b $34 
                dc.b $12
                dc.b $19
                dc.b   2
                dc.b   3
                dc.b $17
                dc.b $17
                dc.b $17
                dc.b $1F
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $73 
                dc.b   8
                dc.b   2
                dc.b $19
                dc.b $34 
                dc.b $12
                dc.b $19
                dc.b   2
                dc.b   3
                dc.b $17
                dc.b $17
                dc.b $17
                dc.b $1F
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $73 
                dc.b $10
                dc.b   2
                dc.b $1F
                dc.b $34 
                dc.b $12
                dc.b $19
                dc.b   2
                dc.b   3
                dc.b $17
                dc.b $17
                dc.b $17
                dc.b $1F
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $73 
                dc.b $18
                dc.b   2
                dc.b $25 
                dc.b $34 
                dc.b $12
                dc.b $19
                dc.b   2
                dc.b   3
                dc.b $17
                dc.b $17
                dc.b $17
                dc.b $1F
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $73 
                dc.b $20
                dc.b   2
                dc.b $2A 
                dc.b $33 
                dc.b $11
                dc.b $18
                dc.b   2
                dc.b   4
                dc.b $16
                dc.b $26 
                dc.b $17
                dc.b $1F
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $73 
                dc.b $28 
                dc.b   2
                dc.b $11
                dc.b $1F
                dc.b  $F
                dc.b  $E
                dc.b   2
                dc.b   4
                dc.b $1A
                dc.b  $E
                dc.b $1A
                dc.b  $E
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $76 
                dc.b   0
                dc.b   2
                dc.b $17
                dc.b $1F
                dc.b  $F
                dc.b  $E
                dc.b   2
                dc.b   4
                dc.b $1A
                dc.b  $E
                dc.b $1A
                dc.b  $E
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $76 
                dc.b   8
                dc.b   2
                dc.b $1D
                dc.b $1F
                dc.b  $F
                dc.b  $E
                dc.b   2
                dc.b   4
                dc.b $1A
                dc.b  $E
                dc.b $1A
                dc.b  $E
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $76 
                dc.b $10
                dc.b   2
                dc.b $23 
                dc.b $1F
                dc.b  $F
                dc.b  $E
                dc.b   2
                dc.b   4
                dc.b $1A
                dc.b  $E
                dc.b $1A
                dc.b  $E
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $76 
                dc.b $18
                dc.b   2
                dc.b $29 
                dc.b $1F
                dc.b  $F
                dc.b  $E
                dc.b   2
                dc.b   4
                dc.b $1A
                dc.b  $E
                dc.b $1A
                dc.b  $E
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $76 
                dc.b $20
                dc.b   2
                dc.b $2F 
                dc.b $1F
                dc.b  $F
                dc.b  $E
                dc.b   2
                dc.b   4
                dc.b $12
                dc.b $1B
                dc.b $12
                dc.b $12
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $76 
                dc.b $28 
                dc.b   2
                dc.b  $F
                dc.b $2D 
                dc.b  $B
                dc.b $14
                dc.b   2
                dc.b   4
                dc.b $10
                dc.b $1C
                dc.b  $F
                dc.b $19
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $77 
                dc.b   0
                dc.b   2
                dc.b $16
                dc.b $2D 
                dc.b  $B
                dc.b $14
                dc.b   2
                dc.b   4
                dc.b $11
                dc.b $1C
                dc.b  $F
                dc.b $19
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $77 
                dc.b   8
                dc.b   2
                dc.b $1D
                dc.b $2D 
                dc.b  $B
                dc.b $14
                dc.b   2
                dc.b   4
                dc.b $10
                dc.b $1F
                dc.b  $F
                dc.b $19
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $77 
                dc.b $10
                dc.b   2
                dc.b $24 
                dc.b $2D 
                dc.b  $B
                dc.b $14
                dc.b   2
                dc.b   4
                dc.b $11
                dc.b $1F
                dc.b  $F
                dc.b $19
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $77 
                dc.b $18
                dc.b   2
                dc.b  $F
                dc.b $36 
                dc.b  $B
                dc.b $14
                dc.b   2
                dc.b   4
                dc.b $10
                dc.b $22 
                dc.b  $F
                dc.b $19
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $77 
                dc.b $20
                dc.b   2
                dc.b $16
                dc.b $36 
                dc.b  $B
                dc.b $14
                dc.b   2
                dc.b   4
                dc.b $11
                dc.b $23 
                dc.b  $F
                dc.b $19
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $77 
                dc.b $28 
                dc.b   2
                dc.b $1D
                dc.b $36 
                dc.b  $B
                dc.b $14
                dc.b   2
                dc.b   4
                dc.b $10
                dc.b  $F
                dc.b  $F
                dc.b $19
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $77 
                dc.b $30 
                dc.b   2
                dc.b $23 
                dc.b $35 
                dc.b  $A
                dc.b $13
                dc.b   2
                dc.b   5
                dc.b $27 
                dc.b $19
                dc.b  $F
                dc.b $19
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $77 
                dc.b $38 
                dc.b   2
                dc.b $11
                dc.b $1F
                dc.b  $F
                dc.b  $E
                dc.b   2
                dc.b   4
                dc.b $1A
                dc.b  $E
                dc.b $1A
                dc.b  $E
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $78 
                dc.b   0
                dc.b   2
                dc.b $17
                dc.b $1F
                dc.b  $F
                dc.b  $E
                dc.b   2
                dc.b   4
                dc.b $1A
                dc.b  $E
                dc.b $1A
                dc.b  $E
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $78 
                dc.b   8
                dc.b   2
                dc.b $1D
                dc.b $1F
                dc.b  $F
                dc.b  $E
                dc.b   2
                dc.b   4
                dc.b $1A
                dc.b  $E
                dc.b $1A
                dc.b  $E
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $78 
                dc.b $10
                dc.b   2
                dc.b $23 
                dc.b $1F
                dc.b  $F
                dc.b  $E
                dc.b   2
                dc.b   4
                dc.b $1A
                dc.b  $E
                dc.b $1A
                dc.b  $E
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $78 
                dc.b $18
                dc.b   2
                dc.b $29 
                dc.b $1F
                dc.b  $F
                dc.b  $E
                dc.b   2
                dc.b   4
                dc.b $1A
                dc.b  $E
                dc.b $1A
                dc.b  $E
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $78 
                dc.b $20
                dc.b   2
                dc.b $2F 
                dc.b $1F
                dc.b  $F
                dc.b  $E
                dc.b   2
                dc.b   4
                dc.b $12
                dc.b $1B
                dc.b $12
                dc.b $12
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $78 
                dc.b $28 
                dc.b   2
                dc.b  $F
                dc.b $2D 
                dc.b  $B
                dc.b $14
                dc.b   2
                dc.b   4
                dc.b $10
                dc.b $1C
                dc.b  $F
                dc.b $19
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $79 
                dc.b   0
                dc.b   2
                dc.b $16
                dc.b $2D 
                dc.b  $B
                dc.b $14
                dc.b   2
                dc.b   4
                dc.b $11
                dc.b $1C
                dc.b  $F
                dc.b $19
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $79 
                dc.b   8
                dc.b   2
                dc.b $1D
                dc.b $2D 
                dc.b  $B
                dc.b $14
                dc.b   2
                dc.b   4
                dc.b $10
                dc.b $1F
                dc.b  $F
                dc.b $19
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $79 
                dc.b $10
                dc.b   2
                dc.b $24 
                dc.b $2D 
                dc.b  $B
                dc.b $14
                dc.b   2
                dc.b   4
                dc.b $11
                dc.b $1F
                dc.b  $F
                dc.b $19
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $79 
                dc.b $18
                dc.b   2
                dc.b  $F
                dc.b $36 
                dc.b  $B
                dc.b $14
                dc.b   2
                dc.b   4
                dc.b $10
                dc.b $22 
                dc.b  $F
                dc.b $19
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $79 
                dc.b $20
                dc.b   2
                dc.b $16
                dc.b $36 
                dc.b  $B
                dc.b $14
                dc.b   2
                dc.b   4
                dc.b $11
                dc.b $23 
                dc.b  $F
                dc.b $19
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $79 
                dc.b $28 
                dc.b   2
                dc.b $1D
                dc.b $36 
                dc.b  $B
                dc.b $14
                dc.b   2
                dc.b   4
                dc.b $10
                dc.b  $F
                dc.b  $F
                dc.b $19
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $79 
                dc.b $30 
                dc.b   2
                dc.b $23 
                dc.b $35 
                dc.b  $A
                dc.b $13
                dc.b   2
                dc.b   5
                dc.b $27 
                dc.b $19
                dc.b  $F
                dc.b $19
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $79 
                dc.b $38 
                dc.b   2
                dc.b $2D 
                dc.b $1E
                dc.b $1D
                dc.b $1D
                dc.b   4
                dc.b   4
                dc.b $2F 
                dc.b $20
                dc.b $1F
                dc.b $1F
                dc.b   3
                dc.b   3
                dc.b   0
                dc.b $80 
                dc.b   0
                dc.b   0
                dc.b $19
                dc.b $30 
                dc.b $1B
                dc.b $13
                dc.b   9
                dc.b   8
                dc.b $21 
                dc.b $19
                dc.b $21 
                dc.b $19
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $8F 
                dc.b   0
                dc.b   0
                dc.b $25 
                dc.b $22 
                dc.b $1B
                dc.b $13
                dc.b   9
                dc.b   9
                dc.b $21 
                dc.b $19
                dc.b $21 
                dc.b $19
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $8F 
                dc.b   8
                dc.b   0
                dc.b $32 
                dc.b $17
                dc.b $1B
                dc.b $13
                dc.b   9
                dc.b   8
                dc.b $21 
                dc.b $19
                dc.b $21 
                dc.b $19
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $8F 
                dc.b $10
                dc.b   0
                dc.b $1B
                dc.b   2
                dc.b $12
                dc.b  $C
                dc.b   2
                dc.b   5
                dc.b $19
                dc.b $21 
                dc.b $19
                dc.b $12
                dc.b   1
                dc.b   0
                dc.b   0
                dc.b $9B 
                dc.b   0
                dc.b   1
                dc.b $16
                dc.b $32 
                dc.b $16
                dc.b $32 
                dc.b   1
                dc.b   0
                dc.b $18
                dc.b $31 
                dc.b $18
                dc.b $34 
                dc.b   1
                dc.b   0
                dc.b   0
                dc.b $9F 
                dc.b   8
                dc.b   0
                dc.b $20
                dc.b $19
                dc.b $12
                dc.b $24 
                dc.b   1
                dc.b   3
                dc.b $25 
                dc.b $1F
                dc.b $17
                dc.b $2A 
                dc.b   1
                dc.b   1
                dc.b   0
                dc.b $9F 
                dc.b   0
                dc.b   2
                dc.b $16
                dc.b $32 
                dc.b $16
                dc.b $32 
                dc.b   1
                dc.b   0
                dc.b $18
                dc.b $31 
                dc.b $18
                dc.b $34 
                dc.b   1
                dc.b   0
                dc.b   0
                dc.b $A0 
                dc.b   8
                dc.b   0
                dc.b $20
                dc.b $19
                dc.b $12
                dc.b $24 
                dc.b   1
                dc.b   3
                dc.b $25 
                dc.b $1F
                dc.b $17
                dc.b $2A 
                dc.b   1
                dc.b   1
                dc.b   0
                dc.b $A0 
                dc.b   0
                dc.b   2
                dc.b $14
                dc.b   3
                dc.b  $D
                dc.b  $F
                dc.b   3
                dc.b   3
                dc.b $16
                dc.b $11
                dc.b $11
                dc.b $13
                dc.b   1
                dc.b   1
                dc.b   0
                dc.b $AB 
                dc.b   0
                dc.b   0
                dc.b $27 
                dc.b  $A
                dc.b $19
                dc.b $15
                dc.b   3
                dc.b   3
                dc.b $26 
                dc.b $17
                dc.b $1B
                dc.b $17
                dc.b   1
                dc.b   1
                dc.b   0
                dc.b $AC 
                dc.b   0
                dc.b   0
                dc.b $2B 
                dc.b  $A
                dc.b $1D
                dc.b $15
                dc.b   3
                dc.b   3
                dc.b $26 
                dc.b $17
                dc.b $1F
                dc.b $17
                dc.b   1
                dc.b   1
                dc.b   0
                dc.b $AC 
                dc.b   8
                dc.b   0
                dc.b $2F 
                dc.b  $A
                dc.b $21 
                dc.b $15
                dc.b   3
                dc.b   3
                dc.b $26 
                dc.b $17
                dc.b $23 
                dc.b $17
                dc.b   1
                dc.b   1
                dc.b   0
                dc.b $AC 
                dc.b $10
                dc.b   0
                dc.b  $C
                dc.b $1E
                dc.b  $C
                dc.b $11
                dc.b   3
                dc.b   2
                dc.b  $E
                dc.b $1F
                dc.b  $E
                dc.b $12
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b $B1 
                dc.b   0
                dc.b   0
                dc.b $26 
                dc.b $25 
                dc.b $26 
                dc.b $25 
                dc.b   0
                dc.b   0
                dc.b $27 
                dc.b $23 
                dc.b $27 
                dc.b $24 
                dc.b   1
                dc.b   0
                dc.b   0
                dc.b $B7 
                dc.b   0
                dc.b   0
                dc.b $26 
                dc.b $24 
                dc.b $26 
                dc.b $24 
                dc.b   0
                dc.b   0
                dc.b $29 
                dc.b $24 
                dc.b $27 
                dc.b $24 
                dc.b   1
                dc.b   0
                dc.b   0
                dc.b $B7 
                dc.b   8
                dc.b   0
                dc.b $26 
                dc.b $22 
                dc.b $26 
                dc.b $22 
                dc.b   0
                dc.b   0
                dc.b $36 
                dc.b $1E
                dc.b $34 
                dc.b $23 
                dc.b   1
                dc.b   0
                dc.b   0
                dc.b $B9 
                dc.b   0
                dc.b   0
                dc.b $28 
                dc.b $23 
                dc.b $28 
                dc.b $23 
                dc.b   0
                dc.b   0
                dc.b $36 
                dc.b $1F
                dc.b $34 
                dc.b $23 
                dc.b   1
                dc.b   0
                dc.b   0
                dc.b $B9 
                dc.b   8
                dc.b   0
                dc.b $25 
                dc.b $21 
                dc.b $25 
                dc.b $21 
                dc.b   0
                dc.b   0
                dc.b $36 
                dc.b $1E
                dc.b $34 
                dc.b $23 
                dc.b   1
                dc.b   0
                dc.b   0
                dc.b $BA 
                dc.b   0
                dc.b   0
                dc.b $24 
                dc.b $20
                dc.b $24 
                dc.b $20
                dc.b   0
                dc.b   0
                dc.b $36 
                dc.b $1F
                dc.b $34 
                dc.b $23 
                dc.b   1
                dc.b   0
                dc.b   0
                dc.b $BA 
                dc.b   8
                dc.b   0
                dc.b  $C
                dc.b $20
                dc.b  $B
                dc.b  $E
                dc.b   2
                dc.b   3
                dc.b  $E
                dc.b $23 
                dc.b  $D
                dc.b $11
                dc.b   1
                dc.b   2
                dc.b   0
                dc.b $BE 
                dc.b   0
                dc.b   2
                dc.b  $C
                dc.b $1D
                dc.b  $B
                dc.b  $F
                dc.b   2
                dc.b   3
                dc.b  $E
                dc.b $20
                dc.b  $D
                dc.b $12
                dc.b   1
                dc.b   2
                dc.b   0
                dc.b $C5 
                dc.b   0
                dc.b   2
                dc.b $24 
                dc.b   5
                dc.b  $E
                dc.b  $E
                dc.b  $B
                dc.b  $C
                dc.b $1D
                dc.b $12
                dc.b $14
                dc.b $14
                dc.b   5
                dc.b   6
                dc.b   0
                dc.b $CB 
                dc.b   0
                dc.b   0
                dc.b  $A
                dc.b $1A
                dc.b   9
                dc.b  $A
                dc.b   1
                dc.b   4
                dc.b $12
                dc.b $22 
                dc.b $10
                dc.b $12
                dc.b   1
                dc.b   1
                dc.b   0
                dc.b $D9 
                dc.b   0
                dc.b   2
                dc.b   9
                dc.b $24 
                dc.b  $A
                dc.b  $F
                dc.b   2
                dc.b   4
                dc.b  $F
                dc.b $2B 
                dc.b $10
                dc.b $16
                dc.b   1
                dc.b   2
                dc.b   0
                dc.b $E2 
                dc.b   0
                dc.b   2
                dc.b   4
                dc.b $16
                dc.b  $F
                dc.b $14
                dc.b   1
                dc.b   4
                dc.b $11
                dc.b $1C
                dc.b $11
                dc.b $17
                dc.b   1
                dc.b   1
                dc.b   0
                dc.b $E9 
                dc.b   0
                dc.b   2
                dc.b $29 
                dc.b   2
                dc.b $20
                dc.b   8
                dc.b   1
                dc.b   5
                dc.b $28 
                dc.b $19
                dc.b $26 
                dc.b  $C
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $F0 
                dc.b   0
                dc.b   1
                dc.b $1B
                dc.b   1
                dc.b  $B
                dc.b  $A
                dc.b   2
                dc.b   6
                dc.b $20
                dc.b $11
                dc.b $15
                dc.b $12
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $F2 
                dc.b   0
                dc.b   1
                dc.b $1A
                dc.b $17
                dc.b   6
                dc.b   3
                dc.b $12
                dc.b  $A
                dc.b  $C
                dc.b $16
                dc.b  $C
                dc.b $17
                dc.b   2
                dc.b   0
                dc.b   0
                dc.b $F3 
                dc.b   0
                dc.b   2
                dc.b $1A
                dc.b $17
                dc.b   6
                dc.b   3
                dc.b $12
                dc.b  $A
                dc.b  $C
                dc.b $16
                dc.b  $C
                dc.b $17
                dc.b   2
                dc.b   0
                dc.b   0
                dc.b $F4 
                dc.b   0
                dc.b   2
                dc.b $1B
                dc.b   2
                dc.b $12
                dc.b  $C
                dc.b   2
                dc.b   5
                dc.b $19
                dc.b $21 
                dc.b $19
                dc.b $12
                dc.b   1
                dc.b   0
                dc.b   0
                dc.b $FA 
                dc.b   0
                dc.b   1
                dc.b   4
                dc.b $1C
                dc.b  $F
                dc.b $15
                dc.b   1
                dc.b   5
                dc.b $22 
                dc.b $13
                dc.b $12
                dc.b $19
                dc.b   0
                dc.b   1
                dc.b   1
                dc.b  $A
                dc.b   0
                dc.b   2
                dc.b $25 
                dc.b   3
                dc.b $16
                dc.b  $D
                dc.b   1
                dc.b   5
                dc.b $26 
                dc.b $13
                dc.b $1D
                dc.b $13
                dc.b   1
                dc.b   1
                dc.b   1
                dc.b $1B
                dc.b   0
                dc.b   1
                dc.b $29 
                dc.b   1
                dc.b $16
                dc.b   7
                dc.b   1
                dc.b   5
                dc.b $35 
                dc.b $15
                dc.b $25 
                dc.b $15
                dc.b   1
                dc.b   1
                dc.b   1
                dc.b $1F
                dc.b   0
                dc.b   1
                dc.b $15
                dc.b   1
                dc.b  $E
                dc.b  $B
                dc.b   1
                dc.b   6
                dc.b $1F
                dc.b $13
                dc.b $17
                dc.b $13
                dc.b   1
                dc.b   1
                dc.b   1
                dc.b $20
                dc.b   0
                dc.b   1
                dc.b $19
                dc.b   1
                dc.b  $F
                dc.b   8
                dc.b   1
                dc.b   4
                dc.b $22 
                dc.b $14
                dc.b $1E
                dc.b $16
                dc.b   1
                dc.b   1
                dc.b   1
                dc.b $21 
                dc.b   0
                dc.b   1
                dc.b   2
                dc.b $1B
                dc.b  $B
                dc.b $11
                dc.b   1
                dc.b   7
                dc.b $12
                dc.b $22 
                dc.b $12
                dc.b $19
                dc.b   1
                dc.b   1
                dc.b   1
                dc.b $4A 
                dc.b   0
                dc.b   2
                dc.b $1B
                dc.b   2
                dc.b $10
                dc.b  $A
                dc.b   1
                dc.b   6
                dc.b $22 
                dc.b $12
                dc.b $19
                dc.b $12
                dc.b   1
                dc.b   1
                dc.b   1
                dc.b $55 
                dc.b   0
                dc.b   1
                dc.b $18
                dc.b $34 
                dc.b $1A
                dc.b $26 
                dc.b   2
                dc.b   2
                dc.b $25 
                dc.b $2F 
                dc.b $1E
                dc.b $2B 
                dc.b   1
                dc.b   1
                dc.b   1
                dc.b $94 
                dc.b   0
                dc.b   0
                dc.b $1D
                dc.b $19
                dc.b $1D
                dc.b $19
                dc.b   0
                dc.b   0
                dc.b $2F 
                dc.b $2E 
                dc.b $2E 
                dc.b $2E 
                dc.b   0
                dc.b   1
                dc.b   1
                dc.b $96 
                dc.b   0
                dc.b   0
                dc.b $1E
                dc.b $17
                dc.b $1E
                dc.b $17
                dc.b   0
                dc.b   0
                dc.b $2E 
                dc.b $31 
                dc.b $2E 
                dc.b $30 
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b $96 
                dc.b   8
                dc.b   0
                dc.b $2F 
                dc.b  $D
                dc.b $2D 
                dc.b $26 
                dc.b   1
                dc.b   5
                dc.b $39 
                dc.b $2F 
                dc.b $37 
                dc.b $2F 
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b $96 
                dc.b $10
                dc.b   1
                dc.b $16
                dc.b   9
                dc.b $16
                dc.b   9
                dc.b   0
                dc.b   0
                dc.b $17
                dc.b $11
                dc.b $16
                dc.b $11
                dc.b   0
                dc.b   1
                dc.b   1
                dc.b $99 
                dc.b   0
                dc.b   0
                dc.b $18
                dc.b  $A
                dc.b $18
                dc.b  $A
                dc.b   0
                dc.b   0
                dc.b $16
                dc.b $14
                dc.b $16
                dc.b $13
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b $99 
                dc.b   8
                dc.b   0
                dc.b $33 
                dc.b $10
                dc.b $28 
                dc.b $26 
                dc.b   2
                dc.b   2
                dc.b $35 
                dc.b $31 
                dc.b $2A 
                dc.b $29 
                dc.b   1
                dc.b   1
                dc.b   1
                dc.b $9A 
                dc.b   0
                dc.b   0
                dc.b $1B
                dc.b   6
                dc.b  $B
                dc.b  $C
                dc.b   0
                dc.b   5
                dc.b $22 
                dc.b $12
                dc.b $12
                dc.b $13
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b $A1 
                dc.b   0
                dc.b   1
                dc.b $1E
                dc.b   7
                dc.b $14
                dc.b  $C
                dc.b   0
                dc.b   5
                dc.b $22 
                dc.b $12
                dc.b $1B
                dc.b $13
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b $A1 
                dc.b   8
                dc.b   1
                dc.b   1
                dc.b $30 
                dc.b   9
                dc.b   6
                dc.b   6
                dc.b   9
                dc.b $16
                dc.b $15
                dc.b $16
                dc.b $15
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b $A5 
                dc.b   0
                dc.b   2
                dc.b $3A 
                dc.b  $F
                dc.b $28 
                dc.b $33 
                dc.b   3
                dc.b   3
                dc.b $3B 
                dc.b $10
                dc.b $29 
                dc.b $34 
                dc.b   1
                dc.b   2
                dc.b   1
                dc.b $A9 
                dc.b   0
                dc.b   0
                dc.b $37 
                dc.b $14
                dc.b   9
                dc.b $14
                dc.b   2
                dc.b   4
                dc.b $3B 
                dc.b $19
                dc.b  $D
                dc.b $19
                dc.b   0
                dc.b   2
                dc.b   1
                dc.b $B1 
                dc.b   0
                dc.b   2
                dc.b $37 
                dc.b  $B
                dc.b   9
                dc.b $14
                dc.b   2
                dc.b   4
                dc.b $3B 
                dc.b $10
                dc.b  $D
                dc.b $19
                dc.b   0
                dc.b   2
                dc.b   1
                dc.b $B1 
                dc.b   8
                dc.b   2
                dc.b $27 
                dc.b  $D
                dc.b  $E
                dc.b $1D
                dc.b   2
                dc.b   5
                dc.b $2A 
                dc.b $11
                dc.b $11
                dc.b $21 
                dc.b   0
                dc.b   2
                dc.b   1
                dc.b $C6 
                dc.b   0
                dc.b   2
                dc.b  $D
                dc.b $1B
                dc.b  $D
                dc.b $1B
                dc.b   0
                dc.b   0
                dc.b $13
                dc.b $22 
                dc.b $14
                dc.b $19
                dc.b   0
                dc.b   2
                dc.b   1
                dc.b $CB 
                dc.b   0
                dc.b   0
                dc.b $2A 
                dc.b   6
                dc.b $2A 
                dc.b   6
                dc.b   0
                dc.b   0
                dc.b $2E 
                dc.b  $E
                dc.b $31 
                dc.b  $E
                dc.b   0
                dc.b   2
                dc.b   1
                dc.b $D2 
                dc.b   0
                dc.b   0
                dc.b  $D
                dc.b $1F
                dc.b  $D
                dc.b $13
                dc.b   2
                dc.b   3
                dc.b $11
                dc.b  $E
                dc.b $11
                dc.b $16
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b $E0 
                dc.b   0
                dc.b   1
                dc.b $26 
                dc.b   9
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $2B 
                dc.b  $E
                dc.b $1F
                dc.b $1B
                dc.b   1
                dc.b   3
                dc.b   1
                dc.b $FE 
                dc.b   0
                dc.b   2
                dc.b $2A 
                dc.b   7
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $2F 
                dc.b  $C
                dc.b $1F
                dc.b $1B
                dc.b   1
                dc.b   3
                dc.b   1
                dc.b $FE 
                dc.b   8
                dc.b   2
                dc.b $33 
                dc.b $16
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $1F
                dc.b $1D
                dc.b $1F
                dc.b $1D
                dc.b   1
                dc.b   1
                dc.b   1
                dc.b $FE 
                dc.b $10
                dc.b   2
                dc.b $36 
                dc.b $13
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $1F
                dc.b $1D
                dc.b $1F
                dc.b $1D
                dc.b   1
                dc.b   1
                dc.b   1
                dc.b $FE 
                dc.b $18
                dc.b   2
                dc.b $26 
                dc.b   9
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $2B 
                dc.b  $E
                dc.b $1F
                dc.b $1B
                dc.b   1
                dc.b   3
                dc.b   1
                dc.b $FF
                dc.b   0
                dc.b   2
                dc.b $2A 
                dc.b   7
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $2F 
                dc.b  $C
                dc.b $1F
                dc.b $1B
                dc.b   1
                dc.b   3
                dc.b   1
                dc.b $FF
                dc.b   8
                dc.b   2
                dc.b $33 
                dc.b $16
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $1F
                dc.b $1D
                dc.b $1F
                dc.b $1D
                dc.b   1
                dc.b   1
                dc.b   1
                dc.b $FF
                dc.b $10
                dc.b   2
                dc.b $36 
                dc.b $13
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $1F
                dc.b $1D
                dc.b $1F
                dc.b $1D
                dc.b   1
                dc.b   1
                dc.b   1
                dc.b $FF
                dc.b $18
                dc.b   2
                dc.b $26 
                dc.b   9
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $2B 
                dc.b  $E
                dc.b $1F
                dc.b $1B
                dc.b   1
                dc.b   3
                dc.b   2
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $2A 
                dc.b   7
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $2F 
                dc.b  $C
                dc.b $1F
                dc.b $1B
                dc.b   1
                dc.b   3
                dc.b   2
                dc.b   0
                dc.b   8
                dc.b   2
                dc.b $33 
                dc.b $16
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $1F
                dc.b $1D
                dc.b $1F
                dc.b $1D
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b   0
                dc.b $10
                dc.b   2
                dc.b $36 
                dc.b $13
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $1F
                dc.b $1D
                dc.b $1F
                dc.b $1D
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b   0
                dc.b $18
                dc.b   2
                dc.b $26 
                dc.b   9
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $2B 
                dc.b  $E
                dc.b $1F
                dc.b $1B
                dc.b   1
                dc.b   3
                dc.b   2
                dc.b   1
                dc.b   0
                dc.b   2
                dc.b $2A 
                dc.b   7
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $2F 
                dc.b  $C
                dc.b $1F
                dc.b $1B
                dc.b   1
                dc.b   3
                dc.b   2
                dc.b   1
                dc.b   8
                dc.b   2
                dc.b $33 
                dc.b $16
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $1F
                dc.b $1D
                dc.b $1F
                dc.b $1D
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b   1
                dc.b $10
                dc.b   2
                dc.b $36 
                dc.b $13
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $1F
                dc.b $1D
                dc.b $1F
                dc.b $1D
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b   1
                dc.b $18
                dc.b   2
                dc.b $1F
                dc.b   1
                dc.b $15
                dc.b $15
                dc.b   1
                dc.b  $A
                dc.b $22 
                dc.b $21 
                dc.b $1C
                dc.b $1C
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b   3
                dc.b   0
                dc.b   1
                dc.b $33 
                dc.b $24 
                dc.b $32 
                dc.b $14
                dc.b   1
                dc.b   7
                dc.b $38 
                dc.b $18
                dc.b $38 
                dc.b $1A
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $14
                dc.b   0
                dc.b   2
                dc.b $26 
                dc.b   9
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $2B 
                dc.b  $E
                dc.b $1F
                dc.b $1B
                dc.b   1
                dc.b   3
                dc.b   2
                dc.b $15
                dc.b   0
                dc.b   2
                dc.b $2A 
                dc.b   7
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $2F 
                dc.b  $C
                dc.b $1F
                dc.b $1B
                dc.b   1
                dc.b   3
                dc.b   2
                dc.b $15
                dc.b   8
                dc.b   2
                dc.b $33 
                dc.b $16
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $1F
                dc.b $1D
                dc.b $1F
                dc.b $1D
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b $15
                dc.b $10
                dc.b   2
                dc.b $36 
                dc.b $13
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $1F
                dc.b $1D
                dc.b $1F
                dc.b $1D
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b $15
                dc.b $18
                dc.b   2
                dc.b $26 
                dc.b   9
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $2B 
                dc.b  $E
                dc.b $1F
                dc.b $1B
                dc.b   1
                dc.b   3
                dc.b   2
                dc.b $16
                dc.b   0
                dc.b   2
                dc.b $2A 
                dc.b   7
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $2F 
                dc.b  $C
                dc.b $1F
                dc.b $1B
                dc.b   1
                dc.b   3
                dc.b   2
                dc.b $16
                dc.b   8
                dc.b   2
                dc.b $33 
                dc.b $16
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $1F
                dc.b $1D
                dc.b $1F
                dc.b $1D
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b $16
                dc.b $10
                dc.b   2
                dc.b $36 
                dc.b $13
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $1F
                dc.b $1D
                dc.b $1F
                dc.b $1D
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b $16
                dc.b $18
                dc.b   2
                dc.b $26 
                dc.b   9
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $2B 
                dc.b  $E
                dc.b $1F
                dc.b $1B
                dc.b   1
                dc.b   3
                dc.b   2
                dc.b $17
                dc.b   0
                dc.b   2
                dc.b $2A 
                dc.b   7
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $2F 
                dc.b  $C
                dc.b $1F
                dc.b $1B
                dc.b   1
                dc.b   3
                dc.b   2
                dc.b $17
                dc.b   8
                dc.b   2
                dc.b $33 
                dc.b $16
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $1F
                dc.b $1D
                dc.b $1F
                dc.b $1D
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b $17
                dc.b $10
                dc.b   2
                dc.b $36 
                dc.b $13
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $1F
                dc.b $1D
                dc.b $1F
                dc.b $1D
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b $17
                dc.b $18
                dc.b   2
                dc.b $26 
                dc.b   9
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $2B 
                dc.b  $E
                dc.b $1F
                dc.b $1B
                dc.b   1
                dc.b   3
                dc.b   2
                dc.b $18
                dc.b   0
                dc.b   2
                dc.b $2A 
                dc.b   7
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $2F 
                dc.b  $C
                dc.b $1F
                dc.b $1B
                dc.b   1
                dc.b   3
                dc.b   2
                dc.b $18
                dc.b   8
                dc.b   2
                dc.b $33 
                dc.b $16
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $1F
                dc.b $1D
                dc.b $1F
                dc.b $1D
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b $18
                dc.b $10
                dc.b   2
                dc.b $36 
                dc.b $13
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $1F
                dc.b $1D
                dc.b $1F
                dc.b $1D
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b $18
                dc.b $18
                dc.b   2
                dc.b $26 
                dc.b   9
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $2B 
                dc.b  $E
                dc.b $1F
                dc.b $1B
                dc.b   1
                dc.b   3
                dc.b   2
                dc.b $19
                dc.b   0
                dc.b   2
                dc.b $2A 
                dc.b   7
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $2F 
                dc.b  $C
                dc.b $1F
                dc.b $1B
                dc.b   1
                dc.b   3
                dc.b   2
                dc.b $19
                dc.b   8
                dc.b   2
                dc.b $33 
                dc.b $16
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $1F
                dc.b $1D
                dc.b $1F
                dc.b $1D
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b $19
                dc.b $10
                dc.b   2
                dc.b $36 
                dc.b $13
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $1F
                dc.b $1D
                dc.b $1F
                dc.b $1D
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b $19
                dc.b $18
                dc.b   2
                dc.b $26 
                dc.b   9
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $2B 
                dc.b  $E
                dc.b $1F
                dc.b $1B
                dc.b   1
                dc.b   3
                dc.b   2
                dc.b $1A
                dc.b   0
                dc.b   2
                dc.b $2A 
                dc.b   7
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $2F 
                dc.b  $C
                dc.b $1F
                dc.b $1B
                dc.b   1
                dc.b   3
                dc.b   2
                dc.b $1A
                dc.b   8
                dc.b   2
                dc.b $33 
                dc.b $16
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $1F
                dc.b $1D
                dc.b $1F
                dc.b $1D
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b $1A
                dc.b $10
                dc.b   2
                dc.b $36 
                dc.b $13
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $1F
                dc.b $1D
                dc.b $1F
                dc.b $1D
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b $1A
                dc.b $18
                dc.b   2
                dc.b $26 
                dc.b   9
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $2B 
                dc.b  $E
                dc.b $1F
                dc.b $1B
                dc.b   1
                dc.b   3
                dc.b   2
                dc.b $1B
                dc.b   0
                dc.b   2
                dc.b $2A 
                dc.b   7
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $2F 
                dc.b  $C
                dc.b $1F
                dc.b $1B
                dc.b   1
                dc.b   3
                dc.b   2
                dc.b $1B
                dc.b   8
                dc.b   2
                dc.b $33 
                dc.b $16
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $1F
                dc.b $1D
                dc.b $1F
                dc.b $1D
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b $1B
                dc.b $10
                dc.b   2
                dc.b $36 
                dc.b $13
                dc.b $1A
                dc.b $16
                dc.b   3
                dc.b   7
                dc.b $1F
                dc.b $1D
                dc.b $1F
                dc.b $1D
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b $1B
                dc.b $18
                dc.b   2
                dc.b  $D
                dc.b $34 
                dc.b  $C
                dc.b $27 
                dc.b   1
                dc.b   8
                dc.b $11
                dc.b $2F 
                dc.b $12
                dc.b $2D 
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $44 
                dc.b   0
                dc.b   2
                dc.b $1E
                dc.b  $A
                dc.b  $E
                dc.b  $D
                dc.b   1
                dc.b  $B
                dc.b $28 
                dc.b $14
                dc.b $18
                dc.b $17
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $45 
                dc.b   0
                dc.b   1
                dc.b $1E
                dc.b  $A
                dc.b  $E
                dc.b  $D
                dc.b   1
                dc.b  $B
                dc.b $28 
                dc.b $14
                dc.b $18
                dc.b $17
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $4D 
                dc.b   0
                dc.b   1
                dc.b $1E
                dc.b  $A
                dc.b  $E
                dc.b  $D
                dc.b   1
                dc.b  $B
                dc.b $28 
                dc.b $14
                dc.b $18
                dc.b $17
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $4E 
                dc.b   0
                dc.b   1
                dc.b   1
                dc.b $21 
                dc.b  $F
                dc.b  $F
                dc.b  $E
                dc.b  $E
                dc.b $1E
                dc.b $1E
                dc.b $1E
                dc.b $1E
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $73 
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b $21 
                dc.b  $F
                dc.b  $F
                dc.b  $E
                dc.b  $E
                dc.b $1E
                dc.b $1E
                dc.b $1E
                dc.b $1E
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $74 
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b $21 
                dc.b  $F
                dc.b  $F
                dc.b  $E
                dc.b  $E
                dc.b $1E
                dc.b $1E
                dc.b $1E
                dc.b $1E
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $75 
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $38 
                dc.b $2E 
                dc.b $33 
                dc.b   1
                dc.b   5
                dc.b $37 
                dc.b $3D 
                dc.b $37 
                dc.b $3D 
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $76 
                dc.b   8
                dc.b   2
                dc.b   2
                dc.b $36 
                dc.b $2E 
                dc.b $34 
                dc.b   0
                dc.b   5
                dc.b $37 
                dc.b $3D 
                dc.b $37 
                dc.b $3D 
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $76 
                dc.b   0
                dc.b   2
                dc.b   2
                dc.b $38 
                dc.b $2E 
                dc.b $33 
                dc.b   1
                dc.b   5
                dc.b $37 
                dc.b $3D 
                dc.b $37 
                dc.b $3D 
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $77 
                dc.b   8
                dc.b   2
                dc.b   2
                dc.b $36 
                dc.b $2E 
                dc.b $34 
                dc.b   0
                dc.b   5
                dc.b $37 
                dc.b $3D 
                dc.b $37 
                dc.b $3D 
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $77 
                dc.b   0
                dc.b   2
                dc.b   2
                dc.b $38 
                dc.b $2E 
                dc.b $33 
                dc.b   1
                dc.b   5
                dc.b $37 
                dc.b $3D 
                dc.b $37 
                dc.b $3D 
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $78 
                dc.b   8
                dc.b   2
                dc.b   2
                dc.b $36 
                dc.b $2E 
                dc.b $34 
                dc.b   0
                dc.b   5
                dc.b $37 
                dc.b $3D 
                dc.b $37 
                dc.b $3D 
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $78 
                dc.b   0
                dc.b   2
                dc.b  $B
                dc.b $30 
                dc.b   9
                dc.b $1D
                dc.b   2
                dc.b   4
                dc.b $10
                dc.b $36 
                dc.b  $E
                dc.b $23 
                dc.b   0
                dc.b   2
                dc.b   2
                dc.b $7D 
                dc.b   0
                dc.b   2
                dc.b $1C
                dc.b   4
                dc.b  $D
                dc.b $13
                dc.b   3
                dc.b   3
                dc.b $1D
                dc.b $11
                dc.b $10
                dc.b $16
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b $7D 
                dc.b   8
                dc.b   0
                dc.b $37 
                dc.b   6
                dc.b  $C
                dc.b  $F
                dc.b   0
                dc.b   4
                dc.b $11
                dc.b $16
                dc.b $11
                dc.b $15
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $7E 
                dc.b $10
                dc.b   2
                dc.b $37 
                dc.b   5
                dc.b  $C
                dc.b  $F
                dc.b   0
                dc.b   4
                dc.b $2A 
                dc.b $10
                dc.b $11
                dc.b $15
                dc.b   1
                dc.b   0
                dc.b   2
                dc.b $7E 
                dc.b   8
                dc.b   2
                dc.b $31 
                dc.b   5
                dc.b $11
                dc.b   9
                dc.b   9
                dc.b  $E
                dc.b $37 
                dc.b $10
                dc.b $17
                dc.b $14
                dc.b   6
                dc.b   6
                dc.b   2
                dc.b $7E 
                dc.b   0
                dc.b   2
                dc.b   9
                dc.b   2
                dc.b   9
                dc.b   2
                dc.b   0
                dc.b   0
                dc.b $1F
                dc.b $32 
                dc.b $1E
                dc.b $32 
                dc.b   0
                dc.b   1
                dc.b   2
                dc.b $87 
                dc.b   0
                dc.b   0
                dc.b  $A
                dc.b   3
                dc.b  $A
                dc.b   3
                dc.b   0
                dc.b   0
                dc.b $1E
                dc.b $34 
                dc.b $1E
                dc.b $32 
                dc.b   0
                dc.b   1
                dc.b   2
                dc.b $87 
                dc.b   8
                dc.b   0
                dc.b  $B
                dc.b   4
                dc.b  $B
                dc.b   4
                dc.b   0
                dc.b   0
                dc.b $26 
                dc.b $38 
                dc.b $26 
                dc.b $3B 
                dc.b   1
                dc.b   2
                dc.b   2
                dc.b $87 
                dc.b $10
                dc.b   0
                dc.b  $C
                dc.b   5
                dc.b  $C
                dc.b   5
                dc.b   0
                dc.b   0
                dc.b $26 
                dc.b $31 
                dc.b $26 
                dc.b $3B 
                dc.b   1
                dc.b   0
                dc.b   2
                dc.b $87 
                dc.b $18
                dc.b   0
                dc.b   9
                dc.b   2
                dc.b   9
                dc.b   2
                dc.b   0
                dc.b   0
                dc.b $26 
                dc.b $32 
                dc.b $26 
                dc.b $3C 
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b $87 
                dc.b $20
                dc.b   0
                dc.b $14
                dc.b $24 
                dc.b $18
                dc.b $13
                dc.b   1
                dc.b   2
                dc.b $18
                dc.b $15
                dc.b $18
                dc.b $15
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $88 
                dc.b   0
                dc.b   2
                dc.b $14
                dc.b $26 
                dc.b $18
                dc.b $17
                dc.b   1
                dc.b   2
                dc.b $18
                dc.b $15
                dc.b $18
                dc.b $15
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $88 
                dc.b   8
                dc.b   2
                dc.b $19
                dc.b $29 
                dc.b $18
                dc.b $13
                dc.b   1
                dc.b   2
                dc.b $18
                dc.b $15
                dc.b $18
                dc.b $15
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $88 
                dc.b $10
                dc.b   2
                dc.b $19
                dc.b $2B 
                dc.b $18
                dc.b $17
                dc.b   1
                dc.b   2
                dc.b $18
                dc.b $15
                dc.b $18
                dc.b $15
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $88 
                dc.b $18
                dc.b   2
                dc.b  $C
                dc.b $1E
                dc.b  $E
                dc.b  $D
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $8A 
                dc.b   8
                dc.b   2
                dc.b  $C
                dc.b $20
                dc.b  $E
                dc.b $11
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $8A 
                dc.b $10
                dc.b   2
                dc.b $1C
                dc.b   2
                dc.b $10
                dc.b  $B
                dc.b   1
                dc.b   5
                dc.b  $F
                dc.b  $D
                dc.b $15
                dc.b  $F
                dc.b   1
                dc.b   0
                dc.b   2
                dc.b $8A 
                dc.b   0
                dc.b   1
                dc.b  $B
                dc.b $1E
                dc.b  $F
                dc.b  $D
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $8C 
                dc.b   0
                dc.b   2
                dc.b  $B
                dc.b $20
                dc.b  $F
                dc.b $11
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $8C 
                dc.b   8
                dc.b   2
                dc.b $10
                dc.b $23 
                dc.b  $F
                dc.b  $D
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $8C 
                dc.b $10
                dc.b   2
                dc.b $10
                dc.b $25 
                dc.b  $F
                dc.b $11
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $8C 
                dc.b $18
                dc.b   2
                dc.b  $B
                dc.b $1F
                dc.b  $F
                dc.b  $E
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b $10
                dc.b  $F
                dc.b $10
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $8D 
                dc.b   0
                dc.b   2
                dc.b  $B
                dc.b $21 
                dc.b  $F
                dc.b $12
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b $10
                dc.b  $F
                dc.b $10
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $8D 
                dc.b   8
                dc.b   2
                dc.b $10
                dc.b $24 
                dc.b  $F
                dc.b  $E
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b $10
                dc.b  $F
                dc.b $10
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $8D 
                dc.b $10
                dc.b   2
                dc.b $10
                dc.b $26 
                dc.b  $F
                dc.b $12
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b $10
                dc.b  $F
                dc.b $10
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $8D 
                dc.b $18
                dc.b   2
                dc.b  $B
                dc.b $1E
                dc.b  $F
                dc.b  $D
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $8E 
                dc.b   0
                dc.b   2
                dc.b  $B
                dc.b $20
                dc.b  $F
                dc.b $11
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $8E 
                dc.b   8
                dc.b   2
                dc.b $10
                dc.b $23 
                dc.b  $F
                dc.b  $D
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $8E 
                dc.b $10
                dc.b   2
                dc.b $10
                dc.b $25 
                dc.b  $F
                dc.b $11
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $8E 
                dc.b $18
                dc.b   2
                dc.b  $B
                dc.b $1E
                dc.b  $F
                dc.b  $D
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $8F 
                dc.b   0
                dc.b   2
                dc.b  $B
                dc.b $20
                dc.b  $F
                dc.b $11
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $8F 
                dc.b   8
                dc.b   2
                dc.b $10
                dc.b $23 
                dc.b  $F
                dc.b  $D
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $8F 
                dc.b $10
                dc.b   2
                dc.b $10
                dc.b $25 
                dc.b  $F
                dc.b $11
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $8F 
                dc.b $18
                dc.b   2
                dc.b  $B
                dc.b $1E
                dc.b  $F
                dc.b  $D
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $90 
                dc.b   0
                dc.b   2
                dc.b  $B
                dc.b $20
                dc.b  $F
                dc.b $11
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $90 
                dc.b   8
                dc.b   2
                dc.b $10
                dc.b $23 
                dc.b  $F
                dc.b  $D
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $90 
                dc.b $10
                dc.b   2
                dc.b $10
                dc.b $25 
                dc.b  $F
                dc.b $11
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $90 
                dc.b $18
                dc.b   2
                dc.b  $B
                dc.b $1E
                dc.b  $F
                dc.b  $D
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $91 
                dc.b   0
                dc.b   2
                dc.b  $B
                dc.b $20
                dc.b  $F
                dc.b $11
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $91 
                dc.b   8
                dc.b   2
                dc.b $10
                dc.b $23 
                dc.b  $F
                dc.b  $D
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $91 
                dc.b $10
                dc.b   2
                dc.b $10
                dc.b $25 
                dc.b  $F
                dc.b $11
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $91 
                dc.b $18
                dc.b   2
                dc.b  $B
                dc.b $1E
                dc.b  $F
                dc.b  $D
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $92 
                dc.b   0
                dc.b   2
                dc.b  $B
                dc.b $20
                dc.b  $F
                dc.b $11
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $92 
                dc.b   8
                dc.b   2
                dc.b $10
                dc.b $23 
                dc.b  $F
                dc.b  $D
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $92 
                dc.b $10
                dc.b   2
                dc.b $10
                dc.b $25 
                dc.b  $F
                dc.b $11
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $92 
                dc.b $18
                dc.b   2
                dc.b  $B
                dc.b $1E
                dc.b  $F
                dc.b  $D
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $93 
                dc.b   0
                dc.b   2
                dc.b  $B
                dc.b $20
                dc.b  $F
                dc.b $11
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $93 
                dc.b   8
                dc.b   2
                dc.b $10
                dc.b $23 
                dc.b  $F
                dc.b  $D
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $93 
                dc.b $10
                dc.b   2
                dc.b $10
                dc.b $25 
                dc.b  $F
                dc.b $11
                dc.b   1
                dc.b   2
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $93 
                dc.b $18
                dc.b   2
                dc.b  $D
                dc.b $1E
                dc.b  $B
                dc.b $10
                dc.b   3
                dc.b   3
                dc.b  $D
                dc.b $17
                dc.b  $D
                dc.b $13
                dc.b   1
                dc.b   0
                dc.b   2
                dc.b $9B 
                dc.b   0
                dc.b   0
                dc.b  $C
                dc.b $21 
                dc.b  $B
                dc.b $13
                dc.b   1
                dc.b   4
                dc.b  $E
                dc.b $17
                dc.b  $E
                dc.b $17
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $BA 
                dc.b   0
                dc.b   1
                dc.b $19
                dc.b   2
                dc.b  $C
                dc.b  $E
                dc.b   0
                dc.b   5
                dc.b  $F
                dc.b $11
                dc.b  $F
                dc.b $12
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $C4 
                dc.b   0
                dc.b   2
                dc.b $19
                dc.b   1
                dc.b  $C
                dc.b  $E
                dc.b   0
                dc.b   5
                dc.b  $E
                dc.b $12
                dc.b  $F
                dc.b $12
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $C4 
                dc.b   8
                dc.b   2
                dc.b $19
                dc.b   2
                dc.b  $C
                dc.b  $E
                dc.b   0
                dc.b   5
                dc.b  $F
                dc.b $11
                dc.b  $F
                dc.b $12
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $C6 
                dc.b   0
                dc.b   2
                dc.b $19
                dc.b   1
                dc.b  $C
                dc.b  $E
                dc.b   0
                dc.b   5
                dc.b  $E
                dc.b $12
                dc.b  $F
                dc.b $12
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b $C6 
                dc.b   8
                dc.b   2
                dc.b   7
                dc.b $23 
                dc.b   7
                dc.b $23 
                dc.b   0
                dc.b   0
                dc.b $16
                dc.b $33 
                dc.b $17
                dc.b $2F 
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b $C7 
                dc.b   0
                dc.b   0
                dc.b   7
                dc.b $23 
                dc.b   7
                dc.b $23 
                dc.b   0
                dc.b   0
                dc.b $16
                dc.b $33 
                dc.b $17
                dc.b $2F 
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b $C8 
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $34 
                dc.b $2B 
                dc.b $31 
                dc.b   5
                dc.b  $A
                dc.b $11
                dc.b $39 
                dc.b $35 
                dc.b $38 
                dc.b   2
                dc.b   2
                dc.b   2
                dc.b $D6 
                dc.b   0
                dc.b   1
                dc.b   2
                dc.b $1D
                dc.b   9
                dc.b  $B
                dc.b   1
                dc.b   5
                dc.b $22 
                dc.b $16
                dc.b $13
                dc.b $16
                dc.b   1
                dc.b   1
                dc.b   3
                dc.b  $B
                dc.b   0
                dc.b   2
                dc.b   2
                dc.b $1B
                dc.b   9
                dc.b  $B
                dc.b   1
                dc.b   5
                dc.b $22 
                dc.b $14
                dc.b $13
                dc.b $16
                dc.b   1
                dc.b   1
                dc.b   3
                dc.b  $B
                dc.b   8
                dc.b   2
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_603C:
                
                move.b  (word_FF5422+1).l,d0
                andi.w  #$3F,d0 
                lsl.b   #2,d0
                jmp     loc_604C(pc,d0.w)
loc_604C:
                
                bra.w   return_6108
                bra.w   loc_610A
                bra.w   loc_613E
                bra.w   loc_6184
                bra.w   loc_61CA
                bra.w   loc_6246
                bra.w   loc_6278
                bra.w   loc_634A
                bra.w   loc_62C6
                bra.w   loc_6290
                bra.w   return_6108
                bra.w   loc_63CC
                bra.w   loc_63CC
                bra.w   loc_629C
                bra.w   return_6108
                bra.w   loc_6388
                bra.w   loc_6456
                bra.w   return_6108
                bra.w   return_6108
                bra.w   return_6108
                bra.w   return_6108
                bra.w   return_6108
                bra.w   return_6108
                bra.w   return_6108
                bra.w   return_6108
                bra.w   loc_6460
                bra.w   return_6108
                bra.w   return_6108
                bra.w   return_6108
                bra.w   return_6108
                bra.w   return_6108
                bra.w   return_6108
                bra.w   return_6108
                bra.w   return_6108
                bra.w   return_6108
                bra.w   return_6108
                bra.w   return_6108
                bra.w   return_6108
                bra.w   loc_613E
                bra.w   loc_6184
                bra.w   loc_6482
                bra.w   loc_6446
                bra.w   loc_6598
                bra.w   loc_65B6
                bra.w   loc_65D4
                bra.w   loc_65F2
                bra.w   loc_6610

    ; End of function sub_603C


; START OF FUNCTION CHUNK FOR sub_603C

return_6108:
                
                rts
loc_610A:
                
                cmpi.b  #7,(dword_FF5400+3).l
                bcc.w   return_6108
                bsr.w   sub_95DA
                bcc.s   loc_6124
                move.w  #6,d0
                bsr.w   Sleep           
loc_6124:
                
                cmpi.w  #$FE,(word_FF12DE).l 
                beq.w   loc_61EC
                move.b  #2,d0
                jsr     sub_10318
                bra.w   loc_61EC
loc_613E:
                
                cmpi.b  #9,(dword_FF5400+2).l
                bls.w   return_6182
                move.b  (byte_FF5404).l,d0
                andi.b  #$C0,d0
                cmpi.b  #$40,d0 
                bne.w   return_6182
                move.w  (word_FF5422).l,(unk_FF1208).l
                cmpi.w  #$FE,(word_FF12DE).l 
                beq.s   return_6182
                move.b  #0,d0
                jsr     sub_10318
                bset    #7,(STATUS_BITMAP).l
return_6182:
                
                rts
loc_6184:
                
                cmpi.b  #9,(dword_FF5400+3).l
                bls.w   return_61C8
                move.b  (byte_FF5404).l,d0
                andi.b  #$C0,d0
                cmpi.b  #$80,d0
                bne.w   return_61C8
                cmpi.w  #$FE,(word_FF12DE).l 
                beq.s   loc_61B6
                move.b  #3,d0
                jsr     sub_10318
loc_61B6:
                
                move.w  (word_FF5422).l,(unk_FF1208).l
                bset    #7,(STATUS_BITMAP).l
return_61C8:
                
                rts
loc_61CA:
                
                cmpi.b  #7,(dword_FF5400+2).l
                bcc.s   return_6208
                bsr.w   sub_95AC
                bcc.s   loc_61E2
                move.w  #6,d0
                bsr.w   Sleep           
loc_61E2:
                
                move.b  #1,d0
                jsr     sub_10318
loc_61EC:
                
                move.w  (word_FF5422).l,(unk_FF1208).l
                bset    #7,(STATUS_BITMAP).l
                bsr.w   sub_9BFE
                bsr.s   byte_620A
                bsr.w   sub_9BD0
return_6208:
                
                rts

; END OF FUNCTION CHUNK FOR sub_603C

byte_620A:      sndCom  SFX_WARP_STEPS

; =============== S U B R O U T I N E =======================================

sub_620E:
                
                bsr.w   sub_8EF4
loc_6212:
                
                bsr.w   sub_A0C2
                clr.b   d0
                bsr.w   sub_2824
                bsr.w   sub_8E9C
                bra.w   loc_6698

    ; End of function sub_620E


; =============== S U B R O U T I N E =======================================

sub_6224:
                
                move.b  #$FF,(MAP_BLOCK_SET).l
                move.b  #$FF,(byte_FF112D).l
                move.b  #$FF,(byte_FF112E).l
                move.b  #$FF,(MAP_PALETTE_INDEX).l
                bra.s   sub_620E

    ; End of function sub_6224


; START OF FUNCTION CHUNK FOR sub_603C

loc_6246:
                
                bsr.w   sub_667C
                bcc.s   return_6208
                cmpi.w  #$295,(CURRENT_MAP).l
                bne.s   byte_620A
                jsr     sub_22EA8
                bra.s   byte_620A
loc_625E:
                
                move.b  (byte_FF1209).l,d1
                andi.b  #$3F,d1 
                cmpi.b  #6,d1
                beq.s   return_62C4
                cmpi.b  #1,d1
                beq.s   return_62C4
                bra.w   loc_61EC
loc_6278:
                
                cmpi.w  #$FE,(word_FF12DE).l 
                beq.s   loc_625E
                cmpi.b  #2,(word_FF12DE+1).l
                bne.w   return_6208
                bra.s   loc_62A6
loc_6290:
                
                cmpi.b  #8,(dword_FF5400+2).l
                bcc.s   return_62C4
                bra.s   loc_62A6
loc_629C:
                
                cmpi.b  #8,(dword_FF5400+3).l
                bcc.s   return_62C4
loc_62A6:
                
                move.b  (byte_FF1209).l,d1
                andi.b  #$3F,d1 
                cmpi.b  #8,d1
                beq.s   return_62C4
                move.w  (word_FF5422).l,(unk_FF1208).l
                bra.w   loc_61EC
return_62C4:
                
                rts
loc_62C6:
                
                move.b  (byte_FF1209).l,d1
                andi.b  #$3F,d1 
                cmpi.b  #8,d1
                beq.s   return_62E8
                bsr.w   sub_667C
                bcc.s   return_62E8
                move.w  (word_FF5422).l,(unk_FF1208).l
                bra.s   loc_62EA
return_62E8:
                
                rts
loc_62EA:
                
                cmpi.w  #$AA,(CURRENT_MAP).l 
                bne.s   loc_6310
                moveq   #7,d0
                bsr.w   sub_E110
                bsr.w   sub_A0C2
                clr.b   d0
                bsr.w   sub_2824
                bsr.w   sub_8EA0
                moveq   #8,d0
                bsr.w   sub_E110
                rts
loc_6310:
                
                cmpi.b  #$1D,(MUSIC_INDEX).l
                beq.s   loc_6330

; END OF FUNCTION CHUNK FOR sub_603C

                sndCom  SFX_SPELL_CAST
                bsr.w   sub_E154
                bsr.w   sub_A0C2
                clr.b   d0
                bsr.w   sub_2824
                bra.w   sub_8E9C

; START OF FUNCTION CHUNK FOR sub_603C

loc_6330:
                
                moveq   #2,d0
                bsr.w   sub_E110
                bsr.w   sub_A0C2
                clr.b   d0
                bsr.w   sub_2824
                bsr.w   sub_8EA0
                moveq   #3,d0
                bra.w   sub_E110
loc_634A:
                
                bsr.w   sub_667C
                bcc.s   loc_6388
                move.w  (word_FF12DA).l,d0
                bmi.s   return_63CA
                move.w  d0,(word_FF1206).l
                bsr.w   sub_A14C
                move.w  d0,(CURRENT_MAP).l
                tst.w   (byte_FF5430).l
                bpl.s   loc_6374

; END OF FUNCTION CHUNK FOR sub_603C

                sndCom  SFX_FALL

; START OF FUNCTION CHUNK FOR sub_603C

loc_6374:
                
                bsr.w   sub_8EF4
                move.b  #1,d0
                bsr.w   sub_2824
                bsr.w   sub_8E9C
                bra.w   loc_6698
loc_6388:
                
                move.b  (word_FF5412+1).l,d0
                cmp.b   (byte_FF1131).l,d0
                bls.s   return_63CA
                tst.w   (byte_FF5430).l
                bmi.s   return_63CA
                move.w  (word_FF12DC).l,d0
                bmi.s   return_63CA
                move.w  d0,(word_FF1206).l
                bsr.w   sub_A14C
                move.w  d0,(CURRENT_MAP).l
                bsr.w   sub_8EF4
                move.b  #2,d0
                bsr.w   sub_2824
                bsr.w   sub_8E9C
                bra.w   loc_6698
return_63CA:
                
                rts
loc_63CC:
                
                move.b  (word_FF5412+1).l,d0
                cmp.b   (byte_FF1131).l,d0
                bls.s   loc_6406
                move.w  (word_FF12DC).l,d0
                bmi.s   loc_6406
                move.w  d0,(word_FF1206).l
                bsr.w   sub_A14C
                move.w  d0,(CURRENT_MAP).l
                bsr.w   sub_8EF4
                move.b  #3,d0
                bsr.w   sub_2824
                bsr.w   sub_8E9C
                bra.w   loc_6698
loc_6406:
                
                move.l  #byte_FF0000,d0
                move.w  (dword_FF5428).l,d0
                addq.w  #2,d0
                movea.l d0,a0
                move.w  (a0),d0
                andi.b  #$3F,d0 
                cmpi.b  #7,d0
                beq.w   loc_634A
                move.l  #$FF0000,d0
                move.w  (dword_FF5428).l,d0
                addi.w  #$94,d0 
                movea.l d0,a0
                move.w  (a0),d0
                andi.b  #$3F,d0 
                cmpi.b  #7,d0
                beq.w   loc_634A
                rts
loc_6446:
                
                cmpi.b  #5,(byte_FF1150).l
                beq.s   return_6480
                move.w  #$500,d1
                bra.s   loc_6464
loc_6456:
                
                cmpi.b  #6,(byte_FF1150).l
                beq.s   return_6480
loc_6460:
                
                move.w  #$100,d1
loc_6464:
                
                bsr.w   sub_667C
                bcc.s   return_6480
                tst.b   (byte_FF1142).l 
                bne.s   return_6480
                move.b  #$80,(byte_FF1143).l
                move.w  d1,(word_FF543C).l
return_6480:
                
                rts
loc_6482:
                
                lea     (dword_FF5400).l,a0
                move.b  4(a0),d0
                andi.b  #$C0,d0
                beq.w   loc_651A
                cmpi.b  #$80,d0
                bne.w   return_6518
                move.b  3(a0),d0
                andi.b  #$FE,d0
                cmpi.b  #8,d0
                bne.w   return_6518
                addi.b  #$11,(a0)
                addi.b  #$A,(byte_FF1124).l
                subi.b  #$1C,1(a0)
                subi.b  #$23,(byte_FF1125).l 
                addi.w  #$70,$12(a0) 
                addi.w  #$70,$54(a0) 
                move.b  #9,$22(a0)
                move.b  #$90,$39(a0)
                subi.w  #$100E,$28(a0)
                addi.w  #$110,$14(a0)
                addi.w  #$110,$18(a0)
                addi.w  #$110,$1A(a0)
                addi.w  #$A0,(PLAYER_X).l 
                subi.w  #$1C0,$16(a0)
                subi.w  #$1C0,$1C(a0)
                subi.w  #$1C0,$1E(a0)
                subi.w  #$230,(PLAYER_Y).l
return_6518:
                
                rts
loc_651A:
                
                move.b  (dword_FF5400+3).l,d0
                andi.b  #$FE,d0
                cmpi.b  #6,d0
                bne.s   return_6518
                subi.b  #$11,(a0)
                subi.b  #$A,(byte_FF1124).l
                addi.b  #$1C,1(a0)
                addi.b  #$23,(byte_FF1125).l 
                subi.w  #$70,$12(a0) 
                subi.w  #$70,$54(a0) 
                move.b  #2,$22(a0)
                move.b  #$20,$39(a0) 
                addi.w  #$100E,$28(a0)
                subi.w  #$110,$14(a0)
                subi.w  #$110,$18(a0)
                subi.w  #$110,$1A(a0)
                subi.w  #$A0,(PLAYER_X).l 
                addi.w  #$1C0,$16(a0)
                addi.w  #$1C0,$1C(a0)
                addi.w  #$1C0,$1E(a0)
                addi.w  #$230,(PLAYER_Y).l
                rts
loc_6598:
                
                cmpi.b  #8,(byte_FF1150).l
                beq.s   return_65B4
                tst.w   (word_FF12DE).l
                bne.s   return_65B4
                move.b  #$36,d0 
                jsr     sub_10318
return_65B4:
                
                rts
loc_65B6:
                
                cmpi.b  #8,(byte_FF1150).l
                beq.s   return_65D2
                tst.w   (word_FF12DE).l
                bne.s   return_65D2
                move.b  #$37,d0 
                jsr     sub_10318
return_65D2:
                
                rts
loc_65D4:
                
                cmpi.b  #8,(byte_FF1150).l
                beq.s   return_65F0
                tst.w   (word_FF12DE).l
                bne.s   return_65F0
                move.b  #$38,d0 
                jsr     sub_10318
return_65F0:
                
                rts
loc_65F2:
                
                cmpi.b  #8,(byte_FF1150).l
                beq.s   return_660E
                tst.w   (word_FF12DE).l
                bne.s   return_660E
                move.b  #$39,d0 
                jsr     sub_10318
return_660E:
                
                rts
loc_6610:
                
                move.b  (byte_FF1209).l,d1
                andi.b  #$3F,d1 
                cmpi.b  #$2E,d1 
                beq.s   return_667A
                bsr.w   sub_667C
                bcc.s   return_667A
                move.w  (word_FF5422).l,(unk_FF1208).l
                move.w  (CURRENT_HP).l,d0
                cmp.w   (MAX_HP).l,d0
                beq.s   return_667A
                move.w  #5,d0
                jsr     (sub_45E).l
                jsr     (j_WaitForDMAQueueProcessing).l
                jsr     (j_DuplicatePalettes).l
                jsr     (j_WaitForDMAQueueProcessing).l
                move.w  #$FFFF,d0
                lea     (dword_FF5400).l,a5
                jsr     sub_10338
                jsr     sub_1036C
                jsr     sub_10340

; END OF FUNCTION CHUNK FOR sub_603C

                sndCom  SFX_SPECIAL_ITEM_USE

; START OF FUNCTION CHUNK FOR sub_603C

return_667A:
                
                rts

; END OF FUNCTION CHUNK FOR sub_603C


; =============== S U B R O U T I N E =======================================

sub_667C:
                
                clr.w   d0
                move.b  (word_FF5422).l,d0
                lsl.b   #4,d0
                cmp.w   (word_FF5412).l,d0
                bne.s   loc_6694
                ori     #1,ccr
                rts
loc_6694:
                
                tst.b   d0
                rts

    ; End of function sub_667C


; START OF FUNCTION CHUNK FOR sub_620E

loc_6698:
                
                move.b  #$35,d0 
                jsr     j_GetOwnedItemQuantityEnriched
                tst.w   d1
                bmi.s   return_66AA
                bsr.w   sub_8B44
return_66AA:
                
                rts

; END OF FUNCTION CHUNK FOR sub_620E


; =============== S U B R O U T I N E =======================================

sub_66AC:
                
                btst    #4,(dword_FF542C).l
                bne.w   sub_673E
                move.b  (P1_INPUT).l,d1 
                and.b   d1,(byte_FF113D).l
                move.b  (byte_FF1133).l,d0
                bne.w   loc_674E
                move.b  (byte_FF113F).l,d0
                bne.w   loc_6B30
                tst.b   (byte_FF113D).l
                bne.w   sub_673E
                move.b  (P1_INPUT).l,d0 
                andi.b  #$60,d0 
                beq.s   sub_673E
                btst    #0,(byte_FF1153).l
                bne.s   loc_66FE
                bsr.w   sub_6CB0
                bcs.s   sub_673E
loc_66FE:
                
                bsr.w   sub_7052
                bcs.s   sub_673E
                bsr.w   sub_6E20
                bcs.s   sub_673E
                btst    #3,(STATUS_BITMAP).l
                bne.s   sub_673E
                btst    #1,(byte_FF1153).l
                bne.s   sub_673E
                bsr.w   sub_6ABA
                tst.w   (word_FF12EC).l 
                bne.s   return_673C
                tst.b   (byte_FF114E).l 
                beq.s   return_674C
                move.w  #$6400,d0
                jsr     sub_10334
return_673C:
                
                rts

    ; End of function sub_66AC


; =============== S U B R O U T I N E =======================================

sub_673E:
                
                tst.b   (byte_FF114E).l 
                beq.s   return_674C
                jsr     sub_10330
return_674C:
                
                rts

    ; End of function sub_673E


; START OF FUNCTION CHUNK FOR sub_66AC

loc_674E:
                
                movem.w d0,-(sp)
                bsr.s   sub_673E
                movem.w (sp)+,d0
                lea     (dword_FF5400).l,a1
                move.w  (word_FF120C).l,d1
                cmpi.b  #$7F,(a1,d1.w) 
                beq.w   loc_69EE
                addq.b  #1,d0
                move.b  d0,(byte_FF1133).l
                cmpi.b  #2,d0
                bne.s   loc_6782
                bset    #5,8(a1,d1.w)
loc_6782:
                
                andi.w  #$FF3F,(dword_FF542C).l
                ori.w   #$40,(dword_FF542C).l 
                cmpi.b  #8,d0
                bcs.w   loc_69FA
                bne.s   loc_67B0
                move.w  (word_FF5412).l,d2
                addi.w  #$18,d2
                move.w  d2,$12(a1,d1.w)
                ori.b   #$80,$20(a1,d1.w)
loc_67B0:
                
                andi.w  #$FF3F,(dword_FF542C).l
                ori.w   #$80,(dword_FF542C).l 
                cmpi.b  #$10,d0
                bcs.w   loc_69FA
                bne.s   loc_67D6
                bset    #6,8(a1,d1.w)
                bclr    #5,8(a1,d1.w)
loc_67D6:
                
                andi.w  #$FF3F,(dword_FF542C).l
                ori.w   #$C0,(dword_FF542C).l 
                cmpi.b  #$18,d0
                bcs.w   loc_69FA
                bhi.w   loc_6962
                subq.b  #1,(byte_FF1133).l
                tst.b   (byte_FF113D).l
                bne.w   return_6A0A
                move.b  (P1_INPUT).l,d0 
                andi.b  #$60,d0 
                beq.w   return_6A0A
                move.b  #$60,(byte_FF113D).l 
                move.w  (dword_FF542C).l,d0
                andi.b  #$30,d0 
                beq.s   loc_6880
                adda.w  d1,a1
                movea.l a1,a5
                addi.w  #$20,$12(a5) 
                addi.w  #$20,$54(a5) 
                movem.l d0,-(sp)
                bsr.w   sub_3456
                movem.l (sp)+,d0
                bcc.s   loc_6850
                subi.w  #$20,$12(a5) 
                subi.w  #$20,$54(a5) 
                rts
loc_6850:
                
                andi.b  #$20,d0 
                move.w  #$10,(word_FF12E0).l
                addq.b  #1,(byte_FF1133).l
                move.b  (P1_INPUT).l,d0 
                andi.b  #$F,d0
                beq.s   return_6876
                move.b  #$17,(word_FF12E0).l
return_6876:
                
                rts

; END OF FUNCTION CHUNK FOR sub_66AC

word_6878:      dc.w $FF6C
                dc.w 2
                dc.w $94
                dc.w $FFFE

; START OF FUNCTION CHUNK FOR sub_66AC

loc_6880:
                
                bsr.w   sub_6A0C
                move.w  (word_FF5454).l,d0
                clr.w   d2
                move.b  5(a1,d1.w),d2
                sub.w   d2,d0
                move.w  d0,(word_FF5454).l
                bclr    #6,8(a1,d1.w)
                bclr    #7,$20(a1,d1.w)
                bset    #6,$2C(a1,d1.w)
                move.b  (byte_FF5404).l,d0
                andi.b  #$C0,d0
                lsr.b   #5,d0
                andi.w  #6,d0
                move.w  word_6878(pc,d0.w),d0
                add.w   d0,$28(a1,d1.w)
                move.l  #$FF0000,d0
                move.w  $28(a1,d1.w),d0
                movea.l d0,a0
                move.w  (a0),$22(a1,d1.w)
                move.b  (a0),d0
                lsl.b   #4,d0
                move.b  d0,$39(a1,d1.w)
                btst    #3,(byte_FF1027).l
                bne.s   loc_68E8

; END OF FUNCTION CHUNK FOR sub_66AC

                sndCom  SFX_ITEM_DROP_HIGHER_PITCH

; START OF FUNCTION CHUNK FOR sub_66AC

loc_68E8:
                
                addq.b  #1,(byte_FF1133).l
                andi.b  #$60,(P1_INPUT).l 
                clr.w   (word_FF12E0).l
                move.w  (byte_FF5430).l,d0
                bmi.s   return_6960
                lea     (dword_FF5400).l,a0
                adda.w  d0,a0
                move.b  $2D(a0),d0
                andi.b  #$F,d0
                beq.s   return_6960
                move.b  9(a0),d0
                andi.w  #$F,d0
                move.b  d0,9(a1,d1.w)
                move.b  4(a0),d0
                andi.b  #$C0,d0
                andi.b  #$3F,4(a1,d1.w) 
                or.b    d0,4(a1,d1.w)
                move.w  #$16,d2
                cmpi.b  #$2E,$2B(a1,d1.w) 
                bne.s   loc_6944
                move.w  #$32,d2 
loc_6944:
                
                move.w  d2,$2A(a1,d1.w)
                move.b  (byte_FF5404).l,d2
                andi.b  #$C0,d2
                eori.b  #$80,d2
                cmp.b   d0,d2
                bne.s   return_6960
                move.b  #$FF,$2A(a1,d1.w)
return_6960:
                
                rts
loc_6962:
                
                andi.w  #$FF3F,(dword_FF542C).l
                ori.w   #$80,(dword_FF542C).l 
                cmpi.b  #$1E,d0
                bcs.w   loc_69FA
                bne.s   loc_69D8
                move.w  (word_FF12E0).l,d0
                beq.s   loc_69FA
                cmpi.b  #$2E,$2B(a1,d1.w) 
                bne.s   loc_6996
                cmpi.b  #$10,d0
                bne.s   loc_6996
                move.b  #$2F,d0 
loc_6996:
                
                move.w  d0,$2A(a1,d1.w)
                move.b  (byte_FF5404).l,d0
                andi.b  #$C0,d0
                andi.b  #$3F,4(a1,d1.w) 
                or.b    d0,4(a1,d1.w)
                move.w  (word_FF5454).l,d0
                clr.w   d2
                move.b  5(a1,d1.w),d2
                sub.b   d2,d0
                move.w  d0,(word_FF5454).l
                bclr    #6,8(a1,d1.w)
                bclr    #7,$20(a1,d1.w)
                move.b  #$56,d0 

; END OF FUNCTION CHUNK FOR sub_66AC

                sndCom  SOUND_COMMAND_GET_D0_PARAMETER
                bra.s   loc_69FA

; START OF FUNCTION CHUNK FOR sub_66AC

loc_69D8:
                
                andi.w  #$FF3F,(dword_FF542C).l
                ori.w   #$40,(dword_FF542C).l 
                cmpi.b  #$26,d0 
                bcs.s   loc_69FA
loc_69EE:
                
                clr.b   (byte_FF1133).l
                clr.w   (word_FF120C).l
loc_69FA:
                
                tst.w   (word_FF12DE).l
                bne.s   return_6A0A
                andi.b  #$60,(P1_INPUT).l 
return_6A0A:
                
                rts

; END OF FUNCTION CHUNK FOR sub_66AC


; =============== S U B R O U T I N E =======================================

sub_6A0C:
                
                move.w  #$10,d0
                movem.l d1/a1,-(sp)
                adda.w  d1,a1
                movea.l a1,a5
                addq.w  #1,$12(a5)
                addq.w  #1,$54(a5)
                movem.l a5,-(sp)
                bsr.s   sub_6A42
                bsr.w   sub_3456
                movem.l (sp)+,a5
                movem.l (sp)+,d1/a1
                bcc.s   return_6A40
                movem.l (sp)+,d0
                subq.w  #1,$12(a5)
                subq.w  #1,$54(a5)
return_6A40:
                
                rts

    ; End of function sub_6A0C


; =============== S U B R O U T I N E =======================================

sub_6A42:
                
                move.b  (byte_FF5404).l,d1
                andi.b  #$C0,d1
                beq.s   loc_6A72
                cmpi.b  #$80,d1
                beq.s   loc_6A80
                bhi.s   loc_6A64
                add.w   d0,$14(a5)
                add.w   d0,$18(a5)
                add.w   d0,$1A(a5)
                bra.s   loc_6AA4
loc_6A64:
                
                sub.w   d0,$14(a5)
                sub.w   d0,$18(a5)
                sub.w   d0,$1A(a5)
                bra.s   loc_6AA4
loc_6A72:
                
                sub.w   d0,$16(a5)
                sub.w   d0,$1C(a5)
                sub.w   d0,$1E(a5)
                bra.s   loc_6A8C
loc_6A80:
                
                add.w   d0,$16(a5)
                add.w   d0,$1C(a5)
                add.w   d0,$1E(a5)
loc_6A8C:
                
                move.w  $16(a5),d1
                andi.b  #$F,d1
                move.b  d1,3(a5)
                move.w  $16(a5),d1
                lsr.w   #4,d1
                move.b  d1,1(a5)
                rts
loc_6AA4:
                
                move.w  $14(a5),d1
                andi.b  #$F,d1
                move.b  d1,2(a5)
                move.w  $14(a5),d1
                lsr.w   #4,d1
                move.b  d1,(a5)
                rts

    ; End of function sub_6A42


; =============== S U B R O U T I N E =======================================

sub_6ABA:
                
                move.b  #1,(byte_FF113F).l
                andi.w  #$F8FF,(dword_FF542C).l
                ori.w   #$100,(dword_FF542C).l
                tst.w   (word_FF12DE).l
                bne.s   loc_6AE2
                andi.b  #$60,(P1_INPUT).l 
loc_6AE2:
                
                move.b  #$60,(byte_FF113D).l 
                sndCom  SFX_SWORD_SLASH
                clr.w   d2
                cmpi.w  #$3200,(word_FF120A).l
                bcs.s   loc_6B28
                move.b  (byte_FF114E).l,d1
                cmpi.b  #1,d1
                bne.s   loc_6B0C
                move.b  #1,d2
                bra.s   loc_6B28
loc_6B0C:
                
                cmpi.b  #4,d1
                bne.s   loc_6B18
                move.b  #4,d2
                bra.s   loc_6B28
loc_6B18:
                
                cmpi.b  #3,d1
                bne.s   loc_6B24
                move.b  #3,d2
                bra.s   loc_6B28
loc_6B24:
                
                move.b  #2,d2
loc_6B28:
                
                move.w  d2,(unk_FF12E4).l
                rts

    ; End of function sub_6ABA


; START OF FUNCTION CHUNK FOR sub_66AC

loc_6B30:
                
                addq.b  #1,d0
                move.b  d0,(byte_FF113F).l
                andi.w  #$F8FF,(dword_FF542C).l
                ori.w   #$100,(dword_FF542C).l
                cmpi.b  #5,d0
                bcs.s   loc_6BA2
                bsr.s   sub_6BC0
                bcs.s   loc_6B94
                andi.w  #$F8FF,(dword_FF542C).l
                ori.w   #$200,(dword_FF542C).l
                cmpi.b  #$A,d0
                bcs.s   loc_6BA2
                andi.w  #$F8FF,(dword_FF542C).l
                ori.w   #$300,(dword_FF542C).l
                cmpi.b  #$F,d0
                bcs.s   loc_6BA2
                andi.w  #$F8FF,(dword_FF542C).l
                ori.w   #$400,(dword_FF542C).l
                cmpi.b  #$14,d0
                bcs.s   loc_6BA2
loc_6B94:
                
                andi.w  #$F8FF,(dword_FF542C).l
                clr.b   (byte_FF113F).l
loc_6BA2:
                
                move.b  (dword_FF542C+1).l,d0
                andi.b  #$30,d0 
                bne.s   return_6BBE
                tst.w   (word_FF12DE).l
                bne.s   return_6BBE
                andi.b  #$60,(P1_INPUT).l 
return_6BBE:
                
                rts

; END OF FUNCTION CHUNK FOR sub_66AC


; =============== S U B R O U T I N E =======================================

sub_6BC0:
                
                movem.w d0,-(sp)
                lea     (dword_FF5400).l,a0
                move.l  $18(a0),d0
                move.l  $1C(a0),d1
                movem.l d0-d1,-(sp)
                move.b  4(a0),d0
                andi.b  #$C0,d0
                beq.s   loc_6BF4
                cmpi.b  #$80,d0
                bls.s   loc_6C02
                subi.w  #$10,$18(a0)
                addi.w  #$10,$1E(a0)
                bra.s   loc_6C0E
loc_6BF4:
                
                subi.w  #$10,$1C(a0)
                addi.w  #$10,$1A(a0)
                bra.s   loc_6C0E
loc_6C02:
                
                addi.w  #$10,$1A(a0)
                addi.w  #$10,$1E(a0)
loc_6C0E:
                
                move.b  #$FF,d7
                bsr.w   sub_3302
                movem.l (sp)+,d0-d1
                move.l  d0,$18(a0)
                move.l  d1,$1C(a0)
                movem.w (sp)+,d0
                move.w  $12(a0),d7
                cmp.w   d7,d4
                bhi.s   byte_6C32
                tst.b   d0
                rts
byte_6C32:
                
                sndCom  SFX_SWORD_CLANG
                ori     #1,ccr
                rts

    ; End of function sub_6BC0


; =============== S U B R O U T I N E =======================================

sub_6C3C:
                
                lea     (dword_FF5400).l,a0
                move.b  4(a0),d0
                andi.w  #$C0,d0 
                lsr.b   #3,d0
                move.w  word_6C90(pc,d0.w),d1
                move.w  (a0,d1.w),d2
                add.w   word_6C92(pc,d0.w),d2
                move.w  word_6C92(pc,d0.w),d3
                move.w  word_6C94(pc,d0.w),d1
                move.w  word_6C96(pc,d0.w),d0
                movea.w (a0,d0.w),a2
                movea.w 2(a0,d0.w),a3
                addq.w  #3,a2
                subq.w  #3,a3
                move.w  $12(a0),d4
                move.w  $54(a0),d5
                move.l  #$FF0000,d6
                move.w  $28(a0),d6
                movea.l d6,a6
                moveq   #$FFFFFFFF,d6
                move.w  #$E,d7
                lea     $80(a0),a0
                rts

    ; End of function sub_6C3C

word_6C90:      dc.w $1C
word_6C92:      dc.w $FFFF
word_6C94:      dc.w $1E
word_6C96:      dc.w $18
                dc.w $1A
                dc.w 1
                dc.w $18
                dc.w $1C
                dc.w $1E
                dc.w 1
                dc.w $1C
                dc.w $18
                dc.w $18
                dc.w $FFFF
                dc.w $1A
                dc.w $1C

; =============== S U B R O U T I N E =======================================

sub_6CB0:
                
                lea     (dword_FF5400).l,a5
                bsr.w   sub_3456
                bcc.s   loc_6CC6
                btst    #5,$C(a1)
                bne.w   loc_6DCA
loc_6CC6:
                
                lea     (byte_FF5480).l,a4
                moveq   #$E,d7
loc_6CCE:
                
                tst.w   (a4)
                bmi.s   loc_6D14
                btst    #0,8(a4)
                bne.s   loc_6D0C
                tst.w   $30(a4)
                bne.s   loc_6D0C
                btst    #5,$C(a4)
                beq.s   loc_6D0C
                cmpi.b  #$10,$2B(a4)
                beq.s   loc_6D0C
                cmpi.b  #$16,$2B(a4)
                beq.s   loc_6D0C
                clr.w   d0
                move.b  5(a4),d0
                lea     (dword_FF5400).l,a5
                add.w   d0,$54(a5)
                bra.w   loc_6DDC
loc_6D0C:
                
                lea     $80(a4),a4
                dbf     d7,loc_6CCE
loc_6D14:
                
                bsr.w   sub_6C3C
                add.w   d2,d3
loc_6D1A:
                
                tst.w   (a0)
                bmi.s   loc_6D98
                btst    #5,$C(a0)
                beq.s   loc_6D90
                cmpi.b  #$10,$2B(a0)
                beq.s   loc_6D90
                cmpi.b  #$16,$2B(a0)
                beq.s   loc_6D90
                cmp.w   (a0,d1.w),d2
                beq.s   loc_6D42
                cmp.w   (a0,d1.w),d3
                bne.s   loc_6D90
loc_6D42:
                
                btst    #4,$C(a0)
                beq.s   loc_6D6C
                movem.w d0-d1,-(sp)
                move.b  4(a0),d0
                andi.b  #$C0,d0
                eori.b  #$80,d0
                move.b  (byte_FF5404).l,d1
                andi.b  #$C0,d1
                cmp.b   d0,d1
                movem.w (sp)+,d0-d1
                bne.s   loc_6D90
loc_6D6C:
                
                cmpa.w  2(a0,d0.w),a2
                bhi.s   loc_6D90
                cmpa.w  (a0,d0.w),a3
                bcs.s   loc_6D90
                cmp.w   $54(a0),d4
                bcc.s   loc_6D90
                cmp.w   $12(a0),d5
                bls.s   loc_6D90
                cmp.w   $12(a0),d6
                bcs.s   loc_6D90
                move.w  $12(a0),d6
                movea.l a0,a4
loc_6D90:
                
                lea     $80(a0),a0
                dbf     d7,loc_6D1A
loc_6D98:
                
                cmpi.b  #$FF,d6
                beq.s   loc_6DC6
                clr.w   d0
                move.b  5(a4),d0
                lea     (dword_FF5400).l,a5
                add.w   d0,$54(a5)
                bsr.w   sub_3456
                bcc.s   loc_6DDC
                clr.w   d0
                move.b  5(a4),d0
                sub.w   d0,$54(a5)
                btst    #5,$C(a1)
                bne.s   loc_6DCA
loc_6DC6:
                
                tst.b   d0
                rts
loc_6DCA:
                
                movea.l a1,a4
                clr.w   d0
                move.b  5(a4),d0
                lea     (dword_FF5400).l,a5
                add.w   d0,$54(a5)
loc_6DDC:
                
                move.b  #1,(byte_FF1133).l
                move.l  $32(a4),$5E(a4)
                move.b  $2A(a4),$67(a4)
                move.b  $2B(a4),$69(a4)
                move.b  9(a4),$49(a4)
                suba.l  #dword_FF5400,a4
                move.w  a4,(word_FF120C).l
                clr.b   (P1_INPUT).l    
                move.b  #$60,(byte_FF113D).l 
                sndCom  SFX_STEP
                ori     #1,ccr
                rts

    ; End of function sub_6CB0


; =============== S U B R O U T I N E =======================================

sub_6E20:
                
                move.w  (dword_FF542C).l,d0
                andi.b  #$30,d0 
                bne.w   loc_6EEA
                move.b  (word_FF5422+1).l,d0
                andi.b  #$3F,d0 
                cmpi.b  #$11,d0
                bcs.s   loc_6E46
                cmpi.b  #$18,d0
                bls.w   loc_6FB8
loc_6E46:
                
                cmpi.b  #$1E,d0
                bcs.s   loc_6E54
                cmpi.b  #$25,d0 
                bls.w   loc_6F70
loc_6E54:
                
                bsr.w   sub_6C3C
loc_6E58:
                
                tst.w   (a0)
                bmi.s   loc_6EB0
                btst    #4,$C(a0)
                beq.s   loc_6EA8
                btst    #0,8(a0)
                bne.s   loc_6EA8
                movea.w d2,a5
                cmpa.w  (a0,d1.w),a5
                beq.s   loc_6E8C
                adda.w  d3,a5
                cmpa.w  (a0,d1.w),a5
                beq.s   loc_6E8C
                adda.w  d3,a5
                cmpa.w  (a0,d1.w),a5
                beq.s   loc_6E8C
                adda.w  d3,a5
                cmpa.w  (a0,d1.w),a5
                bne.s   loc_6EA8
loc_6E8C:
                
                cmpa.w  2(a0,d0.w),a2
                bhi.s   loc_6EA8
                cmpa.w  (a0,d0.w),a3
                bcs.s   loc_6EA8
                cmp.w   $54(a0),d4
                bcc.s   loc_6EA8
                cmp.w   $12(a0),d5
                bls.s   loc_6EA8
                movea.l a0,a4
                clr.w   d6
loc_6EA8:
                
                lea     $80(a0),a0
                dbf     d7,loc_6E58
loc_6EB0:
                
                tst.w   d6
                bpl.w   loc_6EF6
                movem.w d1/d3-d4,-(sp)
                subi.w  #$18,d1
                adda.w  word_6EEE(pc,d1.w),a6
                move.b  1(a6),d4
                andi.b  #$3F,d4 
                cmpi.b  #$E,d4
                bne.s   loc_6EE6
                lsl.w   #4,d3
                add.w   d3,d2
                movem.w (sp)+,d1/d3-d4
                lea     (byte_FF5480).l,a0
                move.w  #$E,d7
                bra.w   loc_6E58
loc_6EE6:
                
                movem.w (sp)+,d1/d3-d4
loc_6EEA:
                
                tst.b   d0
                rts
word_6EEE:
                
                dc.w 2
                dc.w $FFFE
                dc.w $94
                dc.w $FF6C
loc_6EF6:
                
                movea.l a4,a0
                move.l  a0,(dword_FF187C).l
                move.b  4(a0),d0
                movem.l d0/a0,-(sp)
                move.b  $3A(a0),d0
                lsr.b   #2,d0
                move.b  d0,(byte_FF1141).l
                btst    #0,$C(a0)
                bne.w   loc_6FFA
                andi.b  #$3F,4(a0) 
                move.b  (byte_FF5404).l,d0
                andi.b  #$C0,d0
                eori.b  #$80,d0
                or.b    d0,4(a0)
                bsr.w   sub_701A
                bsr.w   sub_401C
                bsr.w   WaitForDMAQueueProcessing
                jsr     sub_22EB8
                bsr.w   sub_700A
                movem.l (sp)+,d0/a0
                move.b  d0,4(a0)
                bsr.w   sub_701A
                bsr.w   sub_401C
loc_6F5A:
                
                andi.b  #$60,(P1_INPUT).l 
                move.b  #$60,(byte_FF113D).l 
                ori     #1,ccr
                rts
loc_6F70:
                
                cmpi.b  #$22,d0 
                bcc.s   loc_6F86
                move.b  (byte_FF5404).l,d1
                andi.b  #$C0,d1
                bne.w   loc_6E54
                bra.s   loc_6FAC
loc_6F86:
                
                move.b  (byte_FF5404).l,d1
                andi.b  #$C0,d1
                cmpi.b  #$C0,d1
                bne.w   loc_6E54
                bra.s   loc_6FAC
                move.b  (byte_FF5404).l,d1
                andi.b  #$C0,d1
                cmpi.b  #$C0,d1
                bne.w   loc_6E46
loc_6FAC:
                
                subi.b  #$22,d0 
                andi.b  #3,d0
                addq.b  #4,d0
                bra.s   loc_6FE6
loc_6FB8:
                
                cmpi.b  #$15,d0
                bcc.s   loc_6FCE
                move.b  (byte_FF5404).l,d1
                andi.b  #$C0,d1
                bne.w   loc_6E46
                bra.s   loc_6FE0
loc_6FCE:
                
                move.b  (byte_FF5404).l,d1
                andi.b  #$C0,d1
                cmpi.b  #$C0,d1
                bne.w   loc_6E46
loc_6FE0:
                
                subq.b  #1,d0
                andi.b  #3,d0
loc_6FE6:
                
                move.b  d0,(byte_FF1141).l
                jsr     sub_22EB8
                bsr.w   sub_700A
                bra.w   loc_6F5A
loc_6FFA:
                
                jsr     sub_22EB8
                bsr.s   sub_700A
                movem.l (sp)+,d0/a0
                bra.w   loc_6F5A

    ; End of function sub_6E20


; =============== S U B R O U T I N E =======================================

sub_700A:
                
                move.w  (word_FF1926).l,d0
                bmi.s   return_7018
                jsr     sub_10320
return_7018:
                
                rts

    ; End of function sub_700A


; =============== S U B R O U T I N E =======================================

sub_701A:
                
                move.b  4(a0),d0
                addi.b  #$40,d0 
                andi.b  #$80,d0
                beq.s   loc_702C
                move.b  #4,d0
loc_702C:
                
                ext.w   d0
                move.w  d0,$24(a0)
                clr.w   $26(a0)
                andi.b  #$F7,6(a0)
                move.b  4(a0),d0
                andi.b  #$40,d0 
                lsr.b   #3,d0
                or.b    d0,6(a0)
                ori.b   #$80,$A(a0)
                rts

    ; End of function sub_701A


; =============== S U B R O U T I N E =======================================

sub_7052:
                
                bsr.w   sub_6C3C
                add.w   d2,d3
loc_7058:
                
                tst.w   (a0)
                bmi.s   loc_70A4
                cmpi.b  #$24,$B(a0) 
                bne.s   loc_709C
                btst    #0,8(a0)
                bne.s   loc_709C
                cmp.w   (a0,d1.w),d2
                beq.s   loc_7078
                cmp.w   (a0,d1.w),d3
                bne.s   loc_709C
loc_7078:
                
                cmpa.w  2(a0,d0.w),a2
                bhi.s   loc_709C
                cmpa.w  (a0,d0.w),a3
                bcs.s   loc_709C
                cmp.w   $54(a0),d4
                bcc.s   loc_709C
                cmp.w   $12(a0),d5
                bls.s   loc_709C
                cmp.w   $12(a0),d6
                bcs.s   loc_709C
                move.w  $12(a0),d6
                movea.l a0,a4
loc_709C:
                
                lea     $80(a0),a0
                dbf     d7,loc_7058
loc_70A4:
                
                cmpi.b  #$FF,d6
                beq.w   loc_71E2
                move.b  $36(a4),d0
                bmi.w   loc_71E2
                cmpi.b  #$3F,d0 
                beq.w   loc_71E6
                ext.w   d0
                move.w  d0,(word_FF1196).l
                movem.w d0,-(sp)
                bsr.w   sub_7218
                jsr     sub_22EE8
                movem.w (sp)+,d0
                cmpi.b  #$3E,d0 
                beq.s   loc_7132
                cmpi.b  #$3A,d0 
                bcs.s   loc_711E
                subi.b  #$3A,d0 
                ext.w   d0
                add.b   d0,d0
                move.w  word_7116(pc,d0.w),d0
                ext.l   d0
                move.l  d0,(dword_FF1878).l
                jsr     j_AddGold
                jsr     sub_9B00C
                sndCom  MUSIC_ITEM_CHEST
                move.w  #$15,d0
                jsr     sub_22E90
                bsr.w   PlayMusicAfterCurrentOne
                bra.s   loc_7190
word_7116:
                
                dc.w 5
                dc.w $14
                dc.w $32
                dc.w $C8
loc_711E:
                
                jsr     j_GetOwnedItemQuantityEnriched
                cmpi.b  #9,d1
                beq.w   loc_71BC
                addq.b  #1,d1
                bne.s   loc_7132
                addq.b  #1,d1
loc_7132:
                
                movem.w d0-d1,-(sp)
                jsr     sub_9B00C
                sndCom  MUSIC_ITEM_CHEST
                move.w  #$11,d0
                jsr     sub_22E90
                bsr.w   PlayMusicAfterCurrentOne
                movem.w (sp)+,d0-d1
                cmpi.b  #$3E,d0 
                beq.s   loc_7176
                jsr     sub_22F08
                tst.b   d0
                bne.s   loc_719C
                jsr     sub_10368
                jsr     sub_1036C
                jsr     sub_10340
                bra.s   loc_719C
loc_7176:
                
                move.w  #$100,d0
                lea     (dword_FF5400).l,a5
                jsr     sub_10370
                move.w  #$100,d0
                jsr     sub_10338
loc_7190:
                
                jsr     sub_1036C
                jsr     sub_10340
loc_719C:
                
                move.w  #$C,$26(a4)
                ori.b   #$80,$A(a4)
                bsr.w   sub_401C
                bsr.w   sub_9DA2
                bsr.w   WaitForDMAQueueProcessing
loc_71B4:
                
                jsr     sub_22EA0
                bra.s   loc_71CE
loc_71BC:
                
                move.w  #$12,d0
                jsr     sub_22E90
                jsr     sub_22EA0
                bsr.s   sub_7234
loc_71CE:
                
                clr.b   (P1_INPUT).l    
                move.b  #$60,(byte_FF113D).l 
                ori     #1,ccr
                rts
loc_71E2:
                
                tst.b   d0
                rts
loc_71E6:
                
                move.w  #$10,$26(a4)
                bsr.s   sub_7250
                move.w  #$C,$26(a4)
                bsr.s   sub_7250
                move.b  #$18,5(a4)
                addq.w  #8,$54(a4)
                jsr     sub_22EE8
                jsr     sub_9B00C
                move.w  #$14,d0
                jsr     sub_22E90
                bra.s   loc_71B4

    ; End of function sub_7052


; =============== S U B R O U T I N E =======================================

sub_7218:
                
                move.w  #4,$26(a4)
                bsr.s   sub_7250
                move.w  #8,$26(a4)
                bsr.s   sub_7250
                move.b  #$18,5(a4)
                addq.w  #8,$54(a4)
                rts

    ; End of function sub_7218


; =============== S U B R O U T I N E =======================================

sub_7234:
                
                move.w  #4,$26(a4)
                bsr.s   sub_7250
                move.w  #0,$26(a4)
                bsr.s   sub_7250
                move.b  #$10,5(a4)
                subq.w  #8,$54(a4)
                rts

    ; End of function sub_7234


; =============== S U B R O U T I N E =======================================

sub_7250:
                
                ori.b   #$80,$A(a4)
                movem.l a4,-(sp)
                bsr.w   sub_401C
                bsr.w   sub_9DA2
                bsr.w   EnableDMAQueueProcessing
                move.w  #4,d0
                bsr.w   Sleep           
                movem.l (sp)+,a4
                rts

    ; End of function sub_7250


; =============== S U B R O U T I N E =======================================

sub_7274:
                
                lea     (dword_FF5400).l,a0
                cmpi.b  #0,$B(a0)
                beq.s   loc_728A
                jsr     sub_10314
                rts
loc_728A:
                
                move.w  (dword_FF542C+2).l,d2
                move.w  (dword_FF542C).l,d0
                move.w  d0,(dword_FF542C+2).l
                btst    #0,$C(a0)
                bne.s   return_72E2
                tst.w   d0
                beq.s   loc_72E4
                move.w  d0,d1
                andi.w  #$2000,d1
                bne.w   loc_75D2
                move.w  d0,d1
                andi.w  #$700,d1
                bne.w   loc_7510
                move.w  d0,d1
                andi.w  #$30,d1 
                bne.w   loc_747C
                move.w  d0,d1
                andi.w  #$F,d1
                bne.w   loc_73AC
                move.w  d0,d1
                andi.w  #$C0,d1 
                bne.s   loc_7332
                move.w  d0,d1
                andi.w  #$1000,d1
                bne.w   loc_7586
return_72E2:
                
                rts
loc_72E4:
                
                bsr.w   sub_739A
loc_72E8:
                
                clr.w   $26(a0)
                move.b  4(a0),d0
                andi.b  #$C0,d0
                beq.s   loc_730C
                cmpi.b  #$80,d0
                beq.s   loc_7324
                bhi.s   loc_7318
                move.w  #4,$24(a0)
                bset    #3,6(a0)
                rts
loc_730C:
                
                clr.w   $24(a0)
                bclr    #3,6(a0)
                rts
loc_7318:
                
                clr.w   $24(a0)
                bset    #3,6(a0)
                rts
loc_7324:
                
                move.w  #4,$24(a0)
                bclr    #3,6(a0)
                rts
loc_7332:
                
                bsr.s   sub_739A
                clr.w   $26(a0)
                cmpi.w  #$C0,d1 
                beq.s   loc_7350
                move.w  #4,$26(a0)
                cmpi.w  #$80,d1 
                beq.s   loc_7350
                move.w  #8,$26(a0)
loc_7350:
                
                move.b  4(a0),d0
                andi.b  #$C0,d0
                beq.s   loc_7370
                cmpi.b  #$80,d0
                beq.s   loc_738C
                bhi.s   loc_737E
                move.w  #$14,$24(a0)
                bset    #3,6(a0)
                rts
loc_7370:
                
                move.w  #$10,$24(a0)
                bclr    #3,6(a0)
                rts
loc_737E:
                
                move.w  #$10,$24(a0)
                bset    #3,6(a0)
                rts
loc_738C:
                
                move.w  #$14,$24(a0)
                bclr    #3,6(a0)
                rts

    ; End of function sub_7274


; =============== S U B R O U T I N E =======================================

sub_739A:
                
                cmp.w   d0,d2
                beq.s   return_73AA
                bset    #7,$A(a0)
                bset    #7,$48(a0)
return_73AA:
                
                rts

    ; End of function sub_739A


; START OF FUNCTION CHUNK FOR sub_7274

loc_73AC:
                
                andi.b  #$F,d2
                cmp.b   d1,d2
                beq.s   loc_73B8
                clr.b   $D(a0)
loc_73B8:
                
                move.w  #8,$24(a0)
                move.w  d0,d1
                andi.b  #$C0,d1
                beq.s   loc_73D6
                cmpi.b  #$18,(byte_FF1133).l
                bcc.s   loc_73D6
                move.w  #$10,$24(a0)
loc_73D6:
                
                move.b  $D(a0),d0
                move.b  d0,d1
                move.b  (word_FF1182+1).l,d7
                bne.s   loc_73E8
                move.w  #2,d7
loc_73E8:
                
                add.b   d7,d1
                neg.b   d7
                and.b   d7,d1
                move.b  d1,$D(a0)
                andi.b  #7,d0
                bne.s   loc_7426
                move.b  $27(a0),d0
                move.b  d0,d1
                andi.b  #$E0,$27(a0)
                btst    #1,$38(a0)
                beq.s   loc_7410
                subq.b  #4,d1
                bra.s   loc_7412
loc_7410:
                
                addq.b  #4,d1
loc_7412:
                
                andi.b  #$1C,d1
                or.b    d1,$27(a0)
                bset    #7,$A(a0)
                bset    #7,$48(a0)
loc_7426:
                
                move.b  4(a0),d0
                btst    #1,$38(a0)
                beq.s   loc_7436
                eori.b  #$80,d0
loc_7436:
                
                andi.b  #$C0,d0
                beq.s   loc_7452
                cmpi.b  #$80,d0
                beq.s   loc_746E
                bhi.s   loc_7460
                ori.b   #$C,$25(a0)
                bset    #3,6(a0)
                rts
loc_7452:
                
                ori.b   #8,$25(a0)
                bclr    #3,6(a0)
                rts
loc_7460:
                
                ori.b   #8,$25(a0)
                bset    #3,6(a0)
                rts
loc_746E:
                
                ori.b   #$C,$25(a0)
                bclr    #3,6(a0)
                rts
loc_747C:
                
                bsr.w   sub_739A
                move.b  d0,d1
                clr.w   $26(a0)
                andi.b  #$10,d1
                beq.s   loc_7492
                move.w  #4,$26(a0)
loc_7492:
                
                clr.w   $24(a0)
                clr.b   $D(a0)
                andi.b  #$C0,d0
                beq.s   loc_74C6
                cmpi.b  #$C0,d0
                beq.s   loc_74C0
                move.w  #$10,$24(a0)
                clr.w   $26(a0)
                cmpi.b  #$80,d0
                beq.w   loc_74C6
                move.w  #4,$26(a0)
                bra.s   loc_74C6
loc_74C0:
                
                move.w  #8,$24(a0)
loc_74C6:
                
                move.b  4(a0),d0
                andi.b  #$C0,d0
                beq.s   loc_74E6
                cmpi.b  #$80,d0
                beq.s   loc_7502
                bhi.s   loc_74F4
                addi.w  #$24,$24(a0) 
                bset    #3,6(a0)
                rts
loc_74E6:
                
                addi.w  #$20,$24(a0) 
                bclr    #3,6(a0)
                rts
loc_74F4:
                
                addi.w  #$20,$24(a0) 
                bset    #3,6(a0)
                rts
loc_7502:
                
                addi.w  #$24,$24(a0) 
                bclr    #3,6(a0)
                rts
loc_7510:
                
                bsr.w   sub_739A
                clr.w   $26(a0)
                cmpi.w  #$100,d1
                beq.s   loc_753C
                move.w  #4,$26(a0)
                cmpi.w  #$200,d1
                beq.s   loc_753C
                move.w  #8,$26(a0)
                cmpi.w  #$300,d1
                beq.s   loc_753C
                move.w  #$C,$26(a0)
loc_753C:
                
                move.b  4(a0),d0
                andi.b  #$C0,d0
                beq.s   loc_755C
                cmpi.b  #$80,d0
                beq.s   loc_7578
                bhi.s   loc_756A
                move.w  #$3C,$24(a0) 
                bset    #3,6(a0)
                rts
loc_755C:
                
                move.w  #$38,$24(a0) 
                bclr    #3,6(a0)
                rts
loc_756A:
                
                move.w  #$38,$24(a0) 
                bset    #3,6(a0)
                rts
loc_7578:
                
                move.w  #$3C,$24(a0) 
                bclr    #3,6(a0)
                rts
loc_7586:
                
                move.w  #$40,$24(a0) 
                btst    #6,4(a0)
                beq.s   loc_759C
                bset    #3,6(a0)
                bra.s   loc_75A2
loc_759C:
                
                bclr    #3,6(a0)
loc_75A2:
                
                move.b  $D(a0),d0
                andi.b  #3,d0
                bne.s   return_75C8
                move.b  $D(a0),d0
                andi.w  #$C,d0
                lsr.b   #1,d0
                move.w  word_75CA(pc,d0.w),$26(a0)
                bset    #7,$A(a0)
                bset    #7,$48(a0)
return_75C8:
                
                rts

; END OF FUNCTION CHUNK FOR sub_7274

word_75CA:      dc.w 0
                dc.w 4
                dc.w 0
                dc.w 8

; START OF FUNCTION CHUNK FOR sub_7274

loc_75D2:
                
                bsr.w   sub_739A
                clr.w   $26(a0)
                move.b  4(a0),d0
                andi.b  #$C0,d0
                beq.s   loc_75FA
                cmpi.b  #$80,d0
                beq.s   loc_7616
                bcs.s   loc_7608
                move.w  #$44,$24(a0) 
                bset    #3,6(a0)
                rts
loc_75FA:
                
                move.w  #$44,$24(a0) 
                bclr    #3,6(a0)
                rts
loc_7608:
                
                move.w  #$48,$24(a0) 
                bset    #3,6(a0)
                rts
loc_7616:
                
                move.w  #$48,$24(a0) 
                bclr    #3,6(a0)
                rts

; END OF FUNCTION CHUNK FOR sub_7274


; =============== S U B R O U T I N E =======================================

sub_7624:
                
                tst.b   (P1_INPUT).l    
                bpl.w   return_77A4
                btst    #2,(byte_FF1153).l
                bne.w   return_77A4
                tst.b   (byte_FF113F).l
                bne.w   return_77A4
                move.b  (byte_FF1133).l,d0
                beq.s   byte_7654
                cmpi.b  #$17,d0
                bne.w   return_77A4
byte_7654:
                
                sndCom  SFX_ITEM_SELECT
                bsr.w   sub_8EF4
                bsr.w   sub_7816
                bsr.w   sub_D25C
                bsr.w   sub_7862
                jsr     sub_22E94
                bsr.w   sub_7984
                bsr.w   WaitForDMAQueueProcessing
                move.w  #0,d0
                move.b  #$EF,d1
                bsr.w   ApplyLogicalAndOnVDPRegister
                bsr.w   ClearVsramAndSprites
                clr.w   d6
                bsr.w   UpdateBackgroundHScrollData
                clr.w   d6
                bsr.w   UpdateBackgroundVScrollData
                bsr.w   WaitForDMAQueueProcessing
                lea     (byte_FF7D82).l,a0
                move.w  #$4BF,d7
loc_76A0:
                
                move.w  #$86BC,(a0)+
                dbf     d7,loc_76A0
                bsr.w   sub_7958
                bsr.w   sub_D4AE
                jsr     sub_22E88
                bsr.w   sub_8EB4
                jsr     sub_22E8C
                bcc.w   sub_7766
                tst.b   d0
                beq.w   loc_774A
                bsr.w   sub_EAD4
                movem.w d1,-(sp)
                bsr.w   sub_8EF4
                clr.b   d0
                lea     (byte_FF114E).l,a0
                bsr.s   sub_7718
                bsr.s   sub_7718
                bsr.s   sub_7718
                bsr.s   sub_7718
                bsr.s   sub_76EC
                bra.w   loc_776E

    ; End of function sub_7624


; =============== S U B R O U T I N E =======================================

sub_76EC:
                
                clr.w   d0
                move.b  (byte_FF114F).l,d0
                subi.b  #9,d0
                addq.b  #1,d0
                cmpi.b  #5,d0
                bcs.s   loc_7702
                clr.b   d0
loc_7702:
                
                add.b   d0,d0
                move.w  word_770E(pc,d0.w),(word_FF547C).l
                rts

    ; End of function sub_76EC

word_770E:      dc.w $100
                dc.w $E6
                dc.w $CC
                dc.w $B3
                dc.w $80

; =============== S U B R O U T I N E =======================================

sub_7718:
                
                bsr.w   sub_EA12
                tst.b   d0
                bne.s   loc_7744
                cmp.b   (a0),d1
                beq.s   loc_7744
                clr.w   (word_FF120A).l
                movem.l d0-d1/a0,-(sp)
                jsr     sub_103AE
                jsr     sub_1036C
                jsr     sub_10340
                movem.l (sp)+,d0-d1/a0
loc_7744:
                
                move.b  d1,(a0)+
                addq.b  #1,d0
                rts

    ; End of function sub_7718


; START OF FUNCTION CHUNK FOR sub_7624

loc_774A:
                
                bsr.w   sub_D3BE
                tst.b   d1
                bne.s   sub_7766
                movem.w d0,-(sp)
                bsr.w   sub_85F2
                bsr.s   sub_7766
                movem.w (sp)+,d0
                bsr.w   sub_8BC8
                rts

; END OF FUNCTION CHUNK FOR sub_7624


; =============== S U B R O U T I N E =======================================

sub_7766:
                
                movem.w d1,-(sp)
                bsr.w   sub_8EF4
loc_776E:
                
                bsr.w   sub_D3A8
                bsr.w   sub_78B6
                bsr.w   ClearScrollTableData
                move.w  #0,d0
                move.b  #$10,d1
                bsr.w   ApplyLogicalOrOnVDPRegister
                move.w  #$9203,d0
                bsr.w   SetVDPRegister
                bsr.w   sub_2996
                bsr.w   sub_8E9C
                bsr.w   sub_77A6
                clr.b   (P1_INPUT).l    
                movem.w (sp)+,d1
return_77A4:
                
                rts

    ; End of function sub_7766


; =============== S U B R O U T I N E =======================================

sub_77A6:
                
                bsr.w   WaitForDMAQueueProcessing
                move.b  (byte_FF114E).l,d0
                beq.s   return_77F2
                lea     unk_7B10(pc), a0
                cmpi.b  #1,d0
                beq.s   loc_77DE
                lea     unk_7DB5(pc), a0
                cmpi.b  #3,d0
                beq.s   loc_77DE
                lea     unk_7FF0(pc), a0
                cmpi.b  #4,d0
                beq.s   loc_77DE
                lea     unk_81A0(pc), a0
                cmpi.b  #2,d0
                beq.s   loc_77DE
                lea     unk_8420(pc), a0
loc_77DE:
                
                lea     (byte_FF2C00).l,a1
                lea     ($F180).l,a2
                bsr.w   sub_4A7A
                bsr.w   WaitForDMAQueueProcessing
return_77F2:
                
                rts

    ; End of function sub_77A6


; =============== S U B R O U T I N E =======================================

sub_77F4:
                
                lea     unk_7B10(pc), a0
                cmpi.b  #1,d0
                beq.s   loc_780C
                lea     unk_7DB5(pc), a0
                cmpi.b  #3,d0
                beq.s   loc_780C
                lea     unk_81A0(pc), a0
loc_780C:
                
                lea     (byte_FF2C00).l,a1
                bra.w   sub_4A7A

    ; End of function sub_77F4


; =============== S U B R O U T I N E =======================================

sub_7816:
                
                lea     unk_7A3C(pc), a0
                lea     (byte_FF2C00).l,a1
                bsr.w   DecompressLZ77Graphics
                lea     (word_FF2C04).l,a0
                lea     (byte_FF1D80).l,a1
                move.w  #$12,d7
loc_7834:
                
                move.w  #$27,d6 
loc_7838:
                
                move.w  (a0)+,d0
                ori.w   #$8000,d0
                cmpi.w  #$86BC,d0
                bne.s   loc_7846
                clr.w   d0
loc_7846:
                
                move.w  d0,(a1)+
                dbf     d6,loc_7838
                adda.w  #$30,a1 
                dbf     d7,loc_7834
                move.w  #$17F,d7
loc_7858:
                
                move.w  #$86B4,(a1)+
                dbf     d7,loc_7858
                rts

    ; End of function sub_7816


; =============== S U B R O U T I N E =======================================

sub_7862:
                
                lea     (byte_FF00F4).l,a0
                lea     (byte_FF0094).l,a1
                moveq   #4,d7
loc_7870:
                
                move.w  (a0)+,(a1)+
                dbf     d7,loc_7870
                lea     word_7896(pc), a0
                lea     (byte_FF00A0).l,a1
                bsr.w   loc_966
                bsr.w   ClearSpriteTable
                bsr.w   sub_792C
                move.w  #$921C,d0
                bsr.w   SetVDPRegister
                rts

    ; End of function sub_7862

word_7896:      dc.w 0
                dc.w $CCC
                dc.w $68C
                dc.w $240
                dc.w $664
                dc.w $6A
                dc.w $24
                dc.w $228
                dc.w $46
                dc.w $402
                dc.w $AC
                dc.w $A2
                dc.w $888
                dc.w $2E
                dc.w $E66
                dc.w 0

; =============== S U B R O U T I N E =======================================

sub_78B6:
                
                lea     byte_78FA(pc), a0
                lea     (byte_FF00D6).l,a1
                lea     word_7918(pc), a2
                move.b  (byte_FF114F).l,d0
                bsr.s   sub_78DE
                lea     byte_78F4(pc), a0
                lea     word_7900(pc), a2
                move.b  (byte_FF114E).l,d0
                bsr.s   sub_78DE
                rts

    ; End of function sub_78B6


; =============== S U B R O U T I N E =======================================

sub_78DE:
                
                clr.w   d1
loc_78E0:
                
                cmp.b   (a0),d0
                beq.s   loc_78EA
                addq.l  #1,a0
                addq.w  #4,d1
                bra.s   loc_78E0
loc_78EA:
                
                move.w  (a2,d1.w),(a1)+
                move.w  2(a2,d1.w),(a1)+
                rts

    ; End of function sub_78DE

byte_78F4:      dc.b 0
                dc.b   1
                dc.b   3
                dc.b   2
                dc.b   4
                dc.b   5
byte_78FA:      dc.b 0
                dc.b   9
                dc.b  $A
                dc.b  $B
                dc.b  $C
                dc.b   0
word_7900:      dc.w $AAA
                dc.w $666
                dc.w $8C
                dc.w $2C
                dc.w $E48
                dc.w $EEE
                dc.w $640
                dc.w $E84
                dc.w $268
                dc.w $24
                dc.w $AE
                dc.w $24E
word_7918:      dc.w $26A
                dc.w $24
                dc.w $866
                dc.w $422
                dc.w $888
                dc.w $444
                dc.w $2EE
                dc.w $8C
                dc.w $E4
                dc.w $A0

; =============== S U B R O U T I N E =======================================

sub_792C:
                
                movea.l (DMA_QUEUE_POINTER).l,a6
                move.l  #$8F029404,(a6)+
                move.l  #$93C0968E,(a6)+
                move.l  #$95C0977F,(a6)+
                move.l  #$71800083,(a6)+
                move.l  a6,(DMA_QUEUE_POINTER).l
                addq.b  #1,(DMA_QUEUE_SIZE).l
                rts

    ; End of function sub_792C


; =============== S U B R O U T I N E =======================================

sub_7958:
                
                movea.l (DMA_QUEUE_POINTER).l,a6
                move.l  #$8F029404,(a6)+
                move.l  #$93C096BE,(a6)+
                move.l  #$95C0977F,(a6)+
                move.l  #$61800083,(a6)+
                move.l  a6,(DMA_QUEUE_POINTER).l
                addq.b  #1,(DMA_QUEUE_SIZE).l
                rts

    ; End of function sub_7958


; =============== S U B R O U T I N E =======================================

sub_7984:
                
                movem.l a6,-(sp)
                movea.l (DMA_QUEUE_POINTER).l,a6
                move.l  #$8F029402,(a6)+
                move.l  #$93009693,(a6)+
                move.l  #$9500977F,(a6)+
                move.l  #$7A000083,(a6)+
                move.l  a6,(DMA_QUEUE_POINTER).l
                addq.b  #1,(DMA_QUEUE_SIZE).l
                movem.l (sp)+,a6
                rts

    ; End of function sub_7984


; =============== S U B R O U T I N E =======================================

sub_79B8:
                
                movea.l (DMA_QUEUE_POINTER).l,a6
                move.l  #$8F029400,(a6)+
                move.l  #$9364968E,(a6)+
                move.l  #$9542977F,(a6)+
                move.l  #$70840083,(a6)+
                move.l  a6,(DMA_QUEUE_POINTER).l
                addq.b  #1,(DMA_QUEUE_SIZE).l
                rts

    ; End of function sub_79B8


; =============== S U B R O U T I N E =======================================

sub_79E4:
                
                movea.l (DMA_QUEUE_POINTER).l,a6
                move.l  #$8F029400,(a6)+
                move.l  #$93C0968E,(a6)+
                move.l  #$9500977F,(a6)+
                move.l  #$70000083,(a6)+
                move.l  a6,(DMA_QUEUE_POINTER).l
                addq.b  #1,(DMA_QUEUE_SIZE).l
                rts

    ; End of function sub_79E4


; =============== S U B R O U T I N E =======================================

sub_7A10:
                
                movea.l (DMA_QUEUE_POINTER).l,a6
                move.l  #$8F029407,(a6)+
                move.l  #$9300968E,(a6)+
                move.l  #$9500977F,(a6)+
                move.l  #$70000083,(a6)+
                move.l  a6,(DMA_QUEUE_POINTER).l
                addq.b  #1,(DMA_QUEUE_SIZE).l
                rts

    ; End of function sub_7A10

unk_7A3C:       dc.b $FF
                dc.b $50 
                dc.b   3
                dc.b $28 
                dc.b $13
                dc.b   6
                dc.b $B4 
                dc.b   6
                dc.b $B5 
                dc.b $C3 
                dc.b   6
                dc.b $B6 
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   2
                dc.b   2
                dc.b  $E
                dc.b $B5 
                dc.b $7C 
                dc.b  $F
                dc.b $4E 
                dc.b $B4 
                dc.b   6
                dc.b $B7 
                dc.b   6
                dc.b $BC 
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b $30 
                dc.b   0
                dc.b   2
                dc.b   2
                dc.b   2
                dc.b  $E
                dc.b $B7 
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b $1A
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b $1A
                dc.b  $F
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b  $C
                dc.b $50 
                dc.b $16
                dc.b $B5 
                dc.b $16
                dc.b $B6 
                dc.b   8
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b   2
                dc.b   2
                dc.b $1E
                dc.b $5F 
                dc.b $A0 
                dc.b   0
                dc.b   0
unk_7B10:       dc.b $9F 
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b   7
                dc.b   1
                dc.b $E0 
                dc.b $EE 
                dc.b   0
                dc.b   0
                dc.b  $E
                dc.b $F9 
                dc.b $EE 
                dc.b   0
                dc.b $D0 
                dc.b   0
                dc.b $ED 
                dc.b  $F
                dc.b  $D
                dc.b  $E
                dc.b   4
                dc.b $EE 
                dc.b $FF
                dc.b   0
                dc.b  $D
                dc.b   0
                dc.b  $E
                dc.b  $E
                dc.b   0
                dc.b $DE 
                dc.b $ED 
                dc.b $FF
                dc.b  $D
                dc.b $E0 
                dc.b $EE 
                dc.b $DD 
                dc.b  $D
                dc.b $EE 
                dc.b   0
                dc.b $ED 
                dc.b $FE 
                dc.b  $E
                dc.b $DE 
                dc.b $E0 
                dc.b $ED 
                dc.b   0
                dc.b $ED 
                dc.b $EE 
                dc.b  $F
                dc.b   4
                dc.b $FF
                dc.b $DD 
                dc.b $EE 
                dc.b   0
                dc.b  $E
                dc.b $DD 
                dc.b $DD 
                dc.b   0
                dc.b  $E
                dc.b $D2 
                dc.b $DE 
                dc.b $D1 
                dc.b  $F
                dc.b $2B 
                dc.b $EF 
                dc.b   7
                dc.b   4
                dc.b  $E
                dc.b $44 
                dc.b $DD 
                dc.b  $F
                dc.b $3B 
                dc.b $FD 
                dc.b $DD 
                dc.b   0
                dc.b   1
                dc.b  $E
                dc.b $ED 
                dc.b  $E
                dc.b  $F
                dc.b $11
                dc.b  $E
                dc.b $DF 
                dc.b $EE 
                dc.b  $E
                dc.b  $E
                dc.b   4
                dc.b $1D
                dc.b  $E
                dc.b $DD 
                dc.b $EE 
                dc.b $1D
                dc.b $55 
                dc.b  $B
                dc.b $69 
                dc.b  $E
                dc.b  $D
                dc.b   4
                dc.b  $E
                dc.b  $F
                dc.b $64 
                dc.b  $E
                dc.b  $E
                dc.b $74 
                dc.b $EE 
                dc.b $3E 
                dc.b  $F
                dc.b $4C 
                dc.b  $F
                dc.b $38 
                dc.b $ED 
                dc.b $ED 
                dc.b $DE 
                dc.b   0
                dc.b $EE 
                dc.b  $F
                dc.b $59 
                dc.b $EF 
                dc.b $EE 
                dc.b $ED 
                dc.b $DE 
                dc.b  $F
                dc.b  $B
                dc.b $FD 
                dc.b $DD 
                dc.b $DE 
                dc.b $ED 
                dc.b $FF
                dc.b $FF
                dc.b $DF 
                dc.b $FD 
                dc.b $ED 
                dc.b $FF
                dc.b $EF 
                dc.b $FF
                dc.b $DD 
                dc.b $FE 
                dc.b $FF
                dc.b $DF 
                dc.b $ED 
                dc.b $DD 
                dc.b $EF 
                dc.b $DF 
                dc.b $FE 
                dc.b  $F
                dc.b   8
                dc.b $FF
                dc.b $FE 
                dc.b $DE 
                dc.b $EF 
                dc.b $DD 
                dc.b $FF
                dc.b $ED 
                dc.b $EF 
                dc.b $DE 
                dc.b $FF
                dc.b $FF
                dc.b $FE 
                dc.b $DF 
                dc.b $DE 
                dc.b $FF
                dc.b $FF
                dc.b $FD 
                dc.b $11
                dc.b $F6 
                dc.b $EF 
                dc.b $FF
                dc.b $FF
                dc.b $E1 
                dc.b  $F
                dc.b   4
                dc.b $FE 
                dc.b $1E
                dc.b  $F
                dc.b   4
                dc.b $BF 
                dc.b $D1 
                dc.b  $F
                dc.b   9
                dc.b $ED 
                dc.b $EF 
                dc.b $FF
                dc.b $EF 
                dc.b $FE 
                dc.b $DE 
                dc.b $F5 
                dc.b $FF
                dc.b $DE 
                dc.b $FF
                dc.b $EE 
                dc.b  $D
                dc.b  $B
                dc.b $DD 
                dc.b  $F
                dc.b $17
                dc.b $DE 
                dc.b $6E 
                dc.b  $F
                dc.b $29 
                dc.b $FE 
                dc.b $DD 
                dc.b  $F
                dc.b $1C
                dc.b $EE 
                dc.b $DE 
                dc.b $EF 
                dc.b   9
                dc.b $EB 
                dc.b $7C 
                dc.b  $F
                dc.b $82 
                dc.b $E0 
                dc.b  $E
                dc.b $E0 
                dc.b   0
                dc.b $E0 
                dc.b  $F
                dc.b $E3 
                dc.b  $F
                dc.b $75 
                dc.b $FF
                dc.b   0
                dc.b $DD 
                dc.b $EE 
                dc.b  $E
                dc.b $DE 
                dc.b $DD 
                dc.b $ED 
                dc.b $EE 
                dc.b $FF
                dc.b $DE 
                dc.b $FF
                dc.b $DD 
                dc.b $DE 
                dc.b $DD 
                dc.b $FF
                dc.b $FD 
                dc.b $DD 
                dc.b $B4 
                dc.b $D1 
                dc.b  $F
                dc.b $2D 
                dc.b $D1 
                dc.b $DF 
                dc.b  $F
                dc.b $4E 
                dc.b $FF
                dc.b  $F
                dc.b $40 
                dc.b  $F
                dc.b $42 
                dc.b $A7 
                dc.b $FE 
                dc.b  $E
                dc.b $42 
                dc.b $FF
                dc.b   9
                dc.b $10
                dc.b  $F
                dc.b   2
                dc.b $FF
                dc.b $EE 
                dc.b $EE 
                dc.b $2F 
                dc.b  $E
                dc.b $56 
                dc.b  $F
                dc.b $64 
                dc.b $ED 
                dc.b  $F
                dc.b $B2 
                dc.b $DD 
                dc.b $FE 
                dc.b $DD 
                dc.b $DD 
                dc.b $65 
                dc.b  $F
                dc.b $97 
                dc.b $11
                dc.b $1D
                dc.b  $F
                dc.b $85 
                dc.b  $F
                dc.b   4
                dc.b $ED 
                dc.b  $E
                dc.b $40 
                dc.b $DD 
                dc.b $5F 
                dc.b  $F
                dc.b $7A 
                dc.b $DD 
                dc.b  $F
                dc.b $54 
                dc.b $EE 
                dc.b $FD 
                dc.b $DD 
                dc.b $EE 
                dc.b $EF 
                dc.b $78 
                dc.b  $E
                dc.b $98 
                dc.b $FF
                dc.b $FE 
                dc.b $EF 
                dc.b $FF
                dc.b $10
                dc.b $74 
                dc.b  $F
                dc.b $88 
                dc.b  $A
                dc.b   4
                dc.b $77 
                dc.b  $F
                dc.b $90 
                dc.b $EE 
                dc.b  $E
                dc.b $D0 
                dc.b  $F
                dc.b $8C 
                dc.b $E0 
                dc.b   0
                dc.b $1D
                dc.b $FF
                dc.b $EE 
                dc.b $D0 
                dc.b   0
                dc.b $11
                dc.b $ED 
                dc.b $E0 
                dc.b   0
                dc.b $D1 
                dc.b $BC 
                dc.b $DD 
                dc.b  $B
                dc.b   4
                dc.b $DE 
                dc.b   0
                dc.b   0
                dc.b $DD 
                dc.b  $E
                dc.b   4
                dc.b  $F
                dc.b $B3 
                dc.b $E7 
                dc.b $DD 
                dc.b $D0 
                dc.b  $E
                dc.b  $F
                dc.b   8
                dc.b $1F
                dc.b $96 
                dc.b   0
                dc.b $ED 
                dc.b $E0 
                dc.b $DF 
                dc.b $DD 
                dc.b $E0 
                dc.b  $F
                dc.b   4
                dc.b $EE 
                dc.b $ED 
                dc.b $E0 
                dc.b $DE 
                dc.b $EE 
                dc.b $FF
                dc.b $DD 
                dc.b $E0 
                dc.b $DE 
                dc.b  $D
                dc.b $DD 
                dc.b $E0 
                dc.b $DD 
                dc.b $ED 
                dc.b $BE 
                dc.b $DD 
                dc.b $1F
                dc.b $AE 
                dc.b $DE 
                dc.b   0
                dc.b $DD 
                dc.b $DD 
                dc.b $D0 
                dc.b $1F
                dc.b $B6 
                dc.b $64 
                dc.b $1D
                dc.b $5A 
                dc.b   0
                dc.b $FF
                dc.b  $F
                dc.b $48 
                dc.b  $F
                dc.b $1F
                dc.b   0
                dc.b  $F
                dc.b $17
                dc.b $1F
                dc.b $8E 
                dc.b $C2 
                dc.b $DD 
                dc.b $1D
                dc.b $1D
                dc.b $B8 
                dc.b $1E
                dc.b $A0 
                dc.b $1F
                dc.b $BD 
                dc.b  $F
                dc.b   4
                dc.b $DF 
                dc.b $1C
                dc.b $B0 
                dc.b $41 
                dc.b $19
                dc.b $F4 
                dc.b  $E
                dc.b  $B
                dc.b   4
                dc.b   0
                dc.b   1
                dc.b $2F 
                dc.b $11
                dc.b $1F
                dc.b $61 
                dc.b $1D
                dc.b $4E 
                dc.b $DF 
                dc.b $EA 
                dc.b $FF
                dc.b $FE 
                dc.b $EE 
                dc.b $1E
                dc.b $20
                dc.b $ED 
                dc.b $1F
                dc.b $1A
                dc.b $FF
                dc.b $1F
                dc.b $A2 
                dc.b $FA 
                dc.b $EF 
                dc.b $FF
                dc.b $FD 
                dc.b $EF 
                dc.b $EF 
                dc.b $1E
                dc.b $6B 
                dc.b $EE 
                dc.b $1F
                dc.b $14
                dc.b $DA 
                dc.b $DE 
                dc.b $DD 
                dc.b $1F
                dc.b $EC 
                dc.b $DD 
                dc.b $11
                dc.b  $F
                dc.b $75 
                dc.b $D1 
                dc.b  $B
                dc.b $68 
                dc.b $3F 
                dc.b $2C 
                dc.b $4C 
                dc.b $2E 
                dc.b $51 
                dc.b $FE 
                dc.b $EE 
                dc.b $1E
                dc.b $DD 
                dc.b $1E
                dc.b $E1 
                dc.b $FE 
                dc.b $DD 
                dc.b $ED 
                dc.b $D1 
                dc.b $11
                dc.b $1D
                dc.b $DE 
                dc.b $DD 
                dc.b  $F
                dc.b   4
                dc.b $FB 
                dc.b $ED 
                dc.b $DD 
                dc.b $ED 
                dc.b $FE 
                dc.b $ED 
                dc.b $1F
                dc.b $AF 
                dc.b $FE 
                dc.b $FF
                dc.b $9F 
                dc.b $FD 
                dc.b  $E
                dc.b $5C 
                dc.b $1F
                dc.b $4F 
                dc.b $DE 
                dc.b $DE 
                dc.b $FE 
                dc.b $ED 
                dc.b $DE 
                dc.b $AC 
                dc.b $1D
                dc.b  $F
                dc.b $B1 
                dc.b $1D
                dc.b  $F
                dc.b $F1 
                dc.b $1D
                dc.b $DE 
                dc.b $1E
                dc.b $9C 
                dc.b  $B
                dc.b $3D 
                dc.b $A4 
                dc.b   0
                dc.b $1C
                dc.b   4
                dc.b $ED 
                dc.b $18
                dc.b  $C
                dc.b   9
                dc.b   4
                dc.b $EE 
                dc.b $1B
                dc.b $48 
                dc.b   0
                dc.b   1
                dc.b  $C
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b  $C
                dc.b $6E 
                dc.b  $F
                dc.b $FF
                dc.b  $E
                dc.b $F2 
                dc.b   8
                dc.b   4
                dc.b $56 
                dc.b  $E
                dc.b $10
                dc.b   0
                dc.b  $A
                dc.b   4
                dc.b  $F
                dc.b   0
                dc.b   4
                dc.b   0
                dc.b $FF
                dc.b   3
                dc.b   4
                dc.b  $B
                dc.b   2
                dc.b $24 
                dc.b   0
                dc.b   1
                dc.b   3
                dc.b $71 
                dc.b  $D
                dc.b $70 
                dc.b  $F
                dc.b  $C
                dc.b   4
                dc.b $F0 
                dc.b $FF
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   8
                dc.b   1
                dc.b   0
                dc.b $73 
                dc.b $17
                dc.b $DC 
                dc.b $1D
                dc.b $E0 
                dc.b $A9 
                dc.b $F0 
                dc.b  $B
                dc.b   4
                dc.b $FF
                dc.b   6
                dc.b   4
                dc.b $F0 
                dc.b   7
                dc.b   4
                dc.b   7
                dc.b $1C
                dc.b $F0 
                dc.b $48 
                dc.b $1C
                dc.b $1A
                dc.b $F0 
                dc.b   0
                dc.b   4
                dc.b $1C
                dc.b $36 
                dc.b $FF
                dc.b   1
                dc.b   4
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b $70 
                dc.b $34 
                dc.b   0
                dc.b $FF
                dc.b $FF
                dc.b  $F
                dc.b  $B
                dc.b   4
                dc.b  $D
                dc.b $D1 
                dc.b $1B
                dc.b $AC 
                dc.b $23 
                dc.b $24 
                dc.b   8
                dc.b   0
                dc.b   1
                dc.b   8
                dc.b $40 
                dc.b $10
                dc.b $48 
                dc.b $19
                dc.b $4C 
                dc.b $F0 
                dc.b $1D
                dc.b $48 
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b $18
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
unk_7DB5:       dc.b $8B 
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b  $E
                dc.b   1
                dc.b $DD 
                dc.b  $F
                dc.b   4
                dc.b $D1 
                dc.b $D0 
                dc.b $FF
                dc.b   0
                dc.b   0
                dc.b  $D
                dc.b $1D
                dc.b $D0 
                dc.b   0
                dc.b  $D
                dc.b $11
                dc.b $A9 
                dc.b $1D
                dc.b  $F
                dc.b  $D
                dc.b $E1 
                dc.b  $F
                dc.b  $D
                dc.b $1E
                dc.b  $E
                dc.b $16
                dc.b  $F
                dc.b   4
                dc.b  $D
                dc.b $56 
                dc.b  $C
                dc.b   4
                dc.b $DD 
                dc.b  $F
                dc.b $21 
                dc.b $D1 
                dc.b  $F
                dc.b $1C
                dc.b  $D
                dc.b $11
                dc.b  $E
                dc.b $18
                dc.b $B9 
                dc.b  $D
                dc.b  $E
                dc.b $14
                dc.b $1D
                dc.b $D0 
                dc.b  $D
                dc.b  $F
                dc.b $13
                dc.b  $F
                dc.b   4
                dc.b $E1 
                dc.b $AC 
                dc.b $DD 
                dc.b  $F
                dc.b $2F 
                dc.b $11
                dc.b  $C
                dc.b $38 
                dc.b $D1 
                dc.b $EE 
                dc.b   7
                dc.b $3C 
                dc.b  $B
                dc.b $61 
                dc.b $2B 
                dc.b  $D
                dc.b $5C 
                dc.b  $B
                dc.b   4
                dc.b $ED 
                dc.b  $E
                dc.b $43 
                dc.b $D0 
                dc.b  $C
                dc.b   4
                dc.b $1E
                dc.b $1D
                dc.b $FF
                dc.b $DD 
                dc.b  $D
                dc.b $1E
                dc.b $E1 
                dc.b $D1 
                dc.b $DD 
                dc.b $1E
                dc.b $EE 
                dc.b $FF
                dc.b  $D
                dc.b $11
                dc.b $EE 
                dc.b $EE 
                dc.b  $D
                dc.b $1E
                dc.b $EE 
                dc.b $EE 
                dc.b $69 
                dc.b  $F
                dc.b  $B
                dc.b $EE 
                dc.b $1D
                dc.b  $F
                dc.b   8
                dc.b $E1 
                dc.b  $F
                dc.b   4
                dc.b  $F
                dc.b   6
                dc.b $11
                dc.b $FF
                dc.b $1E
                dc.b $EE 
                dc.b $1F
                dc.b $FF
                dc.b $1E
                dc.b $E1 
                dc.b $FF
                dc.b $FF
                dc.b $F7 
                dc.b $D1 
                dc.b $EF 
                dc.b $F1 
                dc.b $1F
                dc.b  $E
                dc.b   4
                dc.b $1E
                dc.b $EF 
                dc.b $F1 
                dc.b $FB 
                dc.b $FF
                dc.b $EE 
                dc.b $E1 
                dc.b $FF
                dc.b $F1 
                dc.b  $D
                dc.b $18
                dc.b $EE 
                dc.b $1F
                dc.b $DF 
                dc.b $11
                dc.b $D1 
                dc.b  $F
                dc.b $2A 
                dc.b $1E
                dc.b $EE 
                dc.b $E1 
                dc.b $F1 
                dc.b $11
                dc.b $5D 
                dc.b  $F
                dc.b $28 
                dc.b $11
                dc.b  $F
                dc.b $19
                dc.b $EE 
                dc.b $EE 
                dc.b $11
                dc.b  $E
                dc.b   7
                dc.b $1E
                dc.b $12
                dc.b  $E
                dc.b   4
                dc.b   0
                dc.b $E9 
                dc.b  $D
                dc.b $C4 
                dc.b $D0 
                dc.b  $C
                dc.b $CC 
                dc.b  $C
                dc.b $94 
                dc.b $D0 
                dc.b  $F
                dc.b $D3 
                dc.b $FF
                dc.b $1D
                dc.b $1E
                dc.b $1D
                dc.b  $D
                dc.b $E1 
                dc.b $EE 
                dc.b $1D
                dc.b $D1 
                dc.b $27 
                dc.b  $F
                dc.b $3C 
                dc.b  $F
                dc.b $4B 
                dc.b $EE 
                dc.b   9
                dc.b   1
                dc.b  $F
                dc.b  $E
                dc.b $EE 
                dc.b $FF
                dc.b $F1 
                dc.b $3D 
                dc.b  $F
                dc.b   4
                dc.b  $F
                dc.b $4F 
                dc.b $F1 
                dc.b $1F
                dc.b $FE 
                dc.b $E1 
                dc.b  $F
                dc.b   4
                dc.b $ED 
                dc.b $91 
                dc.b $FF
                dc.b  $F
                dc.b   4
                dc.b  $D
                dc.b $92 
                dc.b $F1 
                dc.b  $F
                dc.b $75 
                dc.b  $F
                dc.b $1C
                dc.b  $F
                dc.b $7D 
                dc.b $EE 
                dc.b $84 
                dc.b $1F
                dc.b  $C
                dc.b $28 
                dc.b  $D
                dc.b $76 
                dc.b  $E
                dc.b $7E 
                dc.b  $B
                dc.b $7F 
                dc.b $EE 
                dc.b   0
                dc.b $80 
                dc.b  $B
                dc.b $88 
                dc.b $6B 
                dc.b $1E
                dc.b $52 
                dc.b $DE 
                dc.b $D0 
                dc.b $1D
                dc.b  $B
                dc.b $DE 
                dc.b $1F
                dc.b $6E 
                dc.b $E1 
                dc.b $D0 
                dc.b $5B 
                dc.b  $C
                dc.b   4
                dc.b $1D
                dc.b $1F
                dc.b $89 
                dc.b $1D
                dc.b $DD 
                dc.b  $E
                dc.b $90 
                dc.b $D0 
                dc.b   0
                dc.b $B1 
                dc.b $E1 
                dc.b  $F
                dc.b $15
                dc.b $EE 
                dc.b $1D
                dc.b  $A
                dc.b $18
                dc.b $1D
                dc.b $42 
                dc.b   9
                dc.b $3D 
                dc.b $DD 
                dc.b $F4 
                dc.b $DD 
                dc.b $10
                dc.b   0
                dc.b $11
                dc.b $1F
                dc.b $3F 
                dc.b $1E
                dc.b   3
                dc.b $20
                dc.b  $C
                dc.b   4
                dc.b $7A 
                dc.b  $E
                dc.b $44 
                dc.b $D0 
                dc.b   0
                dc.b $1D
                dc.b $1D
                dc.b  $D
                dc.b $67 
                dc.b $D1 
                dc.b  $F
                dc.b $1D
                dc.b $2F 
                dc.b $1F
                dc.b $A0 
                dc.b $1F
                dc.b $A8 
                dc.b $DE 
                dc.b $1F
                dc.b $DC 
                dc.b $D1 
                dc.b $E1 
                dc.b $10
                dc.b   0
                dc.b $FB 
                dc.b  $D
                dc.b $EE 
                dc.b $D0 
                dc.b  $D
                dc.b $11
                dc.b  $F
                dc.b $61 
                dc.b $DD 
                dc.b $11
                dc.b $43 
                dc.b $1F
                dc.b $A8 
                dc.b $DD 
                dc.b   4
                dc.b $5B 
                dc.b $13
                dc.b $2E 
                dc.b $1F
                dc.b   2
                dc.b $1F
                dc.b $68 
                dc.b $EE 
                dc.b $EF 
                dc.b $A6 
                dc.b $1E
                dc.b  $F
                dc.b   8
                dc.b $D1 
                dc.b  $F
                dc.b $D1 
                dc.b  $E
                dc.b   4
                dc.b $DD 
                dc.b $1E
                dc.b  $F
                dc.b $38 
                dc.b $6F 
                dc.b $1F
                dc.b $2A 
                dc.b $D0 
                dc.b $DD 
                dc.b  $F
                dc.b $EA 
                dc.b $DE 
                dc.b $DD 
                dc.b $DD 
                dc.b $DD 
                dc.b $B4 
                dc.b $D0 
                dc.b $2A 
                dc.b $42 
                dc.b $E0 
                dc.b  $D
                dc.b   2
                dc.b $E7 
                dc.b $1F
                dc.b $1F
                dc.b $D4 
                dc.b $1F
                dc.b $23 
                dc.b $2F 
                dc.b $1F
                dc.b $A6 
                dc.b $1D
                dc.b $14
                dc.b $1D
                dc.b  $E
                dc.b   4
                dc.b $EE 
                dc.b $11
                dc.b $E1 
                dc.b $D0 
                dc.b $FE 
                dc.b $EE 
                dc.b $E1 
                dc.b $1D
                dc.b   0
                dc.b $11
                dc.b $1D
                dc.b $D0 
                dc.b  $F
                dc.b $3D 
                dc.b $BF 
                dc.b $DD 
                dc.b $1F
                dc.b $AE 
                dc.b $D1 
                dc.b $11
                dc.b $EE 
                dc.b $ED 
                dc.b  $D
                dc.b $DD 
                dc.b $8B 
                dc.b $1E
                dc.b $1E
                dc.b $9A 
                dc.b $2E 
                dc.b $1B
                dc.b   7
                dc.b $8E 
                dc.b $11
                dc.b   6
                dc.b $FC 
                dc.b  $D
                dc.b $DD 
                dc.b $2A 
                dc.b $1C
                dc.b $2D 
                dc.b $1F
                dc.b $BF 
                dc.b $DD 
                dc.b $1B
                dc.b $34 
                dc.b $ED 
                dc.b  $B
                dc.b $24 
                dc.b  $D
                dc.b   0
                dc.b $BB 
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b $1B
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b $17
                dc.b $3A 
                dc.b  $F
                dc.b $FF
                dc.b  $F
                dc.b   3
                dc.b $FF
                dc.b   0
                dc.b $AD 
                dc.b $FF
                dc.b   3
                dc.b   4
                dc.b  $F
                dc.b   0
                dc.b   4
                dc.b   0
                dc.b   0
                dc.b  $E
                dc.b   4
                dc.b  $F
                dc.b   2
                dc.b   8
                dc.b   4
                dc.b   6
                dc.b $30 
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b $1D
                dc.b $FC 
                dc.b $FF
                dc.b  $A
                dc.b   4
                dc.b $9A 
                dc.b $F0 
                dc.b   3
                dc.b   4
                dc.b  $C
                dc.b $97 
                dc.b $F0 
                dc.b $FF
                dc.b   0
                dc.b   1
                dc.b $F0 
                dc.b   7
                dc.b $AF 
                dc.b $80 
                dc.b $F0 
                dc.b   0
                dc.b $7F 
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   5
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b $10
                dc.b   5
                dc.b   4
                dc.b $E1 
                dc.b  $F
                dc.b $19
                dc.b $88 
                dc.b $F0 
                dc.b $14
                dc.b   0
                dc.b $2C 
                dc.b   0
                dc.b   1
                dc.b $1B
                dc.b $87 
                dc.b $F0 
                dc.b  $B
                dc.b   4
                dc.b   0
                dc.b   7
                dc.b   4
                dc.b  $A
                dc.b $14
                dc.b   0
                dc.b $1A
                dc.b $C3 
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   4
                dc.b   1
                dc.b   0
                dc.b   0
unk_7FF0:       dc.b $8A 
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b  $C
                dc.b   1
                dc.b  $F
                dc.b  $B
                dc.b   4
                dc.b $EE 
                dc.b  $F
                dc.b   4
                dc.b $81 
                dc.b $FE 
                dc.b   0
                dc.b   4
                dc.b   9
                dc.b $20
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   8
                dc.b $67 
                dc.b $FF
                dc.b $FF
                dc.b   0
                dc.b   0
                dc.b $FD 
                dc.b $DD 
                dc.b   0
                dc.b $FF
                dc.b $DD 
                dc.b $DD 
                dc.b $DE 
                dc.b  $F
                dc.b $DE 
                dc.b  $F
                dc.b   4
                dc.b $ED 
                dc.b $DD 
                dc.b $DD 
                dc.b $FE 
                dc.b  $F
                dc.b   4
                dc.b $BD 
                dc.b $ED 
                dc.b  $E
                dc.b   4
                dc.b $EE 
                dc.b $DD 
                dc.b $DD 
                dc.b $DE 
                dc.b  $D
                dc.b   4
                dc.b $ED 
                dc.b $7F 
                dc.b  $F
                dc.b   4
                dc.b $EE 
                dc.b $DD 
                dc.b $EE 
                dc.b $EE 
                dc.b $EE 
                dc.b $ED 
                dc.b $EE 
                dc.b $A7 
                dc.b $FE 
                dc.b  $F
                dc.b   9
                dc.b $EF 
                dc.b  $F
                dc.b   9
                dc.b  $D
                dc.b   4
                dc.b $FE 
                dc.b $EE 
                dc.b $FE 
                dc.b $FF
                dc.b $DE 
                dc.b $FF
                dc.b $FF
                dc.b  $F
                dc.b $EE 
                dc.b $FF
                dc.b $EF 
                dc.b   0
                dc.b $FF
                dc.b $FD 
                dc.b $ED 
                dc.b $EE 
                dc.b   0
                dc.b $FD 
                dc.b $EE 
                dc.b $FE 
                dc.b   0
                dc.b $FD 
                dc.b $FD 
                dc.b $EF 
                dc.b $EE 
                dc.b   0
                dc.b  $F
                dc.b $DE 
                dc.b  $F
                dc.b $B4 
                dc.b $FD 
                dc.b $A8 
                dc.b $EF 
                dc.b  $F
                dc.b $5C 
                dc.b $DE 
                dc.b  $F
                dc.b $AC 
                dc.b $FD 
                dc.b   0
                dc.b $A8 
                dc.b   8
                dc.b $7E 
                dc.b  $F
                dc.b $7D 
                dc.b $DD 
                dc.b   0
                dc.b $DD 
                dc.b  $F
                dc.b   5
                dc.b $ED 
                dc.b $DD 
                dc.b $F0 
                dc.b  $F
                dc.b   4
                dc.b $DF 
                dc.b $FF
                dc.b   0
                dc.b $DE 
                dc.b $DD 
                dc.b $ED 
                dc.b $F0 
                dc.b $DD 
                dc.b $ED 
                dc.b $DE 
                dc.b $9F 
                dc.b $DF 
                dc.b  $F
                dc.b $75 
                dc.b  $F
                dc.b   4
                dc.b $DE 
                dc.b $EF 
                dc.b $DD 
                dc.b $DD 
                dc.b $EE 
                dc.b $EF 
                dc.b $EF 
                dc.b $FD 
                dc.b $DD 
                dc.b  $E
                dc.b   8
                dc.b $ED 
                dc.b $EF 
                dc.b $DD 
                dc.b $DE 
                dc.b $7F 
                dc.b  $F
                dc.b   4
                dc.b $EF 
                dc.b $FE 
                dc.b $DF 
                dc.b $ED 
                dc.b $FF
                dc.b $FE 
                dc.b $EF 
                dc.b $FF
                dc.b $DF 
                dc.b $FE 
                dc.b $FF
                dc.b $F0 
                dc.b $FE 
                dc.b $DE 
                dc.b $EF 
                dc.b $F0 
                dc.b $F7 
                dc.b $EE 
                dc.b $DE 
                dc.b $EF 
                dc.b   0
                dc.b  $F
                dc.b $93 
                dc.b $F0 
                dc.b $FF
                dc.b $EF 
                dc.b $FE 
                dc.b $FE 
                dc.b $F0 
                dc.b $FF
                dc.b $FF
                dc.b $FE 
                dc.b $F0 
                dc.b $EF 
                dc.b  $F
                dc.b $8B 
                dc.b $FF
                dc.b $EF 
                dc.b $FE 
                dc.b $EF 
                dc.b   0
                dc.b $FF
                dc.b $EF 
                dc.b $F0 
                dc.b   0
                dc.b $40 
                dc.b  $F
                dc.b   7
                dc.b   0
                dc.b  $F
                dc.b $57 
                dc.b  $D
                dc.b $64 
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b $28 
                dc.b  $A
                dc.b $1F
                dc.b $38 
                dc.b  $D
                dc.b   4
                dc.b $DF 
                dc.b $7F 
                dc.b  $B
                dc.b   4
                dc.b $DE 
                dc.b $F0 
                dc.b $FE 
                dc.b $ED 
                dc.b $DE 
                dc.b $F0 
                dc.b  $F
                dc.b $98 
                dc.b $EE 
                dc.b $1F
                dc.b $4D 
                dc.b $1E
                dc.b $51 
                dc.b  $F
                dc.b $F0 
                dc.b   0
                dc.b $39 
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   3
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b  $C
                dc.b $AB 
                dc.b  $F
                dc.b $85 
                dc.b  $F
                dc.b $DF 
                dc.b $53 
                dc.b $2F 
                dc.b $60 
                dc.b $DD 
                dc.b  $F
                dc.b   8
                dc.b $ED 
                dc.b  $F
                dc.b $99 
                dc.b  $E
                dc.b   8
                dc.b $EE 
                dc.b   0
                dc.b   0
                dc.b $10
                dc.b $EB 
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b  $C
                dc.b $85 
                dc.b   5
                dc.b   4
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b $30 
                dc.b $13
                dc.b $30 
                dc.b $34 
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   5
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b $CC 
                dc.b $47 
                dc.b $90 
                dc.b $FD 
                dc.b $1B
                dc.b $70 
                dc.b $DE 
                dc.b $20
                dc.b $1C
                dc.b $74 
                dc.b  $D
                dc.b   4
                dc.b $ED 
                dc.b $1C
                dc.b $84 
                dc.b $49 
                dc.b $94 
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b $46 
                dc.b   0
                dc.b   1
                dc.b  $F
                dc.b $46 
                dc.b $E4 
                dc.b $1E
                dc.b $64 
                dc.b $1F
                dc.b $F1 
                dc.b   0
                dc.b $DE 
                dc.b $1F
                dc.b $FA 
                dc.b $90 
                dc.b $EE 
                dc.b   7
                dc.b   4
                dc.b  $E
                dc.b $10
                dc.b $EF 
                dc.b $10
                dc.b $84 
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b $28 
                dc.b $1A
                dc.b $81 
                dc.b  $F
                dc.b $58 
                dc.b $ED 
                dc.b $4E 
                dc.b $94 
                dc.b $DF 
                dc.b  $C
                dc.b $6C 
                dc.b $20
                dc.b $55 
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b  $E
                dc.b   1
                dc.b   0
                dc.b   0
unk_81A0:       dc.b $89 
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b  $C
                dc.b   1
                dc.b  $D
                dc.b   0
                dc.b   4
                dc.b   5
                dc.b   4
                dc.b $DE 
                dc.b $6E 
                dc.b   4
                dc.b   4
                dc.b  $D
                dc.b $1E
                dc.b  $F
                dc.b   4
                dc.b $11
                dc.b   0
                dc.b  $D
                dc.b  $F
                dc.b   8
                dc.b $FF
                dc.b $DE 
                dc.b $DD 
                dc.b $11
                dc.b   0
                dc.b $D1 
                dc.b $ED 
                dc.b $11
                dc.b   0
                dc.b $FB 
                dc.b $DE 
                dc.b $ED 
                dc.b $11
                dc.b  $D
                dc.b $E1 
                dc.b  $E
                dc.b   4
                dc.b $1E
                dc.b $D1 
                dc.b $4F 
                dc.b  $B
                dc.b   4
                dc.b $EE 
                dc.b   0
                dc.b $67 
                dc.b  $F
                dc.b $4A 
                dc.b $DD 
                dc.b $D0 
                dc.b   0
                dc.b  $D
                dc.b $DF 
                dc.b $EE 
                dc.b $ED 
                dc.b  $F
                dc.b   4
                dc.b $1E
                dc.b $D0 
                dc.b $DE 
                dc.b $1E
                dc.b $11
                dc.b $BF 
                dc.b $ED 
                dc.b  $F
                dc.b   4
                dc.b $1E
                dc.b $E1 
                dc.b $1E
                dc.b $11
                dc.b $11
                dc.b $E1 
                dc.b $A4 
                dc.b $EE 
                dc.b  $F
                dc.b   4
                dc.b $E1 
                dc.b   7
                dc.b   4
                dc.b  $E
                dc.b $10
                dc.b $1E
                dc.b  $C
                dc.b   4
                dc.b  $F
                dc.b $22 
                dc.b $6B 
                dc.b  $B
                dc.b   4
                dc.b $1D
                dc.b $E1 
                dc.b  $F
                dc.b $2C 
                dc.b $DE 
                dc.b  $F
                dc.b   4
                dc.b $1D
                dc.b $EE 
                dc.b $FF
                dc.b $1E
                dc.b $11
                dc.b $DD 
                dc.b $EE 
                dc.b $1E
                dc.b $DD 
                dc.b $DD 
                dc.b $EE 
                dc.b $FF
                dc.b $EE 
                dc.b $DD 
                dc.b $DE 
                dc.b $1E
                dc.b $1E
                dc.b $ED 
                dc.b $EE 
                dc.b $11
                dc.b $D9 
                dc.b $EE 
                dc.b $EE 
                dc.b  $F
                dc.b   4
                dc.b $1E
                dc.b $EE 
                dc.b  $B
                dc.b $3A 
                dc.b  $E
                dc.b $35 
                dc.b $11
                dc.b $1F
                dc.b   0
                dc.b $7D 
                dc.b   5
                dc.b $F3 
                dc.b  $F
                dc.b $89 
                dc.b $DE 
                dc.b $ED 
                dc.b $D0 
                dc.b  $E
                dc.b $DE 
                dc.b $D6 
                dc.b $1E
                dc.b $ED 
                dc.b  $F
                dc.b $4A 
                dc.b $1E
                dc.b  $F
                dc.b   4
                dc.b $11
                dc.b $ED 
                dc.b  $F
                dc.b $56 
                dc.b $DF 
                dc.b $1E
                dc.b $DE 
                dc.b  $C
                dc.b   4
                dc.b $EE 
                dc.b $DE 
                dc.b $E1 
                dc.b $11
                dc.b $EE 
                dc.b $1E
                dc.b  $F
                dc.b $63 
                dc.b  $E
                dc.b   4
                dc.b  $F
                dc.b $21 
                dc.b $11
                dc.b $ED 
                dc.b $DD 
                dc.b $ED 
                dc.b  $F
                dc.b $AE 
                dc.b $BF 
                dc.b $DD 
                dc.b  $E
                dc.b   4
                dc.b $E1 
                dc.b $ED 
                dc.b $E1 
                dc.b $DD 
                dc.b $DE 
                dc.b $EE 
                dc.b $F6 
                dc.b $11
                dc.b $DE 
                dc.b $ED 
                dc.b $DE 
                dc.b  $E
                dc.b $8C 
                dc.b $D1 
                dc.b $1E
                dc.b  $D
                dc.b   4
                dc.b $DB 
                dc.b $11
                dc.b $D1 
                dc.b  $F
                dc.b $C6 
                dc.b $ED 
                dc.b $1E
                dc.b  $D
                dc.b $35 
                dc.b $11
                dc.b $1E
                dc.b $4C 
                dc.b  $F
                dc.b $8D 
                dc.b $11
                dc.b $10
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b $D0 
                dc.b   0
                dc.b   4
                dc.b   0
                dc.b   4
                dc.b $56 
                dc.b $1F
                dc.b $75 
                dc.b $ED 
                dc.b  $B
                dc.b   4
                dc.b $EE 
                dc.b  $F
                dc.b  $D
                dc.b $ED 
                dc.b $DD 
                dc.b  $F
                dc.b   8
                dc.b $53 
                dc.b  $F
                dc.b  $D
                dc.b $E1 
                dc.b  $B
                dc.b   4
                dc.b $11
                dc.b  $B
                dc.b   4
                dc.b   4
                dc.b $10
                dc.b  $D
                dc.b   0
                dc.b $F2 
                dc.b  $D
                dc.b $E1 
                dc.b $11
                dc.b $1E
                dc.b   9
                dc.b   4
                dc.b $1F
                dc.b $11
                dc.b  $E
                dc.b  $E
                dc.b   4
                dc.b $76 
                dc.b  $C
                dc.b $14
                dc.b $EE 
                dc.b   0
                dc.b $DE 
                dc.b  $F
                dc.b   4
                dc.b  $D
                dc.b $EE 
                dc.b $1F
                dc.b $CC 
                dc.b $C0 
                dc.b $DD 
                dc.b  $D
                dc.b   0
                dc.b $96 
                dc.b  $C
                dc.b $9C 
                dc.b $1E
                dc.b $44 
                dc.b  $E
                dc.b   4
                dc.b  $F
                dc.b $2F 
                dc.b $1F
                dc.b $5B 
                dc.b $37 
                dc.b  $F
                dc.b $ED 
                dc.b  $E
                dc.b   4
                dc.b $ED 
                dc.b $DE 
                dc.b $1F
                dc.b $16
                dc.b $DD 
                dc.b $DE 
                dc.b $DD 
                dc.b $D7 
                dc.b $ED 
                dc.b $DD 
                dc.b $1F
                dc.b $7D 
                dc.b $DD 
                dc.b $1F
                dc.b   8
                dc.b $ED 
                dc.b $DD 
                dc.b  $D
                dc.b $F6 
                dc.b $DE 
                dc.b $DD 
                dc.b $DD 
                dc.b   0
                dc.b  $F
                dc.b  $F
                dc.b   0
                dc.b  $D
                dc.b  $F
                dc.b   4
                dc.b $25 
                dc.b   7
                dc.b $40 
                dc.b $1F
                dc.b $11
                dc.b $EE 
                dc.b $1B
                dc.b $C3 
                dc.b $1E
                dc.b $95 
                dc.b $11
                dc.b $1D
                dc.b $9D 
                dc.b $E1 
                dc.b $CF 
                dc.b $11
                dc.b $E1 
                dc.b $1F
                dc.b $35 
                dc.b $1F
                dc.b $5E 
                dc.b $EE 
                dc.b $DE 
                dc.b $DD 
                dc.b $EE 
                dc.b $6D 
                dc.b  $E
                dc.b $45 
                dc.b $DD 
                dc.b $ED 
                dc.b $1F
                dc.b $BB 
                dc.b $EE 
                dc.b $DE 
                dc.b  $D
                dc.b  $B
                dc.b $D0 
                dc.b $76 
                dc.b   4
                dc.b $80 
                dc.b $1D
                dc.b $D1 
                dc.b $D0 
                dc.b  $C
                dc.b   4
                dc.b $11
                dc.b $D0 
                dc.b  $F
                dc.b $3F 
                dc.b $9D 
                dc.b $D0 
                dc.b  $F
                dc.b $4A 
                dc.b  $F
                dc.b   4
                dc.b $ED 
                dc.b $D0 
                dc.b $1E
                dc.b $1F
                dc.b   5
                dc.b $1E
                dc.b $54 
                dc.b  $F
                dc.b $6A 
                dc.b $ED 
                dc.b $1F
                dc.b  $C
                dc.b $DE 
                dc.b  $F
                dc.b   4
                dc.b $DD 
                dc.b   0
                dc.b $BB 
                dc.b   0
                dc.b   1
                dc.b   3
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b $33 
                dc.b $47 
                dc.b  $E
                dc.b $D0 
                dc.b   6
                dc.b $18
                dc.b $9A 
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b $44 
                dc.b  $D
                dc.b $D6 
                dc.b  $D
                dc.b $E1 
                dc.b  $E
                dc.b   4
                dc.b $A4 
                dc.b $ED 
                dc.b  $C
                dc.b   4
                dc.b $11
                dc.b $3F 
                dc.b $68 
                dc.b   5
                dc.b   4
                dc.b $11
                dc.b  $A
                dc.b   4
                dc.b $1F
                dc.b $DC 
                dc.b $C4 
                dc.b $11
                dc.b  $D
                dc.b $1F
                dc.b $55 
                dc.b $3F 
                dc.b $78 
                dc.b  $C
                dc.b   4
                dc.b $EE 
                dc.b  $E
                dc.b   4
                dc.b $2F 
                dc.b $BE 
                dc.b   2
                dc.b $2F 
                dc.b $CA 
                dc.b   0
                dc.b $5C 
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b $8F 
                dc.b  $C
                dc.b $8F 
                dc.b $E0 
                dc.b  $D
                dc.b   4
                dc.b $A8 
                dc.b $DE 
                dc.b $2F 
                dc.b $69 
                dc.b $EE 
                dc.b  $B
                dc.b   4
                dc.b $1E
                dc.b  $B
                dc.b   4
                dc.b $1F
                dc.b $94 
                dc.b   9
                dc.b   4
                dc.b $28 
                dc.b $3F 
                dc.b $90 
                dc.b  $F
                dc.b $7F 
                dc.b $ED 
                dc.b  $E
                dc.b   4
                dc.b  $E
                dc.b   0
                dc.b $4D 
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   3
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b $30 
                dc.b $58 
                dc.b $4E 
                dc.b $6D 
                dc.b $1B
                dc.b $40 
                dc.b  $E
                dc.b $11
                dc.b $AB 
                dc.b $D0 
                dc.b  $F
                dc.b   4
                dc.b $E0 
                dc.b $4F 
                dc.b $94 
                dc.b $ED 
                dc.b  $E
                dc.b   4
                dc.b   0
                dc.b $DE 
                dc.b $C2 
                dc.b $EE 
                dc.b $1D
                dc.b $3E 
                dc.b $FC 
                dc.b $4D 
                dc.b   4
                dc.b   0
                dc.b   1
                dc.b $49 
                dc.b $AB 
                dc.b $DE 
                dc.b $3F 
                dc.b $CE 
                dc.b $68 
                dc.b $1F
                dc.b $48 
                dc.b $11
                dc.b $DE 
                dc.b $3F 
                dc.b   2
                dc.b $D1 
                dc.b $4D 
                dc.b $5D 
                dc.b $3E 
                dc.b $D8 
                dc.b $2F 
                dc.b $BC 
                dc.b $FA 
                dc.b $EE 
                dc.b $EE 
                dc.b $ED 
                dc.b $DE 
                dc.b $ED 
                dc.b $2F 
                dc.b $F8 
                dc.b $ED 
                dc.b $2B 
                dc.b $F8 
                dc.b $A5 
                dc.b   0
                dc.b  $E
                dc.b   4
                dc.b  $D
                dc.b $21 
                dc.b $87 
                dc.b $1F
                dc.b $83 
                dc.b $D1 
                dc.b $3F 
                dc.b   3
                dc.b $D1 
                dc.b $1F
                dc.b $3F 
                dc.b $40 
                dc.b  $D
                dc.b   8
                dc.b  $D
                dc.b   4
                dc.b $1E
                dc.b $1E
                dc.b $D1 
                dc.b $EE 
                dc.b $E1 
                dc.b $3F 
                dc.b  $C
                dc.b   4
                dc.b $3F 
                dc.b   0
                dc.b $11
                dc.b $DE 
                dc.b $EE 
                dc.b $D1 
                dc.b $1E
                dc.b $DE 
                dc.b $8F 
                dc.b $DD 
                dc.b $2F 
                dc.b $FE 
                dc.b   0
                dc.b $8C 
                dc.b $41 
                dc.b   8
                dc.b $1D
                dc.b  $E
                dc.b $E0 
                dc.b   0
                dc.b $F7 
                dc.b $10
                dc.b $E1 
                dc.b $1E
                dc.b   0
                dc.b  $F
                dc.b $95 
                dc.b   0
                dc.b $11
                dc.b $D0 
                dc.b $F0 
                dc.b $E0 
                dc.b   0
                dc.b $1E
                dc.b $D0 
                dc.b $4C 
                dc.b $18
                dc.b   0
                dc.b $C5 
                dc.b  $C
                dc.b   1
                dc.b   0
                dc.b   0
unk_8420:       dc.b $80 
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b $7F 
                dc.b   3
                dc.b   1
                dc.b $11
                dc.b $10
                dc.b   0
                dc.b $11
                dc.b $ED 
                dc.b $D1 
                dc.b   1
                dc.b $FF
                dc.b $DD 
                dc.b $DE 
                dc.b $DE 
                dc.b $ED 
                dc.b $ED 
                dc.b $ED 
                dc.b $EF 
                dc.b $EE 
                dc.b $FF
                dc.b $DE 
                dc.b $DE 
                dc.b $F0 
                dc.b $FE 
                dc.b $EE 
                dc.b $FF
                dc.b   0
                dc.b  $F
                dc.b $9F 
                dc.b $FF
                dc.b   0
                dc.b $2A 
                dc.b   4
                dc.b $38 
                dc.b   1
                dc.b $D0 
                dc.b   0
                dc.b   0
                dc.b $1D
                dc.b $FF
                dc.b   0
                dc.b   0
                dc.b  $D
                dc.b $E0 
                dc.b   0
                dc.b   0
                dc.b $EF 
                dc.b   0
                dc.b $FC 
                dc.b   0
                dc.b  $E
                dc.b $F0 
                dc.b   0
                dc.b   0
                dc.b  $F
                dc.b   0
                dc.b $25 
                dc.b   0
                dc.b   1
                dc.b $1B
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   7
                dc.b $66 
                dc.b  $E
                dc.b $10
                dc.b  $F
                dc.b $A3 
                dc.b $D1 
                dc.b   0
                dc.b $70 
                dc.b  $C
                dc.b $68 
                dc.b   0
                dc.b $FE 
                dc.b   0
                dc.b   0
                dc.b $66 
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b $11
                dc.b $77 
                dc.b $A6 
                dc.b  $D
                dc.b $1F
                dc.b $6D 
                dc.b $DE 
                dc.b $1F
                dc.b $DD 
                dc.b $1F
                dc.b $DA 
                dc.b $DE 
                dc.b $F0 
                dc.b  $D
                dc.b   7
                dc.b $CF 
                dc.b $EE 
                dc.b $F0 
                dc.b $1D
                dc.b $E8 
                dc.b $24 
                dc.b $3C 
                dc.b $1D
                dc.b $1D
                dc.b   0
                dc.b $1D
                dc.b $FF
                dc.b $DD 
                dc.b $DD 
                dc.b   0
                dc.b $DD 
                dc.b $DE 
                dc.b $EE 
                dc.b  $D
                dc.b $DE 
                dc.b $FF
                dc.b $ED 
                dc.b $11
                dc.b  $E
                dc.b $DE 
                dc.b $D1 
                dc.b $ED 
                dc.b  $E
                dc.b $DD 
                dc.b $FF
                dc.b $ED 
                dc.b $DE 
                dc.b   0
                dc.b $ED 
                dc.b $DE 
                dc.b $1D
                dc.b   0
                dc.b $DE 
                dc.b $FD 
                dc.b $DD 
                dc.b $EE 
                dc.b   0
                dc.b  $D
                dc.b $ED 
                dc.b $DD 
                dc.b $1F
                dc.b $B4 
                dc.b $EE 
                dc.b   6
                dc.b $1F
                dc.b $B4 
                dc.b $10
                dc.b $B9 
                dc.b   8
                dc.b $44 
                dc.b $2F 
                dc.b $4B 
                dc.b  $F
                dc.b $6B 
                dc.b $1D
                dc.b $E0 
                dc.b  $A
                dc.b   7
                dc.b $62 
                dc.b  $E
                dc.b $79 
                dc.b   0
                dc.b $F0 
                dc.b   0
                dc.b $29 
                dc.b $21 
                dc.b $1C
                dc.b $2E 
                dc.b $1B
                dc.b $DD 
                dc.b $2F 
                dc.b $86 
                dc.b $BF 
                dc.b $ED 
                dc.b $2F 
                dc.b $20
                dc.b $DE 
                dc.b $ED 
                dc.b $D0 
                dc.b   0
                dc.b $DD 
                dc.b $1E
                dc.b $FF
                dc.b $D1 
                dc.b   0
                dc.b $DD 
                dc.b $DD 
                dc.b $ED 
                dc.b   0
                dc.b $EE 
                dc.b $D1 
                dc.b $FF
                dc.b $ED 
                dc.b $D0 
                dc.b $DD 
                dc.b $1E
                dc.b $DD 
                dc.b $E0 
                dc.b $EE 
                dc.b $ED 
                dc.b $EB 
                dc.b $DE 
                dc.b $F0 
                dc.b $DD 
                dc.b  $F
                dc.b $87 
                dc.b $EE 
                dc.b $2F 
                dc.b $D0 
                dc.b $EF 
                dc.b $EF 
                dc.b   0
                dc.b   0
                dc.b $40 
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b $1F
                dc.b   0
                dc.b   1
                dc.b $36 
                dc.b $95 
                dc.b $1F
                dc.b  $A
                dc.b $DD 
                dc.b   0
                dc.b  $D
                dc.b $DD 
                dc.b $E1 
                dc.b $5F 
                dc.b $1F
                dc.b $63 
                dc.b $ED 
                dc.b $1D
                dc.b $60 
                dc.b $D1 
                dc.b $DD 
                dc.b $EE 
                dc.b  $D
                dc.b $DD 
                dc.b $FD 
                dc.b $DE 
                dc.b $E1 
                dc.b  $D
                dc.b $1D
                dc.b $EE 
                dc.b $1D
                dc.b  $F
                dc.b   8
                dc.b $DD 
                dc.b $FF
                dc.b  $E
                dc.b $D1 
                dc.b $EE 
                dc.b $D1 
                dc.b  $E
                dc.b $ED 
                dc.b $DE 
                dc.b $DD 
                dc.b $D6 
                dc.b   0
                dc.b $ED 
                dc.b  $F
                dc.b $20
                dc.b $FE 
                dc.b $1F
                dc.b $68 
                dc.b  $F
                dc.b $EE 
                dc.b $1F
                dc.b $6C 
                dc.b $A1 
                dc.b $FF
                dc.b $1F
                dc.b $6C 
                dc.b   0
                dc.b $30 
                dc.b $BA 
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b $17
                dc.b $D6 
                dc.b $D1 
                dc.b $6F 
                dc.b $1F
                dc.b $50 
                dc.b $DD 
                dc.b $DD 
                dc.b $1F
                dc.b $4C 
                dc.b $1D
                dc.b $DD 
                dc.b $D0 
                dc.b $DD 
                dc.b $FF
                dc.b $DD 
                dc.b $11
                dc.b $D1 
                dc.b $ED 
                dc.b $DD 
                dc.b $EE 
                dc.b $DD 
                dc.b $EE 
                dc.b $FF
                dc.b $EE 
                dc.b $DE 
                dc.b $E1 
                dc.b $11
                dc.b $EE 
                dc.b $DD 
                dc.b $ED 
                dc.b $DD 
                dc.b $FF
                dc.b $1E
                dc.b $ED 
                dc.b $DD 
                dc.b $D1 
                dc.b $DE 
                dc.b $DD 
                dc.b $1D
                dc.b $D1 
                dc.b $7C 
                dc.b  $F
                dc.b $16
                dc.b $1D
                dc.b $DD 
                dc.b $ED 
                dc.b $1E
                dc.b $D1 
                dc.b $1F
                dc.b $F0 
                dc.b  $F
                dc.b $11
                dc.b $FA 
                dc.b $EF 
                dc.b $1D
                dc.b $DD 
                dc.b $EE 
                dc.b $F0 
                dc.b $1E
                dc.b $68 
                dc.b $FF
                dc.b   0
                dc.b $7E 
                dc.b $19
                dc.b   0
                dc.b   1
                dc.b $31 
                dc.b $E5 
                dc.b $3E 
                dc.b $E1 
                dc.b $ED 
                dc.b $10
                dc.b  $A
                dc.b   9
                dc.b   0
                dc.b $21 
                dc.b   0
                dc.b $D0 
                dc.b   0
                dc.b $D0 
                dc.b   3
                dc.b   4
                dc.b $E0 
                dc.b  $B
                dc.b   4
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b $2D 
                dc.b   0
                dc.b   1
                dc.b  $A
                dc.b $FC 
                dc.b $E0 
                dc.b $2C 
                dc.b $F9 
                dc.b   0
                dc.b $FE 
                dc.b $2F 
                dc.b $88 
                dc.b  $F
                dc.b $80 
                dc.b $EE 
                dc.b $40 
                dc.b $73 
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   4
                dc.b   1
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

sub_85F2:
                
                move.b  d0,(byte_FF1152).l
                lea     sub_8620(pc), a0
loc_85FC:
                
                move.b  4(a0),d2
                cmpi.b  #$FF,d2
                beq.s   loc_8614
                andi.b  #$7F,d2 
                cmp.b   d0,d2
                beq.s   loc_8612
                addq.l  #6,a0
                bra.s   loc_85FC
loc_8612:
                
                jmp     (a0)
loc_8614:
                
                move.w  #$16,d0
                jsr     sub_22E90
                rts

    ; End of function sub_85F2


; =============== S U B R O U T I N E =======================================

sub_8620:
                
                bra.w   sub_86DA

    ; End of function sub_8620

                dc.b 0
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_8626:
                
                bra.w   sub_8718

    ; End of function sub_8626

                dc.b $12
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_862C:
                
                bra.w   loc_873A

    ; End of function sub_862C

                dc.b $13
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_8632:
                
                bra.w   loc_8772

    ; End of function sub_8632

                dc.b $14
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_8638:
                
                bra.w   loc_8782

    ; End of function sub_8638

                dc.b $15
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_863E:
                
                bra.w   loc_87A6

    ; End of function sub_863E

                dc.b $18
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_8644:
                
                bra.w   loc_87AA

    ; End of function sub_8644

                dc.b $1A
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_864A:
                
                bra.w   sub_8832

    ; End of function sub_864A

                dc.b $1B
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_8650:
                
                bra.w   loc_884E

    ; End of function sub_8650

                dc.b $1C
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_8656:
                
                bra.w   loc_8886

    ; End of function sub_8656

                dc.b $20
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_865C:
                
                bra.w   loc_88C6

    ; End of function sub_865C

                dc.b $24 
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_8662:
                
                bra.w   loc_88CE

    ; End of function sub_8662

                dc.b $27 
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_8668:
                
                bra.w   loc_88D2

    ; End of function sub_8668

                dc.b $29 
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_866E:
                
                bra.w   loc_892E

    ; End of function sub_866E

                dc.b $2B 
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_8674:
                
                bra.w   loc_897A

    ; End of function sub_8674

                dc.b $2C 
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_867A:
                
                bra.w   sub_89EA

    ; End of function sub_867A

                dc.b $2D 
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_8680:
                
                bra.w   loc_8A12

    ; End of function sub_8680

                dc.b $2E 
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_8686:
                
                bra.w   loc_8A4A

    ; End of function sub_8686

                dc.b $2F 
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_868C:
                
                bra.w   loc_8AC0

    ; End of function sub_868C

                dc.b $30 
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_8692:
                
                bra.w   loc_8AC4

    ; End of function sub_8692

                dc.b $31 
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_8698:
                
                bra.w   loc_8B04

    ; End of function sub_8698

                dc.b $32 
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_869E:
                
                bra.w   sub_8B3A

    ; End of function sub_869E

                dc.b $35 
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_86A4:
                
                bra.w   sub_8B90

    ; End of function sub_86A4

                dc.b $36 
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_86B0:
                
                bra.w   sub_8BE8

    ; End of function sub_86B0

                dc.b $9B
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_86B6:
                
                bra.w   byte_8BF2

    ; End of function sub_86B6

                dc.b $A0 
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_86BC:
                
                bra.w   sub_8C7C

    ; End of function sub_86BC

                dc.b $AB 
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_86C2:
                
                bra.w   byte_8C8E

    ; End of function sub_86C2

                dc.b $B1 
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_86C8:
                
                bra.w   byte_8CB6

    ; End of function sub_86C8

                dc.b $B2 
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_86CE:
                
                bra.w   sub_8CF6

    ; End of function sub_86CE

                dc.b $B6 
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_86DA:
                
                bsr.s   sub_86FA
                bsr.w   sub_8B98
                jsr     sub_10368
                jsr     sub_1036C
                jsr     sub_10340
                sndCom  SFX_SPECIAL_ITEM_USE
                bra.w   loc_8BBA

    ; End of function sub_86DA


; =============== S U B R O U T I N E =======================================

sub_86FA:
                
                lea     (dword_FF5400).l,a5
                jsr     sub_103C8
                lsr.w   #1,d0
                cmpi.w  #$A00,d0
                bcc.s   loc_8712
                move.w  #$A00,d0
loc_8712:
                
                jmp     sub_10338

    ; End of function sub_86FA


; =============== S U B R O U T I N E =======================================

sub_8718:
                
                jsr     sub_1037C
                btst    #0,d0
                beq.w   loc_8BC0
                bsr.w   sub_8B98
                clr.b   d0
                jsr     sub_10378
                sndCom  SFX_SPECIAL_ITEM_USE
                bra.w   loc_8BBA
loc_873A:
                
                btst    #2,(byte_FF1027).l
                bne.s   loc_8758
                cmpi.w  #$20A,(CURRENT_MAP).l
                bne.s   loc_8758
                bset    #2,(byte_FF1027).l
                bra.s   loc_8762
loc_8758:
                
                jsr     sub_103C4
                bcc.w   loc_8BC0
loc_8762:
                
                bsr.w   sub_8B98
                bset    #0,(byte_FF1157).l
                bra.w   loc_8BBA
loc_8772:
                
                move.w  #$258,(word_FF12EC).l
                bsr.w   sub_8B98
                bra.w   loc_8BBA
loc_8782:
                
                jsr     sub_1037C
                btst    #1,d0
                beq.w   loc_8BC0
                bsr.w   sub_8B98
                move.b  #1,d0
                jsr     sub_10378
                sndCom  SFX_SPECIAL_ITEM_USE
                bra.w   loc_8BBA
loc_87A6:
                
                bra.w   loc_8BBA
loc_87AA:
                
                bsr.s   sub_87BE
                bcs.w   loc_8BC0
                tst.b   d7
                beq.w   loc_8BC0
                bset    d1,(a0,d0.w)
                bra.w   loc_8BBA

    ; End of function sub_8718


; =============== S U B R O U T I N E =======================================

sub_87BE:
                
                lea     word_8800(pc), a0
loc_87C2:
                
                move.w  (a0),d0
                bmi.w   loc_87F2
                cmp.w   (CURRENT_MAP).l,d0
                beq.w   loc_87D6
                addq.l  #4,a0
                bra.s   loc_87C2
loc_87D6:
                
                clr.w   d0
                move.b  2(a0),d0
                move.b  3(a0),d1
                lea     (MAIN_FLAGS).l,a0
                btst    d1,(a0,d0.w)
                beq.s   loc_87F8
                ori     #1,ccr
                rts
loc_87F2:
                
                clr.b   d7
                tst.b   d0
                rts
loc_87F8:
                
                move.b  #$FF,d7
                tst.b   d0
                rts

    ; End of function sub_87BE

word_8800:      dc.w $170
                dc.b $3E 
                dc.b   0
                dc.w $17D
                dc.b $3E 
                dc.b   1
                dc.w $17F
                dc.b $3E 
                dc.b   2
                dc.w $178
                dc.b $3E 
                dc.b   3
                dc.w $185
                dc.b $3E 
                dc.b   4
                dc.w $18D
                dc.b $3E 
                dc.b   5
                dc.w $18E
                dc.b $3E 
                dc.b   6
                dc.w $187
                dc.b $3E 
                dc.b   7
                dc.w $1A0
                dc.b $3F 
                dc.b   0
                dc.w $1A1
                dc.b $3F 
                dc.b   1
                dc.w $176
                dc.b $3F 
                dc.b   2
                dc.w $17B
                dc.b $3F 
                dc.b   3
                dc.w $FFFF

; =============== S U B R O U T I N E =======================================

sub_8832:
                
                cmpi.w  #$2F6,(CURRENT_MAP).l
                bne.w   loc_8BC0
                cmpi.b  #$11,(dword_FF5400+1).l
                bhi.w   loc_8BC0
                bra.w   sub_8BB2
loc_884E:
                
                jsr     sub_1037C
                btst    #2,d0
                beq.w   loc_8BC0
                bsr.w   sub_8B98
                move.b  #2,d0
                jsr     sub_10378
                sndCom  SFX_SPECIAL_ITEM_USE
                bra.w   loc_8BBA
                move.b  #1,(word_FF540A).l
                move.b  #$4D,(word_FF540A+1).l 
                bra.w   loc_8BBA
loc_8886:
                
                cmpi.w  #$234,(CURRENT_MAP).l
                bne.w   loc_8BC0
                move.b  (dword_FF5400).l,d0
                subi.b  #$2F,d0 
                cmpi.b  #4,d0
                bcc.w   loc_8BC0
                move.b  (dword_FF5400+1).l,d0
                subi.b  #$1E,d0
                cmpi.b  #4,d0
                bcc.w   loc_8BC0
                btst    #0,(byte_FF1026).l
                bne.w   loc_8BC0
                bra.w   sub_8BB2
loc_88C6:
                
                bsr.w   sub_8B98
                bra.w   loc_8BBA
loc_88CE:
                
                bra.w   loc_8BC0
loc_88D2:
                
                bset    #7,(byte_FF1039).l
                bne.w   loc_8BC0
loc_88DE:
                
                move.w  (CURRENT_HP).l,d0
                subi.w  #$100,d0
                bcs.w   loc_892A
                bne.s   loc_88F2
                move.w  #$FF,d0
loc_88F2:
                
                move.w  d0,(CURRENT_HP).l
                move.w  #$A,d0
                jsr     j_AddGold
                jsr     sub_103AA
                jsr     sub_1036C
                jsr     sub_10340
                jsr     (j_EnableDMAQueueProcessing).l
                sndCom  SFX_ITEM_USE
                move.w  #$A,d0
                jsr     (j_Sleep).l
                bra.s   loc_88DE
loc_892A:
                
                bra.w   loc_8BBA
loc_892E:
                
                cmpi.w  #$1E6,(CURRENT_MAP).l
                bne.w   loc_8BC0
                move.b  (dword_FF5400).l,d0
                subi.b  #$37,d0 
                cmpi.b  #3,d0
                bcc.w   loc_8BC0
                move.b  (dword_FF5400+1).l,d0
                subi.b  #$2B,d0 
                cmpi.b  #5,d0
                bcc.w   loc_8BC0
                cmpi.b  #$20,(word_FF5439).l 
                bne.w   loc_8BC0
                btst    #6,(byte_FF102A).l
                bne.w   loc_8BC0
                bra.w   sub_8BB2
loc_897A:
                
                move.w  #$1C,d0
                jsr     sub_22E90
                move.w  #$14,d6
                bsr.w   GenerateRandomNumber
                cmpi.b  #8,d7
                bcs.s   loc_899A
                cmpi.b  #$C,d7
                bcs.s   loc_89A8
                bra.s   loc_89C6
loc_899A:
                
                andi.b  #3,d7
                move.w  d7,d0
                jsr     sub_10398
                bra.s   loc_89D8
loc_89A8:
                
                move.w  #$FFFF,d0
                lea     (dword_FF5400).l,a5
                jsr     sub_10338
                jsr     sub_1036C
                jsr     sub_10340
                bra.s   loc_89D8
loc_89C6:
                
                subi.w  #$C,d7
                move.b  unk_89E0(pc,d7.w),d0
                move.b  #9,d1
                jsr     j_CheckAndSetOwnedItemQuantity
loc_89D8:
                
                bsr.w   sub_8B98
                bra.w   loc_8BBA

    ; End of function sub_8832

unk_89E0:       dc.b   0
                dc.b $14
                dc.b $13
                dc.b $2D 
                dc.b $12
                dc.b $15
                dc.b $2E 
                dc.b $16
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

sub_89EA:
                
                move.w  #$FFFF,d0

    ; End of function sub_89EA


; =============== S U B R O U T I N E =======================================

sub_89EE:
                
                lea     (dword_FF5400).l,a5
                jsr     sub_10338
                jsr     sub_1036C
                jsr     sub_10340
                bsr.w   sub_8B98
                sndCom  SFX_SPECIAL_ITEM_USE
                bra.w   loc_8BBA
loc_8A12:
                
                jsr     sub_1037C
                andi.b  #7,d0
                beq.w   loc_8BC0
                move.b  #0,d0
                jsr     sub_10378
                move.b  #1,d0
                jsr     sub_10378
                move.b  #2,d0
                jsr     sub_10378
                bsr.w   sub_8B98
                sndCom  SFX_SPECIAL_ITEM_USE
                bra.w   loc_8BBA
loc_8A4A:
                
                cmpi.w  #$196,(CURRENT_MAP).l
                bne.s   loc_8A7A
                move.w  (dword_FF5400).l,d0
                andi.w  #$FEFE,d0
                cmpi.w  #$2C2E,d0
                bne.w   loc_8BC0
                bset    #0,(byte_FF102B).l
                bne.w   loc_8BC0
                bsr.w   sub_8B98
                bra.w   loc_8BBA
loc_8A7A:
                
                cmpi.w  #$199,(CURRENT_MAP).l
                bne.w   loc_8BC0
                move.b  (dword_FF5400).l,d0
                andi.b  #$FE,d0
                cmpi.w  #$14,d0
                bne.w   loc_8BC0
                move.b  (dword_FF5400+1).l,d0
                subq.b  #1,d0
                andi.b  #$FE,d0
                cmpi.w  #$10,d0
                bne.w   loc_8BC0
                bset    #1,(byte_FF102B).l
                bne.w   loc_8BC0
                bsr.w   sub_8B98
                bra.w   loc_8BBA
loc_8AC0:
                
                bra.w   loc_8BBA
loc_8AC4:
                
                btst    #6,(MAIN_FLAGS).l
                bne.w   loc_8BC0
                cmpi.w  #$1B1,(CURRENT_MAP).l
                bne.w   loc_8BC0
                cmpi.b  #$F,(dword_FF5400).l
                bhi.w   loc_8BC0
                cmpi.b  #$19,(dword_FF5400+1).l
                bcs.w   loc_8BC0
                cmpi.b  #$1B,(dword_FF5400+1).l
                bhi.w   loc_8BC0
                bra.w   sub_8BB2
loc_8B04:
                
                move.b  (word_FF5422+1).l,d0
                andi.b  #$3F,d0 
                cmpi.b  #$1A,d0
                bcs.w   loc_8BC0
                cmpi.b  #$1D,d0
                bcs.s   loc_8B34
                cmpi.b  #$26,d0 
                beq.s   loc_8B2A
                cmpi.b  #$27,d0 
                bne.w   loc_8BC0

    ; End of function sub_89EE


; START OF FUNCTION CHUNK FOR sub_89EE

loc_8B2A:
                
                jsr     sub_103BE
                bcc.w   loc_8BC0
loc_8B34:
                
                bsr.s   sub_8B98
                bra.w   sub_8BB2

; END OF FUNCTION CHUNK FOR sub_89EE


; =============== S U B R O U T I N E =======================================

sub_8B3A:
                
                bsr.s   sub_8B44
                bcc.w   loc_8BC0
                bra.w   loc_8BBA

    ; End of function sub_8B3A


; =============== S U B R O U T I N E =======================================

sub_8B44:
                
                lea     (byte_FF5480).l,a0
                moveq   #$E,d7
loc_8B4C:
                
                tst.w   (a0)
                bmi.s   loc_8B8C
                cmpi.b  #$7F,(a0) 
                beq.s   loc_8B78
                cmpi.b  #$23,$B(a0) 
                bne.s   loc_8B68
                cmpi.b  #$3E,$36(a0) 
                beq.s   byte_8B82
                bra.s   loc_8B78
loc_8B68:
                
                cmpi.b  #$24,$B(a0) 
                bne.s   loc_8B78
                cmpi.b  #$3E,$36(a0) 
                beq.s   byte_8B82
loc_8B78:
                
                lea     $80(a0),a0
                dbf     d7,loc_8B4C
                bra.s   loc_8B8C
byte_8B82:
                
                sndCom  SFX_ITEM_USE
                ori     #1,ccr
                rts
loc_8B8C:
                
                tst.b   d0
                rts

    ; End of function sub_8B44


; =============== S U B R O U T I N E =======================================

sub_8B90:
                
                bsr.w   sub_8B98
                bra.w   sub_8BB2

    ; End of function sub_8B90


; =============== S U B R O U T I N E =======================================

sub_8B98:
                
                move.b  (byte_FF1152).l,d0
                jsr     j_GetOwnedItemQuantityEnriched
                subq.w  #1,d1
                jsr     j_ConsumeOneItem
                bsr.w   sub_D4AE
                rts

    ; End of function sub_8B98


; =============== S U B R O U T I N E =======================================

sub_8BB2:
                
                bset    #7,(byte_FF1152).l

    ; End of function sub_8BB2


; START OF FUNCTION CHUNK FOR sub_8718

loc_8BBA:
                
                ori     #1,ccr
                rts
loc_8BC0:
                
                bsr.w   loc_8614
                tst.b   d0
                rts

; END OF FUNCTION CHUNK FOR sub_8718


; =============== S U B R O U T I N E =======================================

sub_8BC8:
                
                move.b  (byte_FF1152).l,d0
                lea     sub_86B0(pc), a0
loc_8BD2:
                
                move.b  4(a0),d2
                cmpi.b  #$FF,d2
                beq.s   return_8BE6
                cmp.b   d0,d2
                beq.s   loc_8BE4
                addq.l  #6,a0
                bra.s   loc_8BD2
loc_8BE4:
                
                jmp     (a0)
return_8BE6:
                
                rts

    ; End of function sub_8BC8


; =============== S U B R O U T I N E =======================================

sub_8BE8:
                
                bset    #0,(byte_FF1017).l
                rts
byte_8BF2:
                
                sndCom  MUSIC_WHISTLE
                move.w  #$167,d0
                jsr     (j_Sleep).l
                move.l  (dword_FF5400).l,d0
                movem.l d0,-(sp)
                move.w  #$230,(CURRENT_MAP).l
                move.w  #$1732,(dword_FF5400).l
                bset    #6,(byte_FF540C).l
                bset    #0,(byte_FF1026).l
                bsr.w   sub_620E
                sndCom  MUSIC_WHISTLE
                move.w  #$B7,d0 
                jsr     (WaitForDMAQueueProcessing).l
                jsr     sub_22EF8
                move.w  #$234,(CURRENT_MAP).l
                movem.l (sp)+,d0
                move.l  d0,(dword_FF5400).l
                bclr    #6,(byte_FF540C).l
                bclr    #0,(byte_FF1026).l
                bsr.w   sub_620E
                move.b  (MUSIC_INDEX).l,d0
                sndCom  SOUND_COMMAND_GET_D0_PARAMETER
                bset    #0,(byte_FF1026).l
                rts

    ; End of function sub_8BE8


; =============== S U B R O U T I N E =======================================

sub_8C7C:
                
                bset    #6,(byte_FF102A).l
                bset    #0,(byte_FF1001).l
                rts
byte_8C8E:
                
                sndCom  SFX_RUMBLE
                move.b  #8,d0
                bsr.w   sub_4B52
                move.w  #$1E,d0
                jsr     (Sleep).l       
                move.b  #$10,d0
                bsr.w   sub_4B52
                bset    #6,(MAIN_FLAGS).l
                rts

    ; End of function sub_8C7C

byte_8CB6:      sndCom  SFX_BOULDER_HIT
                move.b  (word_FF5422+1).l,d2
                andi.b  #$3F,d2 
                cmpi.b  #$26,d2 
                beq.s   loc_8CEE
                cmpi.b  #$27,d2 
                beq.s   loc_8CEE
                subi.b  #$1A,d2
                bsr.w   sub_4FA8
                move.l  #$FF0000,d0
                move.w  (dword_FF5428).l,d0
                movea.l d0,a0
                move.w  (a0),(word_FF5422).l
                rts
loc_8CEE:       jsr     sub_103A4
                rts

; =============== S U B R O U T I N E =======================================

sub_8CF6:
                
                move.w  #2,d6
                bsr.w   GenerateRandomNumber
                tst.b   d7
                beq.s   loc_8D44
                move.w  #$153,d0
                jsr     (j_WaitForDMAQueueProcessing).l
                jsr     sub_22EF8
                move.b  #0,d0
                move.b  #9,d1
                jsr     j_CheckAndSetOwnedItemQuantity
                move.w  #$FFFF,d0
                lea     (dword_FF5400).l,a5
                jsr     sub_10338
                jsr     sub_10368
                jsr     sub_1036C
                jsr     sub_10340
                rts

    ; End of function sub_8CF6


; START OF FUNCTION CHUNK FOR sub_8CF6

loc_8D44:
                
                move.w  #$152,d0
                jsr     (j_WaitForDMAQueueProcessing).l
                jsr     sub_22EF8
                move.w  #$FF,(CURRENT_HP).l
                jsr     sub_103AA
                move.b  #0,d0
                move.b  #0,d1
                jsr     j_CheckAndSetOwnedItemQuantity
                jsr     sub_10368
                jsr     sub_1036C
                jsr     sub_10340
                rts

; END OF FUNCTION CHUNK FOR sub_8CF6


; =============== S U B R O U T I N E =======================================

sub_8D84:
                
                jsr     (DisableDisplayAndInterrupts).l
                move.l  #$C0760000,(VDP_Control).l
                move.w  #0,(VDP_Data).l
                move.w  #0,(word_FF0F46).l
                move.w  #0,(word_FF00F6).l
                bsr.w   sub_8F34
                bsr.w   sub_8F4C
                jsr     (EnableDisplayAndInterrupts).l
                bsr.w   sub_79E4
                bsr.w   sub_8FCC
                jsr     (ActivateIntDMAQueueProcessing).l
                jsr     (WaitForDMAQueueProcessing).l
                bsr.w   sub_9046
                bsr.w   sub_906C
                bsr.w   sub_90C4
                cmpi.w  #$8B,(CURRENT_MAP).l 
                beq.s   loc_8DF6
                jsr     sub_10344
                jsr     sub_10340
                jmp     (sub_98A).l
loc_8DF6:
                
                move.b  #1,(byte_FF1159).l
                bsr.w   sub_C46A        
                jsr     (EnableDMAQueueProcessing).l
loc_8E08:
                
                move.w  #$222,d1
                move.w  #5,d7
loc_8E10:
                
                move.l  #$C0760000,(VDP_Control).l
                move.w  d1,(VDP_Data).l
                move.w  d1,(word_FF0F46).l
                move.w  d1,(word_FF00F6).l
                move.w  #4,d0
                jsr     (Sleep).l       
                addi.w  #$222,d1
                dbf     d7,loc_8E10
                move.l  #$C07E0000,(VDP_Control).l
                move.w  #0,(VDP_Data).l
loc_8E50:
                
                move.w  #0,(word_FF0F4E).l
                move.w  #0,(word_FF00FE).l
                move.w  #$3C,d0 
                jsr     (Sleep).l       
                sndCom  MUSIC_LABYRINTH
                move.b  #$2B,(MUSIC_INDEX).l 
                move.w  #$78,d0 
loc_8E7A:
                
                jsr     (Sleep).l       
                lea     word_903C(pc), a0
                lea     (byte_FF00F4).l,a1
                move.w  #4,d0
                jsr     (loc_96A).l
                jsr     sub_8EB4(pc)
                nop
                rts

    ; End of function sub_8D84


; =============== S U B R O U T I N E =======================================

sub_8E9C:
                
                bsr.s   sub_8EA0
                bra.s   sub_8EB4

    ; End of function sub_8E9C


; =============== S U B R O U T I N E =======================================

sub_8EA0:
                
                jsr     sub_22E94
                bsr.w   sub_9046
                bsr.w   sub_906C
                bsr.w   sub_90C4
                rts

    ; End of function sub_8EA0


; =============== S U B R O U T I N E =======================================

sub_8EB4:
                
                move.w  #$8AB8,(VDP_REG0A_STATUS).l
                move.w  #$8AB8,(VDP_Control).l
                jsr     (sub_972).l
                move.w  #6,d6
loc_8ECE:
                
                lea     (PALETTE_1_BASE).l,a0
                lea     (PALETTE_1_CURRENT).l,a1
                move.w  #$39,d5 
loc_8EDE:
                
                jsr     (sub_9CE).l
                move.w  #2,d0
                jsr     (Sleep).l       
                dbf     d6,loc_8ECE
                rts

    ; End of function sub_8EB4


; =============== S U B R O U T I N E =======================================

sub_8EF4:
                
                jsr     (sub_990).l
                move.w  #6,d6
loc_8EFE:
                
                lea     (PALETTE_1_BASE).l,a0
loc_8F04:
                
                lea     (PALETTE_1_CURRENT).l,a1
                move.w  #$39,d5 
                jsr     (sub_9CE).l
                move.w  #2,d0
                jsr     (Sleep).l       
                dbf     d6,loc_8EFE
                move.w  #$8A18,(VDP_REG0A_STATUS).l
                move.w  #$8A18,(VDP_Control).l
                rts

    ; End of function sub_8EF4


; =============== S U B R O U T I N E =======================================

sub_8F34:
                
                lea     StatusBarTileset(pc), a0
                nop
                lea     (byte_FF2C00).l,a1
                lea     ($D680).l,a2
                jmp     (sub_4A94).l

    ; End of function sub_8F34


; =============== S U B R O U T I N E =======================================

sub_8F4C:
                
                bsr.w   sub_8F6E
                lea     word_8F64(pc), a0
                moveq   #4,d1
loc_8F56:
                
                move.w  (a0)+,d0
                jsr     (SetVDPRegister).l
                dbf     d1,loc_8F56
                rts

    ; End of function sub_8F4C

word_8F64:      dc.w $9100
                dc.w $9203
                dc.w $8014
                dc.w $8AB8
                dc.w $8B00

; =============== S U B R O U T I N E =======================================

sub_8F6E:
                
                cmpi.w  #$8B,(CURRENT_MAP).l 
                bne.s   loc_8F8C
                lea     (word_FF1C00).l,a1
                move.w  #$7FF,d7
loc_8F82:
                
                move.w  #$E6B4,(a1)+
                dbf     d7,loc_8F82
                rts
loc_8F8C:
                
                lea     unk_9152(pc), a0
                lea     (word_FF1C00).l,a1
                move.w  #2,d7
loc_8F9A:
                
                move.w  #$27,d6 
loc_8F9E:
                
                move.w  (a0)+,d0
                ori.w   #$6000,d0
                move.w  d0,(a1)+
                dbf     d6,loc_8F9E
                adda.w  #$30,a1 
                dbf     d7,loc_8F9A
                rts

    ; End of function sub_8F6E


; =============== S U B R O U T I N E =======================================

sub_8FB4:
                
                lea     plt_901C(pc), a0
                lea     (byte_FF00C0).l,a1
                move.w  #$F,d0
                jsr     (loc_96A).l
                bra.w   sub_78B6

    ; End of function sub_8FB4


; =============== S U B R O U T I N E =======================================

sub_8FCC:
                
                bsr.s   sub_8FB4
                lea     word_903C(pc), a0
                lea     (byte_FF00F4).l,a1
                move.w  #4,d0
                jsr     (loc_96A).l
                lea     (PALETTE_1_BASE).l,a0
                clr.w   (a0)
                clr.w   $20(a0)
                clr.w   $40(a0)
                clr.w   $60(a0)
                move.w  #$CCC,d0
                move.w  d0,2(a0)
                move.w  d0,$22(a0)
                move.w  d0,$42(a0)
                move.w  d0,$62(a0)
                clr.w   $1E(a0)
                clr.w   $3E(a0)
                clr.w   $5E(a0)
                clr.w   $7E(a0)
                rts

    ; End of function sub_8FCC

plt_901C:       dc.w 0
                dc.w $CCC
                dc.w $824
                dc.w $4AE
                dc.w $48
                dc.w $24
                dc.w $888
                dc.w $444
                dc.w $ACE
                dc.w $8A0
                dc.w $240
                dc.w 0
                dc.w 0
                dc.w 0
                dc.w 0
                dc.w 0
word_903C:      dc.w $824
                dc.w $EEE
                dc.w $A
                dc.w $A6E
                dc.w $666

; =============== S U B R O U T I N E =======================================

sub_9046:
                
                lea     word_905C(pc), a0
                lea     (SPRITE_TABLE).l,a1
                move.w  #7,d0
loc_9054:
                
                move.w  (a0)+,(a1)+
                dbf     d0,loc_9054
                rts

    ; End of function sub_9046

word_905C:      dc.w $80
                dc.w $201
                dc.w $86B4
                dc.w 1
                dc.w $80
                dc.w $202
                dc.w $86B4
                dc.w 0

; =============== S U B R O U T I N E =======================================

sub_906C:
                
                move.w  #1,(word_FF1180).l
                andi.w  #$FEFE,(word_FF1126).l
                clr.w   d6
                move.b  (word_FF1126+1).l,d6
                sub.b   (word_FF1126).l,d6
                bpl.s   loc_908E
                ext.w   d6
loc_908E:
                
                addi.w  #$90,d6 
                jsr     (UpdateForegroundHScrollData).l
                jsr     (UpdateBackgroundHScrollData).l
                clr.w   d6
                move.b  (word_FF1126).l,d6
                add.b   (word_FF1126+1).l,d6
                lsr.b   #1,d6
                subi.w  #$68,d6 
                jsr     (UpdateForegroundVScrolData).l
                jsr     (UpdateBackgroundVScrollData).l
                jmp     (EnableDMAQueueProcessing).l

    ; End of function sub_906C


; =============== S U B R O U T I N E =======================================

sub_90C4:
                
                jsr     (WaitForDMAQueueProcessing).l
                addi.b  #$C,(byte_FF1124).l
                addi.b  #$C,(byte_FF1125).l
                move.w  #$18C,(word_FF1184).l
                move.w  #$B,d7
loc_90E6:
                
                movem.w d7,-(sp)
                subq.b  #1,(byte_FF1124).l
                move.w  (word_FF1184).l,d0
                subq.w  #1,d0
                move.w  d0,(word_FF1184).l
                andi.w  #$1F,d0
                cmpi.w  #$1F,d0
                bne.s   loc_9110
                addi.w  #$20,(word_FF1184).l 
loc_9110:
                
                bsr.w   sub_A61C
                subq.b  #1,(byte_FF1125).l
                subi.w  #$20,(word_FF1184).l 
                bpl.s   loc_913E
                addi.w  #$210,(word_FF1184).l
                cmpi.w  #$200,(word_FF1184).l
                bcs.s   loc_913E
                subi.w  #$20,(word_FF1184).l 
loc_913E:
                
                bsr.w   sub_A61C
                jsr     (WaitForVInt).l
                movem.w (sp)+,d7
                dbf     d7,loc_90E6
                rts

    ; End of function sub_90C4

unk_9152:       dc.b   6                ; status bar layout ?
                dc.b $B4 
                dc.b   6
                dc.b $B5 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $EF 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b   6
                dc.b $B6 
                dc.b  $E
                dc.b $B5 
                dc.b   6
                dc.b $B4 
                dc.b   6
                dc.b $B4 
                dc.b   6
                dc.b $B7 
                dc.b   6
                dc.b $ED 
                dc.b   6
                dc.b $EC 
                dc.b   6
                dc.b $F4 
                dc.b   6
                dc.b $F4 
                dc.b   6
                dc.b $F4 
                dc.b   6
                dc.b $F4 
                dc.b   6
                dc.b $F4 
                dc.b   6
                dc.b $F4 
                dc.b   6
                dc.b $EA 
                dc.b   6
                dc.b $BC 
                dc.b   6
                dc.b $BC 
                dc.b   6
                dc.b $BC 
                dc.b   6
                dc.b $BC 
                dc.b   6
                dc.b $BC 
                dc.b   6
                dc.b $BC 
                dc.b   6
                dc.b $BC 
                dc.b   6
                dc.b $BC 
                dc.b   6
                dc.b $BC 
                dc.b   6
                dc.b $BC 
                dc.b   6
                dc.b $BC 
                dc.b   6
                dc.b $BC 
                dc.b   6
                dc.b $BC 
                dc.b   6
                dc.b $BC 
                dc.b   6
                dc.b $CA 
                dc.b   6
                dc.b $BC 
                dc.b   6
                dc.b $BC 
                dc.b   6
                dc.b $BC 
                dc.b   6
                dc.b $B8 
                dc.b   6
                dc.b $BF 
                dc.b   6
                dc.b $BC 
                dc.b   6
                dc.b $BC 
                dc.b   6
                dc.b $BC 
                dc.b   6
                dc.b $BC 
                dc.b   6
                dc.b $BC 
                dc.b   6
                dc.b $BC 
                dc.b   6
                dc.b $BE 
                dc.b  $E
                dc.b $B7 
                dc.b   6
                dc.b $B4 
                dc.b   6
                dc.b $B4 
                dc.b   6
                dc.b $B9 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $EE 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $DA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BB 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BA 
                dc.b   6
                dc.b $BD 
                dc.b  $E
                dc.b $B9 
                dc.b   6
                dc.b $B4 
StatusBarTileset:
                incbin "data/graphics/tech/menus/statusbartileset.bin"

; =============== S U B R O U T I N E =======================================

sub_95AC:
                
                move.l  #$FF0000,d0
                move.w  (dword_FF5428).l,d0
                movea.l d0,a0
loc_95BA:
                
                suba.w  #$94,a0 
                move.w  (a0),d0
                andi.b  #$3F,d0 
                cmpi.b  #4,d0
                beq.s   loc_95BA
                lea     $94(a0),a0
                move.w  #$FFFE,d5
                clr.b   d1
                move.b  #1,d3
                bra.s   loc_9600

    ; End of function sub_95AC


; =============== S U B R O U T I N E =======================================

sub_95DA:
                
                move.l  #$FF0000,d0
                move.w  (dword_FF5428).l,d0
                movea.l d0,a0
loc_95E8:
                
                move.w  -(a0),d0
                andi.b  #$3F,d0 
                cmpi.b  #1,d0
                beq.s   loc_95E8
                addq.w  #2,a0
                move.w  #2,d5
                move.b  #1,d1
                clr.b   d3

    ; End of function sub_95DA


; START OF FUNCTION CHUNK FOR sub_95AC

loc_9600:
                
                movem.w d1/d3/d5,-(sp)
                move.w  (a0),d0
                movem.w d0,-(sp)
                suba.l  #HEIGHT_MAP,a0
                move.w  a0,d0
                ext.l   d0
                divu.w  #$94,d0 
                move.w  d0,d1
                swap    d0
                lsr.b   #1,d0
                lea     unk_976C(pc), a0
                move.w  (CURRENT_MAP).l,d7
                moveq   #0,d3
                moveq   #0,d2
loc_962C:
                
                move.b  (a0)+,d3
                beq.s   loc_9634
                subq.b  #1,d3
                add.l   d3,d2
loc_9634:
                
                dbf     d7,loc_962C
                tst.b   -1(a0)
                beq.s   loc_9664
                lea     unk_9A9C(pc), a0
                adda.l  d2,a0
                moveq   #$1F,d7
loc_9646:
                
                move.b  (a0)+,d2
                bmi.s   loc_9664
                move.b  d2,d4
                move.b  (a0)+,d3
                andi.b  #$3F,d2 
                cmp.b   d2,d1
                bne.s   loc_9660
                move.b  d3,d5
                andi.b  #$3F,d3 
                cmp.b   d3,d0
                beq.s   loc_9670
loc_9660:
                
                dbf     d7,loc_9646
loc_9664:
                
                movem.w (sp)+,d0
                movem.w (sp)+,d1/d3/d5
                tst.b   d0
                rts
loc_9670:
                
                andi.b  #$40,d4 
                andi.b  #$C0,d5
                lsr.b   #3,d4
                lsr.b   #5,d5
                or.b    d4,d5
                ext.w   d5
                move.b  unk_96F2(pc,d5.w),d6
                move.b  unk_96F3(pc,d5.w),d7
                sub.b   d6,d1
                sub.b   d6,d0
                movem.w (sp)+,d5
                lsr.w   #8,d5
                andi.b  #$F,d5
                sub.b   d5,d1
                sub.b   d5,d0
                move.b  d0,d2
                move.b  d1,d0
                subq.b  #1,d6
                movem.w (sp)+,d1/d3/d5
                add.b   d1,d2
                add.b   d3,d2
                add.b   d3,d0
                add.b   d6,d6
                ext.w   d6
                ext.w   d7
                andi.w  #$3F,d0 
                move.w  d0,d1
                bsr.w   sub_C396
                andi.w  #$3F,d2 
                move.w  d2,d3
                add.b   d2,d2
                add.w   d2,d0
                lea     (byte_FF7C02).l,a0
                adda.w  d0,a0
                move.w  d3,d0
                move.w  d5,d4
                lsr.w   #1,d4
loc_96D2:
                
                movem.l d0-d1/d4-d7,-(sp)
                bsr.s   sub_96EE
                movem.l (sp)+,d0-d1/d4-d7
                adda.w  d5,a0
                add.b   d4,d0
                dbf     d7,loc_96D2

; END OF FUNCTION CHUNK FOR sub_95AC

                sndCom  SFX_BOULDER_HIT
                ori     #1,ccr
                rts

; =============== S U B R O U T I N E =======================================

sub_96EE:
                
                jmp     sub_9702(pc,d6.w)

    ; End of function sub_96EE

unk_96F2:       dc.b   4
unk_96F3:       dc.b   0
                dc.b   4
                dc.b   1
                dc.b   5
                dc.b   1
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0

; =============== S U B R O U T I N E =======================================

sub_9702:
                
                bra.s   loc_9764
                bra.s   loc_9758
                bra.s   loc_974C
                bra.s   loc_9740
                bra.s   loc_9734
                bra.s   loc_9728
                bra.s   loc_971C
                clr.w   $41A(a0)
                bsr.w   sub_4B14
                addq.b  #1,d0
                addq.b  #1,d1
loc_971C:
                
                clr.w   $384(a0)
                bsr.w   sub_4B14
                addq.b  #1,d0
                addq.b  #1,d1
loc_9728:
                
                clr.w   $2EE(a0)
                bsr.w   sub_4B14
                addq.b  #1,d0
                addq.b  #1,d1
loc_9734:
                
                clr.w   $258(a0)
                bsr.w   sub_4B14
                addq.b  #1,d0
                addq.b  #1,d1
loc_9740:
                
                clr.w   $1C2(a0)
                bsr.w   sub_4B14
                addq.b  #1,d0
                addq.b  #1,d1
loc_974C:
                
                clr.w   $12C(a0)
                bsr.w   sub_4B14
                addq.b  #1,d0
                addq.b  #1,d1
loc_9758:
                
                clr.w   $96(a0)
                bsr.w   sub_4B14
                addq.b  #1,d0
                addq.b  #1,d1
loc_9764:
                
                clr.w   (a0)
                bsr.w   sub_4B14
                rts

    ; End of function sub_9702

unk_976C:       dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b   4
                dc.b   4
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   4
                dc.b   0
                dc.b   4
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   8
                dc.b  $E
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b  $E
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   4
                dc.b   6
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   6
                dc.b   0
                dc.b   0
                dc.b   4
                dc.b   0
                dc.b   6
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   4
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   4
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   4
                dc.b  $E
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b  $E
                dc.b $18
                dc.b $18
                dc.b $18
                dc.b $10
                dc.b $10
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $10
                dc.b   6
                dc.b   6
                dc.b   6
                dc.b   0
                dc.b   0
                dc.b   6
                dc.b   0
                dc.b $16
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   6
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   8
                dc.b  $A
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b  $A
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
unk_9A9C:       dc.b $1F
                dc.b $69 
                dc.b $FF
                dc.b $1B
                dc.b $6B 
                dc.b $FF
                dc.b $1B
                dc.b $6B 
                dc.b $FF
                dc.b $12
                dc.b $12
                dc.b $FF
                dc.b $13
                dc.b $14
                dc.b $13
                dc.b $19
                dc.b $13
                dc.b $1E
                dc.b $FF
                dc.b  $D
                dc.b $50 
                dc.b $11
                dc.b  $F
                dc.b $1A
                dc.b  $F
                dc.b $11
                dc.b  $F
                dc.b $1A
                dc.b  $F
                dc.b  $D
                dc.b $50 
                dc.b $FF
                dc.b  $D
                dc.b $50 
                dc.b $11
                dc.b  $F
                dc.b $1A
                dc.b  $F
                dc.b $11
                dc.b  $F
                dc.b $1A
                dc.b  $F
                dc.b  $D
                dc.b $50 
                dc.b $FF
                dc.b  $F
                dc.b $12
                dc.b $FF
                dc.b $18
                dc.b $51 
                dc.b $11
                dc.b $57 
                dc.b $FF
                dc.b $18
                dc.b $51 
                dc.b $11
                dc.b $57 
                dc.b $FF
                dc.b $1F
                dc.b $1B
                dc.b $FF
                dc.b $13
                dc.b  $D
                dc.b  $F
                dc.b $13
                dc.b $FF
                dc.b $12
                dc.b $18
                dc.b $FF
                dc.b $16
                dc.b $12
                dc.b $FF
                dc.b $30 
                dc.b $A1 
                dc.b $FF
                dc.b $1D
                dc.b $2C 
                dc.b $2D 
                dc.b $2E 
                dc.b $2D 
                dc.b $26 
                dc.b $27 
                dc.b $26 
                dc.b $34 
                dc.b $19
                dc.b $1B
                dc.b $18
                dc.b $FF
                dc.b $1D
                dc.b $2C 
                dc.b $2D 
                dc.b $2E 
                dc.b $2D 
                dc.b $26 
                dc.b $27 
                dc.b $26 
                dc.b $34 
                dc.b $19
                dc.b $1B
                dc.b $18
                dc.b $FF
                dc.b $3C 
                dc.b $14
                dc.b $28 
                dc.b $15
                dc.b $1F
                dc.b $14
                dc.b $1B
                dc.b $24 
                dc.b $20
                dc.b $23 
                dc.b $33 
                dc.b $25 
                dc.b $36 
                dc.b $25 
                dc.b $38 
                dc.b $33 
                dc.b $31 
                dc.b $36 
                dc.b $21 
                dc.b $35 
                dc.b $19
                dc.b $32 
                dc.b $FF
                dc.b $3C 
                dc.b $14
                dc.b $28 
                dc.b $15
                dc.b $1F
                dc.b $14
                dc.b $1B
                dc.b $24 
                dc.b $20
                dc.b $23 
                dc.b $33 
                dc.b $25 
                dc.b $36 
                dc.b $25 
                dc.b $38 
                dc.b $33 
                dc.b $31 
                dc.b $36 
                dc.b $21 
                dc.b $35 
                dc.b $19
                dc.b $32 
                dc.b $FF
                dc.b $3C 
                dc.b $14
                dc.b $28 
                dc.b $15
                dc.b $1F
                dc.b $14
                dc.b $1B
                dc.b $24 
                dc.b $20
                dc.b $23 
                dc.b $33 
                dc.b $25 
                dc.b $36 
                dc.b $25 
                dc.b $38 
                dc.b $33 
                dc.b $31 
                dc.b $36 
                dc.b $21 
                dc.b $35 
                dc.b $19
                dc.b $32 
                dc.b $FF
                dc.b $1F
                dc.b $18
                dc.b $26 
                dc.b $18
                dc.b $32 
                dc.b $18
                dc.b $39 
                dc.b $18
                dc.b $1E
                dc.b $25 
                dc.b $33 
                dc.b $25 
                dc.b $28 
                dc.b $23 
                dc.b $FF
                dc.b $1F
                dc.b $18
                dc.b $26 
                dc.b $18
                dc.b $32 
                dc.b $18
                dc.b $39 
                dc.b $18
                dc.b $1E
                dc.b $25 
                dc.b $33 
                dc.b $25 
                dc.b $28 
                dc.b $23 
                dc.b $FF
                dc.b $1F
                dc.b $18
                dc.b $26 
                dc.b $18
                dc.b $32 
                dc.b $18
                dc.b $39 
                dc.b $18
                dc.b $1E
                dc.b $25 
                dc.b $33 
                dc.b $25 
                dc.b $28 
                dc.b $23 
                dc.b $FF
                dc.b $14
                dc.b $27 
                dc.b $14
                dc.b $1D
                dc.b $FF
                dc.b $14
                dc.b $27 
                dc.b $14
                dc.b $1D
                dc.b $FF
                dc.b $14
                dc.b $27 
                dc.b $14
                dc.b $1D
                dc.b $FF
                dc.b $14
                dc.b $27 
                dc.b $14
                dc.b $1D
                dc.b $FF
                dc.b $16
                dc.b $13
                dc.b $1D
                dc.b $13
                dc.b $24 
                dc.b $13
                dc.b $2B 
                dc.b $13
                dc.b $28 
                dc.b $18
                dc.b $21 
                dc.b $18
                dc.b $1A
                dc.b $18
                dc.b $34 
                dc.b $13
                dc.b $3B 
                dc.b $13
                dc.b $13
                dc.b $53 
                dc.b $FF
                dc.b $22 
                dc.b $4E 
                dc.b $1E
                dc.b $16
                dc.b $FF
                dc.b $23 
                dc.b $50 
                dc.b $2C 
                dc.b $50 
                dc.b $35 
                dc.b $50 
                dc.b $FF
                dc.b $2C 
                dc.b $1D
                dc.b $24 
                dc.b $1D
                dc.b $21 
                dc.b $2C 
                dc.b $2E 
                dc.b $2D 
                dc.b $FF
                dc.b $2C 
                dc.b $1D
                dc.b $24 
                dc.b $1D
                dc.b $21 
                dc.b $2C 
                dc.b $2E 
                dc.b $2D 
                dc.b $FF
                dc.b $1A
                dc.b $39 
                dc.b $14
                dc.b $2F 
                dc.b $14
                dc.b $24 
                dc.b $1A
                dc.b $1F
                dc.b $1D
                dc.b $14
                dc.b $1F
                dc.b $1A
                dc.b $2D 
                dc.b $14
                dc.b $FF
                dc.b $FF
                dc.b $41 
                dc.b $F9 
                dc.b   0
                dc.b $FF
                dc.b $54 
                dc.b $80 

; =============== S U B R O U T I N E =======================================

sub_9BD0:
                
                move.b  (byte_FF5404).l,d0
                addi.b  #$40,d0 
                andi.b  #$C0,d0
                cmpi.b  #$80,d0
                bcc.s   return_9BFC
                lea     word_9C42(pc), a0
loc_9BE8:
                
                move.w  (a0)+,d0
                bmi.s   return_9BFC
                cmp.w   (CURRENT_MAP).l,d0
                bne.s   loc_9BE8
                jsr     sub_22EA4
                nop
return_9BFC:
                
                rts

    ; End of function sub_9BD0


; =============== S U B R O U T I N E =======================================

sub_9BFE:
                
                move.b  (byte_FF5404).l,d0
                addi.b  #$40,d0 
                andi.b  #$C0,d0
                cmpi.b  #$80,d0
                bcs.s   return_9C40
                lea     word_9C42(pc), a0
loc_9C16:
                
                move.w  (a0)+,d0
                bmi.s   return_9C40
                cmp.w   (CURRENT_MAP).l,d0
                bne.s   loc_9C16
                move.b  (dword_FF542C+1).l,d0
                andi.b  #$C0,d0
                cmpi.b  #$C0,d0
                bne.s   loc_9C3A
                jsr     sub_22EB4
                rts
loc_9C3A:
                
                jsr     sub_22EA8
return_9C40:
                
                rts

    ; End of function sub_9BFE

word_9C42:      dc.w $254
                dc.w $255
                dc.w $256
                dc.w $25F
                dc.w $260
                dc.w $265
                dc.w $267
                dc.w $26F
                dc.w $270
                dc.w $2BD
                dc.w $2BE
                dc.w $2A6
                dc.w $2A7
                dc.w $2B7
                dc.w $2B8
                dc.w $2B9
                dc.w $2BB
                dc.w $2BC
                dc.w $295
                dc.w $2CF
                dc.w $2D0
                dc.w $2D1
                dc.w $2D9
                dc.w $2DD
                dc.w $2E0
                dc.w $2ED
                dc.w $2EB
                dc.w $2E9
                dc.w $205
                dc.w $20E
                dc.w $188
                dc.w $FFFF

; =============== S U B R O U T I N E =======================================

sub_9C82:
                
                movem.l d0/d7-a0,-(sp)
                lea     (byte_FF5480).l,a0
                moveq   #$E,d7
loc_9C8E:
                
                btst    #4,$C(a0)
                beq.s   loc_9CA0
                move.b  $3A(a0),d1
                lsr.b   #2,d1
                cmp.b   d1,d0
                beq.s   loc_9CB2
loc_9CA0:
                
                lea     $80(a0),a0
                dbf     d7,loc_9C8E
                movem.l (sp)+,d0/d7-a0
                ori     #1,ccr
                rts
loc_9CB2:
                
                move.w  $3A(a0),d1
                andi.w  #$3FF,d1
                movem.l (sp)+,d0/d7-a0
                tst.b   d0
                rts

    ; End of function sub_9C82


; =============== S U B R O U T I N E =======================================

sub_9CC2:
                
                movem.l d0-d1/a0,-(sp)
                bsr.s   sub_9CD6
                bcs.s   loc_9CD0
                bset    d1,(a0,d0.w)
                tst.b   d0
loc_9CD0:
                
                movem.l (sp)+,d0-d1/a0
                rts

    ; End of function sub_9CC2


; =============== S U B R O U T I N E =======================================

sub_9CD6:
                
                lea     word_9D18(pc), a0
loc_9CDA:
                
                move.w  (a0),d0
                bmi.s   loc_9CFE
                cmp.w   (CURRENT_MAP).l,d0
                beq.s   loc_9CEA
                addq.l  #4,a0
                bra.s   loc_9CDA
loc_9CEA:
                
                move.b  2(a0),d0
                ext.w   d0
                move.b  3(a0),d1
                lea     (MAIN_FLAGS).l,a0
                tst.b   d0
                rts
loc_9CFE:
                
                ori     #1,ccr
                rts

    ; End of function sub_9CD6


; =============== S U B R O U T I N E =======================================

sub_9D04:
                
                movem.l d0-d1/a0,-(sp)
                bsr.s   sub_9CD6
                bcs.s   loc_9D12
                tst.b   d0
                btst    d1,(a0,d0.w)
loc_9D12:
                
                movem.l (sp)+,d0-d1/a0
                rts

    ; End of function sub_9D04

word_9D18:      dc.w $254
                dc.w $2C00
                dc.w $260
                dc.w $2C01
                dc.w $267
                dc.w $2C02
                dc.w $2DD
                dc.w $2C03
                dc.w $205
                dc.w $2C04
                dc.w $20E
                dc.w $2C05
                dc.w $2D0
                dc.w $2C07
                dc.w $FFFF

; =============== S U B R O U T I N E =======================================

; related to animated map tileset

sub_9D36:
                
                lea     (byte_FF1134).l,a4
                lea     (byte_FF1210).l,a5
                lea     (byte_FF1860).l,a6
                clr.w   (a5)
                clr.w   4(a5)
                move.b  (byte_FF112E).l,d0
                clr.w   d1
                lea     byte_9E04(pc), a0
                nop
loc_9D5C:
                
                move.b  (a0)+,d2
                bmi.s   return_9DA0
                cmp.b   d2,d0
                beq.s   loc_9D68
loc_9D64:
                
                addq.w  #1,d1
                bra.s   loc_9D5C
loc_9D68:
                
                move.w  d1,d3
                mulu.w  #$A,d3
                lea     pt_AnimatedMapTilesets(pc), a1
                nop
                move.w  (a1,d3.w),(a5)+
                move.w  2(a1,d3.w),(a5)+
                move.b  4(a1,d3.w),(a4)+
                cmpi.w  #$1ED,(CURRENT_MAP).l
                bne.s   loc_9D90
                move.b  #2,(a4)+
                bra.s   loc_9D94
loc_9D90:
                
                move.b  5(a1,d3.w),(a4)+
loc_9D94:
                
                movea.l 6(a1,d3.w),a3
                move.l  (a3),(a6)+
                clr.b   (a4)+
                clr.b   (a4)+
                bra.s   loc_9D64
return_9DA0:
                
                rts

    ; End of function sub_9D36


; =============== S U B R O U T I N E =======================================

sub_9DA2:
                
                lea     (byte_FF1134).l,a4
                lea     (byte_FF1210).l,a5
                lea     (byte_FF1860).l,a6
                bsr.s   sub_9DBC
                addq.w  #4,a4
                addq.w  #4,a5
                addq.w  #4,a6

    ; End of function sub_9DA2


; =============== S U B R O U T I N E =======================================

sub_9DBC:
                
                move.w  (a5),d0
                beq.s   return_9E02
                movea.w d0,a1
                move.b  2(a4),d0
                addq.b  #1,d0
                cmp.b   (a4),d0
                bcc.s   loc_9DD2
                addq.b  #1,2(a4)
                bra.s   return_9E02
loc_9DD2:
                
                clr.b   2(a4)
                move.b  3(a4),d1
                addq.b  #1,d1
                cmp.b   1(a4),d1
                bcs.s   loc_9DEA
                move.b  #$FF,3(a4)
                clr.b   d1
loc_9DEA:
                
                addq.b  #1,3(a4)
                ext.w   d1
                add.b   d1,d1
                move.w  2(a5),d0
                mulu.w  d0,d1
                movea.l (a6),a0
                adda.l  d1,a0
                jsr     (ApplyVIntVramDMA).l
return_9E02:
                
                rts

    ; End of function sub_9DBC

byte_9E04:      dc.b 0
                dc.b  $C
                dc.b  $C
                dc.b   2
                dc.b   2
                dc.b   4
                dc.b   5
                dc.b   6
                dc.b   6
                dc.b   7
                dc.b   7
                dc.b   9
                dc.b  $D
                dc.b  $D
                dc.b  $E
                dc.b   1
                dc.b  $F
                dc.b   3
                dc.b   3
                dc.b $11
                dc.b   8
                dc.b $10
                dc.b $FF
                dc.b $FF
pt_AnimatedMapTilesets:
                dc.w $7300
                dc.w $100
                dc.b $14
                dc.b   3
                dc.l p_AnimatedMapTileset00
                dc.w $7260
                dc.w $B0
                dc.b $14
                dc.b   2
                dc.l p_AnimatedMapTileset01
                dc.w $73C0
                dc.w $A0
                dc.b   8
                dc.b   3
                dc.l p_AnimatedMapTileset02
                dc.w $7300
                dc.w $D0
                dc.b   8
                dc.b   3
                dc.l p_AnimatedMapTileset03
                dc.w $74A0
                dc.w $30
                dc.b   8
                dc.b   2
                dc.l p_AnimatedMapTileset04
                dc.w $7280
                dc.w $140
                dc.b  $C
                dc.b   3
                dc.l p_AnimatedMapTileset05
                dc.w $7220
                dc.w $170
                dc.b   8
                dc.b   2
                dc.l p_AnimatedMapTileset06
                dc.w $7140
                dc.w $60
                dc.b   8
                dc.b   2
                dc.l p_AnimatedMapTileset07
                dc.w $7200
                dc.w $180
                dc.b $10
                dc.b   2
                dc.l p_AnimatedMapTileset08
                dc.w $71E0
                dc.w $150
                dc.b $14
                dc.b   2
                dc.l p_AnimatedMapTileset09
                dc.w $7480
                dc.w $40
                dc.b $14
                dc.b   3
                dc.l p_AnimatedMapTileset10
                dc.w $7260
                dc.w $150
                dc.b   8
                dc.b   2
                dc.l p_AnimatedMapTileset11
                dc.w $7360
                dc.w $60
                dc.b $14
                dc.b   2
                dc.l p_AnimatedMapTileset12
                dc.w $7420
                dc.w $70
                dc.b   8
                dc.b   2
                dc.l p_AnimatedMapTileset16
                dc.w $72A0
                dc.w $130
                dc.b $18
                dc.b   3
                dc.l p_AnimatedMapTileset13
                dc.w $7400
                dc.w $80
                dc.b   8
                dc.b   2
                dc.l p_AnimatedMapTileset14
                dc.w $7400
                dc.w $80
                dc.b   8
                dc.b   2
                dc.l p_AnimatedMapTileset15
                dc.w $7300
                dc.w $30
                dc.b   8
                dc.b   2
                dc.l p_AnimatedMapTileset17
                dc.w $7360
                dc.w $D0
                dc.b $14
                dc.b   3
                dc.l p_AnimatedMapTileset18
                dc.w $7300
                dc.w $100
                dc.b   8
                dc.b   3
                dc.l p_AnimatedMapTileset19
                dc.w $73C0
                dc.w $A0
                dc.b   8
                dc.b   2
                dc.l p_AnimatedMapTileset20
                dc.w $72E0
                dc.w $110
                dc.b   8
                dc.b   3
                dc.l p_AnimatedMapTileset21

; =============== S U B R O U T I N E =======================================

; related to map warp data

sub_9EF8:
                
                lea     (byte_FF1218).l,a1
                clr.b   d7
                move.w  (CURRENT_MAP).l,d0
                bsr.s   sub_9F1C        
                move.w  (CURRENT_MAP).l,d0
                bsr.w   sub_A180
                cmp.w   (CURRENT_MAP).l,d0
                beq.w   return_A0A0

    ; End of function sub_9EF8


; =============== S U B R O U T I N E =======================================

; uses map warp data

sub_9F1C:
                
                movea.l (p_MapWarps).l,a0
loc_9F22:
                
                move.w  (a0),d1
                bmi.w   loc_A09C
                andi.w  #$3FF,d1
                cmp.w   d1,d0
                bne.w   loc_9FE4
                addq.b  #1,d7
                cmpi.b  #$20,d7 
                bhi.w   loc_A0A2
                move.w  (a0),d1
                rol.w   #7,d1
                andi.b  #$3F,d1 
                move.w  2(a0),d3
                move.w  d3,(a1)+
                move.w  4(a0),d4
                andi.w  #$3FF,d4
                move.w  d4,(a1)+
                move.w  6(a0),d5
                move.b  d1,d6
                andi.b  #$30,d1 
                beq.s   loc_9F74
                cmpi.b  #$10,d1
                bne.s   loc_9F6A
                subq.b  #1,d5
                bra.s   loc_9F74
loc_9F6A:
                
                cmpi.b  #$20,d1 
                bne.s   loc_9F74
                subi.w  #$100,d5
loc_9F74:
                
                move.w  d5,(a1)+
                move.b  d6,d1
                andi.b  #$C,d6
                beq.w   loc_A096
                cmpi.b  #4,d6
                bne.s   loc_9F90
                addi.w  #$100,d3
                addi.w  #$100,d5
                bra.s   loc_9F9C
loc_9F90:
                
                cmpi.b  #8,d6
                bne.w   loc_A096
                addq.b  #1,d3
                addq.b  #1,d5
loc_9F9C:
                
                addq.b  #1,d7
                cmpi.b  #$20,d7 
                bhi.w   loc_A0A2
                move.w  d3,(a1)+
                move.w  d4,(a1)+
                move.w  d5,(a1)+
                andi.b  #2,d1
                beq.w   loc_A096
                cmpi.b  #4,d6
                bne.s   loc_9FC4
                addi.w  #$100,d3
                addi.w  #$100,d5
                bra.s   loc_9FD0
loc_9FC4:
                
                cmpi.b  #8,d6
                bne.w   loc_A096
                addq.b  #1,d3
                addq.b  #1,d5
loc_9FD0:
                
                addq.b  #1,d7
                cmpi.b  #$20,d7 
                bhi.w   loc_A0A2
                move.w  d3,(a1)+
                move.w  d4,(a1)+
                move.w  d5,(a1)+
                bra.w   loc_A096
loc_9FE4:
                
                move.w  4(a0),d1
                andi.w  #$3FF,d1
                cmp.w   d1,d0
                bne.w   loc_A096
                addq.b  #1,d7
                cmpi.b  #$20,d7 
                bhi.w   loc_A0A2
                move.w  (a0),d1
                rol.w   #7,d1
                andi.b  #$3F,d1 
                move.w  6(a0),d3
                move.w  d3,(a1)+
                move.w  (a0),d4
                andi.w  #$3FF,d4
                move.w  d4,(a1)+
                move.w  2(a0),d5
                move.b  d1,d6
                andi.b  #$30,d1 
                beq.s   loc_A032
                cmpi.b  #$10,d1
                bne.s   loc_A028
                addq.b  #1,d5
                bra.s   loc_A032
loc_A028:
                
                cmpi.b  #$20,d1 
                bne.s   loc_A032
                addi.w  #$100,d5
loc_A032:
                
                move.w  d5,(a1)+
                move.b  d6,d1
                andi.b  #$C,d6
                beq.s   loc_A096
                cmpi.b  #4,d6
                bne.s   loc_A04C
                addi.w  #$100,d3
                addi.w  #$100,d5
                bra.s   loc_A056
loc_A04C:
                
                cmpi.b  #8,d6
                bne.s   loc_A096
                addq.b  #1,d3
                addq.b  #1,d5
loc_A056:
                
                addq.b  #1,d7
                cmpi.b  #$20,d7 
                bhi.w   loc_A0A2
                move.w  d3,(a1)+
                move.w  d4,(a1)+
                move.w  d5,(a1)+
                andi.b  #2,d1
                beq.s   loc_A096
                cmpi.b  #4,d6
                bne.s   loc_A07C
                addi.w  #$100,d3
                addi.w  #$100,d5
                bra.s   loc_A086
loc_A07C:
                
                cmpi.b  #8,d6
                bne.s   loc_A096
                addq.b  #1,d3
                addq.b  #1,d5
loc_A086:
                
                addq.b  #1,d7
                cmpi.b  #$20,d7 
                bhi.w   loc_A0A2
                move.w  d3,(a1)+
                move.w  d4,(a1)+
                move.w  d5,(a1)+
loc_A096:
                
                addq.l  #8,a0
                bra.w   loc_9F22
loc_A09C:
                
                move.w  #$FFFF,(a1)

    ; End of function sub_9F1C


; START OF FUNCTION CHUNK FOR sub_9EF8

return_A0A0:
                
                rts

; END OF FUNCTION CHUNK FOR sub_9EF8


; START OF FUNCTION CHUNK FOR sub_9F1C

loc_A0A2:
                
                tst.w   (DebugModeAccessWord).w
                bmi.w   loc_A09C
                move.w  #$1D,d7

; END OF FUNCTION CHUNK FOR sub_9F1C

byte_A0AE:      sndCom  SFX_ITEM_DROP
                move.w  #2,d0
                jsr     (j_Sleep).l
                dbf     d7,byte_A0AE
                bra.s   loc_A09C

; =============== S U B R O U T I N E =======================================

sub_A0C2:
                
                lea     (byte_FF1218).l,a0
                move.b  (dword_FF5400).l,d0
                move.b  (dword_FF5400+1).l,d1
loc_A0D4:
                
                move.b  (a0),d2
                bmi.s   return_A10E
                cmp.b   d2,d0
                bne.s   loc_A110
                cmp.b   1(a0),d1
                bne.s   loc_A110
                move.w  2(a0),d0
                move.w  d0,(word_FF1206).l
                bsr.w   sub_A14C
                move.w  d0,(CURRENT_MAP).l
                move.b  4(a0),(dword_FF5400).l
                move.b  5(a0),(dword_FF5400+1).l
                move.w  #$808,(dword_FF5400+2).l
return_A10E:
                
                rts
loc_A110:
                
                addq.w  #6,a0
                bra.s   loc_A0D4

    ; End of function sub_A0C2


; =============== S U B R O U T I N E =======================================

sub_A114:
                
                lea     word_A1A8(pc), a0
                bsr.s   sub_A12E
                move.w  d1,(word_FF12DA).l
                lea     word_A35A(pc), a0
                bsr.s   sub_A12E
                move.w  d1,(word_FF12DC).l
                rts

    ; End of function sub_A114


; =============== S U B R O U T I N E =======================================

sub_A12E:
                
                move.w  (CURRENT_MAP).l,d0
                bsr.s   sub_A180
                move.w  #$FFFF,d1
loc_A13A:
                
                move.w  (a0),d1
                bmi.s   return_A14A
                cmp.w   d0,d1
                beq.s   loc_A146
                addq.l  #4,a0
                bra.s   loc_A13A
loc_A146:
                
                move.w  2(a0),d1
return_A14A:
                
                rts

    ; End of function sub_A12E


; =============== S U B R O U T I N E =======================================

sub_A14C:
                
                movem.l d1-d2/a0-a1,-(sp)
                lea     MapVariantTriggersTable(pc), a0
                lea     (MAIN_FLAGS).l,a1
loc_A15A:
                
                move.w  (a0),d1
                bmi.s   loc_A17A
                cmp.w   d0,d1
                bne.s   loc_A176
                clr.w   d1
                move.b  4(a0),d1
                move.b  5(a0),d2
                btst    d2,(a1,d1.w)
                beq.s   loc_A176
                move.w  2(a0),d0
loc_A176:
                
                addq.l  #6,a0
                bra.s   loc_A15A
loc_A17A:
                
                movem.l (sp)+,d1-d2/a0-a1
                rts

    ; End of function sub_A14C


; =============== S U B R O U T I N E =======================================

sub_A180:
                
                movem.l d1-d3/a0-a1,-(sp)
                move.w  d0,d3
                lea     MapVariantTriggersTable(pc), a0
                lea     (MAIN_FLAGS).l,a1
loc_A190:
                
                move.w  2(a0),d1
                bmi.s   loc_A1A0
                cmp.w   d0,d1
                bne.s   loc_A19C
                move.w  (a0),d3
loc_A19C:
                
                addq.l  #6,a0
                bra.s   loc_A190
loc_A1A0:
                
                move.w  d3,d0
                movem.l (sp)+,d1-d3/a0-a1
                rts

    ; End of function sub_A180

word_A1A8:      dc.w $E
                dc.w $A
                dc.w $17
                dc.w 6
                dc.w $1A
                dc.w $E
                dc.w $1D
                dc.w $1A
                dc.w $22
                dc.w $20
                dc.w $23
                dc.w $22
                dc.w $28
                dc.w $50
                dc.w $31
                dc.w $52
                dc.w $33
                dc.w $28
                dc.w $34
                dc.w $28
                dc.w $35
                dc.w $28
                dc.w $36
                dc.w $28
                dc.w $50
                dc.w $5B
                dc.w $51
                dc.w $5C
                dc.w $68
                dc.w $5A
                dc.w $69
                dc.w $68
                dc.w $6A
                dc.w $5D
                dc.w $7B
                dc.w $73
                dc.w $7C
                dc.w $74
                dc.w $7D
                dc.w $7B
                dc.w $80
                dc.w $7D
                dc.w $82
                dc.w $7D
                dc.w $83
                dc.w $7E
                dc.w $84
                dc.w $80
                dc.w $86
                dc.w $82
                dc.w $88
                dc.w $83
                dc.w $9F
                dc.w $A3
                dc.w $A0
                dc.w $A3
                dc.w $B3
                dc.w $AE
                dc.w $B6
                dc.w $B2
                dc.w $C0
                dc.w $CF
                dc.w $C7
                dc.w $BC
                dc.w $C9
                dc.w $BC
                dc.w $CA
                dc.w $BC
                dc.w $CB
                dc.w $BD
                dc.w $CF
                dc.w $B9
                dc.w $D8
                dc.w $C3
                dc.w $DB
                dc.w $C0
                dc.w $DF
                dc.w $DD
                dc.w $E2
                dc.w $DF
                dc.w $E6
                dc.w $F6
                dc.w $101
                dc.w $105
                dc.w $104
                dc.w $F5
                dc.w $105
                dc.w $106
                dc.w $110
                dc.w $10E
                dc.w $113
                dc.w $110
                dc.w $117
                dc.w $113
                dc.w $118
                dc.w $116
                dc.w $124
                dc.w $136
                dc.w $125
                dc.w $13A
                dc.w $127
                dc.w $144
                dc.w $128
                dc.w $13E
                dc.w $136
                dc.w $14A
                dc.w $138
                dc.w $14F
                dc.w $13C
                dc.w $14E
                dc.w $140
                dc.w $151
                dc.w $142
                dc.w $154
                dc.w $145
                dc.w $148
                dc.w $169
                dc.w $16B
                dc.w $16A
                dc.w $169
                dc.w $16F
                dc.w $170
                dc.w $172
                dc.w $17D
                dc.w $173
                dc.w $196
                dc.w $175
                dc.w $176
                dc.w $18F
                dc.w $190
                dc.w $190
                dc.w $191
                dc.w $191
                dc.w $192
                dc.w $192
                dc.w $193
                dc.w $196
                dc.w $197
                dc.w $197
                dc.w $198
                dc.w $199
                dc.w $19A
                dc.w $1A2
                dc.w $1A3
                dc.w $1A3
                dc.w $1A4
                dc.w $1A4
                dc.w $1A2
                dc.w $1DE
                dc.w $1E1
                dc.w $1F2
                dc.w $1AA
                dc.w $211
                dc.w $104
                dc.w $221
                dc.w $122
                dc.w $230
                dc.w $244
                dc.w $233
                dc.w $248
                dc.w $235
                dc.w $23F
                dc.w $236
                dc.w $240
                dc.w $271
                dc.w $264
                dc.w $272
                dc.w $271
                dc.w $276
                dc.w $297
                dc.w $277
                dc.w $297
                dc.w $278
                dc.w $297
                dc.w $2C0
                dc.w $29C
                dc.w $2D6
                dc.w $10F
                dc.w $2EE
                dc.w $2F4
                dc.w $2EF
                dc.w $2F3
                dc.w $2F0
                dc.w $2EE
                dc.w $2F1
                dc.w $2EE
                dc.w $2FC
                dc.w $2F7
                dc.w $30F
                dc.w $30D
                dc.w $311
                dc.w $313
                dc.w $312
                dc.w $311
                dc.w $313
                dc.w $318
                dc.w $318
                dc.w $31D
                dc.w $323
                dc.w $325
                dc.w $324
                dc.w $323
                dc.w $328
                dc.w $32A
                dc.w $329
                dc.w $328
                dc.w $32A
                dc.w $32B
                dc.w $32B
                dc.w $32C
                dc.w $32C
                dc.w $32D
                dc.w $32D
                dc.w $32E
                dc.w $32E
                dc.w $32F
                dc.w $FFFF
word_A35A:      dc.w $31D
                dc.w $318
                dc.w $318
                dc.w $313
                dc.w $313
                dc.w $311
                dc.w $311
                dc.w $312
                dc.w $32F
                dc.w $32E
                dc.w $32E
                dc.w $32D
                dc.w $32B
                dc.w $32A
                dc.w $32A
                dc.w $328
                dc.w $328
                dc.w $329
                dc.w $B9
                dc.w $CF
                dc.w $BC
                dc.w $C7
                dc.w $DD
                dc.w $DF
                dc.w $DF
                dc.w $E2
                dc.w $5C
                dc.w $51
                dc.w $52
                dc.w $31
                dc.w $5D
                dc.w $6A
                dc.w $2F3
                dc.w $2EF
                dc.w $2F7
                dc.w $2FC
                dc.w $106
                dc.w $105
                dc.w $105
                dc.w $101
                dc.w $F5
                dc.w $104
                dc.w $104
                dc.w $211
                dc.w $23F
                dc.w $235
                dc.w $240
                dc.w $236
                dc.w $248
                dc.w $233
                dc.w $244
                dc.w $230
                dc.w $297
                dc.w $276
                dc.w $122
                dc.w $221
                dc.w $10F
                dc.w $2D6
                dc.w $323
                dc.w $324
                dc.w $325
                dc.w $323
                dc.w $FFFF
MapVariantTriggersTable:
                MapVariantTrigger $B9, $BA, 0, 3
                MapVariantTrigger $C0, $C1, 0, 3
                MapVariantTrigger $CF, $D0, 0, 3
                MapVariantTrigger $DB, $DC, 0, 3
                MapVariantTrigger $E0, $E1, 4, 1
                MapVariantTrigger $259, $25A, 2, 4
                MapVariantTrigger $25A, $25B, 2, 5
                MapVariantTrigger $259, $25B, 2, 5
                MapVariantTrigger $2F0, $2F1, 3, 1
                MapVariantTrigger $3B, $3C, $12, 1
                MapVariantTrigger $3C, $3D, $17, 7
                MapVariantTrigger $3B, $3D, $17, 7
                MapVariantTrigger $53, $54, $20, 5
                MapVariantTrigger $276, $277, $14, 0
                MapVariantTrigger $279, $27A, $14, 0
                MapVariantTrigger $294, $295, $14, 0
                MapVariantTrigger $295, $294, $26, 1
                MapVariantTrigger $281, $282, $14, 0
                MapVariantTrigger $282, $283, $20, 5
                MapVariantTrigger $281, $283, $20, 5
                MapVariantTrigger $273, $274, $20, 5
                MapVariantTrigger $274, $275, $26, 1
                MapVariantTrigger $273, $275, $26, 1
                MapVariantTrigger $20, $21, $20, 5
                MapVariantTrigger $44, $45, $20, 5
                MapVariantTrigger $41, $42, $20, 5
                MapVariantTrigger $37, $38, $12, 1
                MapVariantTrigger $38, $39, $17, 7
                MapVariantTrigger $37, $39, $17, 7
                MapVariantTrigger $39, $3A, $20, 5
                MapVariantTrigger $38, $3A, $20, 5
                MapVariantTrigger $37, $3A, $20, 5
                MapVariantTrigger $33, $34, $12, 1
                MapVariantTrigger $34, $35, $17, 7
                MapVariantTrigger $33, $35, $17, 7
                MapVariantTrigger $35, $36, $20, 5
                MapVariantTrigger $34, $36, $20, 5
                MapVariantTrigger $33, $36, $20, 5
                MapVariantTrigger $4E, $4F, $20, 5
                MapVariantTrigger $3F, $40, $20, 5
                MapVariantTrigger $3D, $3E, $20, 5
                MapVariantTrigger $3C, $3E, $20, 5
                MapVariantTrigger $3B, $3E, $20, 5
                MapVariantTrigger $56, $57, $20, 5
                MapVariantTrigger $58, $59, $20, 5
                MapVariantTrigger $4A, $4B, $20, 5
                MapVariantTrigger $62, $63, $20, 5
                MapVariantTrigger $65, $66, $20, 5
                MapVariantTrigger $5E, $5F, $20, 5
                MapVariantTrigger $277, $278, $20, 5
                MapVariantTrigger $276, $278, $20, 5
                MapVariantTrigger $27A, $27B, $20, 5
                MapVariantTrigger $279, $27B, $20, 5
                MapVariantTrigger $2BD, $2BE, $20, 5
                MapVariantTrigger $2AD, $2AE, $20, 5
                MapVariantTrigger $2A9, $2AA, $2A, 5
                MapVariantTrigger $2AB, $2AC, $20, 5
                MapVariantTrigger $2A6, $2A7, $20, 5
                MapVariantTrigger $2A1, $2A2, $20, 5
                MapVariantTrigger $2B1, $2B2, $20, 5
                MapVariantTrigger $2AF, $2B0, $20, 5
                MapVariantTrigger $2B3, $2B4, $20, 5
                MapVariantTrigger $29E, $29F, $20, 5
                MapVariantTrigger $2C1, $2C2, $20, 5
                MapVariantTrigger $29C, $29D, $20, 5
                MapVariantTrigger $2BB, $2BC, $20, 5
                MapVariantTrigger $2B7, $2B9, $2A, 4
                MapVariantTrigger $2B9, $2B8, $2A, 3
                MapVariantTrigger $2B7, $2B8, $2A, 4
                MapVariantTrigger $26F, $270, $20, 5
                MapVariantTrigger $26C, $26D, $20, 5
                MapVariantTrigger $262, $263, $20, 5
                MapVariantTrigger $283, $284, $26, 1
                MapVariantTrigger $282, $284, $26, 1
                MapVariantTrigger $281, $284, $26, 1
                MapVariantTrigger $1ED, $1EE, $26, 1
                MapVariantTrigger $1EE, $1F0, $28, 4
                MapVariantTrigger $1ED, $1F0, $28, 4
                MapVariantTrigger $2C9, $2CA, $28, 0
                MapVariantTrigger $2CB, $2CC, $28, 0
                MapVariantTrigger $2CD, $2CE, $28, 0
                MapVariantTrigger $2CF, $2D0, $28, 0
                MapVariantTrigger $2D2, $2D3, $28, 0
                MapVariantTrigger $2D4, $2D5, $28, 0
                MapVariantTrigger $2C7, $2C8, $28, 0
                MapVariantTrigger $20B, $20C, $27, 2
                MapVariantTrigger $95, $96, $2A, 6
                MapVariantTrigger $97, $98, $2A, 6
                MapVariantTrigger $99, $9A, $2A, 6
                MapVariantTrigger $9D, $9E, $2A, 6
                MapVariantTrigger $90, $91, $2A, 6
                MapVariantTrigger $92, $93, $2A, 6
                MapVariantTrigger $9F, $A0, $2A, 6
                MapVariantTrigger $A3, $A4, $2A, 6
                MapVariantTrigger $A5, $A6, $2A, 6
                MapVariantTrigger $158, $159, $10, 7
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_A61C:
                
                move.b  (byte_FF1124).l,d0
                move.b  (byte_FF1125).l,d1
                subi.b  #$B,d0
                lea     byte_B77E(pc), a6
loc_A630:
                
                move.w  (word_FF1184).l,d2
                add.w   d2,d2
                move.w  (a6,d2.w),d2
                bsr.w   sub_C37E
                moveq   #$B,d7
                movea.l (dword_FF1840).l,a0
                lea     (MAP_BLOCKS).l,a4
                movea.l a4,a5
                addq.w  #4,a5
loc_A652:
                
                bsr.w   sub_A748
                suba.w  #$92,a6 
                subi.w  #$1F,d2
                beq.s   loc_A672
                bpl.s   loc_A678
                addi.w  #$210,d2
                cmpi.w  #$200,d2
                bcs.s   loc_A684
                subi.w  #$20,d2 
                bra.s   loc_A684
loc_A672:
                
                move.w  #$1F0,d2
                bra.s   loc_A684
loc_A678:
                
                move.b  d2,d6
                andi.b  #$1F,d6
                bne.s   loc_A684
                subi.w  #$20,d2 
loc_A684:
                
                dbf     d7,loc_A652
                move.l  a0,(dword_FF1840).l
                addi.b  #$C,(byte_FF1128).l
                rts

    ; End of function sub_A61C


; =============== S U B R O U T I N E =======================================

sub_A698:
                
                move.b  (byte_FF1124).l,d0
                move.b  (byte_FF1125).l,d1
                addi.b  #$B,d1
                lea     unk_BB7E(pc), a6
                bra.w   loc_A630

    ; End of function sub_A698


; =============== S U B R O U T I N E =======================================

sub_A6B0:
                
                move.b  (byte_FF1124).l,d0
                move.b  (byte_FF1125).l,d1
                subi.b  #$B,d0
                lea     byte_B77E(pc), a6
loc_A6C4:
                
                move.w  (word_FF1184).l,d2
                add.w   d2,d2
                move.w  (a6,d2.w),d2
                bsr.w   sub_C37E
                moveq   #$B,d7
                movea.l (dword_FF1840).l,a0
                lea     (MAP_BLOCKS).l,a4
                movea.l a4,a5
                addq.w  #4,a5
loc_A6E6:
                
                bsr.w   sub_A748
                adda.w  #$96,a6 
                addi.w  #$21,d2 
                cmpi.w  #$220,d2
                beq.s   loc_A712
                move.b  d2,d6
                andi.b  #$1F,d6
                beq.s   loc_A718
                cmpi.w  #$200,d2
                bcs.s   loc_A71C
                subi.w  #$210,d2
                bpl.s   loc_A71C
                addi.w  #$20,d2 
                bra.s   loc_A71C
loc_A712:
                
                move.w  #$10,d2
                bra.s   loc_A71C
loc_A718:
                
                subi.w  #$20,d2 
loc_A71C:
                
                dbf     d7,loc_A6E6
                move.l  a0,(dword_FF1840).l
                addi.b  #$C,(byte_FF1128).l
                rts

    ; End of function sub_A6B0


; =============== S U B R O U T I N E =======================================

sub_A730:
                
                move.b  (byte_FF1124).l,d0
                move.b  (byte_FF1125).l,d1
                subi.b  #$B,d1
                lea     unk_BF7E(pc), a6
                bra.w   loc_A6C4

    ; End of function sub_A730


; =============== S U B R O U T I N E =======================================

sub_A748:
                
                move.w  (a6),d4
                andi.w  #$3FF,d4
                lsl.w   #3,d4
                move.w  $2AC8(a6),d5
                andi.w  #$3FF,d5
                lsl.w   #3,d5
                move.w  d2,d6
                lea     word_A77E(pc), a1
                lsl.w   #3,d6
                adda.w  d6,a1
                move.w  (a1)+,(a0)+
                move.l  (a4,d4.w),(a0)+
                move.w  (a1)+,(a0)+
                move.l  (a4,d5.w),(a0)+
                move.w  (a1)+,(a0)+
                move.l  (a5,d4.w),(a0)+
                move.w  (a1)+,(a0)+
                move.l  (a5,d5.w),(a0)+
                rts

    ; End of function sub_A748

word_A77E:      dc.w $4000
                dc.w $6004
                dc.w $4080
                dc.w $6084
                dc.w $4084
                dc.w $6088
                dc.w $4104
                dc.w $6108
                dc.w $4108
                dc.w $610C
                dc.w $4188
                dc.w $618C
                dc.w $418C
                dc.w $6190
                dc.w $420C
                dc.w $6210
                dc.w $4210
                dc.w $6214
                dc.w $4290
                dc.w $6294
                dc.w $4294
                dc.w $6298
                dc.w $4314
                dc.w $6318
                dc.w $4318
                dc.w $631C
                dc.w $4398
                dc.w $639C
                dc.w $439C
                dc.w $63A0
                dc.w $441C
                dc.w $6420
                dc.w $4420
                dc.w $6424
                dc.w $44A0
                dc.w $64A4
                dc.w $44A4
                dc.w $64A8
                dc.w $4524
                dc.w $6528
                dc.w $4528
                dc.w $652C
                dc.w $45A8
                dc.w $65AC
                dc.w $45AC
                dc.w $65B0
                dc.w $462C
                dc.w $6630
                dc.w $4630
                dc.w $6634
                dc.w $46B0
                dc.w $66B4
                dc.w $46B4
                dc.w $66B8
                dc.w $4734
                dc.w $6738
                dc.w $4738
                dc.w $673C
                dc.w $47B8
                dc.w $67BC
                dc.w $47BC
                dc.w $67C0
                dc.w $483C
                dc.w $6840
                dc.w $4840
                dc.w $6844
                dc.w $48C0
                dc.w $68C4
                dc.w $48C4
                dc.w $68C8
                dc.w $4944
                dc.w $6948
                dc.w $4948
                dc.w $694C
                dc.w $49C8
                dc.w $69CC
                dc.w $49CC
                dc.w $69D0
                dc.w $4A4C
                dc.b $6A 
                dc.b $50 
                dc.b $4A 
                dc.b $50 
                dc.b $6A 
                dc.b $54 
                dc.b $4A 
                dc.b $D0 
                dc.b $6A 
                dc.b $D4 
                dc.b $4A 
                dc.b $D4 
                dc.b $6A 
                dc.b $D8 
                dc.b $4B 
                dc.b $54 
                dc.b $6B 
                dc.b $58 
                dc.b $4B 
                dc.b $58 
                dc.b $6B 
                dc.b $5C 
                dc.b $4B 
                dc.b $D8 
                dc.b $6B 
                dc.b $DC 
                dc.b $4B 
                dc.b $DC 
                dc.b $6B 
                dc.b $E0 
                dc.b $4C 
                dc.b $5C 
                dc.b $6C 
                dc.b $60 
                dc.b $4C 
                dc.b $60 
                dc.b $6C 
                dc.b $64 
                dc.b $4C 
                dc.b $E0 
                dc.b $6C 
                dc.b $E4 
                dc.b $4C 
                dc.b $E4 
                dc.b $6C 
                dc.b $E8 
                dc.b $4D 
                dc.b $64 
                dc.b $6D 
                dc.b $68 
                dc.b $4D 
                dc.b $68 
                dc.b $6D 
                dc.b $6C 
                dc.b $4D 
                dc.b $E8 
                dc.b $6D 
                dc.b $EC 
                dc.b $4D 
                dc.b $EC 
                dc.b $6D 
                dc.b $F0 
                dc.b $4E 
                dc.b $6C 
                dc.b $6E 
                dc.b $70 
                dc.b $4E 
                dc.b $70 
                dc.b $6E 
                dc.b $74 
                dc.b $4E 
                dc.b $F0 
                dc.b $6E 
                dc.b $F4 
                dc.b $4E 
                dc.b $F4 
                dc.b $6E 
                dc.b $F8 
                dc.b $4F 
                dc.b $74 
                dc.b $6F 
                dc.b $78 
                dc.b $4F 
                dc.b $78 
                dc.b $6F 
                dc.b $7C 
                dc.b $4F 
                dc.b $F8 
                dc.b $6F 
                dc.b $FC 
                dc.b $4F 
                dc.b $FC 
                dc.b $6F 
                dc.b $80 
                dc.b $40 
                dc.b $7C 
                dc.b $60 
                dc.b   0
                dc.b $40 
                dc.b $FC 
                dc.b $60 
                dc.b $80 
                dc.b $41 
                dc.b $7C 
                dc.b $61 
                dc.b   0
                dc.b $41 
                dc.b   0
                dc.b $61 
                dc.b   4
                dc.b $41 
                dc.b $80 
                dc.b $61 
                dc.b $84 
                dc.b $41 
                dc.b $84 
                dc.b $61 
                dc.b $88 
                dc.b $42 
                dc.b   4
                dc.b $62 
                dc.b   8
                dc.b $42 
                dc.b   8
                dc.b $62 
                dc.b  $C
                dc.b $42 
                dc.b $88 
                dc.b $62 
                dc.b $8C 
                dc.b $42 
                dc.b $8C 
                dc.b $62 
                dc.b $90 
                dc.b $43 
                dc.b  $C
                dc.b $63 
                dc.b $10
                dc.b $43 
                dc.b $10
                dc.b $63 
                dc.b $14
                dc.b $43 
                dc.b $90 
                dc.b $63 
                dc.b $94 
                dc.b $43 
                dc.b $94 
                dc.b $63 
                dc.b $98 
                dc.b $44 
                dc.b $14
                dc.b $64 
                dc.b $18
                dc.b $44 
                dc.b $18
                dc.b $64 
                dc.b $1C
                dc.b $44 
                dc.b $98 
                dc.b $64 
                dc.b $9C 
                dc.b $44 
                dc.b $9C 
                dc.b $64 
                dc.b $A0 
                dc.b $45 
                dc.b $1C
                dc.b $65 
                dc.b $20
                dc.b $45 
                dc.b $20
                dc.b $65 
                dc.b $24 
                dc.b $45 
                dc.b $A0 
                dc.b $65 
                dc.b $A4 
                dc.b $45 
                dc.b $A4 
                dc.b $65 
                dc.b $A8 
                dc.b $46 
                dc.b $24 
                dc.b $66 
                dc.b $28 
                dc.b $46 
                dc.b $28 
                dc.b $66 
                dc.b $2C 
                dc.b $46 
                dc.b $A8 
                dc.b $66 
                dc.b $AC 
                dc.b $46 
                dc.b $AC 
                dc.b $66 
                dc.b $B0 
                dc.b $47 
                dc.b $2C 
                dc.b $67 
                dc.b $30 
                dc.b $47 
                dc.b $30 
                dc.b $67 
                dc.b $34 
                dc.b $47 
                dc.b $B0 
                dc.b $67 
                dc.b $B4 
                dc.b $47 
                dc.b $B4 
                dc.b $67 
                dc.b $B8 
                dc.b $48 
                dc.b $34 
                dc.b $68 
                dc.b $38 
                dc.b $48 
                dc.b $38 
                dc.b $68 
                dc.b $3C 
                dc.b $48 
                dc.b $B8 
                dc.b $68 
                dc.b $BC 
                dc.b $48 
                dc.b $BC 
                dc.b $68 
                dc.b $C0 
                dc.b $49 
                dc.b $3C 
                dc.b $69 
                dc.b $40 
                dc.b $49 
                dc.b $40 
                dc.b $69 
                dc.b $44 
                dc.b $49 
                dc.b $C0 
                dc.b $69 
                dc.b $C4 
                dc.b $49 
                dc.b $C4 
                dc.b $69 
                dc.b $C8 
                dc.b $4A 
                dc.b $44 
                dc.b $6A 
                dc.b $48 
                dc.b $4A 
                dc.b $48 
                dc.b $6A 
                dc.b $4C 
                dc.b $4A 
                dc.b $C8 
                dc.b $6A 
                dc.b $CC 
                dc.b $4A 
                dc.b $CC 
                dc.b $6A 
                dc.b $D0 
                dc.b $4B 
                dc.b $4C 
                dc.b $6B 
                dc.b $50 
                dc.b $4B 
                dc.b $50 
                dc.b $6B 
                dc.b $54 
                dc.b $4B 
                dc.b $D0 
                dc.b $6B 
                dc.b $D4 
                dc.b $4B 
                dc.b $D4 
                dc.b $6B 
                dc.b $D8 
                dc.b $4C 
                dc.b $54 
                dc.b $6C 
                dc.b $58 
                dc.b $4C 
                dc.b $58 
                dc.b $6C 
                dc.b $5C 
                dc.b $4C 
                dc.b $D8 
                dc.b $6C 
                dc.b $DC 
                dc.b $4C 
                dc.b $DC 
                dc.b $6C 
                dc.b $E0 
                dc.b $4D 
                dc.b $5C 
                dc.b $6D 
                dc.b $60 
                dc.b $4D 
                dc.b $60 
                dc.b $6D 
                dc.b $64 
                dc.b $4D 
                dc.b $E0 
                dc.b $6D 
                dc.b $E4 
                dc.b $4D 
                dc.b $E4 
                dc.b $6D 
                dc.b $E8 
                dc.b $4E 
                dc.b $64 
                dc.b $6E 
                dc.b $68 
                dc.b $4E 
                dc.b $68 
                dc.b $6E 
                dc.b $6C 
                dc.b $4E 
                dc.b $E8 
                dc.b $6E 
                dc.b $EC 
                dc.b $4E 
                dc.b $EC 
                dc.b $6E 
                dc.b $F0 
                dc.b $4F 
                dc.b $6C 
                dc.b $6F 
                dc.b $70 
                dc.b $4F 
                dc.b $70 
                dc.b $6F 
                dc.b $74 
                dc.b $4F 
                dc.b $F0 
                dc.b $6F 
                dc.b $F4 
                dc.b $4F 
                dc.b $F4 
                dc.b $6F 
                dc.b $F8 
                dc.b $40 
                dc.b $74 
                dc.b $60 
                dc.b $78 
                dc.b $40 
                dc.b $78 
                dc.b $60 
                dc.b $7C 
                dc.b $40 
                dc.b $F8 
                dc.b $60 
                dc.b $FC 
                dc.b $41 
                dc.b $78 
                dc.b $61 
                dc.b $7C 
                dc.b $41 
                dc.b $F8 
                dc.b $61 
                dc.b $FC 
                dc.b $41 
                dc.b $FC 
                dc.b $61 
                dc.b $80 
                dc.b $42 
                dc.b $7C 
                dc.b $62 
                dc.b   0
                dc.b $42 
                dc.b   0
                dc.b $62 
                dc.b   4
                dc.b $42 
                dc.b $80 
                dc.b $62 
                dc.b $84 
                dc.b $42 
                dc.b $84 
                dc.b $62 
                dc.b $88 
                dc.b $43 
                dc.b   4
                dc.b $63 
                dc.b   8
                dc.b $43 
                dc.b   8
                dc.b $63 
                dc.b  $C
                dc.b $43 
                dc.b $88 
                dc.b $63 
                dc.b $8C 
                dc.b $43 
                dc.b $8C 
                dc.b $63 
                dc.b $90 
                dc.b $44 
                dc.b  $C
                dc.b $64 
                dc.b $10
                dc.b $44 
                dc.b $10
                dc.b $64 
                dc.b $14
                dc.b $44 
                dc.b $90 
                dc.b $64 
                dc.b $94 
                dc.b $44 
                dc.b $94 
                dc.b $64 
                dc.b $98 
                dc.b $45 
                dc.b $14
                dc.b $65 
                dc.b $18
                dc.b $45 
                dc.b $18
                dc.b $65 
                dc.b $1C
                dc.b $45 
                dc.b $98 
                dc.b $65 
                dc.b $9C 
                dc.b $45 
                dc.b $9C 
                dc.b $65 
                dc.b $A0 
                dc.b $46 
                dc.b $1C
                dc.b $66 
                dc.b $20
                dc.b $46 
                dc.b $20
                dc.b $66 
                dc.b $24 
                dc.b $46 
                dc.b $A0 
                dc.b $66 
                dc.b $A4 
                dc.b $46 
                dc.b $A4 
                dc.b $66 
                dc.b $A8 
                dc.b $47 
                dc.b $24 
                dc.b $67 
                dc.b $28 
                dc.b $47 
                dc.b $28 
                dc.b $67 
                dc.b $2C 
                dc.b $47 
                dc.b $A8 
                dc.b $67 
                dc.b $AC 
                dc.b $47 
                dc.b $AC 
                dc.b $67 
                dc.b $B0 
                dc.b $48 
                dc.b $2C 
                dc.b $68 
                dc.b $30 
                dc.b $48 
                dc.b $30 
                dc.b $68 
                dc.b $34 
                dc.b $48 
                dc.b $B0 
                dc.b $68 
                dc.b $B4 
                dc.b $48 
                dc.b $B4 
                dc.b $68 
                dc.b $B8 
                dc.b $49 
                dc.b $34 
                dc.b $69 
                dc.b $38 
                dc.b $49 
                dc.b $38 
                dc.b $69 
                dc.b $3C 
                dc.b $49 
                dc.b $B8 
                dc.b $69 
                dc.b $BC 
                dc.b $49 
                dc.b $BC 
                dc.b $69 
                dc.b $C0 
                dc.b $4A 
                dc.b $3C 
                dc.b $6A 
                dc.b $40 
                dc.b $4A 
                dc.b $40 
                dc.b $6A 
                dc.b $44 
                dc.b $4A 
                dc.b $C0 
                dc.b $6A 
                dc.b $C4 
                dc.b $4A 
                dc.b $C4 
                dc.b $6A 
                dc.b $C8 
                dc.b $4B 
                dc.b $44 
                dc.b $6B 
                dc.b $48 
                dc.b $4B 
                dc.b $48 
                dc.b $6B 
                dc.b $4C 
                dc.b $4B 
                dc.b $C8 
                dc.b $6B 
                dc.b $CC 
                dc.b $4B 
                dc.b $CC 
                dc.b $6B 
                dc.b $D0 
                dc.b $4C 
                dc.b $4C 
                dc.b $6C 
                dc.b $50 
                dc.b $4C 
                dc.b $50 
                dc.b $6C 
                dc.b $54 
                dc.b $4C 
                dc.b $D0 
                dc.b $6C 
                dc.b $D4 
                dc.b $4C 
                dc.b $D4 
                dc.b $6C 
                dc.b $D8 
                dc.b $4D 
                dc.b $54 
                dc.b $6D 
                dc.b $58 
                dc.b $4D 
                dc.b $58 
                dc.b $6D 
                dc.b $5C 
                dc.b $4D 
                dc.b $D8 
                dc.b $6D 
                dc.b $DC 
                dc.b $4D 
                dc.b $DC 
                dc.b $6D 
                dc.b $E0 
                dc.b $4E 
                dc.b $5C 
                dc.b $6E 
                dc.b $60 
                dc.b $4E 
                dc.b $60 
                dc.b $6E 
                dc.b $64 
                dc.b $4E 
                dc.b $E0 
                dc.b $6E 
                dc.b $E4 
                dc.b $4E 
                dc.b $E4 
                dc.b $6E 
                dc.b $E8 
                dc.b $4F 
                dc.b $64 
                dc.b $6F 
                dc.b $68 
                dc.b $4F 
                dc.b $68 
                dc.b $6F 
                dc.b $6C 
                dc.b $4F 
                dc.b $E8 
                dc.b $6F 
                dc.b $EC 
                dc.b $4F 
                dc.b $EC 
                dc.b $6F 
                dc.b $F0 
                dc.b $40 
                dc.b $6C 
                dc.b $60 
                dc.b $70 
                dc.b $40 
                dc.b $70 
                dc.b $60 
                dc.b $74 
                dc.b $40 
                dc.b $F0 
                dc.b $60 
                dc.b $F4 
                dc.b $40 
                dc.b $F4 
                dc.b $60 
                dc.b $F8 
                dc.b $41 
                dc.b $74 
                dc.b $61 
                dc.b $78 
                dc.b $41 
                dc.b $F4 
                dc.b $61 
                dc.b $F8 
                dc.b $42 
                dc.b $74 
                dc.b $62 
                dc.b $78 
                dc.b $42 
                dc.b $78 
                dc.b $62 
                dc.b $7C 
                dc.b $42 
                dc.b $F8 
                dc.b $62 
                dc.b $FC 
                dc.b $42 
                dc.b $FC 
                dc.b $62 
                dc.b $80 
                dc.b $43 
                dc.b $7C 
                dc.b $63 
                dc.b   0
                dc.b $43 
                dc.b   0
                dc.b $63 
                dc.b   4
                dc.b $43 
                dc.b $80 
                dc.b $63 
                dc.b $84 
                dc.b $43 
                dc.b $84 
                dc.b $63 
                dc.b $88 
                dc.b $44 
                dc.b   4
                dc.b $64 
                dc.b   8
                dc.b $44 
                dc.b   8
                dc.b $64 
                dc.b  $C
                dc.b $44 
                dc.b $88 
                dc.b $64 
                dc.b $8C 
                dc.b $44 
                dc.b $8C 
                dc.b $64 
                dc.b $90 
                dc.b $45 
                dc.b  $C
                dc.b $65 
                dc.b $10
                dc.b $45 
                dc.b $10
                dc.b $65 
                dc.b $14
                dc.b $45 
                dc.b $90 
                dc.b $65 
                dc.b $94 
                dc.b $45 
                dc.b $94 
                dc.b $65 
                dc.b $98 
                dc.b $46 
                dc.b $14
                dc.b $66 
                dc.b $18
                dc.b $46 
                dc.b $18
                dc.b $66 
                dc.b $1C
                dc.b $46 
                dc.b $98 
                dc.b $66 
                dc.b $9C 
                dc.b $46 
                dc.b $9C 
                dc.b $66 
                dc.b $A0 
                dc.b $47 
                dc.b $1C
                dc.b $67 
                dc.b $20
                dc.b $47 
                dc.b $20
                dc.b $67 
                dc.b $24 
                dc.b $47 
                dc.b $A0 
                dc.b $67 
                dc.b $A4 
                dc.b $47 
                dc.b $A4 
                dc.b $67 
                dc.b $A8 
                dc.b $48 
                dc.b $24 
                dc.b $68 
                dc.b $28 
                dc.b $48 
                dc.b $28 
                dc.b $68 
                dc.b $2C 
                dc.b $48 
                dc.b $A8 
                dc.b $68 
                dc.b $AC 
                dc.b $48 
                dc.b $AC 
                dc.b $68 
                dc.b $B0 
                dc.b $49 
                dc.b $2C 
                dc.b $69 
                dc.b $30 
                dc.b $49 
                dc.b $30 
                dc.b $69 
                dc.b $34 
                dc.b $49 
                dc.b $B0 
                dc.b $69 
                dc.b $B4 
                dc.b $49 
                dc.b $B4 
                dc.b $69 
                dc.b $B8 
                dc.b $4A 
                dc.b $34 
                dc.b $6A 
                dc.b $38 
                dc.b $4A 
                dc.b $38 
                dc.b $6A 
                dc.b $3C 
                dc.b $4A 
                dc.b $B8 
                dc.b $6A 
                dc.b $BC 
                dc.b $4A 
                dc.b $BC 
                dc.b $6A 
                dc.b $C0 
                dc.b $4B 
                dc.b $3C 
                dc.b $6B 
                dc.b $40 
                dc.b $4B 
                dc.b $40 
                dc.b $6B 
                dc.b $44 
                dc.b $4B 
                dc.b $C0 
                dc.b $6B 
                dc.b $C4 
                dc.b $4B 
                dc.b $C4 
                dc.b $6B 
                dc.b $C8 
                dc.b $4C 
                dc.b $44 
                dc.b $6C 
                dc.b $48 
                dc.b $4C 
                dc.b $48 
                dc.b $6C 
                dc.b $4C 
                dc.b $4C 
                dc.b $C8 
                dc.b $6C 
                dc.b $CC 
                dc.b $4C 
                dc.b $CC 
                dc.b $6C 
                dc.b $D0 
                dc.b $4D 
                dc.b $4C 
                dc.b $6D 
                dc.b $50 
                dc.b $4D 
                dc.b $50 
                dc.b $6D 
                dc.b $54 
                dc.b $4D 
                dc.b $D0 
                dc.b $6D 
                dc.b $D4 
                dc.b $4D 
                dc.b $D4 
                dc.b $6D 
                dc.b $D8 
                dc.b $4E 
                dc.b $54 
                dc.b $6E 
                dc.b $58 
                dc.b $4E 
                dc.b $58 
                dc.b $6E 
                dc.b $5C 
                dc.b $4E 
                dc.b $D8 
                dc.b $6E 
                dc.b $DC 
                dc.b $4E 
                dc.b $DC 
                dc.b $6E 
                dc.b $E0 
                dc.b $4F 
                dc.b $5C 
                dc.b $6F 
                dc.b $60 
                dc.b $4F 
                dc.b $60 
                dc.b $6F 
                dc.b $64 
                dc.b $4F 
                dc.b $E0 
                dc.b $6F 
                dc.b $E4 
                dc.b $4F 
                dc.b $E4 
                dc.b $6F 
                dc.b $E8 
                dc.b $40 
                dc.b $64 
                dc.b $60 
                dc.b $68 
                dc.b $40 
                dc.b $68 
                dc.b $60 
                dc.b $6C 
                dc.b $40 
                dc.b $E8 
                dc.b $60 
                dc.b $EC 
                dc.b $40 
                dc.b $EC 
                dc.b $60 
                dc.b $F0 
                dc.b $41 
                dc.b $6C 
                dc.b $61 
                dc.b $70 
                dc.b $41 
                dc.b $70 
                dc.b $61 
                dc.b $74 
                dc.b $41 
                dc.b $F0 
                dc.b $61 
                dc.b $F4 
                dc.b $42 
                dc.b $70 
                dc.b $62 
                dc.b $74 
                dc.b $42 
                dc.b $F0 
                dc.b $62 
                dc.b $F4 
                dc.b $42 
                dc.b $F4 
                dc.b $62 
                dc.b $F8 
                dc.b $43 
                dc.b $74 
                dc.b $63 
                dc.b $78 
                dc.b $43 
                dc.b $78 
                dc.b $63 
                dc.b $7C 
                dc.b $43 
                dc.b $F8 
                dc.b $63 
                dc.b $FC 
                dc.b $43 
                dc.b $FC 
                dc.b $63 
                dc.b $80 
                dc.b $44 
                dc.b $7C 
                dc.b $64 
                dc.b   0
                dc.b $44 
                dc.b   0
                dc.b $64 
                dc.b   4
                dc.b $44 
                dc.b $80 
                dc.b $64 
                dc.b $84 
                dc.b $44 
                dc.b $84 
                dc.b $64 
                dc.b $88 
                dc.b $45 
                dc.b   4
                dc.b $65 
                dc.b   8
                dc.b $45 
                dc.b   8
                dc.b $65 
                dc.b  $C
                dc.b $45 
                dc.b $88 
                dc.b $65 
                dc.b $8C 
                dc.b $45 
                dc.b $8C 
                dc.b $65 
                dc.b $90 
                dc.b $46 
                dc.b  $C
                dc.b $66 
                dc.b $10
                dc.b $46 
                dc.b $10
                dc.b $66 
                dc.b $14
                dc.b $46 
                dc.b $90 
                dc.b $66 
                dc.b $94 
                dc.b $46 
                dc.b $94 
                dc.b $66 
                dc.b $98 
                dc.b $47 
                dc.b $14
                dc.b $67 
                dc.b $18
                dc.b $47 
                dc.b $18
                dc.b $67 
                dc.b $1C
                dc.b $47 
                dc.b $98 
                dc.b $67 
                dc.b $9C 
                dc.b $47 
                dc.b $9C 
                dc.b $67 
                dc.b $A0 
                dc.b $48 
                dc.b $1C
                dc.b $68 
                dc.b $20
                dc.b $48 
                dc.b $20
                dc.b $68 
                dc.b $24 
                dc.b $48 
                dc.b $A0 
                dc.b $68 
                dc.b $A4 
                dc.b $48 
                dc.b $A4 
                dc.b $68 
                dc.b $A8 
                dc.b $49 
                dc.b $24 
                dc.b $69 
                dc.b $28 
                dc.b $49 
                dc.b $28 
                dc.b $69 
                dc.b $2C 
                dc.b $49 
                dc.b $A8 
                dc.b $69 
                dc.b $AC 
                dc.b $49 
                dc.b $AC 
                dc.b $69 
                dc.b $B0 
                dc.b $4A 
                dc.b $2C 
                dc.b $6A 
                dc.b $30 
                dc.b $4A 
                dc.b $30 
                dc.b $6A 
                dc.b $34 
                dc.b $4A 
                dc.b $B0 
                dc.b $6A 
                dc.b $B4 
                dc.b $4A 
                dc.b $B4 
                dc.b $6A 
                dc.b $B8 
                dc.b $4B 
                dc.b $34 
                dc.b $6B 
                dc.b $38 
                dc.b $4B 
                dc.b $38 
                dc.b $6B 
                dc.b $3C 
                dc.b $4B 
                dc.b $B8 
                dc.b $6B 
                dc.b $BC 
                dc.b $4B 
                dc.b $BC 
                dc.b $6B 
                dc.b $C0 
                dc.b $4C 
                dc.b $3C 
                dc.b $6C 
                dc.b $40 
                dc.b $4C 
                dc.b $40 
                dc.b $6C 
                dc.b $44 
                dc.b $4C 
                dc.b $C0 
                dc.b $6C 
                dc.b $C4 
                dc.b $4C 
                dc.b $C4 
                dc.b $6C 
                dc.b $C8 
                dc.b $4D 
                dc.b $44 
                dc.b $6D 
                dc.b $48 
                dc.b $4D 
                dc.b $48 
                dc.b $6D 
                dc.b $4C 
                dc.b $4D 
                dc.b $C8 
                dc.b $6D 
                dc.b $CC 
                dc.b $4D 
                dc.b $CC 
                dc.b $6D 
                dc.b $D0 
                dc.b $4E 
                dc.b $4C 
                dc.b $6E 
                dc.b $50 
                dc.b $4E 
                dc.b $50 
                dc.b $6E 
                dc.b $54 
                dc.b $4E 
                dc.b $D0 
                dc.b $6E 
                dc.b $D4 
                dc.b $4E 
                dc.b $D4 
                dc.b $6E 
                dc.b $D8 
                dc.b $4F 
                dc.b $54 
                dc.b $6F 
                dc.b $58 
                dc.b $4F 
                dc.b $58 
                dc.b $6F 
                dc.b $5C 
                dc.b $4F 
                dc.b $D8 
                dc.b $6F 
                dc.b $DC 
                dc.b $4F 
                dc.b $DC 
                dc.b $6F 
                dc.b $E0 
                dc.b $40 
                dc.b $5C 
                dc.b $60 
                dc.b $60 
                dc.b $40 
                dc.b $60 
                dc.b $60 
                dc.b $64 
                dc.b $40 
                dc.b $E0 
                dc.b $60 
                dc.b $E4 
                dc.b $40 
                dc.b $E4 
                dc.b $60 
                dc.b $E8 
                dc.b $41 
                dc.b $64 
                dc.b $61 
                dc.b $68 
                dc.b $41 
                dc.b $68 
                dc.b $61 
                dc.b $6C 
                dc.b $41 
                dc.b $E8 
                dc.b $61 
                dc.b $EC 
                dc.b $41 
                dc.b $EC 
                dc.b $61 
                dc.b $F0 
                dc.b $42 
                dc.b $6C 
                dc.b $62 
                dc.b $70 
                dc.b $42 
                dc.b $EC 
                dc.b $62 
                dc.b $F0 
                dc.b $43 
                dc.b $6C 
                dc.b $63 
                dc.b $70 
                dc.b $43 
                dc.b $70 
                dc.b $63 
                dc.b $74 
                dc.b $43 
                dc.b $F0 
                dc.b $63 
                dc.b $F4 
                dc.b $43 
                dc.b $F4 
                dc.b $63 
                dc.b $F8 
                dc.b $44 
                dc.b $74 
                dc.b $64 
                dc.b $78 
                dc.b $44 
                dc.b $78 
                dc.b $64 
                dc.b $7C 
                dc.b $44 
                dc.b $F8 
                dc.b $64 
                dc.b $FC 
                dc.b $44 
                dc.b $FC 
                dc.b $64 
                dc.b $80 
                dc.b $45 
                dc.b $7C 
                dc.b $65 
                dc.b   0
                dc.b $45 
                dc.b   0
                dc.b $65 
                dc.b   4
                dc.b $45 
                dc.b $80 
                dc.b $65 
                dc.b $84 
                dc.b $45 
                dc.b $84 
                dc.b $65 
                dc.b $88 
                dc.b $46 
                dc.b   4
                dc.b $66 
                dc.b   8
                dc.b $46 
                dc.b   8
                dc.b $66 
                dc.b  $C
                dc.b $46 
                dc.b $88 
                dc.b $66 
                dc.b $8C 
                dc.b $46 
                dc.b $8C 
                dc.b $66 
                dc.b $90 
                dc.b $47 
                dc.b  $C
                dc.b $67 
                dc.b $10
                dc.b $47 
                dc.b $10
                dc.b $67 
                dc.b $14
                dc.b $47 
                dc.b $90 
                dc.b $67 
                dc.b $94 
                dc.b $47 
                dc.b $94 
                dc.b $67 
                dc.b $98 
                dc.b $48 
                dc.b $14
                dc.b $68 
                dc.b $18
                dc.b $48 
                dc.b $18
                dc.b $68 
                dc.b $1C
                dc.b $48 
                dc.b $98 
                dc.b $68 
                dc.b $9C 
                dc.b $48 
                dc.b $9C 
                dc.b $68 
                dc.b $A0 
                dc.b $49 
                dc.b $1C
                dc.b $69 
                dc.b $20
                dc.b $49 
                dc.b $20
                dc.b $69 
                dc.b $24 
                dc.b $49 
                dc.b $A0 
                dc.b $69 
                dc.b $A4 
                dc.b $49 
                dc.b $A4 
                dc.b $69 
                dc.b $A8 
                dc.b $4A 
                dc.b $24 
                dc.b $6A 
                dc.b $28 
                dc.b $4A 
                dc.b $28 
                dc.b $6A 
                dc.b $2C 
                dc.b $4A 
                dc.b $A8 
                dc.b $6A 
                dc.b $AC 
                dc.b $4A 
                dc.b $AC 
                dc.b $6A 
                dc.b $B0 
                dc.b $4B 
                dc.b $2C 
                dc.b $6B 
                dc.b $30 
                dc.b $4B 
                dc.b $30 
                dc.b $6B 
                dc.b $34 
                dc.b $4B 
                dc.b $B0 
                dc.b $6B 
                dc.b $B4 
                dc.b $4B 
                dc.b $B4 
                dc.b $6B 
                dc.b $B8 
                dc.b $4C 
                dc.b $34 
                dc.b $6C 
                dc.b $38 
                dc.b $4C 
                dc.b $38 
                dc.b $6C 
                dc.b $3C 
                dc.b $4C 
                dc.b $B8 
                dc.b $6C 
                dc.b $BC 
                dc.b $4C 
                dc.b $BC 
                dc.b $6C 
                dc.b $C0 
                dc.b $4D 
                dc.b $3C 
                dc.b $6D 
                dc.b $40 
                dc.b $4D 
                dc.b $40 
                dc.b $6D 
                dc.b $44 
                dc.b $4D 
                dc.b $C0 
                dc.b $6D 
                dc.b $C4 
                dc.b $4D 
                dc.b $C4 
                dc.b $6D 
                dc.b $C8 
                dc.b $4E 
                dc.b $44 
                dc.b $6E 
                dc.b $48 
                dc.b $4E 
                dc.b $48 
                dc.b $6E 
                dc.b $4C 
                dc.b $4E 
                dc.b $C8 
                dc.b $6E 
                dc.b $CC 
                dc.b $4E 
                dc.b $CC 
                dc.b $6E 
                dc.b $D0 
                dc.b $4F 
                dc.b $4C 
                dc.b $6F 
                dc.b $50 
                dc.b $4F 
                dc.b $50 
                dc.b $6F 
                dc.b $54 
                dc.b $4F 
                dc.b $D0 
                dc.b $6F 
                dc.b $D4 
                dc.b $4F 
                dc.b $D4 
                dc.b $6F 
                dc.b $D8 
                dc.b $40 
                dc.b $54 
                dc.b $60 
                dc.b $58 
                dc.b $40 
                dc.b $58 
                dc.b $60 
                dc.b $5C 
                dc.b $40 
                dc.b $D8 
                dc.b $60 
                dc.b $DC 
                dc.b $40 
                dc.b $DC 
                dc.b $60 
                dc.b $E0 
                dc.b $41 
                dc.b $5C 
                dc.b $61 
                dc.b $60 
                dc.b $41 
                dc.b $60 
                dc.b $61 
                dc.b $64 
                dc.b $41 
                dc.b $E0 
                dc.b $61 
                dc.b $E4 
                dc.b $41 
                dc.b $E4 
                dc.b $61 
                dc.b $E8 
                dc.b $42 
                dc.b $64 
                dc.b $62 
                dc.b $68 
                dc.b $42 
                dc.b $68 
                dc.b $62 
                dc.b $6C 
                dc.b $42 
                dc.b $E8 
                dc.b $62 
                dc.b $EC 
                dc.b $43 
                dc.b $68 
                dc.b $63 
                dc.b $6C 
                dc.b $43 
                dc.b $E8 
                dc.b $63 
                dc.b $EC 
                dc.b $43 
                dc.b $EC 
                dc.b $63 
                dc.b $F0 
                dc.b $44 
                dc.b $6C 
                dc.b $64 
                dc.b $70 
                dc.b $44 
                dc.b $70 
                dc.b $64 
                dc.b $74 
                dc.b $44 
                dc.b $F0 
                dc.b $64 
                dc.b $F4 
                dc.b $44 
                dc.b $F4 
                dc.b $64 
                dc.b $F8 
                dc.b $45 
                dc.b $74 
                dc.b $65 
                dc.b $78 
                dc.b $45 
                dc.b $78 
                dc.b $65 
                dc.b $7C 
                dc.b $45 
                dc.b $F8 
                dc.b $65 
                dc.b $FC 
                dc.b $45 
                dc.b $FC 
                dc.b $65 
                dc.b $80 
                dc.b $46 
                dc.b $7C 
                dc.b $66 
                dc.b   0
                dc.b $46 
                dc.b   0
                dc.b $66 
                dc.b   4
                dc.b $46 
                dc.b $80 
                dc.b $66 
                dc.b $84 
                dc.b $46 
                dc.b $84 
                dc.b $66 
                dc.b $88 
                dc.b $47 
                dc.b   4
                dc.b $67 
                dc.b   8
                dc.b $47 
                dc.b   8
                dc.b $67 
                dc.b  $C
                dc.b $47 
                dc.b $88 
                dc.b $67 
                dc.b $8C 
                dc.b $47 
                dc.b $8C 
                dc.b $67 
                dc.b $90 
                dc.b $48 
                dc.b  $C
                dc.b $68 
                dc.b $10
                dc.b $48 
                dc.b $10
                dc.b $68 
                dc.b $14
                dc.b $48 
                dc.b $90 
                dc.b $68 
                dc.b $94 
                dc.b $48 
                dc.b $94 
                dc.b $68 
                dc.b $98 
                dc.b $49 
                dc.b $14
                dc.b $69 
                dc.b $18
                dc.b $49 
                dc.b $18
                dc.b $69 
                dc.b $1C
                dc.b $49 
                dc.b $98 
                dc.b $69 
                dc.b $9C 
                dc.b $49 
                dc.b $9C 
                dc.b $69 
                dc.b $A0 
                dc.b $4A 
                dc.b $1C
                dc.b $6A 
                dc.b $20
                dc.b $4A 
                dc.b $20
                dc.b $6A 
                dc.b $24 
                dc.b $4A 
                dc.b $A0 
                dc.b $6A 
                dc.b $A4 
                dc.b $4A 
                dc.b $A4 
                dc.b $6A 
                dc.b $A8 
                dc.b $4B 
                dc.b $24 
                dc.b $6B 
                dc.b $28 
                dc.b $4B 
                dc.b $28 
                dc.b $6B 
                dc.b $2C 
                dc.b $4B 
                dc.b $A8 
                dc.b $6B 
                dc.b $AC 
                dc.b $4B 
                dc.b $AC 
                dc.b $6B 
                dc.b $B0 
                dc.b $4C 
                dc.b $2C 
                dc.b $6C 
                dc.b $30 
                dc.b $4C 
                dc.b $30 
                dc.b $6C 
                dc.b $34 
                dc.b $4C 
                dc.b $B0 
                dc.b $6C 
                dc.b $B4 
                dc.b $4C 
                dc.b $B4 
                dc.b $6C 
                dc.b $B8 
                dc.b $4D 
                dc.b $34 
                dc.b $6D 
                dc.b $38 
                dc.b $4D 
                dc.b $38 
                dc.b $6D 
                dc.b $3C 
                dc.b $4D 
                dc.b $B8 
                dc.b $6D 
                dc.b $BC 
                dc.b $4D 
                dc.b $BC 
                dc.b $6D 
                dc.b $C0 
                dc.b $4E 
                dc.b $3C 
                dc.b $6E 
                dc.b $40 
                dc.b $4E 
                dc.b $40 
                dc.b $6E 
                dc.b $44 
                dc.b $4E 
                dc.b $C0 
                dc.b $6E 
                dc.b $C4 
                dc.b $4E 
                dc.b $C4 
                dc.b $6E 
                dc.b $C8 
                dc.b $4F 
                dc.b $44 
                dc.b $6F 
                dc.b $48 
                dc.b $4F 
                dc.b $48 
                dc.b $6F 
                dc.b $4C 
                dc.b $4F 
                dc.b $C8 
                dc.b $6F 
                dc.b $CC 
                dc.b $4F 
                dc.b $CC 
                dc.b $6F 
                dc.b $D0 
                dc.b $40 
                dc.b $4C 
                dc.b $60 
                dc.b $50 
                dc.b $40 
                dc.b $50 
                dc.b $60 
                dc.b $54 
                dc.b $40 
                dc.b $D0 
                dc.b $60 
                dc.b $D4 
                dc.b $40 
                dc.b $D4 
                dc.b $60 
                dc.b $D8 
                dc.b $41 
                dc.b $54 
                dc.b $61 
                dc.b $58 
                dc.b $41 
                dc.b $58 
                dc.b $61 
                dc.b $5C 
                dc.b $41 
                dc.b $D8 
                dc.b $61 
                dc.b $DC 
                dc.b $41 
                dc.b $DC 
                dc.b $61 
                dc.b $E0 
                dc.b $42 
                dc.b $5C 
                dc.b $62 
                dc.b $60 
                dc.b $42 
                dc.b $60 
                dc.b $62 
                dc.b $64 
                dc.b $42 
                dc.b $E0 
                dc.b $62 
                dc.b $E4 
                dc.b $42 
                dc.b $E4 
                dc.b $62 
                dc.b $E8 
                dc.b $43 
                dc.b $64 
                dc.b $63 
                dc.b $68 
                dc.b $43 
                dc.b $E4 
                dc.b $63 
                dc.b $E8 
                dc.b $44 
                dc.b $64 
                dc.b $64 
                dc.b $68 
                dc.b $44 
                dc.b $68 
                dc.b $64 
                dc.b $6C 
                dc.b $44 
                dc.b $E8 
                dc.b $64 
                dc.b $EC 
                dc.b $44 
                dc.b $EC 
                dc.b $64 
                dc.b $F0 
                dc.b $45 
                dc.b $6C 
                dc.b $65 
                dc.b $70 
                dc.b $45 
                dc.b $70 
                dc.b $65 
                dc.b $74 
                dc.b $45 
                dc.b $F0 
                dc.b $65 
                dc.b $F4 
                dc.b $45 
                dc.b $F4 
                dc.b $65 
                dc.b $F8 
                dc.b $46 
                dc.b $74 
                dc.b $66 
                dc.b $78 
                dc.b $46 
                dc.b $78 
                dc.b $66 
                dc.b $7C 
                dc.b $46 
                dc.b $F8 
                dc.b $66 
                dc.b $FC 
                dc.b $46 
                dc.b $FC 
                dc.b $66 
                dc.b $80 
                dc.b $47 
                dc.b $7C 
                dc.b $67 
                dc.b   0
                dc.b $47 
                dc.b   0
                dc.b $67 
                dc.b   4
                dc.b $47 
                dc.b $80 
                dc.b $67 
                dc.b $84 
                dc.b $47 
                dc.b $84 
                dc.b $67 
                dc.b $88 
                dc.b $48 
                dc.b   4
                dc.b $68 
                dc.b   8
                dc.b $48 
                dc.b   8
                dc.b $68 
                dc.b  $C
                dc.b $48 
                dc.b $88 
                dc.b $68 
                dc.b $8C 
                dc.b $48 
                dc.b $8C 
                dc.b $68 
                dc.b $90 
                dc.b $49 
                dc.b  $C
                dc.b $69 
                dc.b $10
                dc.b $49 
                dc.b $10
                dc.b $69 
                dc.b $14
                dc.b $49 
                dc.b $90 
                dc.b $69 
                dc.b $94 
                dc.b $49 
                dc.b $94 
                dc.b $69 
                dc.b $98 
                dc.b $4A 
                dc.b $14
                dc.b $6A 
                dc.b $18
                dc.b $4A 
                dc.b $18
                dc.b $6A 
                dc.b $1C
                dc.b $4A 
                dc.b $98 
                dc.b $6A 
                dc.b $9C 
                dc.b $4A 
                dc.b $9C 
                dc.b $6A 
                dc.b $A0 
                dc.b $4B 
                dc.b $1C
                dc.b $6B 
                dc.b $20
                dc.b $4B 
                dc.b $20
                dc.b $6B 
                dc.b $24 
                dc.b $4B 
                dc.b $A0 
                dc.b $6B 
                dc.b $A4 
                dc.b $4B 
                dc.b $A4 
                dc.b $6B 
                dc.b $A8 
                dc.b $4C 
                dc.b $24 
                dc.b $6C 
                dc.b $28 
                dc.b $4C 
                dc.b $28 
                dc.b $6C 
                dc.b $2C 
                dc.b $4C 
                dc.b $A8 
                dc.b $6C 
                dc.b $AC 
                dc.b $4C 
                dc.b $AC 
                dc.b $6C 
                dc.b $B0 
                dc.b $4D 
                dc.b $2C 
                dc.b $6D 
                dc.b $30 
                dc.b $4D 
                dc.b $30 
                dc.b $6D 
                dc.b $34 
                dc.b $4D 
                dc.b $B0 
                dc.b $6D 
                dc.b $B4 
                dc.b $4D 
                dc.b $B4 
                dc.b $6D 
                dc.b $B8 
                dc.b $4E 
                dc.b $34 
                dc.b $6E 
                dc.b $38 
                dc.b $4E 
                dc.b $38 
                dc.b $6E 
                dc.b $3C 
                dc.b $4E 
                dc.b $B8 
                dc.b $6E 
                dc.b $BC 
                dc.b $4E 
                dc.b $BC 
                dc.b $6E 
                dc.b $C0 
                dc.b $4F 
                dc.b $3C 
                dc.b $6F 
                dc.b $40 
                dc.b $4F 
                dc.b $40 
                dc.b $6F 
                dc.b $44 
                dc.b $4F 
                dc.b $C0 
                dc.b $6F 
                dc.b $C4 
                dc.b $4F 
                dc.b $C4 
                dc.b $6F 
                dc.b $C8 
                dc.b $40 
                dc.b $44 
                dc.b $60 
                dc.b $48 
                dc.b $40 
                dc.b $48 
                dc.b $60 
                dc.b $4C 
                dc.b $40 
                dc.b $C8 
                dc.b $60 
                dc.b $CC 
                dc.b $40 
                dc.b $CC 
                dc.b $60 
                dc.b $D0 
                dc.b $41 
                dc.b $4C 
                dc.b $61 
                dc.b $50 
                dc.b $41 
                dc.b $50 
                dc.b $61 
                dc.b $54 
                dc.b $41 
                dc.b $D0 
                dc.b $61 
                dc.b $D4 
                dc.b $41 
                dc.b $D4 
                dc.b $61 
                dc.b $D8 
                dc.b $42 
                dc.b $54 
                dc.b $62 
                dc.b $58 
                dc.b $42 
                dc.b $58 
                dc.b $62 
                dc.b $5C 
                dc.b $42 
                dc.b $D8 
                dc.b $62 
                dc.b $DC 
                dc.b $42 
                dc.b $DC 
                dc.b $62 
                dc.b $E0 
                dc.b $43 
                dc.b $5C 
                dc.b $63 
                dc.b $60 
                dc.b $43 
                dc.b $60 
                dc.b $63 
                dc.b $64 
                dc.b $43 
                dc.b $E0 
                dc.b $63 
                dc.b $E4 
                dc.b $44 
                dc.b $60 
                dc.b $64 
                dc.b $64 
                dc.b $44 
                dc.b $E0 
                dc.b $64 
                dc.b $E4 
                dc.b $44 
                dc.b $E4 
                dc.b $64 
                dc.b $E8 
                dc.b $45 
                dc.b $64 
                dc.b $65 
                dc.b $68 
                dc.b $45 
                dc.b $68 
                dc.b $65 
                dc.b $6C 
                dc.b $45 
                dc.b $E8 
                dc.b $65 
                dc.b $EC 
                dc.b $45 
                dc.b $EC 
                dc.b $65 
                dc.b $F0 
                dc.b $46 
                dc.b $6C 
                dc.b $66 
                dc.b $70 
                dc.b $46 
                dc.b $70 
                dc.b $66 
                dc.b $74 
                dc.b $46 
                dc.b $F0 
                dc.b $66 
                dc.b $F4 
                dc.b $46 
                dc.b $F4 
                dc.b $66 
                dc.b $F8 
                dc.b $47 
                dc.b $74 
                dc.b $67 
                dc.b $78 
                dc.b $47 
                dc.b $78 
                dc.b $67 
                dc.b $7C 
                dc.b $47 
                dc.b $F8 
                dc.b $67 
                dc.b $FC 
                dc.b $47 
                dc.b $FC 
                dc.b $67 
                dc.b $80 
                dc.b $48 
                dc.b $7C 
                dc.b $68 
                dc.b   0
                dc.b $48 
                dc.b   0
                dc.b $68 
                dc.b   4
                dc.b $48 
                dc.b $80 
                dc.b $68 
                dc.b $84 
                dc.b $48 
                dc.b $84 
                dc.b $68 
                dc.b $88 
                dc.b $49 
                dc.b   4
                dc.b $69 
                dc.b   8
                dc.b $49 
                dc.b   8
                dc.b $69 
                dc.b  $C
                dc.b $49 
                dc.b $88 
                dc.b $69 
                dc.b $8C 
                dc.b $49 
                dc.b $8C 
                dc.b $69 
                dc.b $90 
                dc.b $4A 
                dc.b  $C
                dc.b $6A 
                dc.b $10
                dc.b $4A 
                dc.b $10
                dc.b $6A 
                dc.b $14
                dc.b $4A 
                dc.b $90 
                dc.b $6A 
                dc.b $94 
                dc.b $4A 
                dc.b $94 
                dc.b $6A 
                dc.b $98 
                dc.b $4B 
                dc.b $14
                dc.b $6B 
                dc.b $18
                dc.b $4B 
                dc.b $18
                dc.b $6B 
                dc.b $1C
                dc.b $4B 
                dc.b $98 
                dc.b $6B 
                dc.b $9C 
                dc.b $4B 
                dc.b $9C 
                dc.b $6B 
                dc.b $A0 
                dc.b $4C 
                dc.b $1C
                dc.b $6C 
                dc.b $20
                dc.b $4C 
                dc.b $20
                dc.b $6C 
                dc.b $24 
                dc.b $4C 
                dc.b $A0 
                dc.b $6C 
                dc.b $A4 
                dc.b $4C 
                dc.b $A4 
                dc.b $6C 
                dc.b $A8 
                dc.b $4D 
                dc.b $24 
                dc.b $6D 
                dc.b $28 
                dc.b $4D 
                dc.b $28 
                dc.b $6D 
                dc.b $2C 
                dc.b $4D 
                dc.b $A8 
                dc.b $6D 
                dc.b $AC 
                dc.b $4D 
                dc.b $AC 
                dc.b $6D 
                dc.b $B0 
                dc.b $4E 
                dc.b $2C 
                dc.b $6E 
                dc.b $30 
                dc.b $4E 
                dc.b $30 
                dc.b $6E 
                dc.b $34 
                dc.b $4E 
                dc.b $B0 
                dc.b $6E 
                dc.b $B4 
                dc.b $4E 
                dc.b $B4 
                dc.b $6E 
                dc.b $B8 
                dc.b $4F 
                dc.b $34 
                dc.b $6F 
                dc.b $38 
                dc.b $4F 
                dc.b $38 
                dc.b $6F 
                dc.b $3C 
                dc.b $4F 
                dc.b $B8 
                dc.b $6F 
                dc.b $BC 
                dc.b $4F 
                dc.b $BC 
                dc.b $6F 
                dc.b $C0 
                dc.b $40 
                dc.b $3C 
                dc.b $60 
                dc.b $40 
                dc.b $40 
                dc.b $40 
                dc.b $60 
                dc.b $44 
                dc.b $40 
                dc.b $C0 
                dc.b $60 
                dc.b $C4 
                dc.b $40 
                dc.b $C4 
                dc.b $60 
                dc.b $C8 
                dc.b $41 
                dc.b $44 
                dc.b $61 
                dc.b $48 
                dc.b $41 
                dc.b $48 
                dc.b $61 
                dc.b $4C 
                dc.b $41 
                dc.b $C8 
                dc.b $61 
                dc.b $CC 
                dc.b $41 
                dc.b $CC 
                dc.b $61 
                dc.b $D0 
                dc.b $42 
                dc.b $4C 
                dc.b $62 
                dc.b $50 
                dc.b $42 
                dc.b $50 
                dc.b $62 
                dc.b $54 
                dc.b $42 
                dc.b $D0 
                dc.b $62 
                dc.b $D4 
                dc.b $42 
                dc.b $D4 
                dc.b $62 
                dc.b $D8 
                dc.b $43 
                dc.b $54 
                dc.b $63 
                dc.b $58 
                dc.b $43 
                dc.b $58 
                dc.b $63 
                dc.b $5C 
                dc.b $43 
                dc.b $D8 
                dc.b $63 
                dc.b $DC 
                dc.b $43 
                dc.b $DC 
                dc.b $63 
                dc.b $E0 
                dc.b $44 
                dc.b $5C 
                dc.b $64 
                dc.b $60 
                dc.b $44 
                dc.b $DC 
                dc.b $64 
                dc.b $E0 
                dc.b $45 
                dc.b $5C 
                dc.b $65 
                dc.b $60 
                dc.b $45 
                dc.b $60 
                dc.b $65 
                dc.b $64 
                dc.b $45 
                dc.b $E0 
                dc.b $65 
                dc.b $E4 
                dc.b $45 
                dc.b $E4 
                dc.b $65 
                dc.b $E8 
                dc.b $46 
                dc.b $64 
                dc.b $66 
                dc.b $68 
                dc.b $46 
                dc.b $68 
                dc.b $66 
                dc.b $6C 
                dc.b $46 
                dc.b $E8 
                dc.b $66 
                dc.b $EC 
                dc.b $46 
                dc.b $EC 
                dc.b $66 
                dc.b $F0 
                dc.b $47 
                dc.b $6C 
                dc.b $67 
                dc.b $70 
                dc.b $47 
                dc.b $70 
                dc.b $67 
                dc.b $74 
                dc.b $47 
                dc.b $F0 
                dc.b $67 
                dc.b $F4 
                dc.b $47 
                dc.b $F4 
                dc.b $67 
                dc.b $F8 
                dc.b $48 
                dc.b $74 
                dc.b $68 
                dc.b $78 
                dc.b $48 
                dc.b $78 
                dc.b $68 
                dc.b $7C 
                dc.b $48 
                dc.b $F8 
                dc.b $68 
                dc.b $FC 
                dc.b $48 
                dc.b $FC 
                dc.b $68 
                dc.b $80 
                dc.b $49 
                dc.b $7C 
                dc.b $69 
                dc.b   0
                dc.b $49 
                dc.b   0
                dc.b $69 
                dc.b   4
                dc.b $49 
                dc.b $80 
                dc.b $69 
                dc.b $84 
                dc.b $49 
                dc.b $84 
                dc.b $69 
                dc.b $88 
                dc.b $4A 
                dc.b   4
                dc.b $6A 
                dc.b   8
                dc.b $4A 
                dc.b   8
                dc.b $6A 
                dc.b  $C
                dc.b $4A 
                dc.b $88 
                dc.b $6A 
                dc.b $8C 
                dc.b $4A 
                dc.b $8C 
                dc.b $6A 
                dc.b $90 
                dc.b $4B 
                dc.b  $C
                dc.b $6B 
                dc.b $10
                dc.b $4B 
                dc.b $10
                dc.b $6B 
                dc.b $14
                dc.b $4B 
                dc.b $90 
                dc.b $6B 
                dc.b $94 
                dc.b $4B 
                dc.b $94 
                dc.b $6B 
                dc.b $98 
                dc.b $4C 
                dc.b $14
                dc.b $6C 
                dc.b $18
                dc.b $4C 
                dc.b $18
                dc.b $6C 
                dc.b $1C
                dc.b $4C 
                dc.b $98 
                dc.b $6C 
                dc.b $9C 
                dc.b $4C 
                dc.b $9C 
                dc.b $6C 
                dc.b $A0 
                dc.b $4D 
                dc.b $1C
                dc.b $6D 
                dc.b $20
                dc.b $4D 
                dc.b $20
                dc.b $6D 
                dc.b $24 
                dc.b $4D 
                dc.b $A0 
                dc.b $6D 
                dc.b $A4 
                dc.b $4D 
                dc.b $A4 
                dc.b $6D 
                dc.b $A8 
                dc.b $4E 
                dc.b $24 
                dc.b $6E 
                dc.b $28 
                dc.b $4E 
                dc.b $28 
                dc.b $6E 
                dc.b $2C 
                dc.b $4E 
                dc.b $A8 
                dc.b $6E 
                dc.b $AC 
                dc.b $4E 
                dc.b $AC 
                dc.b $6E 
                dc.b $B0 
                dc.b $4F 
                dc.b $2C 
                dc.b $6F 
                dc.b $30 
                dc.b $4F 
                dc.b $30 
                dc.b $6F 
                dc.b $34 
                dc.b $4F 
                dc.b $B0 
                dc.b $6F 
                dc.b $B4 
                dc.b $4F 
                dc.b $B4 
                dc.b $6F 
                dc.b $B8 
                dc.b $40 
                dc.b $34 
                dc.b $60 
                dc.b $38 
                dc.b $40 
                dc.b $38 
                dc.b $60 
                dc.b $3C 
                dc.b $40 
                dc.b $B8 
                dc.b $60 
                dc.b $BC 
                dc.b $40 
                dc.b $BC 
                dc.b $60 
                dc.b $C0 
                dc.b $41 
                dc.b $3C 
                dc.b $61 
                dc.b $40 
                dc.b $41 
                dc.b $40 
                dc.b $61 
                dc.b $44 
                dc.b $41 
                dc.b $C0 
                dc.b $61 
                dc.b $C4 
                dc.b $41 
                dc.b $C4 
                dc.b $61 
                dc.b $C8 
                dc.b $42 
                dc.b $44 
                dc.b $62 
                dc.b $48 
                dc.b $42 
                dc.b $48 
                dc.b $62 
                dc.b $4C 
                dc.b $42 
                dc.b $C8 
                dc.b $62 
                dc.b $CC 
                dc.b $42 
                dc.b $CC 
                dc.b $62 
                dc.b $D0 
                dc.b $43 
                dc.b $4C 
                dc.b $63 
                dc.b $50 
                dc.b $43 
                dc.b $50 
                dc.b $63 
                dc.b $54 
                dc.b $43 
                dc.b $D0 
                dc.b $63 
                dc.b $D4 
                dc.b $43 
                dc.b $D4 
                dc.b $63 
                dc.b $D8 
                dc.b $44 
                dc.b $54 
                dc.b $64 
                dc.b $58 
                dc.b $44 
                dc.b $58 
                dc.b $64 
                dc.b $5C 
                dc.b $44 
                dc.b $D8 
                dc.b $64 
                dc.b $DC 
                dc.b $45 
                dc.b $58 
                dc.b $65 
                dc.b $5C 
                dc.b $45 
                dc.b $D8 
                dc.b $65 
                dc.b $DC 
                dc.b $45 
                dc.b $DC 
                dc.b $65 
                dc.b $E0 
                dc.b $46 
                dc.b $5C 
                dc.b $66 
                dc.b $60 
                dc.b $46 
                dc.b $60 
                dc.b $66 
                dc.b $64 
                dc.b $46 
                dc.b $E0 
                dc.b $66 
                dc.b $E4 
                dc.b $46 
                dc.b $E4 
                dc.b $66 
                dc.b $E8 
                dc.b $47 
                dc.b $64 
                dc.b $67 
                dc.b $68 
                dc.b $47 
                dc.b $68 
                dc.b $67 
                dc.b $6C 
                dc.b $47 
                dc.b $E8 
                dc.b $67 
                dc.b $EC 
                dc.b $47 
                dc.b $EC 
                dc.b $67 
                dc.b $F0 
                dc.b $48 
                dc.b $6C 
                dc.b $68 
                dc.b $70 
                dc.b $48 
                dc.b $70 
                dc.b $68 
                dc.b $74 
                dc.b $48 
                dc.b $F0 
                dc.b $68 
                dc.b $F4 
                dc.b $48 
                dc.b $F4 
                dc.b $68 
                dc.b $F8 
                dc.b $49 
                dc.b $74 
                dc.b $69 
                dc.b $78 
                dc.b $49 
                dc.b $78 
                dc.b $69 
                dc.b $7C 
                dc.b $49 
                dc.b $F8 
                dc.b $69 
                dc.b $FC 
                dc.b $49 
                dc.b $FC 
                dc.b $69 
                dc.b $80 
                dc.b $4A 
                dc.b $7C 
                dc.b $6A 
                dc.b   0
                dc.b $4A 
                dc.b   0
                dc.b $6A 
                dc.b   4
                dc.b $4A 
                dc.b $80 
                dc.b $6A 
                dc.b $84 
                dc.b $4A 
                dc.b $84 
                dc.b $6A 
                dc.b $88 
                dc.b $4B 
                dc.b   4
                dc.b $6B 
                dc.b   8
                dc.b $4B 
                dc.b   8
                dc.b $6B 
                dc.b  $C
                dc.b $4B 
                dc.b $88 
                dc.b $6B 
                dc.b $8C 
                dc.b $4B 
                dc.b $8C 
                dc.b $6B 
                dc.b $90 
                dc.b $4C 
                dc.b  $C
                dc.b $6C 
                dc.b $10
                dc.b $4C 
                dc.b $10
                dc.b $6C 
                dc.b $14
                dc.b $4C 
                dc.b $90 
                dc.b $6C 
                dc.b $94 
                dc.b $4C 
                dc.b $94 
                dc.b $6C 
                dc.b $98 
                dc.b $4D 
                dc.b $14
                dc.b $6D 
                dc.b $18
                dc.b $4D 
                dc.b $18
                dc.b $6D 
                dc.b $1C
                dc.b $4D 
                dc.b $98 
                dc.b $6D 
                dc.b $9C 
                dc.b $4D 
                dc.b $9C 
                dc.b $6D 
                dc.b $A0 
                dc.b $4E 
                dc.b $1C
                dc.b $6E 
                dc.b $20
                dc.b $4E 
                dc.b $20
                dc.b $6E 
                dc.b $24 
                dc.b $4E 
                dc.b $A0 
                dc.b $6E 
                dc.b $A4 
                dc.b $4E 
                dc.b $A4 
                dc.b $6E 
                dc.b $A8 
                dc.b $4F 
                dc.b $24 
                dc.b $6F 
                dc.b $28 
                dc.b $4F 
                dc.b $28 
                dc.b $6F 
                dc.b $2C 
                dc.b $4F 
                dc.b $A8 
                dc.b $6F 
                dc.b $AC 
                dc.b $4F 
                dc.b $AC 
                dc.b $6F 
                dc.b $B0 
                dc.b $40 
                dc.b $2C 
                dc.b $60 
                dc.b $30 
                dc.b $40 
                dc.b $30 
                dc.b $60 
                dc.b $34 
                dc.b $40 
                dc.b $B0 
                dc.b $60 
                dc.b $B4 
                dc.b $40 
                dc.b $B4 
                dc.b $60 
                dc.b $B8 
                dc.b $41 
                dc.b $34 
                dc.b $61 
                dc.b $38 
                dc.b $41 
                dc.b $38 
                dc.b $61 
                dc.b $3C 
                dc.b $41 
                dc.b $B8 
                dc.b $61 
                dc.b $BC 
                dc.b $41 
                dc.b $BC 
                dc.b $61 
                dc.b $C0 
                dc.b $42 
                dc.b $3C 
                dc.b $62 
                dc.b $40 
                dc.b $42 
                dc.b $40 
                dc.b $62 
                dc.b $44 
                dc.b $42 
                dc.b $C0 
                dc.b $62 
                dc.b $C4 
                dc.b $42 
                dc.b $C4 
                dc.b $62 
                dc.b $C8 
                dc.b $43 
                dc.b $44 
                dc.b $63 
                dc.b $48 
                dc.b $43 
                dc.b $48 
                dc.b $63 
                dc.b $4C 
                dc.b $43 
                dc.b $C8 
                dc.b $63 
                dc.b $CC 
                dc.b $43 
                dc.b $CC 
                dc.b $63 
                dc.b $D0 
                dc.b $44 
                dc.b $4C 
                dc.b $64 
                dc.b $50 
                dc.b $44 
                dc.b $50 
                dc.b $64 
                dc.b $54 
                dc.b $44 
                dc.b $D0 
                dc.b $64 
                dc.b $D4 
                dc.b $44 
                dc.b $D4 
                dc.b $64 
                dc.b $D8 
                dc.b $45 
                dc.b $54 
                dc.b $65 
                dc.b $58 
                dc.b $45 
                dc.b $D4 
                dc.b $65 
                dc.b $D8 
                dc.b $46 
                dc.b $54 
                dc.b $66 
                dc.b $58 
                dc.b $46 
                dc.b $58 
                dc.b $66 
                dc.b $5C 
                dc.b $46 
                dc.b $D8 
                dc.b $66 
                dc.b $DC 
                dc.b $46 
                dc.b $DC 
                dc.b $66 
                dc.b $E0 
                dc.b $47 
                dc.b $5C 
                dc.b $67 
                dc.b $60 
                dc.b $47 
                dc.b $60 
                dc.b $67 
                dc.b $64 
                dc.b $47 
                dc.b $E0 
                dc.b $67 
                dc.b $E4 
                dc.b $47 
                dc.b $E4 
                dc.b $67 
                dc.b $E8 
                dc.b $48 
                dc.b $64 
                dc.b $68 
                dc.b $68 
                dc.b $48 
                dc.b $68 
                dc.b $68 
                dc.b $6C 
                dc.b $48 
                dc.b $E8 
                dc.b $68 
                dc.b $EC 
                dc.b $48 
                dc.b $EC 
                dc.b $68 
                dc.b $F0 
                dc.b $49 
                dc.b $6C 
                dc.b $69 
                dc.b $70 
                dc.b $49 
                dc.b $70 
                dc.b $69 
                dc.b $74 
                dc.b $49 
                dc.b $F0 
                dc.b $69 
                dc.b $F4 
                dc.b $49 
                dc.b $F4 
                dc.b $69 
                dc.b $F8 
                dc.b $4A 
                dc.b $74 
                dc.b $6A 
                dc.b $78 
                dc.b $4A 
                dc.b $78 
                dc.b $6A 
                dc.b $7C 
                dc.b $4A 
                dc.b $F8 
                dc.b $6A 
                dc.b $FC 
                dc.b $4A 
                dc.b $FC 
                dc.b $6A 
                dc.b $80 
                dc.b $4B 
                dc.b $7C 
                dc.b $6B 
                dc.b   0
                dc.b $4B 
                dc.b   0
                dc.b $6B 
                dc.b   4
                dc.b $4B 
                dc.b $80 
                dc.b $6B 
                dc.b $84 
                dc.b $4B 
                dc.b $84 
                dc.b $6B 
                dc.b $88 
                dc.b $4C 
                dc.b   4
                dc.b $6C 
                dc.b   8
                dc.b $4C 
                dc.b   8
                dc.b $6C 
                dc.b  $C
                dc.b $4C 
                dc.b $88 
                dc.b $6C 
                dc.b $8C 
                dc.b $4C 
                dc.b $8C 
                dc.b $6C 
                dc.b $90 
                dc.b $4D 
                dc.b  $C
                dc.b $6D 
                dc.b $10
                dc.b $4D 
                dc.b $10
                dc.b $6D 
                dc.b $14
                dc.b $4D 
                dc.b $90 
                dc.b $6D 
                dc.b $94 
                dc.b $4D 
                dc.b $94 
                dc.b $6D 
                dc.b $98 
                dc.b $4E 
                dc.b $14
                dc.b $6E 
                dc.b $18
                dc.b $4E 
                dc.b $18
                dc.b $6E 
                dc.b $1C
                dc.b $4E 
                dc.b $98 
                dc.b $6E 
                dc.b $9C 
                dc.b $4E 
                dc.b $9C 
                dc.b $6E 
                dc.b $A0 
                dc.b $4F 
                dc.b $1C
                dc.b $6F 
                dc.b $20
                dc.b $4F 
                dc.b $20
                dc.b $6F 
                dc.b $24 
                dc.b $4F 
                dc.b $A0 
                dc.b $6F 
                dc.b $A4 
                dc.b $4F 
                dc.b $A4 
                dc.b $6F 
                dc.b $A8 
                dc.b $40 
                dc.b $24 
                dc.b $60 
                dc.b $28 
                dc.b $40 
                dc.b $28 
                dc.b $60 
                dc.b $2C 
                dc.b $40 
                dc.b $A8 
                dc.b $60 
                dc.b $AC 
                dc.b $40 
                dc.b $AC 
                dc.b $60 
                dc.b $B0 
                dc.b $41 
                dc.b $2C 
                dc.b $61 
                dc.b $30 
                dc.b $41 
                dc.b $30 
                dc.b $61 
                dc.b $34 
                dc.b $41 
                dc.b $B0 
                dc.b $61 
                dc.b $B4 
                dc.b $41 
                dc.b $B4 
                dc.b $61 
                dc.b $B8 
                dc.b $42 
                dc.b $34 
                dc.b $62 
                dc.b $38 
                dc.b $42 
                dc.b $38 
                dc.b $62 
                dc.b $3C 
                dc.b $42 
                dc.b $B8 
                dc.b $62 
                dc.b $BC 
                dc.b $42 
                dc.b $BC 
                dc.b $62 
                dc.b $C0 
                dc.b $43 
                dc.b $3C 
                dc.b $63 
                dc.b $40 
                dc.b $43 
                dc.b $40 
                dc.b $63 
                dc.b $44 
                dc.b $43 
                dc.b $C0 
                dc.b $63 
                dc.b $C4 
                dc.b $43 
                dc.b $C4 
                dc.b $63 
                dc.b $C8 
                dc.b $44 
                dc.b $44 
                dc.b $64 
                dc.b $48 
                dc.b $44 
                dc.b $48 
                dc.b $64 
                dc.b $4C 
                dc.b $44 
                dc.b $C8 
                dc.b $64 
                dc.b $CC 
                dc.b $44 
                dc.b $CC 
                dc.b $64 
                dc.b $D0 
                dc.b $45 
                dc.b $4C 
                dc.b $65 
                dc.b $50 
                dc.b $45 
                dc.b $50 
                dc.b $65 
                dc.b $54 
                dc.b $45 
                dc.b $D0 
                dc.b $65 
                dc.b $D4 
                dc.b $46 
                dc.b $50 
                dc.b $66 
                dc.b $54 
                dc.b $46 
                dc.b $D0 
                dc.b $66 
                dc.b $D4 
                dc.b $46 
                dc.b $D4 
                dc.b $66 
                dc.b $D8 
                dc.b $47 
                dc.b $54 
                dc.b $67 
                dc.b $58 
                dc.b $47 
                dc.b $58 
                dc.b $67 
                dc.b $5C 
                dc.b $47 
                dc.b $D8 
                dc.b $67 
                dc.b $DC 
                dc.b $47 
                dc.b $DC 
                dc.b $67 
                dc.b $E0 
                dc.b $48 
                dc.b $5C 
                dc.b $68 
                dc.b $60 
                dc.b $48 
                dc.b $60 
                dc.b $68 
                dc.b $64 
                dc.b $48 
                dc.b $E0 
                dc.b $68 
                dc.b $E4 
                dc.b $48 
                dc.b $E4 
                dc.b $68 
                dc.b $E8 
                dc.b $49 
                dc.b $64 
                dc.b $69 
                dc.b $68 
                dc.b $49 
                dc.b $68 
                dc.b $69 
                dc.b $6C 
                dc.b $49 
                dc.b $E8 
                dc.b $69 
                dc.b $EC 
                dc.b $49 
                dc.b $EC 
                dc.b $69 
                dc.b $F0 
                dc.b $4A 
                dc.b $6C 
                dc.b $6A 
                dc.b $70 
                dc.b $4A 
                dc.b $70 
                dc.b $6A 
                dc.b $74 
                dc.b $4A 
                dc.b $F0 
                dc.b $6A 
                dc.b $F4 
                dc.b $4A 
                dc.b $F4 
                dc.b $6A 
                dc.b $F8 
                dc.b $4B 
                dc.b $74 
                dc.b $6B 
                dc.b $78 
                dc.b $4B 
                dc.b $78 
                dc.b $6B 
                dc.b $7C 
                dc.b $4B 
                dc.b $F8 
                dc.b $6B 
                dc.b $FC 
                dc.b $4B 
                dc.b $FC 
                dc.b $6B 
                dc.b $80 
                dc.b $4C 
                dc.b $7C 
                dc.b $6C 
                dc.b   0
                dc.b $4C 
                dc.b   0
                dc.b $6C 
                dc.b   4
                dc.b $4C 
                dc.b $80 
                dc.b $6C 
                dc.b $84 
                dc.b $4C 
                dc.b $84 
                dc.b $6C 
                dc.b $88 
                dc.b $4D 
                dc.b   4
                dc.b $6D 
                dc.b   8
                dc.b $4D 
                dc.b   8
                dc.b $6D 
                dc.b  $C
                dc.b $4D 
                dc.b $88 
                dc.b $6D 
                dc.b $8C 
                dc.b $4D 
                dc.b $8C 
                dc.b $6D 
                dc.b $90 
                dc.b $4E 
                dc.b  $C
                dc.b $6E 
                dc.b $10
                dc.b $4E 
                dc.b $10
                dc.b $6E 
                dc.b $14
                dc.b $4E 
                dc.b $90 
                dc.b $6E 
                dc.b $94 
                dc.b $4E 
                dc.b $94 
                dc.b $6E 
                dc.b $98 
                dc.b $4F 
                dc.b $14
                dc.b $6F 
                dc.b $18
                dc.b $4F 
                dc.b $18
                dc.b $6F 
                dc.b $1C
                dc.b $4F 
                dc.b $98 
                dc.b $6F 
                dc.b $9C 
                dc.b $4F 
                dc.b $9C 
                dc.b $6F 
                dc.b $A0 
                dc.b $40 
                dc.b $1C
                dc.b $60 
                dc.b $20
                dc.b $40 
                dc.b $20
                dc.b $60 
                dc.b $24 
                dc.b $40 
                dc.b $A0 
                dc.b $60 
                dc.b $A4 
                dc.b $40 
                dc.b $A4 
                dc.b $60 
                dc.b $A8 
                dc.b $41 
                dc.b $24 
                dc.b $61 
                dc.b $28 
                dc.b $41 
                dc.b $28 
                dc.b $61 
                dc.b $2C 
                dc.b $41 
                dc.b $A8 
                dc.b $61 
                dc.b $AC 
                dc.b $41 
                dc.b $AC 
                dc.b $61 
                dc.b $B0 
                dc.b $42 
                dc.b $2C 
                dc.b $62 
                dc.b $30 
                dc.b $42 
                dc.b $30 
                dc.b $62 
                dc.b $34 
                dc.b $42 
                dc.b $B0 
                dc.b $62 
                dc.b $B4 
                dc.b $42 
                dc.b $B4 
                dc.b $62 
                dc.b $B8 
                dc.b $43 
                dc.b $34 
                dc.b $63 
                dc.b $38 
                dc.b $43 
                dc.b $38 
                dc.b $63 
                dc.b $3C 
                dc.b $43 
                dc.b $B8 
                dc.b $63 
                dc.b $BC 
                dc.b $43 
                dc.b $BC 
                dc.b $63 
                dc.b $C0 
                dc.b $44 
                dc.b $3C 
                dc.b $64 
                dc.b $40 
                dc.b $44 
                dc.b $40 
                dc.b $64 
                dc.b $44 
                dc.b $44 
                dc.b $C0 
                dc.b $64 
                dc.b $C4 
                dc.b $44 
                dc.b $C4 
                dc.b $64 
                dc.b $C8 
                dc.b $45 
                dc.b $44 
                dc.b $65 
                dc.b $48 
                dc.b $45 
                dc.b $48 
                dc.b $65 
                dc.b $4C 
                dc.b $45 
                dc.b $C8 
                dc.b $65 
                dc.b $CC 
                dc.b $45 
                dc.b $CC 
                dc.b $65 
                dc.b $D0 
                dc.b $46 
                dc.b $4C 
                dc.b $66 
                dc.b $50 
                dc.b $46 
                dc.b $CC 
                dc.b $66 
                dc.b $D0 
                dc.b $47 
                dc.b $4C 
                dc.b $67 
                dc.b $50 
                dc.b $47 
                dc.b $50 
                dc.b $67 
                dc.b $54 
                dc.b $47 
                dc.b $D0 
                dc.b $67 
                dc.b $D4 
                dc.b $47 
                dc.b $D4 
                dc.b $67 
                dc.b $D8 
                dc.b $48 
                dc.b $54 
                dc.b $68 
                dc.b $58 
                dc.b $48 
                dc.b $58 
                dc.b $68 
                dc.b $5C 
                dc.b $48 
                dc.b $D8 
                dc.b $68 
                dc.b $DC 
                dc.b $48 
                dc.b $DC 
                dc.b $68 
                dc.b $E0 
                dc.b $49 
                dc.b $5C 
                dc.b $69 
                dc.b $60 
                dc.b $49 
                dc.b $60 
                dc.b $69 
                dc.b $64 
                dc.b $49 
                dc.b $E0 
                dc.b $69 
                dc.b $E4 
                dc.b $49 
                dc.b $E4 
                dc.b $69 
                dc.b $E8 
                dc.b $4A 
                dc.b $64 
                dc.b $6A 
                dc.b $68 
                dc.b $4A 
                dc.b $68 
                dc.b $6A 
                dc.b $6C 
                dc.b $4A 
                dc.b $E8 
                dc.b $6A 
                dc.b $EC 
                dc.b $4A 
                dc.b $EC 
                dc.b $6A 
                dc.b $F0 
                dc.b $4B 
                dc.b $6C 
                dc.b $6B 
                dc.b $70 
                dc.b $4B 
                dc.b $70 
                dc.b $6B 
                dc.b $74 
                dc.b $4B 
                dc.b $F0 
                dc.b $6B 
                dc.b $F4 
                dc.b $4B 
                dc.b $F4 
                dc.b $6B 
                dc.b $F8 
                dc.b $4C 
                dc.b $74 
                dc.b $6C 
                dc.b $78 
                dc.b $4C 
                dc.b $78 
                dc.b $6C 
                dc.b $7C 
                dc.b $4C 
                dc.b $F8 
                dc.b $6C 
                dc.b $FC 
                dc.b $4C 
                dc.b $FC 
                dc.b $6C 
                dc.b $80 
                dc.b $4D 
                dc.b $7C 
                dc.b $6D 
                dc.b   0
                dc.b $4D 
                dc.b   0
                dc.b $6D 
                dc.b   4
                dc.b $4D 
                dc.b $80 
                dc.b $6D 
                dc.b $84 
                dc.b $4D 
                dc.b $84 
                dc.b $6D 
                dc.b $88 
                dc.b $4E 
                dc.b   4
                dc.b $6E 
                dc.b   8
                dc.b $4E 
                dc.b   8
                dc.b $6E 
                dc.b  $C
                dc.b $4E 
                dc.b $88 
                dc.b $6E 
                dc.b $8C 
                dc.b $4E 
                dc.b $8C 
                dc.b $6E 
                dc.b $90 
                dc.b $4F 
                dc.b  $C
                dc.b $6F 
                dc.b $10
                dc.b $4F 
                dc.b $10
                dc.b $6F 
                dc.b $14
                dc.b $4F 
                dc.b $90 
                dc.b $6F 
                dc.b $94 
                dc.b $4F 
                dc.b $94 
                dc.b $6F 
                dc.b $98 
                dc.b $40 
                dc.b $14
                dc.b $60 
                dc.b $18
                dc.b $40 
                dc.b $18
                dc.b $60 
                dc.b $1C
                dc.b $40 
                dc.b $98 
                dc.b $60 
                dc.b $9C 
                dc.b $40 
                dc.b $9C 
                dc.b $60 
                dc.b $A0 
                dc.b $41 
                dc.b $1C
                dc.b $61 
                dc.b $20
                dc.b $41 
                dc.b $20
                dc.b $61 
                dc.b $24 
                dc.b $41 
                dc.b $A0 
                dc.b $61 
                dc.b $A4 
                dc.b $41 
                dc.b $A4 
                dc.b $61 
                dc.b $A8 
                dc.b $42 
                dc.b $24 
                dc.b $62 
                dc.b $28 
                dc.b $42 
                dc.b $28 
                dc.b $62 
                dc.b $2C 
                dc.b $42 
                dc.b $A8 
                dc.b $62 
                dc.b $AC 
                dc.b $42 
                dc.b $AC 
                dc.b $62 
                dc.b $B0 
                dc.b $43 
                dc.b $2C 
                dc.b $63 
                dc.b $30 
                dc.b $43 
                dc.b $30 
                dc.b $63 
                dc.b $34 
                dc.b $43 
                dc.b $B0 
                dc.b $63 
                dc.b $B4 
                dc.b $43 
                dc.b $B4 
                dc.b $63 
                dc.b $B8 
                dc.b $44 
                dc.b $34 
                dc.b $64 
                dc.b $38 
                dc.b $44 
                dc.b $38 
                dc.b $64 
                dc.b $3C 
                dc.b $44 
                dc.b $B8 
                dc.b $64 
                dc.b $BC 
                dc.b $44 
                dc.b $BC 
                dc.b $64 
                dc.b $C0 
                dc.b $45 
                dc.b $3C 
                dc.b $65 
                dc.b $40 
                dc.b $45 
                dc.b $40 
                dc.b $65 
                dc.b $44 
                dc.b $45 
                dc.b $C0 
                dc.b $65 
                dc.b $C4 
                dc.b $45 
                dc.b $C4 
                dc.b $65 
                dc.b $C8 
                dc.b $46 
                dc.b $44 
                dc.b $66 
                dc.b $48 
                dc.b $46 
                dc.b $48 
                dc.b $66 
                dc.b $4C 
                dc.b $46 
                dc.b $C8 
                dc.b $66 
                dc.b $CC 
                dc.b $47 
                dc.b $48 
                dc.b $67 
                dc.b $4C 
                dc.b $47 
                dc.b $C8 
                dc.b $67 
                dc.b $CC 
                dc.b $47 
                dc.b $CC 
                dc.b $67 
                dc.b $D0 
                dc.b $48 
                dc.b $4C 
                dc.b $68 
                dc.b $50 
                dc.b $48 
                dc.b $50 
                dc.b $68 
                dc.b $54 
                dc.b $48 
                dc.b $D0 
                dc.b $68 
                dc.b $D4 
                dc.b $48 
                dc.b $D4 
                dc.b $68 
                dc.b $D8 
                dc.b $49 
                dc.b $54 
                dc.b $69 
                dc.b $58 
                dc.b $49 
                dc.b $58 
                dc.b $69 
                dc.b $5C 
                dc.b $49 
                dc.b $D8 
                dc.b $69 
                dc.b $DC 
                dc.b $49 
                dc.b $DC 
                dc.b $69 
                dc.b $E0 
                dc.b $4A 
                dc.b $5C 
                dc.b $6A 
                dc.b $60 
                dc.b $4A 
                dc.b $60 
                dc.b $6A 
                dc.b $64 
                dc.b $4A 
                dc.b $E0 
                dc.b $6A 
                dc.b $E4 
                dc.b $4A 
                dc.b $E4 
                dc.b $6A 
                dc.b $E8 
                dc.b $4B 
                dc.b $64 
                dc.b $6B 
                dc.b $68 
                dc.b $4B 
                dc.b $68 
                dc.b $6B 
                dc.b $6C 
                dc.b $4B 
                dc.b $E8 
                dc.b $6B 
                dc.b $EC 
                dc.b $4B 
                dc.b $EC 
                dc.b $6B 
                dc.b $F0 
                dc.b $4C 
                dc.b $6C 
                dc.b $6C 
                dc.b $70 
                dc.b $4C 
                dc.b $70 
                dc.b $6C 
                dc.b $74 
                dc.b $4C 
                dc.b $F0 
                dc.b $6C 
                dc.b $F4 
                dc.b $4C 
                dc.b $F4 
                dc.b $6C 
                dc.b $F8 
                dc.b $4D 
                dc.b $74 
                dc.b $6D 
                dc.b $78 
                dc.b $4D 
                dc.b $78 
                dc.b $6D 
                dc.b $7C 
                dc.b $4D 
                dc.b $F8 
                dc.b $6D 
                dc.b $FC 
                dc.b $4D 
                dc.b $FC 
                dc.b $6D 
                dc.b $80 
                dc.b $4E 
                dc.b $7C 
                dc.b $6E 
                dc.b   0
                dc.b $4E 
                dc.b   0
                dc.b $6E 
                dc.b   4
                dc.b $4E 
                dc.b $80 
                dc.b $6E 
                dc.b $84 
                dc.b $4E 
                dc.b $84 
                dc.b $6E 
                dc.b $88 
                dc.b $4F 
                dc.b   4
                dc.b $6F 
                dc.b   8
                dc.b $4F 
                dc.b   8
                dc.b $6F 
                dc.b  $C
                dc.b $4F 
                dc.b $88 
                dc.b $6F 
                dc.b $8C 
                dc.b $4F 
                dc.b $8C 
                dc.b $6F 
                dc.b $90 
                dc.b $40 
                dc.b  $C
                dc.b $60 
                dc.b $10
                dc.b $40 
                dc.b $10
                dc.b $60 
                dc.b $14
                dc.b $40 
                dc.b $90 
                dc.b $60 
                dc.b $94 
                dc.b $40 
                dc.b $94 
                dc.b $60 
                dc.b $98 
                dc.b $41 
                dc.b $14
                dc.b $61 
                dc.b $18
                dc.b $41 
                dc.b $18
                dc.b $61 
                dc.b $1C
                dc.b $41 
                dc.b $98 
                dc.b $61 
                dc.b $9C 
                dc.b $41 
                dc.b $9C 
                dc.b $61 
                dc.b $A0 
                dc.b $42 
                dc.b $1C
                dc.b $62 
                dc.b $20
                dc.b $42 
                dc.b $20
                dc.b $62 
                dc.b $24 
                dc.b $42 
                dc.b $A0 
                dc.b $62 
                dc.b $A4 
                dc.b $42 
                dc.b $A4 
                dc.b $62 
                dc.b $A8 
                dc.b $43 
                dc.b $24 
                dc.b $63 
                dc.b $28 
                dc.b $43 
                dc.b $28 
                dc.b $63 
                dc.b $2C 
                dc.b $43 
                dc.b $A8 
                dc.b $63 
                dc.b $AC 
                dc.b $43 
                dc.b $AC 
                dc.b $63 
                dc.b $B0 
                dc.b $44 
                dc.b $2C 
                dc.b $64 
                dc.b $30 
                dc.b $44 
                dc.b $30 
                dc.b $64 
                dc.b $34 
                dc.b $44 
                dc.b $B0 
                dc.b $64 
                dc.b $B4 
                dc.b $44 
                dc.b $B4 
                dc.b $64 
                dc.b $B8 
                dc.b $45 
                dc.b $34 
                dc.b $65 
                dc.b $38 
                dc.b $45 
                dc.b $38 
                dc.b $65 
                dc.b $3C 
                dc.b $45 
                dc.b $B8 
                dc.b $65 
                dc.b $BC 
                dc.b $45 
                dc.b $BC 
                dc.b $65 
                dc.b $C0 
                dc.b $46 
                dc.b $3C 
                dc.b $66 
                dc.b $40 
                dc.b $46 
                dc.b $40 
                dc.b $66 
                dc.b $44 
                dc.b $46 
                dc.b $C0 
                dc.b $66 
                dc.b $C4 
                dc.b $46 
                dc.b $C4 
                dc.b $66 
                dc.b $C8 
                dc.b $47 
                dc.b $44 
                dc.b $67 
                dc.b $48 
                dc.b $47 
                dc.b $C4 
                dc.b $67 
                dc.b $C8 
                dc.b $48 
                dc.b $44 
                dc.b $68 
                dc.b $48 
                dc.b $48 
                dc.b $48 
                dc.b $68 
                dc.b $4C 
                dc.b $48 
                dc.b $C8 
                dc.b $68 
                dc.b $CC 
                dc.b $48 
                dc.b $CC 
                dc.b $68 
                dc.b $D0 
                dc.b $49 
                dc.b $4C 
                dc.b $69 
                dc.b $50 
                dc.b $49 
                dc.b $50 
                dc.b $69 
                dc.b $54 
                dc.b $49 
                dc.b $D0 
                dc.b $69 
                dc.b $D4 
                dc.b $49 
                dc.b $D4 
                dc.b $69 
                dc.b $D8 
                dc.b $4A 
                dc.b $54 
                dc.b $6A 
                dc.b $58 
                dc.b $4A 
                dc.b $58 
                dc.b $6A 
                dc.b $5C 
                dc.b $4A 
                dc.b $D8 
                dc.b $6A 
                dc.b $DC 
                dc.b $4A 
                dc.b $DC 
                dc.b $6A 
                dc.b $E0 
                dc.b $4B 
                dc.b $5C 
                dc.b $6B 
                dc.b $60 
                dc.b $4B 
                dc.b $60 
                dc.b $6B 
                dc.b $64 
                dc.b $4B 
                dc.b $E0 
                dc.b $6B 
                dc.b $E4 
                dc.b $4B 
                dc.b $E4 
                dc.b $6B 
                dc.b $E8 
                dc.b $4C 
                dc.b $64 
                dc.b $6C 
                dc.b $68 
                dc.b $4C 
                dc.b $68 
                dc.b $6C 
                dc.b $6C 
                dc.b $4C 
                dc.b $E8 
                dc.b $6C 
                dc.b $EC 
                dc.b $4C 
                dc.b $EC 
                dc.b $6C 
                dc.b $F0 
                dc.b $4D 
                dc.b $6C 
                dc.b $6D 
                dc.b $70 
                dc.b $4D 
                dc.b $70 
                dc.b $6D 
                dc.b $74 
                dc.b $4D 
                dc.b $F0 
                dc.b $6D 
                dc.b $F4 
                dc.b $4D 
                dc.b $F4 
                dc.b $6D 
                dc.b $F8 
                dc.b $4E 
                dc.b $74 
                dc.b $6E 
                dc.b $78 
                dc.b $4E 
                dc.b $78 
                dc.b $6E 
                dc.b $7C 
                dc.b $4E 
                dc.b $F8 
                dc.b $6E 
                dc.b $FC 
                dc.b $4E 
                dc.b $FC 
                dc.b $6E 
                dc.b $80 
                dc.b $4F 
                dc.b $7C 
                dc.b $6F 
                dc.b   0
                dc.b $4F 
                dc.b   0
                dc.b $6F 
                dc.b   4
                dc.b $4F 
                dc.b $80 
                dc.b $6F 
                dc.b $84 
                dc.b $4F 
                dc.b $84 
                dc.b $6F 
                dc.b $88 
                dc.b $40 
                dc.b   4
                dc.b $60 
                dc.b   8
                dc.b $40 
                dc.b   8
                dc.b $60 
                dc.b  $C
                dc.b $40 
                dc.b $88 
                dc.b $60 
                dc.b $8C 
                dc.b $40 
                dc.b $8C 
                dc.b $60 
                dc.b $90 
                dc.b $41 
                dc.b  $C
                dc.b $61 
                dc.b $10
                dc.b $41 
                dc.b $10
                dc.b $61 
                dc.b $14
                dc.b $41 
                dc.b $90 
                dc.b $61 
                dc.b $94 
                dc.b $41 
                dc.b $94 
                dc.b $61 
                dc.b $98 
                dc.b $42 
                dc.b $14
                dc.b $62 
                dc.b $18
                dc.b $42 
                dc.b $18
                dc.b $62 
                dc.b $1C
                dc.b $42 
                dc.b $98 
                dc.b $62 
                dc.b $9C 
                dc.b $42 
                dc.b $9C 
                dc.b $62 
                dc.b $A0 
                dc.b $43 
                dc.b $1C
                dc.b $63 
                dc.b $20
                dc.b $43 
                dc.b $20
                dc.b $63 
                dc.b $24 
                dc.b $43 
                dc.b $A0 
                dc.b $63 
                dc.b $A4 
                dc.b $43 
                dc.b $A4 
                dc.b $63 
                dc.b $A8 
                dc.b $44 
                dc.b $24 
                dc.b $64 
                dc.b $28 
                dc.b $44 
                dc.b $28 
                dc.b $64 
                dc.b $2C 
                dc.b $44 
                dc.b $A8 
                dc.b $64 
                dc.b $AC 
                dc.b $44 
                dc.b $AC 
                dc.b $64 
                dc.b $B0 
                dc.b $45 
                dc.b $2C 
                dc.b $65 
                dc.b $30 
                dc.b $45 
                dc.b $30 
                dc.b $65 
                dc.b $34 
                dc.b $45 
                dc.b $B0 
                dc.b $65 
                dc.b $B4 
                dc.b $45 
                dc.b $B4 
                dc.b $65 
                dc.b $B8 
                dc.b $46 
                dc.b $34 
                dc.b $66 
                dc.b $38 
                dc.b $46 
                dc.b $38 
                dc.b $66 
                dc.b $3C 
                dc.b $46 
                dc.b $B8 
                dc.b $66 
                dc.b $BC 
                dc.b $46 
                dc.b $BC 
                dc.b $66 
                dc.b $C0 
                dc.b $47 
                dc.b $3C 
                dc.b $67 
                dc.b $40 
                dc.b $47 
                dc.b $40 
                dc.b $67 
                dc.b $44 
                dc.b $47 
                dc.b $C0 
                dc.b $67 
                dc.b $C4 
byte_B77E:      dc.b 0
                dc.b $15
                dc.b   0
                dc.b $16
                dc.b   0
                dc.b $17
                dc.b   0
                dc.b $18
                dc.b   0
                dc.b $19
                dc.b   0
                dc.b $1A
                dc.b   0
                dc.b $1B
                dc.b   0
                dc.b $1C
                dc.b   0
                dc.b $1D
                dc.b   0
                dc.b $1E
                dc.b   0
                dc.b $1F
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   3
                dc.b   0
                dc.b   4
                dc.b   0
                dc.b   5
                dc.b   0
                dc.b   6
                dc.b   0
                dc.b   7
                dc.b   0
                dc.b   8
                dc.b   0
                dc.b   9
                dc.b   0
                dc.b  $A
                dc.b   0
                dc.b  $B
                dc.b   0
                dc.b  $C
                dc.b   0
                dc.b  $D
                dc.b   0
                dc.b  $E
                dc.b   0
                dc.b  $F
                dc.b   0
                dc.b $10
                dc.b   0
                dc.b $11
                dc.b   0
                dc.b $12
                dc.b   0
                dc.b $13
                dc.b   0
                dc.b $14
                dc.b   0
                dc.b $35 
                dc.b   0
                dc.b $36 
                dc.b   0
                dc.b $37 
                dc.b   0
                dc.b $38 
                dc.b   0
                dc.b $39 
                dc.b   0
                dc.b $3A 
                dc.b   0
                dc.b $3B 
                dc.b   0
                dc.b $3C 
                dc.b   0
                dc.b $3D 
                dc.b   0
                dc.b $3E 
                dc.b   0
                dc.b $3F 
                dc.b   0
                dc.b $20
                dc.b   0
                dc.b $21 
                dc.b   0
                dc.b $22 
                dc.b   0
                dc.b $23 
                dc.b   0
                dc.b $24 
                dc.b   0
                dc.b $25 
                dc.b   0
                dc.b $26 
                dc.b   0
                dc.b $27 
                dc.b   0
                dc.b $28 
                dc.b   0
                dc.b $29 
                dc.b   0
                dc.b $2A 
                dc.b   0
                dc.b $2B 
                dc.b   0
                dc.b $2C 
                dc.b   0
                dc.b $2D 
                dc.b   0
                dc.b $2E 
                dc.b   0
                dc.b $2F 
                dc.b   0
                dc.b $30 
                dc.b   0
                dc.b $31 
                dc.b   0
                dc.b $32 
                dc.b   0
                dc.b $33 
                dc.b   0
                dc.b $34 
                dc.b   0
                dc.b $55 
                dc.b   0
                dc.b $56 
                dc.b   0
                dc.b $57 
                dc.b   0
                dc.b $58 
                dc.b   0
                dc.b $59 
                dc.b   0
                dc.b $5A 
                dc.b   0
                dc.b $5B 
                dc.b   0
                dc.b $5C 
                dc.b   0
                dc.b $5D 
                dc.b   0
                dc.b $5E 
                dc.b   0
                dc.b $5F 
                dc.b   0
                dc.b $40 
                dc.b   0
                dc.b $41 
                dc.b   0
                dc.b $42 
                dc.b   0
                dc.b $43 
                dc.b   0
                dc.b $44 
                dc.b   0
                dc.b $45 
                dc.b   0
                dc.b $46 
                dc.b   0
                dc.b $47 
                dc.b   0
                dc.b $48 
                dc.b   0
                dc.b $49 
                dc.b   0
                dc.b $4A 
                dc.b   0
                dc.b $4B 
                dc.b   0
                dc.b $4C 
                dc.b   0
                dc.b $4D 
                dc.b   0
                dc.b $4E 
                dc.b   0
                dc.b $4F 
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b $51 
                dc.b   0
                dc.b $52 
                dc.b   0
                dc.b $53 
                dc.b   0
                dc.b $54 
                dc.b   0
                dc.b $75 
                dc.b   0
                dc.b $76 
                dc.b   0
                dc.b $77 
                dc.b   0
                dc.b $78 
                dc.b   0
                dc.b $79 
                dc.b   0
                dc.b $7A 
                dc.b   0
                dc.b $7B 
                dc.b   0
                dc.b $7C 
                dc.b   0
                dc.b $7D 
                dc.b   0
                dc.b $7E 
                dc.b   0
                dc.b $7F 
                dc.b   0
                dc.b $60 
                dc.b   0
                dc.b $61 
                dc.b   0
                dc.b $62 
                dc.b   0
                dc.b $63 
                dc.b   0
                dc.b $64 
                dc.b   0
                dc.b $65 
                dc.b   0
                dc.b $66 
                dc.b   0
                dc.b $67 
                dc.b   0
                dc.b $68 
                dc.b   0
                dc.b $69 
                dc.b   0
                dc.b $6A 
                dc.b   0
                dc.b $6B 
                dc.b   0
                dc.b $6C 
                dc.b   0
                dc.b $6D 
                dc.b   0
                dc.b $6E 
                dc.b   0
                dc.b $6F 
                dc.b   0
                dc.b $70 
                dc.b   0
                dc.b $71 
                dc.b   0
                dc.b $72 
                dc.b   0
                dc.b $73 
                dc.b   0
                dc.b $74 
                dc.b   0
                dc.b $95 
                dc.b   0
                dc.b $96 
                dc.b   0
                dc.b $97 
                dc.b   0
                dc.b $98 
                dc.b   0
                dc.b $99 
                dc.b   0
                dc.b $9A 
                dc.b   0
                dc.b $9B 
                dc.b   0
                dc.b $9C 
                dc.b   0
                dc.b $9D 
                dc.b   0
                dc.b $9E 
                dc.b   0
                dc.b $9F 
                dc.b   0
                dc.b $80 
                dc.b   0
                dc.b $81 
                dc.b   0
                dc.b $82 
                dc.b   0
                dc.b $83 
                dc.b   0
                dc.b $84 
                dc.b   0
                dc.b $85 
                dc.b   0
                dc.b $86 
                dc.b   0
                dc.b $87 
                dc.b   0
                dc.b $88 
                dc.b   0
                dc.b $89 
                dc.b   0
                dc.b $8A 
                dc.b   0
                dc.b $8B 
                dc.b   0
                dc.b $8C 
                dc.b   0
                dc.b $8D 
                dc.b   0
                dc.b $8E 
                dc.b   0
                dc.b $8F 
                dc.b   0
                dc.b $90 
                dc.b   0
                dc.b $91 
                dc.b   0
                dc.b $92 
                dc.b   0
                dc.b $93 
                dc.b   0
                dc.b $94 
                dc.b   0
                dc.b $B5 
                dc.b   0
                dc.b $B6 
                dc.b   0
                dc.b $B7 
                dc.b   0
                dc.b $B8 
                dc.b   0
                dc.b $B9 
                dc.b   0
                dc.b $BA 
                dc.b   0
                dc.b $BB 
                dc.b   0
                dc.b $BC 
                dc.b   0
                dc.b $BD 
                dc.b   0
                dc.b $BE 
                dc.b   0
                dc.b $BF 
                dc.b   0
                dc.b $A0 
                dc.b   0
                dc.b $A1 
                dc.b   0
                dc.b $A2 
                dc.b   0
                dc.b $A3 
                dc.b   0
                dc.b $A4 
                dc.b   0
                dc.b $A5 
                dc.b   0
                dc.b $A6 
                dc.b   0
                dc.b $A7 
                dc.b   0
                dc.b $A8 
                dc.b   0
                dc.b $A9 
                dc.b   0
                dc.b $AA 
                dc.b   0
                dc.b $AB 
                dc.b   0
                dc.b $AC 
                dc.b   0
                dc.b $AD 
                dc.b   0
                dc.b $AE 
                dc.b   0
                dc.b $AF 
                dc.b   0
                dc.b $B0 
                dc.b   0
                dc.b $B1 
                dc.b   0
                dc.b $B2 
                dc.b   0
                dc.b $B3 
                dc.b   0
                dc.b $B4 
                dc.b   0
                dc.b $D5 
                dc.b   0
                dc.b $D6 
                dc.b   0
                dc.b $D7 
                dc.b   0
                dc.b $D8 
                dc.b   0
                dc.b $D9 
                dc.b   0
                dc.b $DA 
                dc.b   0
                dc.b $DB 
                dc.b   0
                dc.b $DC 
                dc.b   0
                dc.b $DD 
                dc.b   0
                dc.b $DE 
                dc.b   0
                dc.b $DF 
                dc.b   0
                dc.b $C0 
                dc.b   0
                dc.b $C1 
                dc.b   0
                dc.b $C2 
                dc.b   0
                dc.b $C3 
                dc.b   0
                dc.b $C4 
                dc.b   0
                dc.b $C5 
                dc.b   0
                dc.b $C6 
                dc.b   0
                dc.b $C7 
                dc.b   0
                dc.b $C8 
                dc.b   0
                dc.b $C9 
                dc.b   0
                dc.b $CA 
                dc.b   0
                dc.b $CB 
                dc.b   0
                dc.b $CC 
                dc.b   0
                dc.b $CD 
                dc.b   0
                dc.b $CE 
                dc.b   0
                dc.b $CF 
                dc.b   0
                dc.b $D0 
                dc.b   0
                dc.b $D1 
                dc.b   0
                dc.b $D2 
                dc.b   0
                dc.b $D3 
                dc.b   0
                dc.b $D4 
                dc.b   0
                dc.b $F5 
                dc.b   0
                dc.b $F6 
                dc.b   0
                dc.b $F7 
                dc.b   0
                dc.b $F8 
                dc.b   0
                dc.b $F9 
                dc.b   0
                dc.b $FA 
                dc.b   0
                dc.b $FB 
                dc.b   0
                dc.b $FC 
                dc.b   0
                dc.b $FD 
                dc.b   0
                dc.b $FE 
                dc.b   0
                dc.b $FF
                dc.b   0
                dc.b $E0 
                dc.b   0
                dc.b $E1 
                dc.b   0
                dc.b $E2 
                dc.b   0
                dc.b $E3 
                dc.b   0
                dc.b $E4 
                dc.b   0
                dc.b $E5 
                dc.b   0
                dc.b $E6 
                dc.b   0
                dc.b $E7 
                dc.b   0
                dc.b $E8 
                dc.b   0
                dc.b $E9 
                dc.b   0
                dc.b $EA 
                dc.b   0
                dc.b $EB 
                dc.b   0
                dc.b $EC 
                dc.b   0
                dc.b $ED 
                dc.b   0
                dc.b $EE 
                dc.b   0
                dc.b $EF 
                dc.b   0
                dc.b $F0 
                dc.b   0
                dc.b $F1 
                dc.b   0
                dc.b $F2 
                dc.b   0
                dc.b $F3 
                dc.b   0
                dc.b $F4 
                dc.b   1
                dc.b $15
                dc.b   1
                dc.b $16
                dc.b   1
                dc.b $17
                dc.b   1
                dc.b $18
                dc.b   1
                dc.b $19
                dc.b   1
                dc.b $1A
                dc.b   1
                dc.b $1B
                dc.b   1
                dc.b $1C
                dc.b   1
                dc.b $1D
                dc.b   1
                dc.b $1E
                dc.b   1
                dc.b $1F
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b   1
                dc.b   3
                dc.b   1
                dc.b   4
                dc.b   1
                dc.b   5
                dc.b   1
                dc.b   6
                dc.b   1
                dc.b   7
                dc.b   1
                dc.b   8
                dc.b   1
                dc.b   9
                dc.b   1
                dc.b  $A
                dc.b   1
                dc.b  $B
                dc.b   1
                dc.b  $C
                dc.b   1
                dc.b  $D
                dc.b   1
                dc.b  $E
                dc.b   1
                dc.b  $F
                dc.b   1
                dc.b $10
                dc.b   1
                dc.b $11
                dc.b   1
                dc.b $12
                dc.b   1
                dc.b $13
                dc.b   1
                dc.b $14
                dc.b   1
                dc.b $35 
                dc.b   1
                dc.b $36 
                dc.b   1
                dc.b $37 
                dc.b   1
                dc.b $38 
                dc.b   1
                dc.b $39 
                dc.b   1
                dc.b $3A 
                dc.b   1
                dc.b $3B 
                dc.b   1
                dc.b $3C 
                dc.b   1
                dc.b $3D 
                dc.b   1
                dc.b $3E 
                dc.b   1
                dc.b $3F 
                dc.b   1
                dc.b $20
                dc.b   1
                dc.b $21 
                dc.b   1
                dc.b $22 
                dc.b   1
                dc.b $23 
                dc.b   1
                dc.b $24 
                dc.b   1
                dc.b $25 
                dc.b   1
                dc.b $26 
                dc.b   1
                dc.b $27 
                dc.b   1
                dc.b $28 
                dc.b   1
                dc.b $29 
                dc.b   1
                dc.b $2A 
                dc.b   1
                dc.b $2B 
                dc.b   1
                dc.b $2C 
                dc.b   1
                dc.b $2D 
                dc.b   1
                dc.b $2E 
                dc.b   1
                dc.b $2F 
                dc.b   1
                dc.b $30 
                dc.b   1
                dc.b $31 
                dc.b   1
                dc.b $32 
                dc.b   1
                dc.b $33 
                dc.b   1
                dc.b $34 
                dc.b   1
                dc.b $55 
                dc.b   1
                dc.b $56 
                dc.b   1
                dc.b $57 
                dc.b   1
                dc.b $58 
                dc.b   1
                dc.b $59 
                dc.b   1
                dc.b $5A 
                dc.b   1
                dc.b $5B 
                dc.b   1
                dc.b $5C 
                dc.b   1
                dc.b $5D 
                dc.b   1
                dc.b $5E 
                dc.b   1
                dc.b $5F 
                dc.b   1
                dc.b $40 
                dc.b   1
                dc.b $41 
                dc.b   1
                dc.b $42 
                dc.b   1
                dc.b $43 
                dc.b   1
                dc.b $44 
                dc.b   1
                dc.b $45 
                dc.b   1
                dc.b $46 
                dc.b   1
                dc.b $47 
                dc.b   1
                dc.b $48 
                dc.b   1
                dc.b $49 
                dc.b   1
                dc.b $4A 
                dc.b   1
                dc.b $4B 
                dc.b   1
                dc.b $4C 
                dc.b   1
                dc.b $4D 
                dc.b   1
                dc.b $4E 
                dc.b   1
                dc.b $4F 
                dc.b   1
                dc.b $50 
                dc.b   1
                dc.b $51 
                dc.b   1
                dc.b $52 
                dc.b   1
                dc.b $53 
                dc.b   1
                dc.b $54 
                dc.b   1
                dc.b $75 
                dc.b   1
                dc.b $76 
                dc.b   1
                dc.b $77 
                dc.b   1
                dc.b $78 
                dc.b   1
                dc.b $79 
                dc.b   1
                dc.b $7A 
                dc.b   1
                dc.b $7B 
                dc.b   1
                dc.b $7C 
                dc.b   1
                dc.b $7D 
                dc.b   1
                dc.b $7E 
                dc.b   1
                dc.b $7F 
                dc.b   1
                dc.b $60 
                dc.b   1
                dc.b $61 
                dc.b   1
                dc.b $62 
                dc.b   1
                dc.b $63 
                dc.b   1
                dc.b $64 
                dc.b   1
                dc.b $65 
                dc.b   1
                dc.b $66 
                dc.b   1
                dc.b $67 
                dc.b   1
                dc.b $68 
                dc.b   1
                dc.b $69 
                dc.b   1
                dc.b $6A 
                dc.b   1
                dc.b $6B 
                dc.b   1
                dc.b $6C 
                dc.b   1
                dc.b $6D 
                dc.b   1
                dc.b $6E 
                dc.b   1
                dc.b $6F 
                dc.b   1
                dc.b $70 
                dc.b   1
                dc.b $71 
                dc.b   1
                dc.b $72 
                dc.b   1
                dc.b $73 
                dc.b   1
                dc.b $74 
                dc.b   1
                dc.b $95 
                dc.b   1
                dc.b $96 
                dc.b   1
                dc.b $97 
                dc.b   1
                dc.b $98 
                dc.b   1
                dc.b $99 
                dc.b   1
                dc.b $9A 
                dc.b   1
                dc.b $9B 
                dc.b   1
                dc.b $9C 
                dc.b   1
                dc.b $9D 
                dc.b   1
                dc.b $9E 
                dc.b   1
                dc.b $9F 
                dc.b   1
                dc.b $80 
                dc.b   1
                dc.b $81 
                dc.b   1
                dc.b $82 
                dc.b   1
                dc.b $83 
                dc.b   1
                dc.b $84 
                dc.b   1
                dc.b $85 
                dc.b   1
                dc.b $86 
                dc.b   1
                dc.b $87 
                dc.b   1
                dc.b $88 
                dc.b   1
                dc.b $89 
                dc.b   1
                dc.b $8A 
                dc.b   1
                dc.b $8B 
                dc.b   1
                dc.b $8C 
                dc.b   1
                dc.b $8D 
                dc.b   1
                dc.b $8E 
                dc.b   1
                dc.b $8F 
                dc.b   1
                dc.b $90 
                dc.b   1
                dc.b $91 
                dc.b   1
                dc.b $92 
                dc.b   1
                dc.b $93 
                dc.b   1
                dc.b $94 
                dc.b   1
                dc.b $B5 
                dc.b   1
                dc.b $B6 
                dc.b   1
                dc.b $B7 
                dc.b   1
                dc.b $B8 
                dc.b   1
                dc.b $B9 
                dc.b   1
                dc.b $BA 
                dc.b   1
                dc.b $BB 
                dc.b   1
                dc.b $BC 
                dc.b   1
                dc.b $BD 
                dc.b   1
                dc.b $BE 
                dc.b   1
                dc.b $BF 
                dc.b   1
                dc.b $A0 
                dc.b   1
                dc.b $A1 
                dc.b   1
                dc.b $A2 
                dc.b   1
                dc.b $A3 
                dc.b   1
                dc.b $A4 
                dc.b   1
                dc.b $A5 
                dc.b   1
                dc.b $A6 
                dc.b   1
                dc.b $A7 
                dc.b   1
                dc.b $A8 
                dc.b   1
                dc.b $A9 
                dc.b   1
                dc.b $AA 
                dc.b   1
                dc.b $AB 
                dc.b   1
                dc.b $AC 
                dc.b   1
                dc.b $AD 
                dc.b   1
                dc.b $AE 
                dc.b   1
                dc.b $AF 
                dc.b   1
                dc.b $B0 
                dc.b   1
                dc.b $B1 
                dc.b   1
                dc.b $B2 
                dc.b   1
                dc.b $B3 
                dc.b   1
                dc.b $B4 
                dc.b   1
                dc.b $D5 
                dc.b   1
                dc.b $D6 
                dc.b   1
                dc.b $D7 
                dc.b   1
                dc.b $D8 
                dc.b   1
                dc.b $D9 
                dc.b   1
                dc.b $DA 
                dc.b   1
                dc.b $DB 
                dc.b   1
                dc.b $DC 
                dc.b   1
                dc.b $DD 
                dc.b   1
                dc.b $DE 
                dc.b   1
                dc.b $DF 
                dc.b   1
                dc.b $C0 
                dc.b   1
                dc.b $C1 
                dc.b   1
                dc.b $C2 
                dc.b   1
                dc.b $C3 
                dc.b   1
                dc.b $C4 
                dc.b   1
                dc.b $C5 
                dc.b   1
                dc.b $C6 
                dc.b   1
                dc.b $C7 
                dc.b   1
                dc.b $C8 
                dc.b   1
                dc.b $C9 
                dc.b   1
                dc.b $CA 
                dc.b   1
                dc.b $CB 
                dc.b   1
                dc.b $CC 
                dc.b   1
                dc.b $CD 
                dc.b   1
                dc.b $CE 
                dc.b   1
                dc.b $CF 
                dc.b   1
                dc.b $D0 
                dc.b   1
                dc.b $D1 
                dc.b   1
                dc.b $D2 
                dc.b   1
                dc.b $D3 
                dc.b   1
                dc.b $D4 
                dc.b   1
                dc.b $F5 
                dc.b   1
                dc.b $F6 
                dc.b   1
                dc.b $F7 
                dc.b   1
                dc.b $F8 
                dc.b   1
                dc.b $F9 
                dc.b   1
                dc.b $FA 
                dc.b   1
                dc.b $FB 
                dc.b   1
                dc.b $FC 
                dc.b   1
                dc.b $FD 
                dc.b   1
                dc.b $FE 
                dc.b   1
                dc.b $FF
                dc.b   1
                dc.b $E0 
                dc.b   1
                dc.b $E1 
                dc.b   1
                dc.b $E2 
                dc.b   1
                dc.b $E3 
                dc.b   1
                dc.b $E4 
                dc.b   1
                dc.b $E5 
                dc.b   1
                dc.b $E6 
                dc.b   1
                dc.b $E7 
                dc.b   1
                dc.b $E8 
                dc.b   1
                dc.b $E9 
                dc.b   1
                dc.b $EA 
                dc.b   1
                dc.b $EB 
                dc.b   1
                dc.b $EC 
                dc.b   1
                dc.b $ED 
                dc.b   1
                dc.b $EE 
                dc.b   1
                dc.b $EF 
                dc.b   1
                dc.b $F0 
                dc.b   1
                dc.b $F1 
                dc.b   1
                dc.b $F2 
                dc.b   1
                dc.b $F3 
                dc.b   1
                dc.b $F4 
unk_BB7E:       dc.b   1
                dc.b $60 
                dc.b   1
                dc.b $61 
                dc.b   1
                dc.b $62 
                dc.b   1
                dc.b $63 
                dc.b   1
                dc.b $64 
                dc.b   1
                dc.b $65 
                dc.b   1
                dc.b $66 
                dc.b   1
                dc.b $67 
                dc.b   1
                dc.b $68 
                dc.b   1
                dc.b $69 
                dc.b   1
                dc.b $6A 
                dc.b   1
                dc.b $6B 
                dc.b   1
                dc.b $6C 
                dc.b   1
                dc.b $6D 
                dc.b   1
                dc.b $6E 
                dc.b   1
                dc.b $6F 
                dc.b   1
                dc.b $70 
                dc.b   1
                dc.b $71 
                dc.b   1
                dc.b $72 
                dc.b   1
                dc.b $73 
                dc.b   1
                dc.b $74 
                dc.b   1
                dc.b $75 
                dc.b   1
                dc.b $76 
                dc.b   1
                dc.b $77 
                dc.b   1
                dc.b $78 
                dc.b   1
                dc.b $79 
                dc.b   1
                dc.b $7A 
                dc.b   1
                dc.b $7B 
                dc.b   1
                dc.b $7C 
                dc.b   1
                dc.b $7D 
                dc.b   1
                dc.b $7E 
                dc.b   1
                dc.b $7F 
                dc.b   1
                dc.b $80 
                dc.b   1
                dc.b $81 
                dc.b   1
                dc.b $82 
                dc.b   1
                dc.b $83 
                dc.b   1
                dc.b $84 
                dc.b   1
                dc.b $85 
                dc.b   1
                dc.b $86 
                dc.b   1
                dc.b $87 
                dc.b   1
                dc.b $88 
                dc.b   1
                dc.b $89 
                dc.b   1
                dc.b $8A 
                dc.b   1
                dc.b $8B 
                dc.b   1
                dc.b $8C 
                dc.b   1
                dc.b $8D 
                dc.b   1
                dc.b $8E 
                dc.b   1
                dc.b $8F 
                dc.b   1
                dc.b $90 
                dc.b   1
                dc.b $91 
                dc.b   1
                dc.b $92 
                dc.b   1
                dc.b $93 
                dc.b   1
                dc.b $94 
                dc.b   1
                dc.b $95 
                dc.b   1
                dc.b $96 
                dc.b   1
                dc.b $97 
                dc.b   1
                dc.b $98 
                dc.b   1
                dc.b $99 
                dc.b   1
                dc.b $9A 
                dc.b   1
                dc.b $9B 
                dc.b   1
                dc.b $9C 
                dc.b   1
                dc.b $9D 
                dc.b   1
                dc.b $9E 
                dc.b   1
                dc.b $9F 
                dc.b   1
                dc.b $A0 
                dc.b   1
                dc.b $A1 
                dc.b   1
                dc.b $A2 
                dc.b   1
                dc.b $A3 
                dc.b   1
                dc.b $A4 
                dc.b   1
                dc.b $A5 
                dc.b   1
                dc.b $A6 
                dc.b   1
                dc.b $A7 
                dc.b   1
                dc.b $A8 
                dc.b   1
                dc.b $A9 
                dc.b   1
                dc.b $AA 
                dc.b   1
                dc.b $AB 
                dc.b   1
                dc.b $AC 
                dc.b   1
                dc.b $AD 
                dc.b   1
                dc.b $AE 
                dc.b   1
                dc.b $AF 
                dc.b   1
                dc.b $B0 
                dc.b   1
                dc.b $B1 
                dc.b   1
                dc.b $B2 
                dc.b   1
                dc.b $B3 
                dc.b   1
                dc.b $B4 
                dc.b   1
                dc.b $B5 
                dc.b   1
                dc.b $B6 
                dc.b   1
                dc.b $B7 
                dc.b   1
                dc.b $B8 
                dc.b   1
                dc.b $B9 
                dc.b   1
                dc.b $BA 
                dc.b   1
                dc.b $BB 
                dc.b   1
                dc.b $BC 
                dc.b   1
                dc.b $BD 
                dc.b   1
                dc.b $BE 
                dc.b   1
                dc.b $BF 
                dc.b   1
                dc.b $C0 
                dc.b   1
                dc.b $C1 
                dc.b   1
                dc.b $C2 
                dc.b   1
                dc.b $C3 
                dc.b   1
                dc.b $C4 
                dc.b   1
                dc.b $C5 
                dc.b   1
                dc.b $C6 
                dc.b   1
                dc.b $C7 
                dc.b   1
                dc.b $C8 
                dc.b   1
                dc.b $C9 
                dc.b   1
                dc.b $CA 
                dc.b   1
                dc.b $CB 
                dc.b   1
                dc.b $CC 
                dc.b   1
                dc.b $CD 
                dc.b   1
                dc.b $CE 
                dc.b   1
                dc.b $CF 
                dc.b   1
                dc.b $D0 
                dc.b   1
                dc.b $D1 
                dc.b   1
                dc.b $D2 
                dc.b   1
                dc.b $D3 
                dc.b   1
                dc.b $D4 
                dc.b   1
                dc.b $D5 
                dc.b   1
                dc.b $D6 
                dc.b   1
                dc.b $D7 
                dc.b   1
                dc.b $D8 
                dc.b   1
                dc.b $D9 
                dc.b   1
                dc.b $DA 
                dc.b   1
                dc.b $DB 
                dc.b   1
                dc.b $DC 
                dc.b   1
                dc.b $DD 
                dc.b   1
                dc.b $DE 
                dc.b   1
                dc.b $DF 
                dc.b   1
                dc.b $E0 
                dc.b   1
                dc.b $E1 
                dc.b   1
                dc.b $E2 
                dc.b   1
                dc.b $E3 
                dc.b   1
                dc.b $E4 
                dc.b   1
                dc.b $E5 
                dc.b   1
                dc.b $E6 
                dc.b   1
                dc.b $E7 
                dc.b   1
                dc.b $E8 
                dc.b   1
                dc.b $E9 
                dc.b   1
                dc.b $EA 
                dc.b   1
                dc.b $EB 
                dc.b   1
                dc.b $EC 
                dc.b   1
                dc.b $ED 
                dc.b   1
                dc.b $EE 
                dc.b   1
                dc.b $EF 
                dc.b   1
                dc.b $F0 
                dc.b   1
                dc.b $F1 
                dc.b   1
                dc.b $F2 
                dc.b   1
                dc.b $F3 
                dc.b   1
                dc.b $F4 
                dc.b   1
                dc.b $F5 
                dc.b   1
                dc.b $F6 
                dc.b   1
                dc.b $F7 
                dc.b   1
                dc.b $F8 
                dc.b   1
                dc.b $F9 
                dc.b   1
                dc.b $FA 
                dc.b   1
                dc.b $FB 
                dc.b   1
                dc.b $FC 
                dc.b   1
                dc.b $FD 
                dc.b   1
                dc.b $FE 
                dc.b   1
                dc.b $FF
                dc.b   0
                dc.b $10
                dc.b   0
                dc.b $11
                dc.b   0
                dc.b $12
                dc.b   0
                dc.b $13
                dc.b   0
                dc.b $14
                dc.b   0
                dc.b $15
                dc.b   0
                dc.b $16
                dc.b   0
                dc.b $17
                dc.b   0
                dc.b $18
                dc.b   0
                dc.b $19
                dc.b   0
                dc.b $1A
                dc.b   0
                dc.b $1B
                dc.b 0
                dc.b $1C
                dc.b   0
                dc.b $1D
                dc.b   0
                dc.b $1E
                dc.b   0
                dc.b $1F
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   3
                dc.b   0
                dc.b   4
                dc.b   0
                dc.b   5
                dc.b   0
                dc.b   6
                dc.b   0
                dc.b   7
                dc.b   0
                dc.b   8
                dc.b   0
                dc.b   9
                dc.b   0
                dc.b  $A
                dc.b   0
                dc.b  $B
                dc.b   0
                dc.b  $C
                dc.b   0
                dc.b  $D
                dc.b   0
                dc.b  $E
                dc.b   0
                dc.b  $F
                dc.b   0
                dc.b $30 
                dc.b   0
                dc.b $31 
                dc.b   0
                dc.b $32 
                dc.b   0
                dc.b $33 
                dc.b   0
                dc.b $34 
                dc.b   0
                dc.b $35 
                dc.b   0
                dc.b $36 
                dc.b   0
                dc.b $37 
                dc.b   0
                dc.b $38 
                dc.b   0
                dc.b $39 
                dc.b   0
                dc.b $3A 
                dc.b   0
                dc.b $3B 
                dc.b   0
                dc.b $3C 
                dc.b   0
                dc.b $3D 
                dc.b   0
                dc.b $3E 
                dc.b   0
                dc.b $3F 
                dc.b   0
                dc.b $20
                dc.b   0
                dc.b $21 
                dc.b   0
                dc.b $22 
                dc.b   0
                dc.b $23 
                dc.b   0
                dc.b $24 
                dc.b   0
                dc.b $25 
                dc.b   0
                dc.b $26 
                dc.b   0
                dc.b $27 
                dc.b   0
                dc.b $28 
                dc.b   0
                dc.b $29 
                dc.b   0
                dc.b $2A 
                dc.b   0
                dc.b $2B 
                dc.b   0
                dc.b $2C 
                dc.b   0
                dc.b $2D 
                dc.b   0
                dc.b $2E 
                dc.b   0
                dc.b $2F 
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b $51 
                dc.b   0
                dc.b $52 
                dc.b   0
                dc.b $53 
                dc.b   0
                dc.b $54 
                dc.b   0
                dc.b $55 
                dc.b   0
                dc.b $56 
                dc.b   0
                dc.b $57 
                dc.b   0
                dc.b $58 
                dc.b   0
                dc.b $59 
                dc.b   0
                dc.b $5A 
                dc.b   0
                dc.b $5B 
                dc.b   0
                dc.b $5C 
                dc.b   0
                dc.b $5D 
                dc.b   0
                dc.b $5E 
                dc.b   0
                dc.b $5F 
                dc.b   0
                dc.b $40 
                dc.b   0
                dc.b $41 
                dc.b   0
                dc.b $42 
                dc.b   0
                dc.b $43 
                dc.b   0
                dc.b $44 
                dc.b   0
                dc.b $45 
                dc.b   0
                dc.b $46 
                dc.b   0
                dc.b $47 
                dc.b   0
                dc.b $48 
                dc.b   0
                dc.b $49 
                dc.b   0
                dc.b $4A 
                dc.b   0
                dc.b $4B 
                dc.b   0
                dc.b $4C 
                dc.b   0
                dc.b $4D 
                dc.b   0
                dc.b $4E 
                dc.b   0
                dc.b $4F 
                dc.b   0
                dc.b $70 
                dc.b   0
                dc.b $71 
                dc.b   0
                dc.b $72 
                dc.b   0
                dc.b $73 
                dc.b   0
                dc.b $74 
                dc.b   0
                dc.b $75 
                dc.b   0
                dc.b $76 
                dc.b   0
                dc.b $77 
                dc.b   0
                dc.b $78 
                dc.b   0
                dc.b $79 
                dc.b   0
                dc.b $7A 
                dc.b   0
                dc.b $7B 
                dc.b   0
                dc.b $7C 
                dc.b   0
                dc.b $7D 
                dc.b   0
                dc.b $7E 
                dc.b   0
                dc.b $7F 
                dc.b   0
                dc.b $60 
                dc.b   0
                dc.b $61 
                dc.b   0
                dc.b $62 
                dc.b   0
                dc.b $63 
                dc.b   0
                dc.b $64 
                dc.b   0
                dc.b $65 
                dc.b   0
                dc.b $66 
                dc.b   0
                dc.b $67 
                dc.b   0
                dc.b $68 
                dc.b   0
                dc.b $69 
                dc.b   0
                dc.b $6A 
                dc.b   0
                dc.b $6B 
                dc.b   0
                dc.b $6C 
                dc.b   0
                dc.b $6D 
                dc.b   0
                dc.b $6E 
                dc.b   0
                dc.b $6F 
                dc.b   0
                dc.b $90 
                dc.b   0
                dc.b $91 
                dc.b   0
                dc.b $92 
                dc.b   0
                dc.b $93 
                dc.b   0
                dc.b $94 
                dc.b   0
                dc.b $95 
                dc.b   0
                dc.b $96 
                dc.b   0
                dc.b $97 
                dc.b   0
                dc.b $98 
                dc.b   0
                dc.b $99 
                dc.b   0
                dc.b $9A 
                dc.b   0
                dc.b $9B 
                dc.b   0
                dc.b $9C 
                dc.b   0
                dc.b $9D 
                dc.b   0
                dc.b $9E 
                dc.b   0
                dc.b $9F 
                dc.b   0
                dc.b $80 
                dc.b   0
                dc.b $81 
                dc.b   0
                dc.b $82 
                dc.b   0
                dc.b $83 
                dc.b   0
                dc.b $84 
                dc.b   0
                dc.b $85 
                dc.b   0
                dc.b $86 
                dc.b   0
                dc.b $87 
                dc.b   0
                dc.b $88 
                dc.b   0
                dc.b $89 
                dc.b   0
                dc.b $8A 
                dc.b   0
                dc.b $8B 
                dc.b   0
                dc.b $8C 
                dc.b   0
                dc.b $8D 
                dc.b   0
                dc.b $8E 
                dc.b   0
                dc.b $8F 
                dc.b   0
                dc.b $B0 
                dc.b   0
                dc.b $B1 
                dc.b   0
                dc.b $B2 
                dc.b   0
                dc.b $B3 
                dc.b   0
                dc.b $B4 
                dc.b   0
                dc.b $B5 
                dc.b   0
                dc.b $B6 
                dc.b   0
                dc.b $B7 
                dc.b   0
                dc.b $B8 
                dc.b   0
                dc.b $B9 
                dc.b   0
                dc.b $BA 
                dc.b   0
                dc.b $BB 
                dc.b   0
                dc.b $BC 
                dc.b   0
                dc.b $BD 
                dc.b   0
                dc.b $BE 
                dc.b   0
                dc.b $BF 
                dc.b   0
                dc.b $A0 
                dc.b   0
                dc.b $A1 
                dc.b   0
                dc.b $A2 
                dc.b   0
                dc.b $A3 
                dc.b   0
                dc.b $A4 
                dc.b   0
                dc.b $A5 
                dc.b   0
                dc.b $A6 
                dc.b   0
                dc.b $A7 
                dc.b   0
                dc.b $A8 
                dc.b   0
                dc.b $A9 
                dc.b   0
                dc.b $AA 
                dc.b   0
                dc.b $AB 
                dc.b   0
                dc.b $AC 
                dc.b   0
                dc.b $AD 
                dc.b   0
                dc.b $AE 
                dc.b   0
                dc.b $AF 
                dc.b   0
                dc.b $D0 
                dc.b   0
                dc.b $D1 
                dc.b   0
                dc.b $D2 
                dc.b   0
                dc.b $D3 
                dc.b   0
                dc.b $D4 
                dc.b   0
                dc.b $D5 
                dc.b   0
                dc.b $D6 
                dc.b   0
                dc.b $D7 
                dc.b   0
                dc.b $D8 
                dc.b   0
                dc.b $D9 
                dc.b   0
                dc.b $DA 
                dc.b   0
                dc.b $DB 
                dc.b   0
                dc.b $DC 
                dc.b   0
                dc.b $DD 
                dc.b   0
                dc.b $DE 
                dc.b   0
                dc.b $DF 
                dc.b   0
                dc.b $C0 
                dc.b   0
                dc.b $C1 
                dc.b   0
                dc.b $C2 
                dc.b   0
                dc.b $C3 
                dc.b   0
                dc.b $C4 
                dc.b   0
                dc.b $C5 
                dc.b   0
                dc.b $C6 
                dc.b   0
                dc.b $C7 
                dc.b   0
                dc.b $C8 
                dc.b   0
                dc.b $C9 
                dc.b   0
                dc.b $CA 
                dc.b   0
                dc.b $CB 
                dc.b   0
                dc.b $CC 
                dc.b   0
                dc.b $CD 
                dc.b   0
                dc.b $CE 
                dc.b   0
                dc.b $CF 
                dc.b   0
                dc.b $F0 
                dc.b   0
                dc.b $F1 
                dc.b   0
                dc.b $F2 
                dc.b   0
                dc.b $F3 
                dc.b   0
                dc.b $F4 
                dc.b   0
                dc.b $F5 
                dc.b   0
                dc.b $F6 
                dc.b   0
                dc.b $F7 
                dc.b   0
                dc.b $F8 
                dc.b   0
                dc.b $F9 
                dc.b   0
                dc.b $FA 
                dc.b   0
                dc.b $FB 
                dc.b   0
                dc.b $FC 
                dc.b   0
                dc.b $FD 
                dc.b   0
                dc.b $FE 
                dc.b   0
                dc.b $FF
                dc.b   0
                dc.b $E0 
                dc.b   0
                dc.b $E1 
                dc.b   0
                dc.b $E2 
                dc.b   0
                dc.b $E3 
                dc.b   0
                dc.b $E4 
                dc.b   0
                dc.b $E5 
                dc.b   0
                dc.b $E6 
                dc.b   0
                dc.b $E7 
                dc.b   0
                dc.b $E8 
                dc.b   0
                dc.b $E9 
                dc.b   0
                dc.b $EA 
                dc.b   0
                dc.b $EB 
                dc.b   0
                dc.b $EC 
                dc.b   0
                dc.b $ED 
                dc.b   0
                dc.b $EE 
                dc.b   0
                dc.b $EF 
                dc.b   1
                dc.b $10
                dc.b   1
                dc.b $11
                dc.b   1
                dc.b $12
                dc.b   1
                dc.b $13
                dc.b   1
                dc.b $14
                dc.b   1
                dc.b $15
                dc.b   1
                dc.b $16
                dc.b   1
                dc.b $17
                dc.b   1
                dc.b $18
                dc.b   1
                dc.b $19
                dc.b   1
                dc.b $1A
                dc.b   1
                dc.b $1B
                dc.b   1
                dc.b $1C
                dc.b   1
                dc.b $1D
                dc.b   1
                dc.b $1E
                dc.b   1
                dc.b $1F
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b   1
                dc.b   3
                dc.b   1
                dc.b   4
                dc.b   1
                dc.b   5
                dc.b   1
                dc.b   6
                dc.b   1
                dc.b   7
                dc.b   1
                dc.b   8
                dc.b   1
                dc.b   9
                dc.b   1
                dc.b  $A
                dc.b   1
                dc.b  $B
                dc.b   1
                dc.b  $C
                dc.b   1
                dc.b  $D
                dc.b   1
                dc.b  $E
                dc.b   1
                dc.b  $F
                dc.b   1
                dc.b $30 
                dc.b   1
                dc.b $31 
                dc.b   1
                dc.b $32 
                dc.b   1
                dc.b $33 
                dc.b   1
                dc.b $34 
                dc.b   1
                dc.b $35 
                dc.b   1
                dc.b $36 
                dc.b   1
                dc.b $37 
                dc.b   1
                dc.b $38 
                dc.b   1
                dc.b $39 
                dc.b   1
                dc.b $3A 
                dc.b   1
                dc.b $3B 
                dc.b   1
                dc.b $3C 
                dc.b   1
                dc.b $3D 
                dc.b   1
                dc.b $3E 
                dc.b   1
                dc.b $3F 
                dc.b   1
                dc.b $20
                dc.b   1
                dc.b $21 
                dc.b   1
                dc.b $22 
                dc.b   1
                dc.b $23 
                dc.b   1
                dc.b $24 
                dc.b   1
                dc.b $25 
                dc.b   1
                dc.b $26 
                dc.b   1
                dc.b $27 
                dc.b   1
                dc.b $28 
                dc.b   1
                dc.b $29 
                dc.b   1
                dc.b $2A 
                dc.b   1
                dc.b $2B 
                dc.b   1
                dc.b $2C 
                dc.b   1
                dc.b $2D 
                dc.b   1
                dc.b $2E 
                dc.b   1
                dc.b $2F 
                dc.b   1
                dc.b $50 
                dc.b   1
                dc.b $51 
                dc.b   1
                dc.b $52 
                dc.b   1
                dc.b $53 
                dc.b   1
                dc.b $54 
                dc.b   1
                dc.b $55 
                dc.b   1
                dc.b $56 
                dc.b   1
                dc.b $57 
                dc.b   1
                dc.b $58 
                dc.b   1
                dc.b $59 
                dc.b   1
                dc.b $5A 
                dc.b   1
                dc.b $5B 
                dc.b   1
                dc.b $5C 
                dc.b   1
                dc.b $5D 
                dc.b   1
                dc.b $5E 
                dc.b   1
                dc.b $5F 
                dc.b   1
                dc.b $40 
                dc.b   1
                dc.b $41 
                dc.b   1
                dc.b $42 
                dc.b   1
                dc.b $43 
                dc.b   1
                dc.b $44 
                dc.b   1
                dc.b $45 
                dc.b   1
                dc.b $46 
                dc.b   1
                dc.b $47 
                dc.b   1
                dc.b $48 
                dc.b   1
                dc.b $49 
                dc.b   1
                dc.b $4A 
                dc.b   1
                dc.b $4B 
                dc.b   1
                dc.b $4C 
                dc.b   1
                dc.b $4D 
                dc.b   1
                dc.b $4E 
                dc.b   1
                dc.b $4F 
unk_BF7E:       dc.b   0
                dc.b $B0 
                dc.b   0
                dc.b $B1 
                dc.b   0
                dc.b $B2 
                dc.b   0
                dc.b $B3 
                dc.b   0
                dc.b $B4 
                dc.b   0
                dc.b $B5 
                dc.b   0
                dc.b $B6 
                dc.b   0
                dc.b $B7 
                dc.b   0
                dc.b $B8 
                dc.b   0
                dc.b $B9 
                dc.b   0
                dc.b $BA 
                dc.b   0
                dc.b $BB 
                dc.b   0
                dc.b $BC 
                dc.b   0
                dc.b $BD 
                dc.b   0
                dc.b $BE 
                dc.b   0
                dc.b $BF 
                dc.b   0
                dc.b $A0 
                dc.b   0
                dc.b $A1 
                dc.b   0
                dc.b $A2 
                dc.b   0
                dc.b $A3 
                dc.b   0
                dc.b $A4 
                dc.b   0
                dc.b $A5 
                dc.b   0
                dc.b $A6 
                dc.b   0
                dc.b $A7 
                dc.b   0
                dc.b $A8 
                dc.b   0
                dc.b $A9 
                dc.b   0
                dc.b $AA 
                dc.b   0
                dc.b $AB 
                dc.b   0
                dc.b $AC 
                dc.b   0
                dc.b $AD 
                dc.b   0
                dc.b $AE 
                dc.b   0
                dc.b $AF 
                dc.b   0
                dc.b $D0 
                dc.b   0
                dc.b $D1 
                dc.b   0
                dc.b $D2 
                dc.b   0
                dc.b $D3 
                dc.b   0
                dc.b $D4 
                dc.b   0
                dc.b $D5 
                dc.b   0
                dc.b $D6 
                dc.b   0
                dc.b $D7 
                dc.b   0
                dc.b $D8 
                dc.b   0
                dc.b $D9 
                dc.b   0
                dc.b $DA 
                dc.b   0
                dc.b $DB 
                dc.b   0
                dc.b $DC 
                dc.b   0
                dc.b $DD 
                dc.b   0
                dc.b $DE 
                dc.b   0
                dc.b $DF 
                dc.b   0
                dc.b $C0 
                dc.b   0
                dc.b $C1 
                dc.b   0
                dc.b $C2 
                dc.b   0
                dc.b $C3 
                dc.b   0
                dc.b $C4 
                dc.b   0
                dc.b $C5 
                dc.b   0
                dc.b $C6 
                dc.b   0
                dc.b $C7 
                dc.b   0
                dc.b $C8 
                dc.b   0
                dc.b $C9 
                dc.b   0
                dc.b $CA 
                dc.b   0
                dc.b $CB 
                dc.b   0
                dc.b $CC 
                dc.b   0
                dc.b $CD 
                dc.b   0
                dc.b $CE 
                dc.b   0
                dc.b $CF 
                dc.b   0
                dc.b $F0 
                dc.b   0
                dc.b $F1 
                dc.b   0
                dc.b $F2 
                dc.b   0
                dc.b $F3 
                dc.b   0
                dc.b $F4 
                dc.b   0
                dc.b $F5 
                dc.b   0
                dc.b $F6 
                dc.b   0
                dc.b $F7 
                dc.b   0
                dc.b $F8 
                dc.b   0
                dc.b $F9 
                dc.b   0
                dc.b $FA 
                dc.b   0
                dc.b $FB 
                dc.b   0
                dc.b $FC 
                dc.b   0
                dc.b $FD 
                dc.b   0
                dc.b $FE 
                dc.b   0
                dc.b $FF
                dc.b   0
                dc.b $E0 
                dc.b   0
                dc.b $E1 
                dc.b   0
                dc.b $E2 
                dc.b   0
                dc.b $E3 
                dc.b   0
                dc.b $E4 
                dc.b   0
                dc.b $E5 
                dc.b   0
                dc.b $E6 
                dc.b   0
                dc.b $E7 
                dc.b   0
                dc.b $E8 
                dc.b   0
                dc.b $E9 
                dc.b   0
                dc.b $EA 
                dc.b   0
                dc.b $EB 
                dc.b   0
                dc.b $EC 
                dc.b   0
                dc.b $ED 
                dc.b   0
                dc.b $EE 
                dc.b   0
                dc.b $EF 
                dc.b   1
                dc.b $10
                dc.b   1
                dc.b $11
                dc.b   1
                dc.b $12
                dc.b   1
                dc.b $13
                dc.b   1
                dc.b $14
                dc.b   1
                dc.b $15
                dc.b   1
                dc.b $16
                dc.b   1
                dc.b $17
                dc.b   1
                dc.b $18
                dc.b   1
                dc.b $19
                dc.b   1
                dc.b $1A
                dc.b   1
                dc.b $1B
                dc.b   1
                dc.b $1C
                dc.b   1
                dc.b $1D
                dc.b   1
                dc.b $1E
                dc.b   1
                dc.b $1F
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b   1
                dc.b   3
                dc.b   1
                dc.b   4
                dc.b   1
                dc.b   5
                dc.b   1
                dc.b   6
                dc.b   1
                dc.b   7
                dc.b   1
                dc.b   8
                dc.b   1
                dc.b   9
                dc.b   1
                dc.b  $A
                dc.b   1
                dc.b  $B
                dc.b   1
                dc.b  $C
                dc.b   1
                dc.b  $D
                dc.b   1
                dc.b  $E
                dc.b   1
                dc.b  $F
                dc.b   1
                dc.b $30 
                dc.b   1
                dc.b $31 
                dc.b   1
                dc.b $32 
                dc.b   1
                dc.b $33 
                dc.b   1
                dc.b $34 
                dc.b   1
                dc.b $35 
                dc.b   1
                dc.b $36 
                dc.b   1
                dc.b $37 
                dc.b   1
                dc.b $38 
                dc.b   1
                dc.b $39 
                dc.b   1
                dc.b $3A 
                dc.b   1
                dc.b $3B 
                dc.b   1
                dc.b $3C 
                dc.b   1
                dc.b $3D 
                dc.b   1
                dc.b $3E 
                dc.b   1
                dc.b $3F 
                dc.b   1
                dc.b $20
                dc.b   1
                dc.b $21 
                dc.b   1
                dc.b $22 
                dc.b   1
                dc.b $23 
                dc.b   1
                dc.b $24 
                dc.b   1
                dc.b $25 
                dc.b   1
                dc.b $26 
                dc.b   1
                dc.b $27 
                dc.b   1
                dc.b $28 
                dc.b   1
                dc.b $29 
                dc.b   1
                dc.b $2A 
                dc.b   1
                dc.b $2B 
                dc.b   1
                dc.b $2C 
                dc.b   1
                dc.b $2D 
                dc.b   1
                dc.b $2E 
                dc.b   1
                dc.b $2F 
                dc.b   1
                dc.b $50 
                dc.b   1
                dc.b $51 
                dc.b   1
                dc.b $52 
                dc.b   1
                dc.b $53 
                dc.b   1
                dc.b $54 
                dc.b   1
                dc.b $55 
                dc.b   1
                dc.b $56 
                dc.b   1
                dc.b $57 
                dc.b   1
                dc.b $58 
                dc.b   1
                dc.b $59 
                dc.b   1
                dc.b $5A 
                dc.b   1
                dc.b $5B 
                dc.b   1
                dc.b $5C 
                dc.b   1
                dc.b $5D 
                dc.b   1
                dc.b $5E 
                dc.b   1
                dc.b $5F 
                dc.b   1
                dc.b $40 
                dc.b   1
                dc.b $41 
                dc.b   1
                dc.b $42 
                dc.b   1
                dc.b $43 
                dc.b   1
                dc.b $44 
                dc.b   1
                dc.b $45 
                dc.b   1
                dc.b $46 
                dc.b   1
                dc.b $47 
                dc.b   1
                dc.b $48 
                dc.b   1
                dc.b $49 
                dc.b   1
                dc.b $4A 
                dc.b   1
                dc.b $4B 
                dc.b   1
                dc.b $4C 
                dc.b   1
                dc.b $4D 
                dc.b   1
                dc.b $4E 
                dc.b   1
                dc.b $4F 
                dc.b   1
                dc.b $70 
                dc.b   1
                dc.b $71 
                dc.b   1
                dc.b $72 
                dc.b   1
                dc.b $73 
                dc.b   1
                dc.b $74 
                dc.b   1
                dc.b $75 
                dc.b   1
                dc.b $76 
                dc.b   1
                dc.b $77 
                dc.b   1
                dc.b $78 
                dc.b   1
                dc.b $79 
                dc.b   1
                dc.b $7A 
                dc.b   1
                dc.b $7B 
                dc.b   1
                dc.b $7C 
                dc.b   1
                dc.b $7D 
                dc.b   1
                dc.b $7E 
                dc.b   1
                dc.b $7F 
                dc.b   1
                dc.b $60 
                dc.b   1
                dc.b $61 
                dc.b   1
                dc.b $62 
                dc.b   1
                dc.b $63 
                dc.b   1
                dc.b $64 
                dc.b   1
                dc.b $65 
                dc.b   1
                dc.b $66 
                dc.b   1
                dc.b $67 
                dc.b   1
                dc.b $68 
                dc.b   1
                dc.b $69 
                dc.b   1
                dc.b $6A 
                dc.b   1
                dc.b $6B 
                dc.b   1
                dc.b $6C 
                dc.b   1
                dc.b $6D 
                dc.b   1
                dc.b $6E 
                dc.b   1
                dc.b $6F 
                dc.b   1
                dc.b $90 
                dc.b   1
                dc.b $91 
                dc.b   1
                dc.b $92 
                dc.b   1
                dc.b $93 
                dc.b   1
                dc.b $94 
                dc.b   1
                dc.b $95 
                dc.b   1
                dc.b $96 
                dc.b   1
                dc.b $97 
                dc.b   1
                dc.b $98 
                dc.b   1
                dc.b $99 
                dc.b   1
                dc.b $9A 
                dc.b   1
                dc.b $9B 
                dc.b   1
                dc.b $9C 
                dc.b   1
                dc.b $9D 
                dc.b   1
                dc.b $9E 
                dc.b   1
                dc.b $9F 
                dc.b   1
                dc.b $80 
                dc.b   1
                dc.b $81 
                dc.b   1
                dc.b $82 
                dc.b   1
                dc.b $83 
                dc.b   1
                dc.b $84 
                dc.b   1
                dc.b $85 
                dc.b   1
                dc.b $86 
                dc.b   1
                dc.b $87 
                dc.b   1
                dc.b $88 
                dc.b   1
                dc.b $89 
                dc.b   1
                dc.b $8A 
                dc.b   1
                dc.b $8B 
                dc.b   1
                dc.b $8C 
                dc.b   1
                dc.b $8D 
                dc.b   1
                dc.b $8E 
                dc.b   1
                dc.b $8F 
                dc.b   1
                dc.b $B0 
                dc.b   1
                dc.b $B1 
                dc.b   1
                dc.b $B2 
                dc.b   1
                dc.b $B3 
                dc.b   1
                dc.b $B4 
                dc.b   1
                dc.b $B5 
                dc.b   1
                dc.b $B6 
                dc.b   1
                dc.b $B7 
                dc.b   1
                dc.b $B8 
                dc.b   1
                dc.b $B9 
                dc.b   1
                dc.b $BA 
                dc.b   1
                dc.b $BB 
                dc.b   1
                dc.b $BC 
                dc.b   1
                dc.b $BD 
                dc.b   1
                dc.b $BE 
                dc.b   1
                dc.b $BF 
                dc.b   1
                dc.b $A0 
                dc.b   1
                dc.b $A1 
                dc.b   1
                dc.b $A2 
                dc.b   1
                dc.b $A3 
                dc.b   1
                dc.b $A4 
                dc.b   1
                dc.b $A5 
                dc.b   1
                dc.b $A6 
                dc.b   1
                dc.b $A7 
                dc.b   1
                dc.b $A8 
                dc.b   1
                dc.b $A9 
                dc.b   1
                dc.b $AA 
                dc.b   1
                dc.b $AB 
                dc.b   1
                dc.b $AC 
                dc.b   1
                dc.b $AD 
                dc.b   1
                dc.b $AE 
                dc.b   1
                dc.b $AF 
                dc.b   1
                dc.b $D0 
                dc.b   1
                dc.b $D1 
                dc.b   1
                dc.b $D2 
                dc.b   1
                dc.b $D3 
                dc.b   1
                dc.b $D4 
                dc.b   1
                dc.b $D5 
                dc.b   1
                dc.b $D6 
                dc.b   1
                dc.b $D7 
                dc.b   1
                dc.b $D8 
                dc.b   1
                dc.b $D9 
                dc.b   1
                dc.b $DA 
                dc.b   1
                dc.b $DB 
                dc.b   1
                dc.b $DC 
                dc.b   1
                dc.b $DD 
                dc.b   1
                dc.b $DE 
                dc.b   1
                dc.b $DF 
                dc.b   1
                dc.b $C0 
                dc.b   1
                dc.b $C1 
                dc.b   1
                dc.b $C2 
                dc.b   1
                dc.b $C3 
                dc.b   1
                dc.b $C4 
                dc.b   1
                dc.b $C5 
                dc.b   1
                dc.b $C6 
                dc.b   1
                dc.b $C7 
                dc.b   1
                dc.b $C8 
                dc.b   1
                dc.b $C9 
                dc.b   1
                dc.b $CA 
                dc.b   1
                dc.b $CB 
                dc.b   1
                dc.b $CC 
                dc.b   1
                dc.b $CD 
                dc.b   1
                dc.b $CE 
                dc.b   1
                dc.b $CF 
                dc.b   1
                dc.b $F0 
                dc.b   1
                dc.b $F1 
                dc.b   1
                dc.b $F2 
                dc.b   1
                dc.b $F3 
                dc.b   1
                dc.b $F4 
                dc.b   1
                dc.b $F5 
                dc.b   1
                dc.b $F6 
                dc.b   1
                dc.b $F7 
                dc.b   1
                dc.b $F8 
                dc.b   1
                dc.b $F9 
                dc.b   1
                dc.b $FA 
                dc.b   1
                dc.b $FB 
                dc.b   1
                dc.b $FC 
                dc.b   1
                dc.b $FD 
                dc.b   1
                dc.b $FE 
                dc.b   1
                dc.b $FF
                dc.b   1
                dc.b $E0 
                dc.b   1
                dc.b $E1 
                dc.b   1
                dc.b $E2 
                dc.b   1
                dc.b $E3 
                dc.b   1
                dc.b $E4 
                dc.b   1
                dc.b $E5 
                dc.b   1
                dc.b $E6 
                dc.b   1
                dc.b $E7 
                dc.b   1
                dc.b $E8 
                dc.b   1
                dc.b $E9 
                dc.b   1
                dc.b $EA 
                dc.b   1
                dc.b $EB 
                dc.b   1
                dc.b $EC 
                dc.b   1
                dc.b $ED 
                dc.b   1
                dc.b $EE 
                dc.b   1
                dc.b $EF 
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b   3
                dc.b   0
                dc.b   4
                dc.b   0
                dc.b   5
                dc.b   0
                dc.b   6
                dc.b   0
                dc.b   7
                dc.b   0
                dc.b   8
                dc.b   0
                dc.b   9
                dc.b   0
                dc.b  $A
                dc.b   0
                dc.b  $B
                dc.b   0
                dc.b  $C
                dc.b   0
                dc.b  $D
                dc.b   0
                dc.b  $E
                dc.b   0
                dc.b  $F
                dc.b   0
                dc.b $10
                dc.b   0
                dc.b $11
                dc.b   0
                dc.b $12
                dc.b   0
                dc.b $13
                dc.b   0
                dc.b $14
                dc.b   0
                dc.b $15
                dc.b   0
                dc.b $16
                dc.b   0
                dc.b $17
                dc.b   0
                dc.b $18
                dc.b   0
                dc.b $19
                dc.b   0
                dc.b $1A
                dc.b   0
                dc.b $1B
                dc.b   0
                dc.b $1C
                dc.b   0
                dc.b $1D
                dc.b   0
                dc.b $1E
                dc.b   0
                dc.b $1F
                dc.b   0
                dc.b $20
                dc.b   0
                dc.b $21 
                dc.b   0
                dc.b $22 
                dc.b   0
                dc.b $23 
                dc.b   0
                dc.b $24 
                dc.b   0
                dc.b $25 
                dc.b   0
                dc.b $26 
                dc.b   0
                dc.b $27 
                dc.b   0
                dc.b $28 
                dc.b   0
                dc.b $29 
                dc.b   0
                dc.b $2A 
                dc.b   0
                dc.b $2B 
                dc.b   0
                dc.b $2C 
                dc.b   0
                dc.b $2D 
                dc.b   0
                dc.b $2E 
                dc.b   0
                dc.b $2F 
                dc.b   0
                dc.b $30 
                dc.b   0
                dc.b $31 
                dc.b   0
                dc.b $32 
                dc.b   0
                dc.b $33 
                dc.b   0
                dc.b $34 
                dc.b   0
                dc.b $35 
                dc.b   0
                dc.b $36 
                dc.b   0
                dc.b $37 
                dc.b   0
                dc.b $38 
                dc.b   0
                dc.b $39 
                dc.b   0
                dc.b $3A 
                dc.b   0
                dc.b $3B 
                dc.b   0
                dc.b $3C 
                dc.b   0
                dc.b $3D 
                dc.b   0
                dc.b $3E 
                dc.b   0
                dc.b $3F 
                dc.b   0
                dc.b $40 
                dc.b   0
                dc.b $41 
                dc.b   0
                dc.b $42 
                dc.b   0
                dc.b $43 
                dc.b   0
                dc.b $44 
                dc.b   0
                dc.b $45 
                dc.b   0
                dc.b $46 
                dc.b   0
                dc.b $47 
                dc.b   0
                dc.b $48 
                dc.b   0
                dc.b $49 
                dc.b   0
                dc.b $4A 
                dc.b   0
                dc.b $4B 
                dc.b   0
                dc.b $4C 
                dc.b   0
                dc.b $4D 
                dc.b   0
                dc.b $4E 
                dc.b   0
                dc.b $4F 
                dc.b   0
                dc.b $50 
                dc.b   0
                dc.b $51 
                dc.b   0
                dc.b $52 
                dc.b   0
                dc.b $53 
                dc.b   0
                dc.b $54 
                dc.b   0
                dc.b $55 
                dc.b   0
                dc.b $56 
                dc.b   0
                dc.b $57 
                dc.b   0
                dc.b $58 
                dc.b   0
                dc.b $59 
                dc.b   0
                dc.b $5A 
                dc.b   0
                dc.b $5B 
                dc.b   0
                dc.b $5C 
                dc.b   0
                dc.b $5D 
                dc.b   0
                dc.b $5E 
                dc.b   0
                dc.b $5F 
                dc.b   0
                dc.b $60 
                dc.b   0
                dc.b $61 
                dc.b   0
                dc.b $62 
                dc.b   0
                dc.b $63 
                dc.b   0
                dc.b $64 
                dc.b   0
                dc.b $65 
                dc.b   0
                dc.b $66 
                dc.b   0
                dc.b $67 
                dc.b   0
                dc.b $68 
                dc.b   0
                dc.b $69 
                dc.b   0
                dc.b $6A 
                dc.b   0
                dc.b $6B 
                dc.b   0
                dc.b $6C 
                dc.b   0
                dc.b $6D 
                dc.b   0
                dc.b $6E 
                dc.b   0
                dc.b $6F 
                dc.b   0
                dc.b $70 
                dc.b   0
                dc.b $71 
                dc.b   0
                dc.b $72 
                dc.b   0
                dc.b $73 
                dc.b   0
                dc.b $74 
                dc.b   0
                dc.b $75 
                dc.b   0
                dc.b $76 
                dc.b   0
                dc.b $77 
                dc.b   0
                dc.b $78 
                dc.b   0
                dc.b $79 
                dc.b   0
                dc.b $7A 
                dc.b   0
                dc.b $7B 
                dc.b   0
                dc.b $7C 
                dc.b   0
                dc.b $7D 
                dc.b   0
                dc.b $7E 
                dc.b   0
                dc.b $7F 
                dc.b   0
                dc.b $80 
                dc.b   0
                dc.b $81 
                dc.b   0
                dc.b $82 
                dc.b   0
                dc.b $83 
                dc.b   0
                dc.b $84 
                dc.b   0
                dc.b $85 
                dc.b   0
                dc.b $86 
                dc.b   0
                dc.b $87 
                dc.b   0
                dc.b $88 
                dc.b   0
                dc.b $89 
                dc.b   0
                dc.b $8A 
                dc.b   0
                dc.b $8B 
                dc.b   0
                dc.b $8C 
                dc.b   0
                dc.b $8D 
                dc.b   0
                dc.b $8E 
                dc.b   0
                dc.b $8F 
                dc.b   0
                dc.b $90 
                dc.b   0
                dc.b $91 
                dc.b   0
                dc.b $92 
                dc.b   0
                dc.b $93 
                dc.b   0
                dc.b $94 
                dc.b   0
                dc.b $95 
                dc.b   0
                dc.b $96 
                dc.b   0
                dc.b $97 
                dc.b   0
                dc.b $98 
                dc.b   0
                dc.b $99 
                dc.b   0
                dc.b $9A 
                dc.b   0
                dc.b $9B 
                dc.b   0
                dc.b $9C 
                dc.b   0
                dc.b $9D 
                dc.b   0
                dc.b $9E 
                dc.b   0
                dc.b $9F 

; =============== S U B R O U T I N E =======================================

sub_C37E:
                
                ext.w   d0
                ext.w   d1
                add.w   d1,d1
                move.w  word_C3CE(pc,d1.w),d1
                add.w   d0,d1
                add.w   d0,d1
                lea     (byte_FF7C02).l,a6
                adda.w  d1,a6
                rts

    ; End of function sub_C37E


; =============== S U B R O U T I N E =======================================

sub_C396:
                
                add.w   d0,d0
                move.w  word_C3CE(pc,d0.w),d0
                ext.l   d0
                rts

    ; End of function sub_C396


; =============== S U B R O U T I N E =======================================

sub_C3A0:
                
                add.w   d1,d1
                move.w  word_C3CE(pc,d1.w),d1
                ext.l   d1
                rts

    ; End of function sub_C3A0


; =============== S U B R O U T I N E =======================================

sub_C3AA:
                
                add.w   d2,d2
                move.w  word_C3CE(pc,d2.w),d2
                ext.l   d2
                rts

    ; End of function sub_C3AA


; =============== S U B R O U T I N E =======================================

sub_C3B4:
                
                add.w   d3,d3
                move.w  word_C3CE(pc,d3.w),d3
                ext.l   d3
                rts

    ; End of function sub_C3B4

                dc.w $FB60
                dc.w $FBF4
                dc.w $FC88
                dc.w $FD1C
                dc.w $FDB0
                dc.w $FE44
                dc.w $FED8
                dc.w $FF6C
word_C3CE:      dc.w 0
                dc.w $94
                dc.w $128
                dc.w $1BC
                dc.w $250
                dc.w $2E4
                dc.w $378
                dc.w $40C
                dc.w $4A0
                dc.w $534
                dc.w $5C8
                dc.w $65C
                dc.w $6F0
                dc.w $784
                dc.w $818
                dc.w $8AC
                dc.w $940
                dc.w $9D4
                dc.w $A68
                dc.w $AFC
                dc.w $B90
                dc.w $C24
                dc.w $CB8
                dc.w $D4C
                dc.w $DE0
                dc.w $E74
                dc.w $F08
                dc.w $F9C
                dc.w $1030
                dc.w $10C4
                dc.w $1158
                dc.w $11EC
                dc.w $1280
                dc.w $1314
                dc.w $13A8
                dc.w $143C
                dc.w $14D0
                dc.w $1564
                dc.w $15F8
                dc.w $168C
                dc.w $1720
                dc.w $17B4
                dc.w $1848
                dc.w $18DC
                dc.w $1970
                dc.w $1A04
                dc.w $1A98
                dc.w $1B2C
                dc.w $1BC0
                dc.w $1C54
                dc.w $1CE8
                dc.w $1D7C
                dc.w $1E10
                dc.w $1EA4
                dc.w $1F38
                dc.w $1FCC
                dc.w $2060
                dc.w $20F4
                dc.w $2188
                dc.w $221C
                dc.w $22B0
                dc.w $2344
                dc.w $23D8
                dc.w $246C
                dc.w $2500
                dc.w $2594
                dc.w $2628
                dc.w $26BC
                dc.w $2750
                dc.w $27E4
                dc.w $2878
                dc.w $290C
                dc.w $29A0
                dc.w $2A34
                dc.w $2AC8
                dc.w $2B5C
                dc.w $2BF0
                dc.w $2C84

; =============== S U B R O U T I N E =======================================

; related to intro text

sub_C46A:
                
                move.b  (byte_FF1159).l,d0
                beq.s   return_C4B2
                move.w  (word_FF12EE).l,d1
                bne.w   loc_C4B4
                andi.w  #$FF,d0
                lsl.b   #2,d0
                lea     IntroTextBlocks(pc), a2
                movea.l -4(a2,d0.w),a2
                move.w  (a2)+,d0
                move.w  (a2)+,d1
                move.w  (a2)+,d2
                move.w  (a2)+,d3
                move.w  (a2)+,(word_FF12EE).l
                movem.l d2-d3,-(sp)
                movem.l d0-d1,-(sp)
                bsr.s   sub_C4E2
                movem.l (sp)+,d0-d1
                bsr.w   sub_C56E
                movem.l (sp)+,d0-d1
                bsr.w   sub_C57A
return_C4B2:
                
                rts
loc_C4B4:
                
                subq.w  #1,d1
                move.w  d1,(word_FF12EE).l
                bne.s   return_C4E0
                lea     (byte_FF0590).l,a0
                moveq   #7,d7
loc_C4C6:
                
                clr.w   (a0)
                clr.b   2(a0)
                clr.w   4(a0)
                clr.w   6(a0)
                addq.w  #8,a0
                dbf     d7,loc_C4C6
                clr.b   (byte_FF1159).l
return_C4E0:
                
                rts

    ; End of function sub_C46A


; =============== S U B R O U T I N E =======================================

sub_C4E2:
                
                bsr.s   sub_C50A
                lea     (byte_FF2C00).l,a1
loc_C4EA:
                
                bsr.s   sub_C51C
                tst.b   d0
                bmi.s   loc_C4F4
                bsr.s   LoadIntroFont
                bra.s   loc_C4EA
loc_C4F4:
                
                lea     (byte_FF2C00).l,a0
                lea     ($F180).l,a1
                move.w  #$400,d0
                jmp     (ApplyVIntVramDMA).l

    ; End of function sub_C4E2


; =============== S U B R O U T I N E =======================================

sub_C50A:
                
                lea     (byte_FF2C00).l,a1
                move.w  #$1FF,d7
loc_C514:
                
                clr.l   (a1)+
                dbf     d7,loc_C514
                rts

    ; End of function sub_C50A


; =============== S U B R O U T I N E =======================================

sub_C51C:
                
                move.b  (a2)+,d0
                rts

    ; End of function sub_C51C


; =============== S U B R O U T I N E =======================================

LoadIntroFont:
                
                andi.w  #$FF,d0
                lsl.w   #6,d0
                movea.l (p_IntroFont).l,a0
                move.l  (a0,d0.w),(a1)+
                move.l  4(a0,d0.w),(a1)+
                move.l  8(a0,d0.w),(a1)+
                move.l  $C(a0,d0.w),(a1)+
                move.l  $10(a0,d0.w),(a1)+
                move.l  $14(a0,d0.w),(a1)+
                move.l  $18(a0,d0.w),(a1)+
                move.l  $1C(a0,d0.w),(a1)+
                move.l  $20(a0,d0.w),(a1)+
                move.l  $24(a0,d0.w),(a1)+
                move.l  $28(a0,d0.w),(a1)+
                move.l  $2C(a0,d0.w),(a1)+
                move.l  $30(a0,d0.w),(a1)+
                move.l  $34(a0,d0.w),(a1)+
                move.l  $38(a0,d0.w),(a1)+
                move.l  $3C(a0,d0.w),(a1)+
                rts

    ; End of function LoadIntroFont


; =============== S U B R O U T I N E =======================================

sub_C56E:
                
                move.w  #$E78C,d2
                lea     (byte_FF0590).l,a0
                bra.s   loc_C584

    ; End of function sub_C56E


; =============== S U B R O U T I N E =======================================

sub_C57A:
                
                move.w  #$E7AC,d2
                lea     (byte_FF05B0).l,a0

    ; End of function sub_C57A


; START OF FUNCTION CHUNK FOR sub_C56E

loc_C584:
                
                moveq   #3,d7
                move.w  d1,(a0)+
                move.b  #$D,(a0)
                addq.l  #2,a0
                move.w  d2,(a0)+
                move.w  d0,(a0)+
                addq.w  #8,d2
                addi.w  #$20,d0 

; END OF FUNCTION CHUNK FOR sub_C56E

                dc.b $51 
                dc.b $CF 
                dc.l $FFEC4E75
                include "data\scripting\text\intro\entries.asm"    ; Intro Text Block Entries
                include "data\maps\global\visitedmapsflags.asm"    ; Visited Maps Flag Map
                include "code\common\maps\maploading.asm"    ; Map Loading

; =============== S U B R O U T I N E =======================================

sub_D25C:
                
                jsr     (WaitForVInt).l
                bsr.w   sub_D9FC
                bsr.w   sub_D996
                jsr     (WaitForVInt).l
                move.w  #$8F80,d0
                move.w  #$800,d1
                clr.w   d2
                jsr     (ApplyVramDMAFill).l
                move.w  #$BC,d1 
                clr.w   d0
                move.w  #$3E,d7 
loc_D28A:
                
                movem.w d0-d1/d7,-(sp)
                jsr     (sub_46DA).l
                movem.w (sp)+,d0-d1/d7
                addq.w  #1,d0
                addi.w  #$10,d1
                movem.w d7,-(sp)
                andi.b  #3,d7
                bne.s   loc_D2AE
                jsr     (WaitForDMAQueueProcessing).l
loc_D2AE:
                
                movem.w (sp)+,d7
                dbf     d7,loc_D28A
                lea     (byte_FF00A0).l,a0
                lea     (byte_FF2C00).l,a1
                lea     $1C(a1),a2
                moveq   #$1F,d7
loc_D2C8:
                
                move.w  (a0)+,(a2)+
                dbf     d7,loc_D2C8
                clr.w   $E(a1)
                lea     word_E0E0(pc), a0
                lea     (PALETTE_1_BASE).l,a1
                moveq   #7,d7
loc_D2DE:
                
                move.w  (a0)+,(a1)+
                dbf     d7,loc_D2DE
                lea     (byte_FF2C00).l,a0
                move.w  (word_FF0F9C).l,4(a0)
                rts

    ; End of function sub_D25C


; =============== S U B R O U T I N E =======================================

sub_D2F4:
                
                lea     dword_E0F0(pc), a0
                lea     (byte_FF00C0).l,a1
                moveq   #7,d7
loc_D300:
                
                move.l  (a0)+,(a1)+
                dbf     d7,loc_D300
                rts

    ; End of function sub_D2F4


; =============== S U B R O U T I N E =======================================

sub_D308:
                
                move.b  (byte_FF1BF2).l,d0
                andi.w  #$1F,d0
                cmpi.b  #$11,d0
                bcs.s   loc_D31A
                clr.w   d0
loc_D31A:
                
                mulu.w  #4,d0
                lea     (word_FF2C06).l,a0
                move.w  d0,(a0)
                move.b  (byte_FF1BF3).l,d1
                clr.w   d0
                lsr.b   #1,d1
                bcc.s   loc_D334
                addq.w  #1,d0
loc_D334:
                
                ext.w   d1
                lea     (byte_FF2C0A).l,a0
                move.w  d0,(a0)
                lea     (byte_FF2C0C).l,a0
                move.w  d1,(a0)
                bsr.w   sub_DC28
                rts

    ; End of function sub_D308


; START OF FUNCTION CHUNK FOR sub_D3BE

loc_D34C:
                
                movem.w d0,-(sp)
                lea     (word_FF2C06).l,a0
                move.w  (a0),d0
                lsr.b   #2,d0
                lea     (byte_FF1BF2).l,a0
                move.b  d0,(a0)
                lea     (byte_FF2C0A).l,a0
                move.w  (a0),d0
                andi.b  #1,d0
                lea     (byte_FF2C0C).l,a0
                move.w  (a0),d1
                andi.b  #3,d1
                add.b   d1,d1
                or.b    d1,d0
                lea     (byte_FF1BF3).l,a0
                move.b  d0,(a0)
                movem.w (sp)+,d0
loc_D38A:
                
                move.b  (P1_INPUT).l,d1 
                btst    #7,d1
                beq.s   loc_D39A
                moveq   #2,d1
                bra.s   return_D3A6
loc_D39A:
                
                btst    #4,d1
                beq.s   loc_D3A4
                moveq   #1,d1
                bra.s   return_D3A6
loc_D3A4:
                
                moveq   #0,d1
return_D3A6:
                
                rts

; END OF FUNCTION CHUNK FOR sub_D3BE


; =============== S U B R O U T I N E =======================================

sub_D3A8:
                
                lea     (byte_FF2C1C).l,a0
                lea     (byte_FF00A0).l,a1
                moveq   #$1F,d7
loc_D3B6:
                
                move.w  (a0)+,(a1)+
                dbf     d7,loc_D3B6
                rts

    ; End of function sub_D3A8


; =============== S U B R O U T I N E =======================================

sub_D3BE:
                
                bsr.w   sub_D4AE
                bsr.w   sub_D96A
loc_D3C6:
                
                moveq   #$F,d0
                bsr.w   sub_D88A
                move.b  (P1_INPUT).l,d1 
                move.b  d1,d0
                andi.b  #$90,d0
                bne.w   loc_D34C
                move.b  d1,d0
                andi.b  #$60,d0 
                bne.w   sub_DB28
                lea     (byte_FF2C00).l,a1
                lea     $A(a1),a0
                lea     $C(a1),a1
                move.b  (P1_INPUT).l,d0 
                btst    #0,d0
                bne.w   loc_D426
                btst    #1,d0
                bne.w   loc_D45C
                btst    #2,d0
                bne.w   loc_D4A0
                btst    #3,d0
                bne.w   loc_D494
loc_D41A:
                
                bsr.w   sub_D730
                clr.l   d2
                bsr.w   sub_D714
loc_D424:
                
                bra.s   loc_D3C6
loc_D426:
                
                cmpi.w  #2,(a1)
                bcs.s   loc_D432
                bsr.w   byte_D68C
                bra.s   loc_D424
loc_D432:
                
                movem.l a0-a1,-(sp)
                bsr.w   sub_D7DE
                bcc.s   loc_D440
                sndCom  SFX_MENU_SELECTION
loc_D440:
                
                bsr.w   sub_D7DE
                bsr.w   sub_D7DE
                bsr.w   sub_D7DE
                movem.l (sp)+,a0-a1
                bcs.s   loc_D424
                move.w  (a1),d0
                beq.s   loc_D41A
                bsr.w   byte_D68C
                bra.s   loc_D424
loc_D45C:
                
                cmpi.w  #2,(a1)
                bcc.s   loc_D468
                bsr.w   byte_D6AA
                bra.s   loc_D424
loc_D468:
                
                movem.l a0-a1,-(sp)
                bsr.w   sub_D7F4
                bcc.s   loc_D476
                sndCom  SFX_MENU_SELECTION
loc_D476:
                
                bsr.w   sub_D7F4
                bsr.w   sub_D7F4
                bsr.w   sub_D7F4
                movem.l (sp)+,a0-a1
                bcs.s   loc_D424
                cmpi.w  #3,(a1)
                bcc.s   loc_D41A
                bsr.w   byte_D6AA
                bra.s   loc_D424
loc_D494:
                
                cmpi.w  #1,(a0)
                bcc.s   loc_D41A
                bsr.w   byte_D6EC
                bra.s   loc_D424
loc_D4A0:
                
                move.w  (a0),d0
                beq.w   loc_D41A
                bsr.w   byte_D6C8
                bra.w   loc_D424

    ; End of function sub_D3BE


; =============== S U B R O U T I N E =======================================

sub_D4AE:
                
                bsr.w   sub_D308
                lea     (byte_FF2C00).l,a1
                lea     $84(a1),a0
                move.w  (a0),d0
                move.w  #$A000,d0
                ori.w   #0,d0
                move.w  #$B63,d7
loc_D4CA:
                
                move.w  d0,(a0)+
                dbf     d7,loc_D4CA
                bsr.w   sub_D50C
                lea     (byte_FF7E06).l,a0
                move.w  (a0)+,d0
                move.w  #$43E,d7
loc_D4E0:
                
                move.w  d0,(a0)+
                dbf     d7,loc_D4E0
                bsr.w   sub_7958
                bsr.w   sub_D2F4
                lea     (byte_FF2C0E).l,a0
                move.w  (a0),d0
                move.w  #$FFFF,(a0)
                tst.w   d0
                beq.s   loc_D504
                jsr     (DuplicatePalettes).l
loc_D504:
                
                jsr     (WaitForDMAQueueProcessing).l
                rts

    ; End of function sub_D4AE


; =============== S U B R O U T I N E =======================================

sub_D50C:
                
                move.w  #0,d1
                move.w  #$13,d6
                lea     (byte_FF2C5C).l,a2
loc_D51A:
                
                move.w  #2,d0
                move.w  #1,d7
loc_D522:
                
                movem.w d0-d1/d6-d7,-(sp)
                bsr.w   sub_D86C
                clr.w   d0
                move.b  (a2)+,d0
                movem.l a2,-(sp)
                bsr.w   sub_D584
                movem.l (sp)+,a2
                movem.w (sp)+,d0-d1/d6-d7
                addi.w  #$11,d0
                dbf     d7,loc_D522
                addq.w  #4,d1
                dbf     d6,loc_D51A
                bsr.w   sub_D828
                bsr.w   sub_D730
                moveq   #1,d2
                bsr.w   sub_D714
                rts

    ; End of function sub_D50C

unk_D55C:       dc.b   0
                dc.b $2D 
                dc.b $12
                dc.b $1C
                dc.b $15
                dc.b $2E 
                dc.b $14
                dc.b $13
                dc.b $32 
                dc.b $31 
                dc.b $33 
                dc.b $35 
                dc.b $19
                dc.b $18
                dc.b $1F
                dc.b $20
                dc.b $1E
                dc.b $16
                dc.b $1B
                dc.b $1A
                dc.b $2F 
                dc.b $17
                dc.b $2C 
                dc.b $30 
                dc.b $36 
                dc.b $29 
                dc.b $24 
                dc.b $27 
                dc.b $2B 
                dc.b $37 
                dc.b $38 
                dc.b $39 
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $28 
                dc.b $2A 

; =============== S U B R O U T I N E =======================================

sub_D584:
                
                jsr     j_GetOwnedItemQuantityEnriched
                cmpi.w  #$FFFF,d1
                bne.s   loc_D592
                rts
loc_D592:
                
                tst.w   d1
                beq.s   loc_D59A
                clr.l   d1
                bra.s   loc_D59C
loc_D59A:
                
                moveq   #1,d1
loc_D59C:
                
                movem.w d1,-(sp)
                bsr.w   sub_D642
                movem.w (sp)+,d1
                lea     -$D6(a0),a0
                movem.l a0,-(sp)
                bsr.s   sub_D5E4
                jsr     j_GetOwnedItemQuantityEnriched
                movem.l (sp)+,a0
                tst.w   d2
                bne.s   return_D5C6
                lea     $5A(a0),a0
                bsr.s   sub_D5C8
return_D5C6:
                
                rts

    ; End of function sub_D584


; =============== S U B R O U T I N E =======================================

sub_D5C8:
                
                tst.b   d1
                beq.s   loc_D5D2
                move.w  #$A000,d0
                bra.s   loc_D5D6
loc_D5D2:
                
                move.w  #$C000,d0
loc_D5D6:
                
                move.b  #$55,d0 
                move.w  d0,(a0)+
                move.b  d1,d0
                addq.b  #1,d0
                move.w  d0,(a0)+
                rts

    ; End of function sub_D5C8


; =============== S U B R O U T I N E =======================================

sub_D5E4:
                
                movem.w d0-d1,-(sp)
                exg     d0,d1
                jsr     sub_22EC4
                movea.l a0,a1
                tst.b   d0
                bne.s   loc_D5FC
                move.w  #$A000,d0
                bra.s   loc_D600
loc_D5FC:
                
                move.w  #$C000,d0
loc_D600:
                
                move.b  (a2)+,d0
                cmpi.b  #$69,d0 
                bne.s   loc_D616
                move.b  #$48,d0 
                move.w  d0,(a0)
                lea     $48(a1),a0
                bra.w   loc_D634
loc_D616:
                
                cmpi.b  #$6A,d0 
                bne.s   loc_D624
                lea     $48(a1),a0
                bra.w   loc_D634
loc_D624:
                
                cmpi.b  #$6B,d0 
                bne.s   loc_D632
                lea     $48(a1),a0
                bra.w   loc_D634
loc_D632:
                
                move.w  d0,(a0)+
loc_D634:
                
                dbf     d7,loc_D600
                lea     $12(a1),a0
                movem.w (sp)+,d0-d1
                rts

    ; End of function sub_D5E4


; =============== S U B R O U T I N E =======================================

sub_D642:
                
                movem.w d0-d1,-(sp)
                tst.b   d1
                bne.s   loc_D652
                move.w  #$A0BC,d1
                bra.w   loc_D656
loc_D652:
                
                move.w  #$C0BC,d1
loc_D656:
                
                andi.w  #$3F,d0 
                mulu.w  #$10,d0
                add.w   d1,d0
                moveq   #3,d7
loc_D662:
                
                move.w  d0,(a0)
                addq.w  #4,d0
                move.w  d0,2(a0)
                addq.w  #4,d0
                move.w  d0,4(a0)
                addq.w  #4,d0
                move.w  d0,6(a0)
                subi.w  #$B,d0
                lea     $48(a0),a0
                dbf     d7,loc_D662
                lea     8(a0),a0
                movem.w (sp)+,d0-d1
                rts

    ; End of function sub_D642

byte_D68C:      sndCom  SFX_MENU_SELECTION

; =============== S U B R O U T I N E =======================================

sub_D690:
                
                bsr.w   sub_D730
                lea     (byte_FF2C0C).l,a0
                subq.w  #1,(a0)
                moveq   #7,d7
loc_D69E:
                
                bsr.w   sub_D714
                subq.w  #4,d1
                dbf     d7,loc_D69E
                rts

    ; End of function sub_D690

byte_D6AA:      sndCom  SFX_MENU_SELECTION

; =============== S U B R O U T I N E =======================================

sub_D6AE:
                
                bsr.w   sub_D730
                lea     (byte_FF2C0C).l,a0
                addq.w  #1,(a0)
                moveq   #7,d7
loc_D6BC:
                
                bsr.w   sub_D714
                addq.w  #4,d1
                dbf     d7,loc_D6BC
                rts

    ; End of function sub_D6AE

byte_D6C8:      sndCom  SFX_MENU_SELECTION

; =============== S U B R O U T I N E =======================================

sub_D6CC:
                
                bsr.w   sub_D730
                lea     (byte_FF2C0A).l,a0
                subq.w  #1,(a0)
                moveq   #$B,d7
loc_D6DA:
                
                bsr.w   sub_D714
                subi.w  #$C,d0
                dbf     d7,loc_D6DA
                bsr.w   sub_D710
                rts

    ; End of function sub_D6CC

byte_D6EC:      sndCom  SFX_MENU_SELECTION

; =============== S U B R O U T I N E =======================================

sub_D6F0:
                
                bsr.w   sub_D710
                lea     (byte_FF2C0A).l,a0
                addq.w  #1,(a0)
                moveq   #$B,d7
loc_D6FE:
                
                bsr.w   sub_D714
                addi.w  #$C,d0
                dbf     d7,loc_D6FE
                bsr.w   sub_D710
                rts

    ; End of function sub_D6F0


; =============== S U B R O U T I N E =======================================

sub_D710:
                
                bsr.w   sub_D730

    ; End of function sub_D710


; =============== S U B R O U T I N E =======================================

sub_D714:
                
                movem.w d0-d1/d7,-(sp)
                move.l  d2,-(sp)
                bsr.w   sub_D902
                move.l  (sp)+,d2
                bsr.w   sub_D756
                jsr     (WaitForVInt).l
                movem.w (sp)+,d0-d1/d7
                rts

    ; End of function sub_D714


; =============== S U B R O U T I N E =======================================

sub_D730:
                
                lea     (byte_FF2C0A).l,a0
                move.w  (a0),d0
                lea     (byte_FF2C0C).l,a1
                move.w  (a1),d1
                mulu.w  #$88,d0 
                addi.w  #$A0,d0 
                mulu.w  #$20,d1 
                addi.w  #$A0,d1 
                move.b  #$FF,d2
                rts

    ; End of function sub_D730


; =============== S U B R O U T I N E =======================================

sub_D756:
                
                clr.w   d2
                lea     (byte_FF0558).l,a0
                lea     (byte_FF2C00).l,a1
                move.w  4(a1),d3
                move.w  (word_FF0F9C).l,d4
                sub.w   d3,d4
                andi.b  #$3F,d4 
                cmpi.b  #$20,d4 
                bcc.s   loc_D77C
                clr.b   d4
loc_D77C:
                
                move.w  #$80B8,d3
                move.b  #5,d2
                move.w  #$98,(a0) 
                tst.w   6(a1)
                bne.s   loc_D790
                clr.w   (a0)
loc_D790:
                
                tst.b   d4
                beq.s   loc_D796
                clr.w   (a0)
loc_D796:
                
                move.b  d2,2(a0)
                move.w  d3,4(a0)
                move.w  #$8E,6(a0) 
                lea     8(a0),a0
                move.w  #$120,(a0)
                move.w  8(a1),d0
                subi.w  #$11,d0
                move.w  6(a1),d1
                cmp.w   d0,d1
                bcs.s   loc_D7BE
                clr.w   (a0)
loc_D7BE:
                
                tst.b   d4
                beq.s   loc_D7C4
                clr.w   (a0)
loc_D7C4:
                
                move.b  d2,2(a0)
                bset    #$C,d3
                move.w  d3,4(a0)
                move.w  #$8E,6(a0) 
                move.w  $16(a0),$E(a0)
                rts

    ; End of function sub_D756


; =============== S U B R O U T I N E =======================================

sub_D7DE:
                
                lea     (byte_FF2C00).l,a1
                lea     6(a1),a0
                subq.w  #1,(a0)
                bpl.s   loc_D7F2
                clr.w   (a0)
                tst.b   d0
                rts
loc_D7F2:
                
                bra.s   loc_D814

    ; End of function sub_D7DE


; =============== S U B R O U T I N E =======================================

sub_D7F4:
                
                lea     (byte_FF2C00).l,a1
                lea     6(a1),a0
                move.w  8(a1),d0
                subi.w  #$11,d0
                move.w  (a0),d1
                cmp.w   d0,d1
                bcs.s   loc_D812
                move.w  d0,(a0)
                tst.b   d0
                rts
loc_D812:
                
                addq.w  #1,(a0)
loc_D814:
                
                bsr.w   sub_D828
                bsr.w   sub_D710
                jsr     (WaitForVInt).l
                ori     #1,ccr
                rts

    ; End of function sub_D7F4


; =============== S U B R O U T I N E =======================================

sub_D828:
                
                lea     (byte_FF2C00).l,a1
                lea     6(a1),a0
                move.w  (a0),d0
                lea     $84(a1),a0
                mulu.w  #$48,d0 
                ext.l   d0
                adda.l  d0,a0
                lea     (byte_FF1E04).l,a1
                move.w  #$10,d7
loc_D84A:
                
                movea.l a1,a2
                move.w  #$23,d6 
loc_D850:
                
                move.w  (a0)+,(a1)+
                dbf     d6,loc_D850
                lea     $80(a2),a1
                dbf     d7,loc_D84A
                jsr     (sub_792C).l
                jsr     (j_EnableDMAQueueProcessing).l
                rts

    ; End of function sub_D828


; =============== S U B R O U T I N E =======================================

sub_D86C:
                
                movem.w d0-d1,-(sp)
                lea     (byte_FF2C00).l,a1
                lea     $84(a1),a0
                mulu.w  #$48,d1 
                add.w   d0,d1
                add.w   d0,d1
                adda.l  d1,a0
                movem.w (sp)+,d0-d1
                rts

    ; End of function sub_D86C


; =============== S U B R O U T I N E =======================================

sub_D88A:
                
                movem.w d0,-(sp)
                jsr     (RefreshPlayerInput).l
                movem.w (sp)+,d4
                move.w  (word_FF0F9C).l,d2
                lea     (byte_FF2C00).l,a1
                move.b  (a1),d1
                lea     (P1_INPUT).l,a0 
                move.b  (a0),d0
                andi.b  #$F,d0
                andi.b  #$F,d1
                eor.b   d0,d1
                and.b   d0,d1
                beq.s   loc_D8BE
                move.b  d1,d0
loc_D8BE:
                
                move.b  1(a1),d1
                andi.b  #$F,d1
                cmp.b   d1,d0
                beq.s   loc_D8E0
                move.b  (a0),d1
                andi.b  #$F0,d1
                or.b    d1,d0
                move.b  (a0),(a1)
                move.b  d0,1(a1)
                move.b  d0,(a0)
                move.w  d2,2(a1)
                rts
loc_D8E0:
                
                move.b  1(a1),d1
                andi.b  #$F,d1
                move.w  d2,d0
                sub.w   2(a1),d0
                cmp.w   d4,d0
                bcc.s   loc_D8F4
                clr.b   d1
loc_D8F4:
                
                move.b  (a0),d0
                andi.b  #$F0,d0
                or.b    d1,d0
                move.b  (a0),(a1)
                move.b  d0,(a0)
                rts

    ; End of function sub_D88A


; =============== S U B R O U T I N E =======================================

sub_D902:
                
                cmpi.b  #1,d2
                bne.s   loc_D90A
                moveq   #$FFFFFFFF,d0
loc_D90A:
                
                tst.b   d2
                bne.s   loc_D92C
                lea     (byte_FF2C00).l,a0
                move.w  4(a0),d2
                move.w  (word_FF0F9C).l,d3
                sub.w   d2,d3
                andi.b  #$1F,d3
                cmpi.b  #$10,d3
                bcs.s   loc_D92C
                moveq   #$FFFFFFFF,d0
loc_D92C:
                
                lea     (SPRITE_TABLE).l,a0
                move.w  d0,6(a0)
                move.w  d1,(a0)
                move.b  #$F,2(a0)
                move.w  #$A0A8,d2
                move.w  d2,4(a0)
                rts

    ; End of function sub_D902


; =============== S U B R O U T I N E =======================================

sub_D948:
                
                movem.w d0,-(sp)
                jsr     (WaitForVInt).l
                jsr     (RefreshPlayerInput).l
                movem.w (sp)+,d0
                move.b  (P1_INPUT).l,d1 
                andi.b  #$F0,d1
                bne.s   sub_D948
                rts

    ; End of function sub_D948


; =============== S U B R O U T I N E =======================================

sub_D96A:
                
                jsr     (RefreshPlayerInput).l
                move.b  (P1_INPUT).l,d0 
                andi.b  #$F0,d0
                bne.s   sub_D96A
                jsr     (WaitForVInt).l
                jsr     (RefreshPlayerInput).l
                move.b  (P1_INPUT).l,d0 
                andi.b  #$F0,d0
                bne.s   sub_D96A
                rts

    ; End of function sub_D96A


; =============== S U B R O U T I N E =======================================

sub_D996:
                
                lea     (byte_FF2C84).l,a0
                lea     unk_DF76(pc), a1
                move.b  #0,d3
                move.b  #5,d4
                move.b  #$A,d5
                move.b  #$F,d6
                moveq   #$F,d7
loc_D9B2:
                
                move.l  d7,-(sp)
                bsr.w   sub_DA84
                move.l  (sp)+,d7
                dbf     d7,loc_D9B2
                lea     byte_E076(pc), a1
                move.b  #0,d3
                move.b  #$B,d4
                move.b  #$E,d5
                move.b  #$F,d6
                bsr.w   sub_DA84
                bsr.w   sub_DA84
                bsr.w   sub_DA84
                bsr.w   sub_DA84
                lea     (byte_FF2C84).l,a0
                lea     ($1500).w,a1
                move.w  #$140,d0
                move.w  #2,d1
                jsr     (ApplyImmediateVramDMA).l
                rts

    ; End of function sub_D996


; =============== S U B R O U T I N E =======================================

sub_D9FC:
                
                lea     (byte_FF2C84).l,a0
                lea     unk_DC76(pc), a1
                move.b  #1,d2
                move.b  #0,d3
                bsr.w   sub_DAD8
                move.w  #$9E,d6 
loc_DA16:
                
                bsr.w   sub_DAD8
                dbf     d6,loc_DA16
                move.b  #$A,d3
                move.b  #$A,d4
                move.b  #1,d5
                move.b  d3,d6
                bsr.w   sub_DA62
                move.b  #$A,d3
                move.b  #$A,d4
                move.b  #3,d5
                move.b  d3,d6
                bsr.w   sub_DA62
                lea     (byte_FF2C84).l,a0
                lea     (0).w,a1
                move.w  #$A80,d0
                move.w  #2,d1
                jsr     (ApplyVIntVramDMA).l
                jsr     (WaitForDMAQueueProcessing).l
                rts

    ; End of function sub_D9FC


; =============== S U B R O U T I N E =======================================

sub_DA62:
                
                lea     byte_E0B6(pc), a1
                bsr.w   sub_DA84
                lea     word_E0BC(pc), a1
                bsr.w   sub_DA84
                lea     word_E0CC(pc), a1
                bsr.w   sub_DA84
                lea     word_E0D0(pc), a1
                bsr.w   sub_DA84
                rts

    ; End of function sub_DA62


; =============== S U B R O U T I N E =======================================

sub_DA84:
                
                move.w  #7,d7
loc_DA88:
                
                clr.l   d1
                move.w  (a1)+,d0
                bsr.w   sub_DAB4
                bsr.w   sub_DAB4
                bsr.w   sub_DAB4
                bsr.w   sub_DAB4
                bsr.w   sub_DAB4
                bsr.w   sub_DAB4
                bsr.w   sub_DAB4
                bsr.w   sub_DAB4
                move.l  d1,(a0)+
                dbf     d7,loc_DA88
                rts

    ; End of function sub_DA84


; =============== S U B R O U T I N E =======================================

sub_DAB4:
                
                rol.l   #4,d1
                add.w   d0,d0
                bcs.w   loc_DACA
                add.w   d0,d0
                bcs.w   loc_DAC6
                or.b    d3,d1
                rts
loc_DAC6:
                
                or.b    d4,d1
                rts
loc_DACA:
                
                add.w   d0,d0
                bcs.w   loc_DAD4
                or.b    d5,d1
                rts
loc_DAD4:
                
                or.b    d6,d1
                rts

    ; End of function sub_DAB4


; =============== S U B R O U T I N E =======================================

sub_DAD8:
                
                move.w  #7,d7
loc_DADC:
                
                move.b  (a1)+,d0
                bsr.w   sub_DAEC
                bsr.w   sub_DAEC
                dbf     d7,loc_DADC
                rts

    ; End of function sub_DAD8


; =============== S U B R O U T I N E =======================================

sub_DAEC:
                
                clr.w   d1
                bsr.w   sub_DAFA
                bsr.w   sub_DAFA
                move.w  d1,(a0)+
                rts

    ; End of function sub_DAEC


; =============== S U B R O U T I N E =======================================

sub_DAFA:
                
                rol.w   #4,d1
                add.b   d0,d0
                bcc.s   loc_DB04
                or.b    d2,d1
                bra.s   loc_DB06
loc_DB04:
                
                or.b    d3,d1
loc_DB06:
                
                rol.w   #4,d1
                add.b   d0,d0
                bcc.s   loc_DB10
                or.b    d2,d1
                bra.s   return_DB12
loc_DB10:
                
                or.b    d3,d1
return_DB12:
                
                rts

    ; End of function sub_DAFA


; =============== S U B R O U T I N E =======================================

sub_DB14:
                
                jsr     sub_22E94
                jsr     (sub_2FC).l
                jsr     (WaitForDMAQueueProcessing).l
                rts

    ; End of function sub_DB14


; =============== S U B R O U T I N E =======================================

sub_DB28:
                
                bsr.w   sub_D710
                lea     (byte_FF2C00).l,a0
                move.w  6(a0),d1
                lsr.w   #2,d1
                move.w  $C(a0),d0
                add.w   d0,d1
                add.w   d1,d1
                move.w  $A(a0),d0
                add.w   d1,d0
                lea     $5C(a0),a0
                move.b  (a0,d0.w),d0
                jsr     j_GetOwnedItemQuantityEnriched
                tst.w   d1
                beq.s   byte_DBBC
                cmpi.w  #$FFFF,d1
                beq.s   byte_DBBC
                move.l  d0,-(sp)
                bsr.s   sub_DB14
                sndCom  SFX_VALIDATION
                move.l  (sp)+,d0
                ext.w   d0
                move.w  d0,(word_FF1196).l
                movem.w d0,-(sp)
                jsr     sub_22EE0
                move.w  d1,d0
                jsr     sub_22E90
                bsr.w   sub_D96A
                movem.w (sp)+,d0
                move.l  d0,-(sp)
                cmpi.b  #$30,d0 
                bne.s   loc_DB9A
                bsr.w   sub_DBC4
                bra.w   loc_DBB6
loc_DB9A:
                
                cmpi.b  #$18,d0
                bne.s   loc_DBA8
                bsr.w   sub_DC10
                bra.w   loc_DBB6
loc_DBA8:
                
                cmpi.b  #$24,d0 
                bne.s   loc_DBB6
                bsr.w   sub_DC1C
                bra.w   *+4
loc_DBB6:
                
                move.l  (sp)+,d0
                bra.w   loc_D34C
byte_DBBC:
                
                sndCom  SFX_REFUSAL
                bra.w   loc_D3C6

    ; End of function sub_DB28


; =============== S U B R O U T I N E =======================================

sub_DBC4:
                
                lea     (VISITED_MAP_FLAGS).l,a0
                move.w  #$282,d0
                clr.b   d1
                moveq   #3,d7
loc_DBD2:
                
                btst    d1,(a0)
                beq.s   loc_DBD8
                addq.l  #1,d7
loc_DBD8:
                
                addq.b  #1,d1
                andi.b  #7,d1
                bne.s   loc_DBE2
                addq.l  #1,a0
loc_DBE2:
                
                dbf     d0,loc_DBD2
                mulu.w  #$64,d7 
                divu.w  #$282,d7
                andi.l  #$FFFF,d7
                cmpi.l  #$64,d7 
                bcs.s   loc_DBFE
                moveq   #$64,d7 
loc_DBFE:
                
                move.l  d7,(dword_FF1878).l
                move.w  #$19,d0
                jsr     sub_22E90
                rts

    ; End of function sub_DBC4


; =============== S U B R O U T I N E =======================================

sub_DC10:
                
                move.w  #$1A,d0
                jsr     sub_22E90
                rts

    ; End of function sub_DC10


; =============== S U B R O U T I N E =======================================

sub_DC1C:
                
                move.w  #$1B,d0
                jsr     sub_22E90
                rts

    ; End of function sub_DC1C


; =============== S U B R O U T I N E =======================================

sub_DC28:
                
                lea     unk_D55C(pc), a0
                lea     (byte_FF2C5C).l,a1
                movea.l a1,a2
                moveq   #$27,d7 
                clr.w   d6
loc_DC38:
                
                move.b  #$FF,(a2)+
                dbf     d7,loc_DC38
                moveq   #$27,d7 
loc_DC42:
                
                move.b  (a0),d0
                jsr     j_GetOwnedItemQuantityEnriched
                tst.w   d1
                bmi.s   loc_DC52
                move.b  (a0),(a1)+
                addq.w  #1,d6
loc_DC52:
                
                addq.l  #1,a0
                dbf     d7,loc_DC42
                lsr.w   #1,d6
                bcc.s   loc_DC5E
                addq.w  #1,d6
loc_DC5E:
                
                lsl.w   #2,d6
                addq.w  #1,d6
                cmpi.w  #$12,d6
                bcc.s   loc_DC6C
                move.w  #$11,d6
loc_DC6C:
                
                lea     (byte_FF2C08).l,a0
                move.w  d6,(a0)
                rts

    ; End of function sub_DC28

unk_DC76:       dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $38 
                dc.b $44 
                dc.b $C6 
                dc.b $C6 
                dc.b $C6 
                dc.b $44 
                dc.b $38 
                dc.b   0
                dc.b $18
                dc.b $18
                dc.b $38 
                dc.b $18
                dc.b $18
                dc.b $18
                dc.b $18
                dc.b   0
                dc.b $7C 
                dc.b $C6 
                dc.b $C6 
                dc.b $1C
                dc.b $70 
                dc.b $E0 
                dc.b $FE 
                dc.b   0
                dc.b $7C 
                dc.b $C6 
                dc.b   6
                dc.b $3C 
                dc.b   6
                dc.b $C6 
                dc.b $7C 
                dc.b   0
                dc.b $1C
                dc.b $3C 
                dc.b $6C 
                dc.b $CC 
                dc.b $CC 
                dc.b $FE 
                dc.b  $C
                dc.b   0
                dc.b $FE 
                dc.b $C0 
                dc.b $C0 
                dc.b $FC 
                dc.b   6
                dc.b $C6 
                dc.b $7C 
                dc.b   0
                dc.b $7C 
                dc.b $C6 
                dc.b $C0 
                dc.b $FC 
                dc.b $C6 
                dc.b $C6 
                dc.b $7C 
                dc.b   0
                dc.b $FE 
                dc.b $C6 
                dc.b $C6 
                dc.b  $C
                dc.b $18
                dc.b $18
                dc.b $18
                dc.b   0
                dc.b $7C 
                dc.b $C6 
                dc.b $C6 
                dc.b $7C 
                dc.b $C6 
                dc.b $C6 
                dc.b $7C 
                dc.b   0
                dc.b $7C 
                dc.b $C6 
                dc.b $C6 
                dc.b $7E 
                dc.b   6
                dc.b $C6 
                dc.b $7C 
                dc.b   0
                dc.b $7C 
                dc.b $C6 
                dc.b $C6 
                dc.b $C6 
                dc.b $FE 
                dc.b $C6 
                dc.b $C6 
                dc.b   0
                dc.b $FC 
                dc.b $C6 
                dc.b $C6 
                dc.b $FC 
                dc.b $C6 
                dc.b $C6 
                dc.b $FC 
                dc.b   0
                dc.b $7C 
                dc.b $C6 
                dc.b $C0 
                dc.b $C0 
                dc.b $C0 
                dc.b $C6 
                dc.b $7C 
                dc.b   0
                dc.b $F8 
                dc.b $CC 
                dc.b $C6 
                dc.b $C6 
                dc.b $C6 
                dc.b $CC 
                dc.b $F8 
                dc.b   0
                dc.b $FE 
                dc.b $C0 
                dc.b $C0 
                dc.b $FC 
                dc.b $C0 
                dc.b $C0 
                dc.b $FE 
                dc.b   0
                dc.b $FE 
                dc.b $C0 
                dc.b $C0 
                dc.b $FC 
                dc.b $C0 
                dc.b $C0 
                dc.b $C0 
                dc.b   0
                dc.b $7C 
                dc.b $C6 
                dc.b $C0 
                dc.b $DE 
                dc.b $C6 
                dc.b $C6 
                dc.b $7C 
                dc.b   0
                dc.b $C6 
                dc.b $C6 
                dc.b $C6 
                dc.b $FE 
                dc.b $C6 
                dc.b $C6 
                dc.b $C6 
                dc.b   0
                dc.b $3C 
                dc.b $18
                dc.b $18
                dc.b $18
                dc.b $18
                dc.b $18
                dc.b $3C 
                dc.b   0
                dc.b $7E 
                dc.b  $C
                dc.b  $C
                dc.b  $C
                dc.b  $C
                dc.b $4C 
                dc.b $38 
                dc.b   0
                dc.b $C6 
                dc.b $DC 
                dc.b $F0 
                dc.b $E0 
                dc.b $F0 
                dc.b $DC 
                dc.b $C6 
                dc.b   0
                dc.b $C0 
                dc.b $C0 
                dc.b $C0 
                dc.b $C0 
                dc.b $C0 
                dc.b $C0 
                dc.b $FE 
                dc.b   0
                dc.b $C6 
                dc.b $EE 
                dc.b $EE 
                dc.b $D6 
                dc.b $D6 
                dc.b $C6 
                dc.b $C6 
                dc.b   0
                dc.b $C6 
                dc.b $E6 
                dc.b $F6 
                dc.b $DE 
                dc.b $CE 
                dc.b $C6 
                dc.b $C6 
                dc.b   0
                dc.b $7C 
                dc.b $C6 
                dc.b $C6 
                dc.b $C6 
                dc.b $C6 
                dc.b $C6 
                dc.b $7C 
                dc.b   0
                dc.b $FC 
                dc.b $C6 
                dc.b $C6 
                dc.b $C6 
                dc.b $FC 
                dc.b $C0 
                dc.b $C0 
                dc.b   0
                dc.b $7C 
                dc.b $C6 
                dc.b $C6 
                dc.b $C6 
                dc.b $D6 
                dc.b $CC 
                dc.b $7A 
                dc.b   0
                dc.b $FC 
                dc.b $C6 
                dc.b $C6 
                dc.b $FC 
                dc.b $D8 
                dc.b $CC 
                dc.b $C6 
                dc.b   0
                dc.b $7C 
                dc.b $C6 
                dc.b $C0 
                dc.b $7C 
                dc.b   6
                dc.b $C6 
                dc.b $7C 
                dc.b   0
                dc.b $7E 
                dc.b $18
                dc.b $18
                dc.b $18
                dc.b $18
                dc.b $18
                dc.b $18
                dc.b   0
                dc.b $C6 
                dc.b $C6 
                dc.b $C6 
                dc.b $C6 
                dc.b $C6 
                dc.b $FE 
                dc.b $7C 
                dc.b   0
                dc.b $C6 
                dc.b $C6 
                dc.b $EE 
                dc.b $6C 
                dc.b $6C 
                dc.b $38 
                dc.b $38 
                dc.b   0
                dc.b $C6 
                dc.b $D6 
                dc.b $D6 
                dc.b $D6 
                dc.b $D6 
                dc.b $7C 
                dc.b $6C 
                dc.b   0
                dc.b $C6 
                dc.b $EE 
                dc.b $7C 
                dc.b $38 
                dc.b $7C 
                dc.b $EE 
                dc.b $C6 
                dc.b   0
                dc.b $66 
                dc.b $66 
                dc.b $3C 
                dc.b $3C 
                dc.b $18
                dc.b $18
                dc.b $18
                dc.b   0
                dc.b $FE 
                dc.b   6
                dc.b  $C
                dc.b $38 
                dc.b $60 
                dc.b $C0 
                dc.b $FE 
                dc.b   0
                dc.b   0
                dc.b $7C 
                dc.b $C6 
                dc.b $3E 
                dc.b $C6 
                dc.b $C6 
                dc.b $7E 
                dc.b   0
                dc.b $C0 
                dc.b $C0 
                dc.b $FC 
                dc.b $C6 
                dc.b $C6 
                dc.b $C6 
                dc.b $FC 
                dc.b   0
                dc.b   0
                dc.b $7C 
                dc.b $C6 
                dc.b $C0 
                dc.b $C0 
                dc.b $C6 
                dc.b $7C 
                dc.b   0
                dc.b   6
                dc.b   6
                dc.b $7E 
                dc.b $C6 
                dc.b $C6 
                dc.b $C6 
                dc.b $7E 
                dc.b   0
                dc.b   0
                dc.b $7C 
                dc.b $C6 
                dc.b $FE 
                dc.b $C0 
                dc.b $C6 
                dc.b $7C 
                dc.b   0
                dc.b $1C
                dc.b $32 
                dc.b $30 
                dc.b $FC 
                dc.b $30 
                dc.b $30 
                dc.b $30 
                dc.b   0
                dc.b   0
                dc.b $7C 
                dc.b $C6 
                dc.b $7E 
                dc.b   6
                dc.b $C6 
                dc.b $7C 
                dc.b   0
                dc.b $C0 
                dc.b $C0 
                dc.b $D8 
                dc.b $EC 
                dc.b $CC 
                dc.b $CC 
                dc.b $CC 
                dc.b   0
                dc.b $30 
                dc.b   0
                dc.b $70 
                dc.b $30 
                dc.b $30 
                dc.b $30 
                dc.b $78 
                dc.b   0
                dc.b $18
                dc.b   0
                dc.b $38 
                dc.b $18
                dc.b $18
                dc.b $D8 
                dc.b $70 
                dc.b   0
                dc.b $C0 
                dc.b $C0 
                dc.b $CC 
                dc.b $D8 
                dc.b $F0 
                dc.b $D8 
                dc.b $CC 
                dc.b   0
                dc.b $30 
                dc.b $18
                dc.b $18
                dc.b $18
                dc.b $18
                dc.b $18
                dc.b $3C 
                dc.b   0
                dc.b   0
                dc.b $B8 
                dc.b $D4 
                dc.b $D4 
                dc.b $D4 
                dc.b $D4 
                dc.b $D6 
                dc.b   0
                dc.b   0
                dc.b $B8 
                dc.b $CC 
                dc.b $CC 
                dc.b $CC 
                dc.b $CC 
                dc.b $CE 
                dc.b   0
                dc.b   0
                dc.b $38 
                dc.b $C6 
                dc.b $C6 
                dc.b $C6 
                dc.b $C6 
                dc.b $38 
                dc.b   0
                dc.b   0
                dc.b $7C 
                dc.b $62 
                dc.b $62 
                dc.b $7C 
                dc.b $60 
                dc.b $E0 
                dc.b   0
                dc.b   0
                dc.b $7C 
                dc.b $8C 
                dc.b $8C 
                dc.b $7C 
                dc.b  $C
                dc.b  $E
                dc.b   0
                dc.b   0
                dc.b $D8 
                dc.b $E6 
                dc.b $C0 
                dc.b $C0 
                dc.b $C0 
                dc.b $C0 
                dc.b   0
                dc.b   4
                dc.b $7C 
                dc.b $C0 
                dc.b $7C 
                dc.b   6
                dc.b $C6 
                dc.b $7C 
                dc.b   0
                dc.b $30 
                dc.b $30 
                dc.b $FC 
                dc.b $30 
                dc.b $30 
                dc.b $36 
                dc.b $1C
                dc.b   0
                dc.b   0
                dc.b $C6 
                dc.b $C6 
                dc.b $C6 
                dc.b $C6 
                dc.b $CE 
                dc.b $76 
                dc.b   0
                dc.b   0
                dc.b $C6 
                dc.b $66 
                dc.b $66 
                dc.b $6C 
                dc.b $3C 
                dc.b $18
                dc.b   0
                dc.b   0
                dc.b $C2 
                dc.b $6A 
                dc.b $6A 
                dc.b $6A 
                dc.b $6A 
                dc.b $34 
                dc.b   0
                dc.b   0
                dc.b $C6 
                dc.b $6C 
                dc.b $30 
                dc.b $18
                dc.b $6C 
                dc.b $C6 
                dc.b   0
                dc.b   0
                dc.b $CE 
                dc.b $4C 
                dc.b $7C 
                dc.b  $C
                dc.b $CC 
                dc.b $78 
                dc.b   0
                dc.b   0
                dc.b $7E 
                dc.b $8C 
                dc.b $18
                dc.b $30 
                dc.b $66 
                dc.b $FC 
                dc.b   0
                dc.b $10
                dc.b $44 
                dc.b $28 
                dc.b $92 
                dc.b $28 
                dc.b $44 
                dc.b $10
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $30 
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $30 
                dc.b $10
                dc.b $20
                dc.b   0
                dc.b $3C 
                dc.b $66 
                dc.b $66 
                dc.b  $C
                dc.b $18
                dc.b   0
                dc.b $18
                dc.b   0
                dc.b $18
                dc.b $18
                dc.b $18
                dc.b $18
                dc.b $18
                dc.b   0
                dc.b $18
                dc.b   0
                dc.b   4
                dc.b   8
                dc.b   8
                dc.b $10
                dc.b $20
                dc.b $20
                dc.b $40 
                dc.b   0
                dc.b   8
                dc.b $10
                dc.b $20
                dc.b $60 
                dc.b $20
                dc.b $10
                dc.b   8
                dc.b   0
                dc.b $10
                dc.b   8
                dc.b   4
                dc.b   6
                dc.b   4
                dc.b   8
                dc.b $10
                dc.b   0
                dc.b   0
                dc.b $18
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $18
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $7C 
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $60 
                dc.b $20
                dc.b $40 
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $6C 
                dc.b $24 
                dc.b $48 
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $E4 
                dc.b $A8 
                dc.b $E8 
                dc.b $10
                dc.b $2E 
                dc.b $2A 
                dc.b $4E 
                dc.b   0
                dc.b $6C 
                dc.b $7E 
                dc.b $EC 
                dc.b $6C 
                dc.b $6E 
                dc.b $FC 
                dc.b $6C 
                dc.b   0
                dc.b $30 
                dc.b $58 
                dc.b $32 
                dc.b $54 
                dc.b $CC 
                dc.b $C8 
                dc.b $76 
                dc.b   0
                dc.b $18
                dc.b $30 
                dc.b $30 
                dc.b $30 
                dc.b $30 
                dc.b $30 
                dc.b $18
                dc.b   0
                dc.b $30 
                dc.b $18
                dc.b $18
                dc.b $18
                dc.b $18
                dc.b $18
                dc.b $30 
                dc.b   0
                dc.b   0
                dc.b $7C 
                dc.b   0
                dc.b   0
                dc.b $7C 
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $70 
                dc.b $60 
                dc.b $50 
                dc.b   8
                dc.b   4
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b  $E
                dc.b   6
                dc.b  $A
                dc.b $10
                dc.b $20
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $20
                dc.b $10
                dc.b  $A
                dc.b   6
                dc.b  $E
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   4
                dc.b   8
                dc.b $50 
                dc.b $60 
                dc.b $70 
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $44 
                dc.b $28 
                dc.b $10
                dc.b $28 
                dc.b $44 
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
unk_DF76:       dc.b $3F 
                dc.b $F0 
                dc.b $D5 
                dc.b $5F 
                dc.b $3F 
                dc.b $DA 
                dc.b $37 
                dc.b $BF 
                dc.b $35 
                dc.b $C0 
                dc.b $D7 
                dc.b $C0 
                dc.b $DC 
                dc.b   0
                dc.b $F0 
                dc.b   0
                dc.b $C0 
                dc.b   0
                dc.b $C0 
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $C0 
                dc.b   0
                dc.b $70 
                dc.b   0
                dc.b $DC 
                dc.b   0
                dc.b $DC 
                dc.b   0
                dc.b $70 
                dc.b   0
                dc.b $C0 
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $C0 
                dc.b   0
                dc.b $C0 
                dc.b   0
                dc.b $F0 
                dc.b   0
                dc.b $DC 
                dc.b   0
                dc.b $D7 
                dc.b $C0 
                dc.b $35 
                dc.b $C0 
                dc.b $37 
                dc.b $BF 
                dc.b $3F 
                dc.b $DA 
                dc.b $D5 
                dc.b $5F 
                dc.b $3F 
                dc.b $F0 
                dc.b $FD 
                dc.b $7C 
                dc.b $97 
                dc.b $C0 
                dc.b $BC 
                dc.b   0
                dc.b $C0 
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $C0 
                dc.b   0
                dc.b $BC 
                dc.b   0
                dc.b $97 
                dc.b $C0 
                dc.b $FD 
                dc.b $7C 
                dc.b $3D 
                dc.b $7F 
                dc.b   3
                dc.b $D6 
                dc.b   0
                dc.b $3E 
                dc.b   0
                dc.b   3
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   3
                dc.b   0
                dc.b $3E 
                dc.b   3
                dc.b $D6 
                dc.b $3D 
                dc.b $7F 
                dc.b  $F
                dc.b $FC 
                dc.b $F5 
                dc.b $57 
                dc.b $A7 
                dc.b $FC 
                dc.b $FE 
                dc.b $DC 
                dc.b   3
                dc.b $5C 
                dc.b   3
                dc.b $D7 
                dc.b   0
                dc.b $37 
                dc.b   0
                dc.b  $F
                dc.b   0
                dc.b   3
                dc.b   0
                dc.b   3
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   3
                dc.b   0
                dc.b  $D
                dc.b   0
                dc.b $37 
                dc.b   0
                dc.b $37 
                dc.b   0
                dc.b  $D
                dc.b   0
                dc.b   3
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   3
                dc.b   0
                dc.b   3
                dc.b   0
                dc.b  $F
                dc.b   0
                dc.b $37 
                dc.b   3
                dc.b $D7 
                dc.b   3
                dc.b $5C 
                dc.b $FE 
                dc.b $DC 
                dc.b $A7 
                dc.b $FC 
                dc.b $F5 
                dc.b $57 
                dc.b  $F
                dc.b $FC 
byte_E076:      dc.b 0
                dc.b   3
                dc.b   0
                dc.b  $E
                dc.b   0
                dc.b $39 
                dc.b   0
                dc.b $39 
                dc.b   0
                dc.b $E5 
                dc.b   0
                dc.b $E5 
                dc.b   3
                dc.b $95 
                dc.b   3
                dc.b $95 
                dc.b  $E
                dc.b $55 
                dc.b  $E
                dc.b $55 
                dc.b $39 
                dc.b $55 
                dc.b $39 
                dc.b $55 
                dc.b $E5 
                dc.b $55 
                dc.b $E5 
                dc.b $55 
                dc.b $EA 
                dc.b $AA 
                dc.b $3F 
                dc.b $FF
                dc.b $C0 
                dc.b   0
                dc.b $B0 
                dc.b   0
                dc.b $6C 
                dc.b   0
                dc.b $6C 
                dc.b   0
                dc.b $5B 
                dc.b   0
                dc.b $5B 
                dc.b   0
                dc.b $56 
                dc.b $C0 
                dc.b $56 
                dc.b $C0 
                dc.b $55 
                dc.b $B0 
                dc.b $55 
                dc.b $B0 
                dc.b $55 
                dc.b $6C 
                dc.b $55 
                dc.b $6C 
                dc.b $55 
                dc.b $5B 
                dc.b $55 
                dc.b $5B 
                dc.b $AA 
                dc.b $AB 
                dc.b $FF
                dc.b $FC 
byte_E0B6:      dc.b 0
                dc.b   0
                dc.b   0
                dc.b $2A 
                dc.b $2A 
                dc.b $95 
word_E0BC:      dc.w $9555
                dc.w $9555
                dc.w $9555
                dc.w $9555
                dc.w $9555
                dc.w $9555
                dc.w $9555
                dc.w $9555
word_E0CC:      dc.w 0
                dc.w $AAAA
word_E0D0:      dc.w $5555
                dc.w $5555
                dc.w $5555
                dc.w $5555
                dc.w $5555
                dc.w $5555
                dc.w $5555
                dc.w $5555
word_E0E0:      dc.w 0
                dc.w $400
                dc.w $820
                dc.w $EEA
                dc.w $820
                dc.w $600
                dc.w $600
                dc.w $600
dword_E0F0:     dc.l 0
                dc.l $AAA0224
                dc.l $6680888
                dc.l $2220666
                dc.l $4460444
                dc.l $CCC0AAC
                dc.l $88A0EEE
                dc.l $CCE0000

; =============== S U B R O U T I N E =======================================

sub_E110:
                
                movem.l d0-a6,-(sp)
                lea     off_E128(pc), a0
                move.w  d0,d1
                lsl.l   #2,d1
                movea.l (a0,d1.l),a0
                jsr     (a0)
                movem.l (sp)+,d0-a6
                rts

    ; End of function sub_E110

off_E128:       dc.l sub_E154
                dc.l sub_E154
                dc.l sub_E30E
                dc.l sub_E30E
                dc.l sub_E4EC
                dc.l loc_E4F0
                dc.l sub_E538
                dc.l sub_E56A
                dc.l sub_E56A
                dc.l sub_E56A
                dc.l sub_E56A

; =============== S U B R O U T I N E =======================================

sub_E154:
                
                lea     (byte_FF2C00).l,a5
                movea.l a5,a1
                lea     (PALETTE_1_BASE).l,a0
                moveq   #$37,d7 
loc_E164:
                
                move.w  (a0)+,(a1)+
                dbf     d7,loc_E164
                movea.l a5,a0
                lea     $70(a0),a1
                move.w  #$187,d7
loc_E174:
                
                move.w  (a0)+,d0
                move.w  d0,d1
                move.w  d0,d2
                andi.w  #$E00,d0
                subi.w  #$200,d0
                bpl.s   loc_E186
                clr.w   d0
loc_E186:
                
                andi.w  #$E0,d1 
                subi.w  #$20,d1 
                bpl.s   loc_E192
                clr.w   d1
loc_E192:
                
                andi.w  #$E,d2
                subi.w  #2,d2
                bpl.s   loc_E19E
                clr.w   d2
loc_E19E:
                
                or.w    d1,d0
                or.w    d2,d0
                move.w  d0,(a1)+
                dbf     d7,loc_E174
                move.w  #0,d7
loc_E1AC:
                
                move.w  #$FFE8,d0
                move.w  #$50,d5 
loc_E1B4:
                
                move.w  #0,d6
loc_E1B8:
                
                movem.w d0/d5-d7,-(sp)
                bsr.w   sub_E1DE
                movem.w (sp)+,d0/d5-d7
                dbf     d6,loc_E1B8
                addq.w  #1,d0
                dbf     d5,loc_E1B4
                dbf     d7,loc_E1AC
                move.w  #$8F02,d0
                jsr     (SetVDPRegister).l
                rts

    ; End of function sub_E154


; =============== S U B R O U T I N E =======================================

sub_E1DE:
                
                lea     $380(a5),a0
                moveq   #7,d7
                move.w  d0,d1
loc_E1E6:
                
                move.w  d1,d2
                bpl.s   loc_E1EC
                clr.w   d2
loc_E1EC:
                
                muls.w  d2,d2
                lsr.l   #4,d2
                cmpi.l  #$B7,d2 
                bcs.s   loc_E1FC
                move.b  #$DF,d2
loc_E1FC:
                
                move.b  d2,(a0)+
                addi.w  #6,d1
                dbf     d7,loc_E1E6
                jsr     (WaitForVInt).l
loc_E20C:
                
                btst    #2,(VDP_Control+1).l
                beq.s   loc_E20C
loc_E216:
                
                btst    #2,(VDP_Control+1).l
                bne.s   loc_E216
                move.b  (HV_Counter).l,d2
                cmpi.b  #$FF,d2
                bne.s   loc_E20C
                lea     $380(a5),a4
                moveq   #7,d7
                moveq   #7,d0
loc_E234:
                
                movem.w d0/d7,-(sp)
                bsr.w   sub_E24E
                movem.w (sp)+,d0/d7
                bcs.w   return_E24C
                subi.b  #1,d0
                dbf     d7,loc_E234
return_E24C:
                
                rts

    ; End of function sub_E1DE


; =============== S U B R O U T I N E =======================================

sub_E24E:
                
                move.b  (a4)+,d1
                cmpi.b  #$17,d1
                bcc.s   loc_E25A
                tst.b   d0
                rts
loc_E25A:
                
                move.b  d0,d2
                andi.w  #7,d2
                mulu.w  #$70,d2 
                lea     (a5,d2.w),a0
                move.l  d1,-(sp)
                lea     (VDP_Data).l,a1
                lea     (VDP_Control).l,a2
                move.l  #$C0000000,(a2)
                movem.l (a0)+,d0-d7
                move.l  d0,(a1)
                move.l  d1,(a1)
                move.l  d2,(a1)
                move.l  d3,(a1)
                move.l  d4,(a1)
                move.l  d5,(a1)
                move.l  d6,(a1)
                move.l  d7,(a1)
                movem.l (a0)+,d0-d7
                move.l  d0,(a1)
                move.l  d1,(a1)
                move.l  d2,(a1)
                move.l  d3,(a1)
                move.l  d4,(a1)
                move.l  d5,(a1)
                move.l  d6,(a1)
                move.l  d7,(a1)
                movem.l (a0)+,d0-d7
                move.l  d0,(a1)
                move.l  d1,(a1)
                move.l  d2,(a1)
                move.l  d3,(a1)
                move.l  d4,(a1)
                move.l  d5,(a1)
                move.l  d6,(a1)
                move.l  d7,(a1)
                movem.l (a0)+,d0-d3
                move.l  d0,(a1)
                move.l  d1,(a1)
                move.l  d2,(a1)
                move.l  d3,(a1)
                move.l  (sp)+,d1
loc_E2C6:
                
                btst    #2,(VDP_Control+1).l
                beq.s   loc_E2C6
loc_E2D0:
                
                btst    #2,(VDP_Control+1).l
                bne.s   loc_E2D0
                move.b  (HV_Counter).l,d2
                cmpi.b  #$17,d2
                bcs.s   loc_E2C6
                cmpi.b  #$B7,d2
                bcs.s   loc_E2F2
                ori     #1,ccr
                rts
loc_E2F2:
                
                addq.b  #1,d2
                cmp.b   d1,d2
                bcs.s   loc_E2C6
                tst.b   d0
                rts

    ; End of function sub_E24E


; =============== S U B R O U T I N E =======================================

sub_E2FC:
                
                move.w  #$8124,(VDP_Control).l
                move.w  #$8124,(VDP_REG01_STATUS).l
                rts

    ; End of function sub_E2FC


; =============== S U B R O U T I N E =======================================

sub_E30E:
                
                link    a6,#-$8E
                move.w  d0,-$82(a6)
                move.w  (HORIZONTAL_SCROLL_DATA).l,-$84(a6)
                move.w  (VERTICAL_SCROLL_DATA).l,-$86(a6)
                move.w  #6,-$88(a6)
                move.w  #3,-$8A(a6)
                move.w  #8,-$8C(a6)
                move.w  #$1C,-$8E(a6)
                bsr.w   sub_E3F8
                move.w  (HORIZONTAL_SCROLL_DATA).l,d6
                jsr     (UpdateForegroundHScrollData).l
                jsr     (UpdateBackgroundHScrollData).l
                jsr     (WaitForDMAQueueProcessing).l
                moveq   #$B,d0
                moveq   #3,d1
                jsr     (ApplyLogicalOrOnVDPRegister).l
                cmpi.w  #2,-$82(a6)
                bne.s   loc_E372
                bsr.w   sub_E398
                bra.s   loc_E376
loc_E372:
                
                bsr.w   sub_E3C0
loc_E376:
                
                moveq   #$B,d0
                moveq   #$C,d1
                jsr     (ApplyLogicalAndOnVDPRegister).l
                move.w  -$84(a6),(HORIZONTAL_SCROLL_DATA).l
                move.w  -$86(a6),(VERTICAL_SCROLL_DATA).l
                bsr.w   sub_E40C
                unlk    a6
                rts

    ; End of function sub_E30E


; =============== S U B R O U T I N E =======================================

sub_E398:
                
                move.w  #$FF,d7
loc_E39C:
                
                move.l  d7,-(sp)
                bsr.w   sub_E420
                bsr.w   sub_E43A
                bsr.w   sub_E446
                bsr.w   sub_E48E
                jsr     (WaitForVInt).l
                move.l  (sp)+,d7
                subq.w  #1,d7
                cmpi.w  #$80,d7 
                bcc.s   loc_E39C
                rts

    ; End of function sub_E398


; =============== S U B R O U T I N E =======================================

sub_E3C0:
                
                lea     (PALETTE_1_CURRENT).l,a0
                moveq   #$37,d7 
loc_E3C8:
                
                clr.w   (a0)+
                dbf     d7,loc_E3C8
                jsr     (sub_972).l
                move.w  #$7F,d7 
loc_E3D8:
                
                move.l  d7,-(sp)
                bsr.w   sub_E420
                bsr.w   sub_E43A
                bsr.w   sub_E446
                bsr.w   sub_E4C0
                jsr     (WaitForVInt).l
                move.l  (sp)+,d7
                dbf     d7,loc_E3D8
                rts

    ; End of function sub_E3C0


; =============== S U B R O U T I N E =======================================

sub_E3F8:
                
                lea     (PALETTE_1_BASE).l,a0
                lea     -$80(a6),a1
                moveq   #$1F,d7
loc_E404:
                
                move.l  (a0)+,(a1)+
                dbf     d7,loc_E404
                rts

    ; End of function sub_E3F8


; =============== S U B R O U T I N E =======================================

sub_E40C:
                
                lea     (PALETTE_1_BASE).l,a1
                lea     -$80(a6),a0
                moveq   #$1F,d7
loc_E418:
                
                move.l  (a0)+,(a1)+
                dbf     d7,loc_E418
                rts

    ; End of function sub_E40C


; =============== S U B R O U T I N E =======================================

sub_E420:
                
                move.w  d7,d0
                tst.b   d0
                bpl.s   loc_E428
                neg.b   d0
loc_E428:
                
                ext.w   d0
                cmpi.w  #$80,d0 
                bcs.s   loc_E434
                move.w  #$7F,d0 
loc_E434:
                
                move.w  d0,-$8A(a6)
                rts

    ; End of function sub_E420


; =============== S U B R O U T I N E =======================================

sub_E43A:
                
                move.w  d7,d0
                tst.b   d0
                bpl.s   loc_E442
                neg.b   d0
loc_E442:
                
                ext.w   d0
                rts

    ; End of function sub_E43A


; =============== S U B R O U T I N E =======================================

sub_E446:
                
                move.w  -$84(a6),d2
                lea     (HORIZONTAL_SCROLL_DATA).l,a0
                move.w  d7,d1
                mulu.w  -$88(a6),d1
                move.w  #$FF,d6
loc_E45A:
                
                move.w  d1,d0
                jsr     sub_22EF0
                move.w  -$8A(a6),d3
                bne.s   loc_E46C
                clr.l   d0
                bra.s   loc_E46E
loc_E46C:
                
                muls.w  d3,d0
loc_E46E:
                
                lsr.l   #8,d0
                lsr.l   #2,d0
                add.w   d2,d0
                move.w  d0,(a0)+
                move.w  d0,(a0)+
                add.w   -$8C(a6),d1
                dbf     d6,loc_E45A
                jsr     (UpdateVDPHScrollData).l
                jsr     (j_EnableDMAQueueProcessing).l
                rts

    ; End of function sub_E446


; =============== S U B R O U T I N E =======================================

sub_E48E:
                
                cmpi.w  #$A0,d7 
                bcs.s   loc_E496
                rts
loc_E496:
                
                move.w  -$8E(a6),d0
                bne.s   loc_E49E
                rts
loc_E49E:
                
                subq.w  #1,d0
                move.w  d0,-$8E(a6)
                andi.w  #3,d0
                beq.s   loc_E4AC
                rts
loc_E4AC:
                
                moveq   #$37,d7 
                lea     (PALETTE_1_BASE).l,a0
                move.l  d7,-(sp)
                jsr     sub_F8C6
                move.l  (sp)+,d7
                rts

    ; End of function sub_E48E


; =============== S U B R O U T I N E =======================================

sub_E4C0:
                
                move.w  -$8E(a6),d0
                bne.s   loc_E4C8
                rts
loc_E4C8:
                
                subq.w  #1,d0
                move.w  d0,-$8E(a6)
                andi.w  #3,d0
                beq.s   loc_E4D6
                rts
loc_E4D6:
                
                lea     (PALETTE_1_BASE).l,a0
                lea     (PALETTE_1_CURRENT).l,a1
                moveq   #$37,d5 
                jsr     (sub_9CE).l
                rts

    ; End of function sub_E4C0


; =============== S U B R O U T I N E =======================================

sub_E4EC:
                
                clr.l   d2
                bra.s   loc_E4F2
loc_E4F0:
                
                moveq   #$FFFFFFFF,d2
loc_E4F2:
                
                jsr     (DuplicatePalettes).l
                lea     (PALETTE_1_CURRENT).l,a0
                movea.l a0,a1
                moveq   #$39,d7 
                moveq   #$E,d6
loc_E504:
                
                move.b  (a0)+,d0
                and.l   d6,d0
                move.b  (a0),d1
                and.w   d6,d1
                add.w   d1,d0
                move.b  (a0)+,d1
                lsr.b   #4,d1
                and.w   d6,d1
                add.w   d1,d0
                divu.w  #3,d0
                tst.b   d2
                beq.s   loc_E520
                not.w   d0
loc_E520:
                
                and.w   d6,d0
                move.b  d0,(a1)+
                move.b  d0,d1
                lsl.b   #4,d1
                or.b    d1,d0
                move.b  d0,(a1)+
                dbf     d7,loc_E504
                jsr     (j_EnableDMAQueueProcessing).l
                rts

    ; End of function sub_E4EC


; =============== S U B R O U T I N E =======================================

sub_E538:
                
                jsr     (DuplicatePalettes).l
                lea     (PALETTE_1_CURRENT).l,a0
                moveq   #$39,d7 
loc_E546:
                
                move.b  (a0),d0
                lsr.b   #3,d0
                move.b  d0,(a0)+
                move.b  (a0),d0
                move.b  d0,d1
                lsr.b   #3,d0
                andi.b  #$20,d0 
                andi.b  #$E,d1
                or.b    d1,d0
                move.b  d0,(a0)+
                dbf     d7,loc_E546
                jsr     (j_EnableDMAQueueProcessing).l
                rts

    ; End of function sub_E538


; =============== S U B R O U T I N E =======================================

sub_E56A:
                
                link    a6,#-$134
                move.w  d0,-$126(a6)
                cmpi.b  #9,d0
                bcc.s   loc_E586
                move.w  #$120,-$122(a6)
                move.w  #$F0,-$124(a6) 
                bra.s   loc_E596
loc_E586:
                
                move.w  #$130,-$122(a6)
                move.w  #$C8,-$124(a6) 
                subq.w  #2,-$126(a6)
loc_E596:
                
                lea     (PALETTE_1_BASE).l,a0
                lea     -$80(a6),a1
                bsr.w   sub_E780
                lea     -$120(a6),a0
                moveq   #$27,d7 
loc_E5AA:
                
                clr.w   (a0)+
                move.b  #$FF,(a0)+
                clr.b   (a0)+
                dbf     d7,loc_E5AA
                cmpi.w  #7,-$126(a6)
                bne.s   loc_E608
                clr.w   -$128(a6)
                clr.w   -$134(a6)
                move.w  #$1C,-$132(a6)
                clr.w   -$130(a6)
                bsr.w   sub_E866
                jsr     (sub_990).l
                moveq   #$3C,d0 
                jsr     (Sleep).l       
                bsr.w   sub_E78A
                bsr.w   sub_E78A
                bsr.w   sub_E78A
                moveq   #$3C,d0 
                jsr     (Sleep).l       
                lea     (PALETTE_1_CURRENT).l,a0
                lea     (PALETTE_1_BASE).l,a1
                bsr.w   sub_E780
                bra.s   loc_E66C
loc_E608:
                
                move.w  #$168,-$128(a6)
                move.w  ($12C).w,-$134(a6)
                clr.w   -$132(a6)
                move.w  #$1C,-$130(a6)
                bsr.w   sub_E852
                jsr     (sub_990).l
                moveq   #2,d7
                bsr.w   sub_E7AA
                lea     (PALETTE_1_CURRENT).l,a0
                lea     (PALETTE_1_BASE).l,a1
                moveq   #$F,d7
                bsr.w   sub_E782
                lea     (PALETTE_1_CURRENT).l,a0
                move.w  #$EEE,d0
                moveq   #$3F,d7 
loc_E64C:
                
                move.w  d0,(a0)+
                dbf     d7,loc_E64C
                jsr     (ApplyDMAForCRAM).l
                jsr     (WaitForDMAQueueProcessing).l
                moveq   #$3B,d7 
loc_E660:
                
                move.l  d7,-(sp)
                bsr.w   sub_E8F8
                move.l  (sp)+,d7
                dbf     d7,loc_E660
loc_E66C:
                
                lea     (byte_FF2C00).l,a0
                move.l  #$DDD0000,(a0)+
                move.l  #$DEEED000,(a0)+
                move.l  #$DDD0000,(a0)+
                moveq   #4,d7
loc_E686:
                
                clr.l   (a0)+
                dbf     d7,loc_E686
                lea     (byte_FF2C00).l,a0
                lea     ($2000).w,a1
                moveq   #$20,d0 
                moveq   #2,d1
                jsr     (ApplyVIntVramDMA).l
                jsr     (WaitForDMAQueueProcessing).l
                cmpi.w  #7,-$126(a6)
                bne.s   loc_E6B4
                move.w  #$258,d7
                bra.s   loc_E6B8
loc_E6B4:
                
                move.w  #$168,d7
loc_E6B8:
                
                movem.w d7,-(sp)
                jsr     (RefreshPlayerInput).l
                bsr.w   sub_E8F8
                bsr.w   sub_E8A8
                move.w  #$23A,d0
                bsr.w   sub_E87A
                jsr     (ApplyDMAForCRAM).l
                move.b  (P1_INPUT).l,d1 
                jsr     (EnableDMAQueueProcessing).l
                clr.w   d0
                jsr     (Sleep).l       
                cmpi.w  #7,-$126(a6)
                bne.s   loc_E708
                move.w  -$128(a6),d0
                addq.w  #1,d0
                cmpi.w  #$1A4,d0
                bcs.s   loc_E702
                addq.w  #1,d0
loc_E702:
                
                move.w  d0,-$128(a6)
                bra.s   loc_E712
loc_E708:
                
                subq.w  #1,-$128(a6)
                bpl.s   loc_E712
                clr.w   -$128(a6)
loc_E712:
                
                movem.w (sp)+,d7
                dbf     d7,loc_E6B8
                lea     -$80(a6),a0
                lea     (PALETTE_1_BASE).l,a1
                bsr.w   sub_E780
                cmpi.w  #7,-$126(a6)
                bne.s   loc_E742
                lea     (PALETTE_1_CURRENT).l,a0
                lea     (PALETTE_1_BASE).l,a1
                bsr.w   sub_E780
                bra.s   loc_E768
loc_E742:
                
                moveq   #$1E,d0
                jsr     (Sleep).l       
                jsr     (sub_972).l
                moveq   #3,d7
                bsr.w   sub_E79A
                jsr     (WaitForVInt).l
                bsr.w   sub_E78A
                bsr.w   sub_E78A
                bsr.w   sub_E78A
loc_E768:
                
                lea     -$80(a6),a0
                lea     (PALETTE_1_BASE).l,a1
                bsr.w   sub_E780
                clr.w   (PALETTE_1_CURRENT).l
                unlk    a6
                rts

    ; End of function sub_E56A


; =============== S U B R O U T I N E =======================================

sub_E780:
                
                moveq   #$3F,d7 

    ; End of function sub_E780


; =============== S U B R O U T I N E =======================================

sub_E782:
                
                move.w  (a0)+,(a1)+
                dbf     d7,sub_E782
                rts

    ; End of function sub_E782


; =============== S U B R O U T I N E =======================================

sub_E78A:
                
                clr.w   d7
                bsr.w   sub_E79A
                moveq   #$13,d0
                jsr     (Sleep).l       
                rts

    ; End of function sub_E78A


; =============== S U B R O U T I N E =======================================

sub_E79A:
                
                bsr.w   sub_E7AA
                jsr     (ApplyDMAForCRAM).l
                jmp     (EnableDMAQueueProcessing).l

    ; End of function sub_E79A


; =============== S U B R O U T I N E =======================================

sub_E7AA:
                
                move.l  d7,-(sp)
                lea     (PALETTE_1_BASE).l,a0
                lea     (PALETTE_1_CURRENT).l,a1
                move.w  (word_FF0F50).l,d3
                move.w  (word_FF0F52).l,d4
                move.w  (byte_FF0F54).l,d7
                moveq   #$F,d5
loc_E7CC:
                
                move.w  (a0)+,d0
                jsr     (sub_9FC).l
                move.w  d0,(a1)+
                dbf     d5,loc_E7CC
                add.w   d4,d3
                move.w  d3,(word_FF0F50).l
                move.l  (sp)+,d7
                dbf     d7,sub_E7AA
                rts

    ; End of function sub_E7AA


; START OF FUNCTION CHUNK FOR sub_E87A

loc_E7EA:
                
                move.w  -$128(a6),d0
                andi.w  #$1E,d0
                bne.s   loc_E7F8

; END OF FUNCTION CHUNK FOR sub_E87A

                sndCom  SFX_TECH_1

; START OF FUNCTION CHUNK FOR sub_E87A

loc_E7F8:
                
                lsr.w   #2,d0
                lsl.w   #2,d0
                lea     dword_E80E(pc), a0
                lea     (a0,d0.w),a0
                lea     ((dword_FF0EE8+2)).l,a1
                move.l  (a0),(a1)
                rts

; END OF FUNCTION CHUNK FOR sub_E87A

dword_E80E:     dc.l $8024C
                dc.l $A024E
                dc.l $C024E
                dc.l $E024E
                dc.l $C024E
                dc.l $A024C
                dc.l $8024C
                dc.l $60028
                dc.l $40006

; =============== S U B R O U T I N E =======================================

sub_E832:
                
                move.w  -$128(a6),d0
                cmpi.w  #$172,d0
                bcc.s   loc_E83E
                rts
loc_E83E:
                
                lsr.w   #2,d0
                andi.b  #3,d0
                cmpi.b  #1,d0
                bcs.w   loc_E4F0
                jmp     (DuplicatePalettes).l

    ; End of function sub_E832


; =============== S U B R O U T I N E =======================================

sub_E852:
                
                move.w  #$C00,-$12A(a6)
                move.w  #$FE00,-$12C(a6)
                move.w  #$E00,-$12E(a6)
                rts

    ; End of function sub_E852


; =============== S U B R O U T I N E =======================================

sub_E866:
                
                move.w  #$200,-$12A(a6)
                move.w  #$200,-$12C(a6)
                move.w  #$E00,-$12E(a6)
                rts

    ; End of function sub_E866


; =============== S U B R O U T I N E =======================================

sub_E87A:
                
                cmp.w   -$128(a6),d0
                bcs.s   loc_E886
                bsr.s   sub_E832
                bra.w   loc_E7EA
loc_E886:
                
                move.w  -$132(a6),d0
                bne.s   loc_E88E
                rts
loc_E88E:
                
                cmpi.w  #$1C,d0
                bne.s   loc_E898
                sndCom  SFX_SPELL_CAST
loc_E898:
                
                subq.w  #1,d0
                move.w  d0,-$132(a6)
                andi.b  #3,d0
                beq.w   loc_E8C0
                rts

    ; End of function sub_E87A


; =============== S U B R O U T I N E =======================================

sub_E8A8:
                
                move.w  -$130(a6),d0
                bne.s   loc_E8B0
                rts
loc_E8B0:
                
                subq.w  #1,d0
                move.w  d0,-$130(a6)
                andi.b  #3,d0
                beq.w   loc_E8C0
                rts
loc_E8C0:
                
                move.w  -$12A(a6),d3
                move.w  -$12C(a6),d4
                move.w  -$12E(a6),d7
                lea     (PALETTE_1_BASE).l,a0
                lea     (PALETTE_1_CURRENT).l,a1
                moveq   #$3F,d5 
loc_E8DA:
                
                move.w  (a0)+,d0
                jsr     (sub_A94).l
                move.w  d0,(a1)+
                dbf     d5,loc_E8DA
                add.w   d4,d3
                move.w  d3,-$12A(a6)
                move.w  d4,-$12C(a6)
                move.w  d7,-$12E(a6)
                rts

    ; End of function sub_E8A8


; =============== S U B R O U T I N E =======================================

sub_E8F8:
                
                lea     (byte_FF0640).l,a0
                moveq   #$27,d7 
loc_E900:
                
                move.w  #$FFFF,(a0)
                lea     8(a0),a0
                dbf     d7,loc_E900
                cmpi.w  #$3C,-$128(a6) 
                bcc.s   loc_E916
                rts
loc_E916:
                
                move.w  -$134(a6),d7
                lsr.w   #4,d7
                cmpi.w  #$27,d7 
                bcs.s   loc_E926
                move.w  #$27,d7 
loc_E926:
                
                cmpi.w  #7,-$126(a6)
                bne.s   loc_E934
                addq.w  #1,-$134(a6)
                bra.s   loc_E93E
loc_E934:
                
                subq.w  #1,-$134(a6)
                bpl.s   loc_E93E
                clr.w   -$134(a6)
loc_E93E:
                
                lea     (byte_FF0640).l,a1
                lea     -$120(a6),a0
loc_E948:
                
                move.l  d7,-(sp)
                bsr.w   sub_E9C8
                clr.w   d0
                move.b  (a0),d0
                move.w  d0,d1
                movem.w d0-d1,-(sp)
                clr.w   d5
                move.b  1(a0),d5
                move.w  d5,d0
                jsr     sub_22EF0
                move.w  d0,d4
                movem.w (sp)+,d0-d1
                mulu.w  d4,d0
                lsr.l   #8,d0
                movem.w d0-d1,-(sp)
                move.w  d5,d0
                jsr     sub_22EEC
                move.l  d0,d4
                movem.w (sp)+,d0-d1
                mulu.w  d4,d1
                lsr.l   #8,d1
                move.w  d0,d2
                move.w  d1,d3
                add.w   d1,d0
                sub.w   d3,d2
                lsr.w   #1,d0
                add.w   -$122(a6),d2
                move.b  3(a0),d1
                addq.b  #1,d1
                add.b   d1,2(a0)
                move.b  2(a0),d1
                add.w   -$124(a6),d0
                sub.b   d1,d0
                move.w  d0,(a1)
                move.w  #$8100,4(a1)
                move.w  d2,6(a1)
                lea     8(a1),a1
                lea     4(a0),a0
                move.l  (sp)+,d7
                dbf     d7,loc_E948
                addq.w  #1,-$134(a6)
                rts

    ; End of function sub_E8F8


; =============== S U B R O U T I N E =======================================

sub_E9C8:
                
                move.b  2(a0),d0
                cmpi.b  #$A0,d0
                bcs.w   loc_EA02
                moveq   #8,d6
                jsr     (GenerateRandomNumber).l
                addi.w  #$18,d7
                move.b  d7,(a0)
                move.w  #$100,d6
                jsr     (GenerateRandomNumber).l
                move.b  d7,1(a0)
                clr.b   2(a0)
                moveq   #2,d6
                jsr     (GenerateRandomNumber).l
                addq.b  #2,d7
                move.b  d7,3(a0)
loc_EA02:
                
                subq.b  #2,(a0)
                cmpi.b  #$10,(a0)
                bcc.s   return_EA0E
                move.b  #$10,(a0)
return_EA0E:
                
                rts

    ; End of function sub_E9C8

                dc.b $4E 
                dc.b $75 

; =============== S U B R O U T I N E =======================================

sub_EA12:
                
                movem.l d0/a0,-(sp)
                move.w  (word_FF1BF0).l,d1
                lea     unk_ECE0(pc), a0
                nop
                tst.w   d0
                beq.w   loc_EA34
                subq.w  #1,d0
loc_EA2A:
                
                lsr.w   #4,d1
                lea     5(a0),a0
                dbf     d0,loc_EA2A
loc_EA34:
                
                andi.w  #7,d1
                move.b  (a0,d1.w),d1
                btst    #7,d1
                beq.s   loc_EA44
                clr.b   d1
loc_EA44:
                
                movem.l (sp)+,d0/a0
                rts

    ; End of function sub_EA12


; =============== S U B R O U T I N E =======================================

sub_EA4A:
                
                lea     (byte_FF2C10).l,a0
                move.w  (word_FF1BF0).l,d0
                move.b  #7,d1
                move.b  #5,d3
                move.w  #3,d7
loc_EA62:
                
                move.b  d0,d2
                and.b   d1,d2
                cmp.b   d3,d2
                bcs.s   loc_EA6C
                clr.b   d2
loc_EA6C:
                
                ext.w   d2
                move.w  d2,(a0)+
                lsr.w   #4,d0
                dbf     d7,loc_EA62
                lea     (byte_FF2C00).l,a1
                lea     $18(a1),a0
                lea     $1A(a1),a1
                lea     (byte_FF1BF4).l,a2
                move.b  (a2),d0
                andi.w  #7,d0
                cmpi.w  #5,d0
                bcs.s   loc_EA98
                clr.w   d0
loc_EA98:
                
                move.w  d0,(a0)
                move.b  (a2),d0
                lsr.b   #3,d0
                andi.w  #3,d0
                move.w  d0,(a1)
                rts

    ; End of function sub_EA4A


; START OF FUNCTION CHUNK FOR sub_EAD4

loc_EAA6:
                
                lea     (byte_FF2C00).l,a1
                lea     $18(a1),a0
                lea     $1A(a1),a1
                lea     (byte_FF1BF4).l,a2
                move.w  (a1),d1
                lsl.b   #3,d1
                andi.b  #$18,d1
                move.w  (a0),d0
                andi.b  #7,d0
                or.b    d0,d1
                move.b  d1,(a2)
                bra.w   loc_D38A

; END OF FUNCTION CHUNK FOR sub_EAD4


; =============== S U B R O U T I N E =======================================

sub_EAD0:
                
                bsr.w   sub_EC34

    ; End of function sub_EAD0


; =============== S U B R O U T I N E =======================================

sub_EAD4:
                
                tst.w   (DebugModeAccessWord).w
                bne.s   loc_EAF2
                jsr     (RefreshPlayerInput).l
                btst    #INPUT_START,(P1_INPUT).l
                beq.s   loc_EAF2
loc_EAEA:
                
                jsr     sub_9B004
                bra.s   loc_EAEA
loc_EAF2:
                
                bsr.w   sub_ECF4
                bsr.w   sub_EC60
                bsr.w   sub_EDA6
                bsr.w   sub_D96A
loc_EB02:
                
                move.w  (word_FF0F9C).l,d0
                lea     (byte_FF2C00).l,a0
                move.w  d0,4(a0)
                move.w  d0,2(a0)
loc_EB16:
                
                moveq   #6,d0
                bsr.w   sub_D88A
                move.b  (P1_INPUT).l,d1 
                move.b  d1,d0
                andi.b  #$90,d0
                bne.w   loc_EAA6
                move.b  d1,d0
                andi.b  #$60,d0 
                bne.w   loc_EE12
                lea     (byte_FF2C00).l,a1
                lea     $18(a1),a0
                lea     $1A(a1),a1
                move.b  d1,d0
                btst    #0,d0
                bne.w   loc_EB72
                btst    #1,d0
                bne.w   loc_EB7C
                btst    #2,d0
                bne.w   loc_EB8A
                btst    #3,d0
                bne.w   loc_EB96
                bsr.w   sub_EDC4
                clr.b   d2
                bsr.w   sub_EDAA
                bra.s   loc_EB16
loc_EB72:
                
                move.w  (a1),d0
                beq.s   loc_EB7A
                bsr.w   byte_EBA4
loc_EB7A:
                
                bra.s   loc_EB02
loc_EB7C:
                
                cmpi.w  #3,(a1)
                beq.s   loc_EB86
                bsr.w   byte_EBBE
loc_EB86:
                
                bra.w   loc_EB02
loc_EB8A:
                
                tst.w   (a0)
                beq.s   loc_EB92
                bsr.w   byte_EBD6
loc_EB92:
                
                bra.w   loc_EB02
loc_EB96:
                
                cmpi.w  #4,(a0)
                beq.s   loc_EBA0
                bsr.w   byte_EBEE
loc_EBA0:
                
                bra.w   loc_EB02

    ; End of function sub_EAD4

byte_EBA4:      sndCom  SFX_MENU_SELECTION
                bsr.w   sub_EDC4
                subq.w  #1,(a1)
                moveq   #7,d7
loc_EBB0:       subq.w  #4,d1
                moveq   #$FFFFFFFF,d2
                bsr.w   sub_EDAA
                dbf     d7,loc_EBB0
                rts
byte_EBBE:      dc.b $4E, $40, 0, $42

; =============== S U B R O U T I N E =======================================

sub_EBC2:
                
                bsr.w   sub_EDC4
                addq.w  #1,(a1)
                moveq   #7,d7
loc_EBCA:
                
                addq.w  #4,d1
                bsr.w   sub_EDAA
                dbf     d7,loc_EBCA
                rts

    ; End of function sub_EBC2

byte_EBD6:      sndCom  SFX_MENU_SELECTION

; =============== S U B R O U T I N E =======================================

sub_EBDA:
                
                bsr.w   sub_EDC4
                subq.w  #1,(a0)
                moveq   #7,d7
loc_EBE2:
                
                subq.w  #5,d0
                bsr.w   sub_EDAA
                dbf     d7,loc_EBE2
                rts

    ; End of function sub_EBDA

byte_EBEE:      sndCom  SFX_MENU_SELECTION

; =============== S U B R O U T I N E =======================================

sub_EBF2:
                
                bsr.w   sub_EDC4
                addq.w  #1,(a0)
                moveq   #7,d7
loc_EBFA:
                
                addq.w  #5,d0
                bsr.w   sub_EDAA
                dbf     d7,loc_EBFA
                rts

    ; End of function sub_EBF2


; =============== S U B R O U T I N E =======================================

sub_EC06:
                
                lea     (byte_FF00A0).l,a0
                lea     (byte_FF00C0).l,a1
                moveq   #$F,d7
loc_EC14:
                
                move.b  (a0)+,d0
                subq.b  #2,d0
                bpl.s   loc_EC1C
                clr.b   d0
loc_EC1C:
                
                move.b  d0,(a1)+
                move.b  (a0)+,d0
                lsr.b   #3,d0
                andi.b  #$22,d0 
                move.b  d0,(a1)+
                dbf     d7,loc_EC14
                jsr     (DuplicatePalettes).l
                rts

    ; End of function sub_EC06


; =============== S U B R O U T I N E =======================================

sub_EC34:
                
                bsr.w   sub_EA4A
                bsr.s   sub_EC06
                lea     (byte_FF2C00).l,a1
                lea     $84(a1),a0
                move.w  #$A000,d0
                ori.w   #0,d0
                move.w  #$B63,d7
loc_EC50:
                
                move.w  d0,(a0)+
                dbf     d7,loc_EC50
                bsr.w   sub_ECF4
                bsr.w   sub_EC60
                rts

    ; End of function sub_EC34


; =============== S U B R O U T I N E =======================================

sub_EC60:
                
                moveq   #1,d1
                moveq   #3,d7
                lea     unk_ECE0(pc), a3
                lea     (byte_FF2C10).l,a4
loc_EC6E:
                
                movem.w d1/d7,-(sp)
                moveq   #$A,d0
                bsr.w   sub_D86C
                moveq   #4,d6
                move.w  (a4)+,d2
loc_EC7C:
                
                move.b  (a3)+,d0
                bsr.w   sub_ECA6
                dbf     d6,loc_EC7C
                movem.w (sp)+,d1/d7
                addq.w  #4,d1
                dbf     d7,loc_EC6E
                bsr.w   sub_D828
                bsr.w   sub_EDC4
                moveq   #1,d2
                bsr.w   sub_EDAA
                jsr     (j_EnableDMAQueueProcessing).l
                rts

    ; End of function sub_EC60


; =============== S U B R O U T I N E =======================================

sub_ECA6:
                
                tst.b   d0
                bmi.s   loc_ECB6
                move.l  d2,-(sp)
                jsr     j_GetOwnedItemQuantityEnriched
                move.l  (sp)+,d2
                bra.s   loc_ECBC
loc_ECB6:
                
                andi.b  #$7F,d0 
                moveq   #1,d1
loc_ECBC:
                
                tst.w   d1
                bmi.s   loc_ECDA
                moveq   #4,d7
                sub.w   d6,d7
                cmp.w   d2,d7
                bne.s   loc_ECCC
                clr.b   d1
                bra.s   loc_ECCE
loc_ECCC:
                
                moveq   #1,d1
loc_ECCE:
                
                movem.l a0,-(sp)
                bsr.w   sub_D642
                movem.l (sp)+,a0
loc_ECDA:
                
                lea     $A(a0),a0
                rts

    ; End of function sub_ECA6

unk_ECE0:       dc.b $BA 
                dc.b   1
                dc.b   3
                dc.b   2
                dc.b   4
                dc.b $BB 
                dc.b   9
                dc.b  $A
                dc.b  $B
                dc.b  $C
                dc.b $BC 
                dc.b   7
                dc.b   5
                dc.b   6
                dc.b   8
                dc.b $BD 
                dc.b  $F
                dc.b  $D
                dc.b  $E
                dc.b $10

; =============== S U B R O U T I N E =======================================

sub_ECF4:
                
                lea     (byte_FF2C00).l,a0
                lea     6(a0),a0
                clr.w   (a0)
                moveq   #2,d1
                lea     unk_ECE0(pc), a3
                lea     (byte_FF2C00).l,a4
                move.w  #3,d7
loc_ED10:
                
                move.w  #1,d0
                movem.w d1/d7,-(sp)
                bsr.w   sub_D86C
                move.w  #8,d7
                bsr.w   sub_ED50
                move.w  $10(a4),d0
                andi.l  #7,d0
                move.b  (a3,d0.w),d0
                andi.b  #$7F,d0 
                clr.b   d1
                bsr.w   sub_D5E4
                movem.w (sp)+,d1/d7
                addq.w  #4,d1
                lea     5(a3),a3
                lea     2(a4),a4
                dbf     d7,loc_ED10
                rts

    ; End of function sub_ECF4


; =============== S U B R O U T I N E =======================================

sub_ED50:
                
                subq.w  #1,d7
                movem.l a0,-(sp)
                move.w  #1,d5
loc_ED5A:
                
                move.w  d7,d6
                movea.l a0,a1
loc_ED5E:
                
                move.w  #$14,d0
                move.w  d0,(a0)+
                dbf     d6,loc_ED5E
                movea.l a1,a0
                lea     $48(a0),a0
                dbf     d5,loc_ED5A
                movem.l (sp)+,a0
                rts

    ; End of function sub_ED50


; =============== S U B R O U T I N E =======================================

sub_ED78:
                
                movem.w d2,-(sp)
                clr.l   d1
                move.b  #$64,d2 
                bsr.w   sub_ED96
                move.b  #$A,d2
                bsr.w   sub_ED96
                or.b    d0,d1
                movem.w (sp)+,d2
                rts

    ; End of function sub_ED78


; =============== S U B R O U T I N E =======================================

sub_ED96:
                
                sub.b   d2,d0
                bcs.w   loc_EDA0
                addq.b  #1,d1
                bra.s   sub_ED96
loc_EDA0:
                
                add.b   d2,d0
                lsl.l   #8,d1
                rts

    ; End of function sub_ED96


; =============== S U B R O U T I N E =======================================

sub_EDA6:
                
                bsr.w   sub_EDC4

    ; End of function sub_EDA6


; =============== S U B R O U T I N E =======================================

sub_EDAA:
                
                move.l  d2,-(sp)
                bsr.w   sub_D902
                moveq   #$FFFFFFFF,d2
                move.w  d2,8(a0)
                move.w  d2,$10(a0)
                jsr     (WaitForDMAQueueProcessing).l
                move.l  (sp)+,d2
                rts

    ; End of function sub_EDAA


; =============== S U B R O U T I N E =======================================

sub_EDC4:
                
                lea     (byte_FF2C18).l,a0
                lea     (byte_FF2C1A).l,a1
                move.w  (a0),d0
                move.w  (a1),d1
                mulu.w  #$28,d0 
                addi.w  #$E0,d0 
                mulu.w  #$20,d1 
                addi.w  #$A8,d1 
                moveq   #$FFFFFFFF,d2
                rts

    ; End of function sub_EDC4


; =============== S U B R O U T I N E =======================================

sub_EDE8:
                
                move.w  #$A000,d0
loc_EDEC:
                
                move.b  (a1)+,d0
                cmpi.b  #$7B,d0 
                bne.s   loc_EDFC
                move.w  d0,-$48(a0)
                bra.w   loc_EE0C
loc_EDFC:
                
                cmpi.b  #$7C,d0 
                bne.s   loc_EE0A
                move.w  d0,-$48(a0)
                bra.w   loc_EE0C
loc_EE0A:
                
                move.w  d0,(a0)+
loc_EE0C:
                
                dbf     d7,loc_EDEC
                rts

    ; End of function sub_EDE8


; START OF FUNCTION CHUNK FOR sub_EAD4

loc_EE12:
                
                lea     (byte_FF2C00).l,a1
                lea     $18(a1),a0
                lea     $1A(a1),a1
                lea     unk_ECE0(pc), a2
                move.w  (a0),d0
                move.w  (a1),d1
                mulu.w  #5,d1
                add.w   d1,d0
                move.b  (a2,d0.w),d0
                tst.b   d0
                bmi.w   loc_EE44
                jsr     j_GetOwnedItemQuantityEnriched
                tst.w   d1
                bmi.w   loc_EE80
loc_EE44:
                
                move.w  (a1),d1
                add.w   d1,d1
                lea     (byte_FF2C00).l,a2
                lea     $10(a2,d1.w),a2
                move.w  (a0),(a2)
                lea     (byte_FF2C10).l,a0
                clr.w   d0
                move.b  #7,d1
                move.w  #3,d7
loc_EE64:
                
                move.w  (a0)+,d2
                and.b   d1,d2
                or.b    d2,d0
                ror.w   #4,d0
                dbf     d7,loc_EE64
                lea     (word_FF1BF0).l,a0
                move.w  d0,(a0)

; END OF FUNCTION CHUNK FOR sub_EAD4

                sndCom  SFX_VALIDATION
                bra.w   loc_EAF2

; START OF FUNCTION CHUNK FOR sub_EAD4

loc_EE80:
                
                bra.w   loc_EAF2

; END OF FUNCTION CHUNK FOR sub_EAD4


; =============== S U B R O U T I N E =======================================

sub_EE84:
                
                link    a6,#-$1E
                sndCom  SOUND_COMMAND_STOP_MUSIC
                movea.l a6,a0
                moveq   #$1D,d7
loc_EE90:
                
                clr.b   -(a0)
                dbf     d7,loc_EE90
                ext.w   d0
                move.w  d0,-2(a6)
                move.b  #$B,(byte_FF112A).l
                clr.w   -$A(a6)
                clr.b   -8(a6)
                jsr     (DisableDisplayAndInterrupts).l
                clr.w   d6
                jsr     (j_UpdateForegroundVScrolData).l
                jsr     (j_UpdateBackgroundVScrollData).l
                bsr.w   sub_F636
                bsr.w   sub_F6DC
                bsr.w   sub_F958
                bsr.w   sub_F694
                clr.w   d6
                jsr     (j_UpdateForegroundHScrollData).l
                jsr     (j_UpdateForegroundVScrolData).l
                jsr     (j_UpdateBackgroundHScrollData).l
                jsr     (j_UpdateBackgroundVScrollData).l
                jsr     (EnableDisplayAndInterrupts).l
                jsr     (sub_24E).l
loc_EEF6:
                
                bsr.w   sub_F92A
                move.w  #$FFFF,-4(a6)
                move.w  #$FFFF,-6(a6)
                move.w  #$12,-$E(a6)
                bsr.w   sub_F694
                bsr.w   sub_EFF0
                tst.w   d0
                bmi.s   loc_EEF6
                move.w  d0,-4(a6)
                move.b  d0,(SAVE_SLOT).l
                move.w  -$C(a6),d0
                cmpi.b  #1,d0
                beq.w   loc_EF50
                bcc.w   loc_EFB8
                bsr.w   sub_FF12
                jsr     (sub_254).l
                move.w  -4(a6),d0
                move.b  d0,(SAVE_SLOT).l
                jsr     (LoadSave).l
                unlk    a6
                rts

    ; End of function sub_EE84


; START OF FUNCTION CHUNK FOR sub_EE84

loc_EF50:
                
                bsr.w   sub_F250
                bsr.w   sub_FAE6
                bsr.w   sub_F5F4
                move.w  #$4B,d1 
                bsr.w   sub_F618
                jsr     (WaitForVInt).l
                bsr.w   sub_F5DC
loc_EF6E:
                
                bsr.w   sub_EFF0
                tst.w   d0
                bmi.w   loc_EEF6
                cmp.w   -4(a6),d0
                bne.s   loc_EF84

; END OF FUNCTION CHUNK FOR sub_EE84

                sndCom  SFX_REFUSAL
                bra.s   loc_EF6E

; START OF FUNCTION CHUNK FOR sub_EE84

loc_EF84:
                
                move.w  d0,-6(a6)
                bsr.w   sub_F5F4
                move.w  #$49,d1 
                bsr.w   sub_F618
                bsr.w   sub_F992
                tst.w   d0
                bne.w   loc_EEF6
                move.w  -4(a6),d0
                move.w  -6(a6),d1
                jsr     (CopySave).l
                move.w  -6(a6),d0
                bsr.w   sub_F72E
                bra.w   loc_EEF6
loc_EFB8:
                
                bsr.w   sub_F5F4
                move.w  #$4A,d1 
                bsr.w   sub_F618
                bsr.w   sub_F992
                tst.w   d0
                bne.w   loc_EEF6
                move.w  -4(a6),d0
                move.b  d0,(SAVE_SLOT).l
                enableSram
                jsr     (EraseCurrentSave).l
                disableSram
                jsr     (WaitForVInt).l
                move.w  -4(a6),d0
                bsr.w   sub_F72E
                bra.w   loc_EEF6

; END OF FUNCTION CHUNK FOR sub_EE84


; =============== S U B R O U T I N E =======================================

sub_EFF0:
                
                clr.b   d0
                bsr.w   sub_FAF0
                bsr.w   sub_F218
                jsr     (j_WaitForVInt).l
                bsr.w   sub_F306
                clr.b   -$19(a6)
                move.l  #unk_F2D1,-$16(a6)
                move.b  (P1_INPUT).l,d0 
                move.b  d0,-8(a6)
loc_F01A:
                
                tst.b   -$19(a6)
                beq.s   loc_F024
                clr.b   -$19(a6)
loc_F024:
                
                bsr.w   sub_F2E2
                move.b  (P1_INPUT).l,d0 
                btst    #4,d0
                bne.s   sub_F0AE
                btst    #7,d0
                bne.s   byte_F0A4
                btst    #6,d0
                bne.s   byte_F0A4
                btst    #5,d0
                bne.s   byte_F0A4
                move.w  -2(a6),d7
                btst    #0,d0
                beq.s   loc_F056
                bsr.w   sub_F0B2
                bra.s   loc_F07C
loc_F056:
                
                btst    #1,d0
                beq.s   loc_F062
                bsr.w   sub_F0C0
                bra.s   loc_F07C
loc_F062:
                
                btst    #2,d0
                beq.s   loc_F06E
                bsr.w   sub_F0CE
                bra.s   loc_F07C
loc_F06E:
                
                btst    #3,d0
                beq.s   loc_F07A
                bsr.w   sub_F0DC
                bra.s   loc_F07C
loc_F07A:
                
                bra.s   loc_F08E
loc_F07C:
                
                cmp.w   -2(a6),d7
                beq.s   loc_F086
                sndCom  SFX_MENU_SELECTION
loc_F086:
                
                bsr.w   sub_F0F8
                bsr.w   sub_F218
loc_F08E:
                
                bsr.w   sub_F8B6
                bsr.w   sub_F13A        
                jsr     (WaitForVInt).l
                bsr.w   sub_F306
                bra.w   loc_F01A
byte_F0A4:
                
                sndCom  SFX_VALIDATION
                move.w  -2(a6),d0
                rts

    ; End of function sub_EFF0


; =============== S U B R O U T I N E =======================================

sub_F0AE:
                
                moveq   #$FFFFFFFF,d0
nullsub_2:
                
                rts

    ; End of function sub_F0AE


; =============== S U B R O U T I N E =======================================

sub_F0B2:
                
                move.w  -2(a6),d0
                andi.w  #1,d0
                move.w  d0,-2(a6)
                rts

    ; End of function sub_F0B2


; =============== S U B R O U T I N E =======================================

sub_F0C0:
                
                move.w  -2(a6),d0
                ori.w   #2,d0
                move.w  d0,-2(a6)
                rts

    ; End of function sub_F0C0


; =============== S U B R O U T I N E =======================================

sub_F0CE:
                
                move.w  -2(a6),d0
                andi.w  #2,d0
                move.w  d0,-2(a6)
                rts

    ; End of function sub_F0CE


; =============== S U B R O U T I N E =======================================

sub_F0DC:
                
                move.w  -2(a6),d0
                ori.w   #1,d0
                move.w  d0,-2(a6)
                rts

    ; End of function sub_F0DC


; =============== S U B R O U T I N E =======================================

nullsub_4:
                
                rts

    ; End of function nullsub_4


; =============== S U B R O U T I N E =======================================

sub_F0EC:
                
                bsr.w   sub_F282
                move.w  #0,d0
                bra.w   sub_F11C

    ; End of function sub_F0EC


; =============== S U B R O U T I N E =======================================

sub_F0F8:
                
                movea.l -$16(a6),a0
                cmpi.b  #$F,(a0)
                beq.s   loc_F116
                move.l  #unk_F2DB,-$16(a6)
                clr.b   -$17(a6)
                clr.b   -$18(a6)
                clr.b   -$19(a6)
loc_F116:
                
                bsr.w   sub_FAF0
                rts

    ; End of function sub_F0F8


; =============== S U B R O U T I N E =======================================

sub_F11C:
                
                moveq   #9,d6
loc_F11E:
                
                movea.l a0,a1
                moveq   #$11,d7
loc_F122:
                
                move.w  (a0),d1
                andi.w  #$9FFF,d1
                or.w    d0,d1
                move.w  d1,(a0)+
                dbf     d7,loc_F122
                lea     $50(a1),a0
                dbf     d6,loc_F11E
                rts

    ; End of function sub_F11C


; =============== S U B R O U T I N E =======================================

; loads Nigel sprite in game save screen ?

sub_F13A:
                
                bsr.w   sub_F18C
                bsr.w   sub_F2A6
                move.w  (a0)+,d4
                add.w   -$10(a6),d4
                move.w  (a0)+,d5
                add.w   -$12(a6),d5
                move.l  #0,d0
                move.w  #$4400,d1
                lea     (byte_FF0570).l,a3
                clr.l   d6
                bset    #3,d6
                move.w  #$FFFF,d7
                move.w  d7,(a3)
                move.w  d7,8(a3)
                move.w  d7,$10(a3)
                move.w  d7,$18(a3)
                movem.l d2-d3/a4-a6,-(sp)
                jsr     (sub_468A).l    
                jsr     (EnableDMAQueueProcessing).l
                movem.l (sp)+,d2-d3/a4-a6
                rts

    ; End of function sub_F13A


; =============== S U B R O U T I N E =======================================

sub_F18C:
                
                movea.l -$16(a6),a0
                clr.w   d2
                move.b  (a0)+,d2
                lsl.w   #2,d2
                clr.w   d0
                move.b  -$17(a6),d0
                clr.w   d3
                move.b  -$18(a6),d3
loc_F1A2:
                
                move.b  (a0,d3.w),d1
                bne.s   loc_F1CA
                addq.b  #1,-$19(a6)
                clr.b   -$17(a6)
                clr.b   -$18(a6)
                lea     unk_F2DB(pc), a0
                nop
                cmpa.l  -$16(a6),a0
                bne.s   loc_F1C8
                move.l  #unk_F2D1,-$16(a6)
loc_F1C8:
                
                bra.s   sub_F18C
loc_F1CA:
                
                cmp.b   d1,d0
                bcs.s   loc_F1D4
                addq.w  #1,d3
                clr.w   d0
                bra.s   loc_F1A2
loc_F1D4:
                
                move.b  d0,-$17(a6)
                addq.b  #1,-$17(a6)
                move.b  d3,-$18(a6)
                lsl.w   #2,d3
                rts

    ; End of function sub_F18C


; =============== S U B R O U T I N E =======================================

sub_F1E4:
                
                move.l  #unk_F2CE,-$16(a6)
                clr.b   -$19(a6)
                clr.b   -$17(a6)
                clr.b   -$18(a6)
                rts

    ; End of function sub_F1E4


; =============== S U B R O U T I N E =======================================

sub_F1FA:
                
                bsr.s   sub_F1E4
                bsr.w   sub_F13A        
                rts

    ; End of function sub_F1FA


; =============== S U B R O U T I N E =======================================

sub_F202:
                
                moveq   #3,d0
loc_F204:
                
                move.l  d0,-(sp)
                bsr.w   sub_F282
                clr.l   d0
                bsr.w   sub_F11C
                move.l  (sp)+,d0
                dbf     d0,loc_F204
                rts

    ; End of function sub_F202


; =============== S U B R O U T I N E =======================================

sub_F218:
                
                moveq   #3,d0
loc_F21A:
                
                move.l  d0,-(sp)
                cmp.w   -2(a6),d0
                beq.s   loc_F23C
                cmp.w   -4(a6),d0
                beq.s   loc_F23C
                cmp.w   -6(a6),d0
                beq.s   loc_F23C
                bsr.w   sub_F282
                move.w  #$6000,d0
                bsr.w   sub_F11C
                bra.s   loc_F248
loc_F23C:
                
                bsr.w   sub_F282
                move.w  #0,d0
                bsr.w   sub_F11C
loc_F248:
                
                move.l  (sp)+,d0
                dbf     d0,loc_F21A
                rts

    ; End of function sub_F218


; =============== S U B R O U T I N E =======================================

sub_F250:
                
                moveq   #3,d0
loc_F252:
                
                move.l  d0,-(sp)
                cmp.w   -4(a6),d0
                beq.s   loc_F26E
                cmp.w   -6(a6),d0
                beq.s   loc_F26E
                bsr.w   sub_F282
                move.w  #0,d0
                bsr.w   sub_F11C
                bra.s   loc_F27A
loc_F26E:
                
                bsr.w   sub_F282
                move.w  #$6000,d0
                bsr.w   sub_F11C
loc_F27A:
                
                move.l  (sp)+,d0
                dbf     d0,loc_F252
                rts

    ; End of function sub_F250


; =============== S U B R O U T I N E =======================================

sub_F282:
                
                lea     off_F296(pc), a0
                andi.b  #3,d0
                ext.w   d0
                ext.l   d0
                lsl.l   #2,d0
                movea.l (a0,d0.l),a0
                rts

    ; End of function sub_F282

off_F296:       dc.l byte_FF2C56
                dc.l byte_FF2C7A
                dc.l byte_FF2F76
                dc.l byte_FF2F9A

; =============== S U B R O U T I N E =======================================

sub_F2A6:
                
                move.w  -2(a6),d0
                lea     unk_F2BE(pc), a0
                andi.b  #3,d0
                ext.w   d0
                ext.l   d0
                lsl.l   #2,d0
                lea     (a0,d0.l),a0
                rts

    ; End of function sub_F2A6

unk_F2BE:       dc.b   0
                dc.b $A4 
                dc.b   0
                dc.b $CC 
                dc.b   1
                dc.b $34 
                dc.b   0
                dc.b $CC 
                dc.b   0
                dc.b $A4 
                dc.b   1
                dc.b $1C
                dc.b   1
                dc.b $34 
                dc.b   1
                dc.b $1C
unk_F2CE:       dc.b   1
                dc.b   1
                dc.b   0
unk_F2D1:       dc.b   3
                dc.b  $A
                dc.b  $A
                dc.b  $A
                dc.b  $A
                dc.b  $A
                dc.b  $A
                dc.b  $A
                dc.b  $A
                dc.b   0
unk_F2DB:       dc.b  $F
                dc.b   6
                dc.b   6
                dc.b   6
                dc.b   6
                dc.b   0
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_F2E2:
                
                jsr     (j_RefreshPlayerInput).l
                move.b  (P1_INPUT).l,d1 
                move.b  -8(a6),d0
                bne.s   loc_F2FA
                move.b  d1,-8(a6)
                bra.s   return_F304
loc_F2FA:
                
                move.b  d1,-8(a6)
                clr.b   (P1_INPUT).l    
return_F304:
                
                rts

    ; End of function sub_F2E2


; =============== S U B R O U T I N E =======================================

sub_F306:
                
                lea     ($C000).l,a1
                bra.s   loc_F314

    ; End of function sub_F306


; =============== S U B R O U T I N E =======================================

sub_F30E:
                
                lea     ($E000).l,a1
loc_F314:
                
                lea     (byte_FF2C00).l,a0
                move.b  (a0)+,d0
                move.b  #$28,d0 
                ext.w   d0
                move.b  (a0)+,d1
                move.b  #$1C,d1
                ext.w   d1
                subq.w  #1,d1
loc_F32C:
                
                movem.l d0-d1/a1,-(sp)
                moveq   #2,d1
                jsr     (j_ApplyImmediateVramDMA).l
                movem.l (sp)+,d0-d1/a1
                lea     $80(a1),a1
                dbf     d1,loc_F32C
                rts

    ; End of function sub_F30E


; =============== S U B R O U T I N E =======================================

sub_F346:
                
                moveq   #0,d7
                move.w  (HOUR_COUNTER).l,d7
                mulu.w  #$64,d7 
                add.w   (MINUTE_COUNTER).l,d7
                jsr     (j_WriteAsciiNumber).l
                lea     (unk_FF0F96).l,a0
                bsr.s   sub_F374
                bsr.s   sub_F374
                bsr.s   sub_F374
                bsr.s   sub_F38C
                addq.l  #2,a1
                bsr.s   sub_F38C
                bsr.s   sub_F38C
                rts

    ; End of function sub_F346


; =============== S U B R O U T I N E =======================================

sub_F374:
                
                move.b  (a0)+,d0
                ext.w   d0
                beq.s   loc_F37C
                add.w   d0,d0
loc_F37C:
                
                addi.w  #$80,d0 
                move.w  d0,(a1)+
                beq.s   loc_F386
                addq.w  #1,d0
loc_F386:
                
                move.w  d0,$4E(a1)
                rts

    ; End of function sub_F374


; =============== S U B R O U T I N E =======================================

sub_F38C:
                
                move.b  (a0)+,d0
                ext.w   d0
                bne.s   loc_F394
                addq.b  #1,d0
loc_F394:
                
                add.b   d0,d0
                ext.w   d0
                addi.w  #$80,d0 
                move.w  d0,(a1)+
                addq.w  #1,d0
                move.w  d0,$4E(a1)
                rts

    ; End of function sub_F38C


; =============== S U B R O U T I N E =======================================

sub_F3A6:
                
                move.w  (GOLD).l,d7
                cmpi.w  #10000,d7
                bcs.s   loc_F3B6
                move.w  #9999,d7
loc_F3B6:
                
                jsr     (j_WriteAsciiNumber).l
                lea     (unk_FF0F98).l,a0
                bsr.s   sub_F374
                bsr.s   sub_F374
                bsr.s   sub_F374
                bsr.s   sub_F38C
                rts

    ; End of function sub_F3A6


; =============== S U B R O U T I N E =======================================

sub_F3CC:
                
                clr.w   d7
                move.b  d0,d7
                jsr     (j_WriteAsciiNumber).l
                lea     (unk_FF0F9B).l,a0
                bsr.s   sub_F38C
                rts

    ; End of function sub_F3CC


; =============== S U B R O U T I N E =======================================

sub_F3E0:
                
                bsr.s   sub_F416
                move.l  d3,-(sp)
                move.b  d2,d7
                ext.w   d7
                jsr     (j_WriteAsciiNumber).l
                lea     (unk_FF0F9A).l,a0
                bsr.w   sub_F374
                bsr.s   sub_F38C
                addq.l  #2,a1
                move.l  (sp)+,d7
                ext.w   d7
                jsr     (j_WriteAsciiNumber).l
                lea     (unk_FF0F9A).l,a0
                bsr.w   sub_F374
                bsr.w   sub_F38C
                rts

    ; End of function sub_F3E0


; =============== S U B R O U T I N E =======================================

sub_F416:
                
                clr.l   d2
                move.w  (CURRENT_HP).l,d2
                beq.s   loc_F424
                addi.w  #$100,d2
loc_F424:
                
                lsr.w   #8,d2
                clr.l   d3
                move.w  (MAX_HP).l,d3
                beq.s   loc_F434
                addi.w  #$100,d3
loc_F434:
                
                lsr.w   #8,d3
                cmpi.w  #$64,d2 
                bcs.s   loc_F43E
                moveq   #$63,d2 
loc_F43E:
                
                cmpi.w  #$64,d3 
                bcs.s   return_F446
                moveq   #$63,d3 
return_F446:
                
                rts

    ; End of function sub_F416


; =============== S U B R O U T I N E =======================================

sub_F448:
                
                move.w  #$98,d0 
                move.b  #$33,d1 
                cmp.b   d1,d2
                bcc.s   loc_F45C
                move.w  #$96,d0 
                cmp.b   d1,d3
                bcs.s   return_F476
loc_F45C:
                
                move.w  d0,d1
                move.w  d0,(a1)
                ori.w   #$800,d0
                move.w  d0,2(a1)
                addq.w  #1,d1
                move.w  d1,$50(a1)
                ori.w   #$800,d1
                move.w  d1,$52(a1)
return_F476:
                
                rts

    ; End of function sub_F448


; =============== S U B R O U T I N E =======================================

sub_F478:
                
                cmpi.b  #$33,d2 
                bcs.s   loc_F482
                subi.b  #$32,d2 
loc_F482:
                
                cmpi.b  #$B,d2
                bcc.w   loc_F4D4
                cmpi.b  #$B,d3
                bcs.w   return_F53A
                move.w  #$A4,d0 
                bsr.w   sub_F532
                move.w  #$9A,d0 
                cmpi.b  #$15,d3
                bcs.s   loc_F4D0
                move.w  #$9E,d0 
loc_F4A8:
                
                bsr.w   sub_F532
                move.w  #$9A,d0 
                cmpi.b  #$1F,d3
                bcs.s   loc_F4D0
                move.w  #$9E,d0 
loc_F4BA:
                
                bsr.s   sub_F532
                move.w  #$9A,d0 
                cmpi.b  #$29,d3 
                bcs.s   loc_F4D0
                move.w  #$9E,d0 
loc_F4CA:
                
                bsr.s   sub_F532
                move.w  #$9A,d0 
loc_F4D0:
                
                bsr.s   sub_F532
                rts
loc_F4D4:
                
                move.w  #$A6,d0 
                bsr.s   sub_F532
                cmpi.b  #$15,d2
                bcc.s   loc_F4F0
                move.w  #$9C,d0 
                cmpi.b  #$15,d3
                bcs.s   sub_F532
                move.w  #$A2,d0 
                bra.s   loc_F4A8
loc_F4F0:
                
                move.w  #$A0,d0 
                bsr.s   sub_F532
                cmpi.b  #$1F,d2
                bcc.s   loc_F50C
                move.w  #$9C,d0 
                cmpi.b  #$1F,d3
                bcs.s   sub_F532
                move.w  #$A2,d0 
                bra.s   loc_F4BA
loc_F50C:
                
                move.w  #$A0,d0 
                bsr.s   sub_F532
                cmpi.b  #$29,d2 
                bcc.s   loc_F528
                move.w  #$9C,d0 
                cmpi.b  #$29,d3 
                bcs.s   sub_F532
                move.w  #$A2,d0 
                bra.s   loc_F4CA
loc_F528:
                
                move.w  #$A0,d0 
                bsr.s   sub_F532
                move.w  #$9C,d0 

    ; End of function sub_F478


; =============== S U B R O U T I N E =======================================

sub_F532:
                
                move.w  d0,-(a1)
                addq.w  #1,d0
                move.w  d0,$50(a1)
return_F53A:
                
                rts

    ; End of function sub_F532


; =============== S U B R O U T I N E =======================================

sub_F53C:
                
                addi.w  #$A,d2
                divu.w  #$A,d2
                swap    d2
                tst.w   d2
                bne.s   loc_F54C
                moveq   #$A,d2
loc_F54C:
                
                move.w  #$A8,d0 
                move.w  #$A9,d1 
                moveq   #1,d6
loc_F556:
                
                moveq   #4,d7
loc_F558:
                
                tst.b   d3
                beq.s   return_F576
                subq.b  #1,d3
                move.w  d0,(a1)
                tst.b   d2
                beq.s   loc_F568
                subq.b  #1,d2
                move.w  d1,(a1)
loc_F568:
                
                addq.l  #2,a1
                dbf     d7,loc_F558
                lea     $46(a1),a1
                dbf     d6,loc_F556
return_F576:
                
                rts

    ; End of function sub_F53C


; =============== S U B R O U T I N E =======================================

sub_F578:
                
                move.w  #$D,d7
                bsr.w   sub_F5CA
                bsr.w   sub_F5F4
                move.w  #$70,(word_FF1194).l 
                move.l  d0,-(sp)
                jsr     sub_22F04
                bsr.w   sub_F61E
                move.l  (sp)+,d0
                andi.w  #$3FF,d0
                lsl.w   #5,d0
                movea.w d0,a1
                move.w  (word_FF1194).l,d1
                subi.w  #$70,d1 
                lsr.w   #3,d1
                addq.w  #1,d1
                lsl.w   #6,d1
                lea     (byte_FF3900).l,a0
                lea     (a0,d1.w),a0
                move.w  #$1C0,d0
                moveq   #2,d1
                jsr     (j_ApplyImmediateVramDMA).l
                rts

    ; End of function sub_F578


; =============== S U B R O U T I N E =======================================

sub_F5CA:
                
                move.w  d0,d1
loc_F5CC:
                
                move.w  d1,(a1)+
                addq.w  #1,d1
                move.w  d1,$4E(a1)
                addq.w  #1,d1
                dbf     d7,loc_F5CC
                rts

    ; End of function sub_F5CA


; =============== S U B R O U T I N E =======================================

sub_F5DC:
                
                lea     (byte_FF3900).l,a0
                lea     ($50C0).w,a1
                move.w  #$480,d0
                moveq   #2,d1
                jsr     (j_ApplyImmediateVramDMA).l
                rts

    ; End of function sub_F5DC


; =============== S U B R O U T I N E =======================================

sub_F5F4:
                
                clr.w   (word_FF1194).l
                clr.b   (byte_FF1129).l
                lea     (byte_FF3900).l,a1
                move.l  #$AAAAAAAA,d1
                move.w  #$27F,d7
loc_F610:
                
                move.l  d1,(a1)+
                dbf     d7,loc_F610
                rts

    ; End of function sub_F5F4


; =============== S U B R O U T I N E =======================================

sub_F618:
                
                jsr     sub_22EC4

    ; End of function sub_F618


; =============== S U B R O U T I N E =======================================

sub_F61E:
                
                clr.w   d0
                move.b  (a2)+,d0
                movem.l d7/a2,-(sp)
                jsr     sub_22EFC
                movem.l (sp)+,d7/a2
                dbf     d7,sub_F61E
                rts

    ; End of function sub_F61E


; =============== S U B R O U T I N E =======================================

sub_F636:
                
                move.w  #0,d0
                move.w  #0,d1
                clr.w   d2
                jsr     (j_ApplyVramDMAFill).l
                lea     unk_FB52(pc), a0
                lea     (byte_FF2C00).l,a1
                lea     ($1000).w,a2
                jsr     (sub_2F0).l     
                lea     SaveScreenTileset1(pc), a0
                lea     (byte_FF2C00).l,a1
                lea     ($2000).w,a2
                jsr     (sub_2F0).l     
                lea     SaveScreenTileset2(pc), a0
                lea     (byte_FF2C00).l,a1
                jsr     sub_38608
                lea     (byte_FF2C56).l,a0
                lea     (byte_FF3562).l,a1
                moveq   #$11,d6
                moveq   #9,d7
                bsr.w   sub_F81A
                rts

    ; End of function sub_F636


; =============== S U B R O U T I N E =======================================

sub_F694:
                
                lea     byte_F6BC(pc), a0
                lea     (PALETTE_1_BASE).l,a1
                bsr.s   sub_F6B2
                lea     (PALETTE_1_BASE).l,a0
                lea     $20(a0),a1
                bsr.w   sub_F6B2
                lea     $40(a0),a1

    ; End of function sub_F694


; =============== S U B R O U T I N E =======================================

sub_F6B2:
                
                moveq   #$F,d7
loc_F6B4:
                
                move.w  (a0)+,(a1)+
                dbf     d7,loc_F6B4
                rts

    ; End of function sub_F6B2

byte_F6BC:      dc.b 0
                dc.b   0
                dc.b  $C
                dc.b $CC 
                dc.b   6
                dc.b $AC 
                dc.b   6
                dc.b $EE 
                dc.b   2
                dc.b $6A 
                dc.b   8
                dc.b $66 
                dc.b   6
                dc.b $20
                dc.b  $C
                dc.b $42 
                dc.b   0
                dc.b   0
                dc.b  $C
                dc.b $64 
                dc.b   8
                dc.b $24 
                dc.b  $E
                dc.b $EE 
                dc.b   0
                dc.b  $A
                dc.b  $A
                dc.b $6E 
                dc.b   6
                dc.b $66 
                dc.b   0
                dc.b   0

; =============== S U B R O U T I N E =======================================

sub_F6DC:
                
                bsr.w   sub_F5F4
                lea     ($42C0).w,a1
                moveq   #3,d7
loc_F6E6:
                
                movem.l d7/a1,-(sp)
                lea     (byte_FF3900).l,a0
                move.w  #$1C0,d0
                moveq   #2,d1
                jsr     (j_ApplyImmediateVramDMA).l
                movem.l (sp)+,d7/a1
                lea     $380(a1),a1
                dbf     d7,loc_F6E6
                move.w  #$286,d0
                lea     (byte_FF3338).l,a1
                move.w  #$21,d7 
                bsr.w   sub_F5CA
                moveq   #3,d0
loc_F71C:
                
                move.l  d0,-(sp)
                bsr.w   sub_F736
                move.l  (sp)+,d0
                dbf     d0,loc_F71C
                bsr.w   sub_F306
                rts

    ; End of function sub_F6DC


; =============== S U B R O U T I N E =======================================

sub_F72E:
                
                bsr.s   sub_F736
                bsr.w   sub_F306
                rts

    ; End of function sub_F72E


; =============== S U B R O U T I N E =======================================

sub_F736:
                
                move.b  (SAVE_SLOT).l,d1
                move.l  d1,-(sp)
                move.b  d0,(SAVE_SLOT).l
                cmpi.b  #1,d0
                bcc.s   loc_F756
                lea     (byte_FF2C56).l,a5
                move.w  #$216,d0
                bra.s   loc_F780
loc_F756:
                
                bne.s   loc_F764
                lea     (byte_FF2C7A).l,a5
                move.w  #$232,d0
                bra.s   loc_F780
loc_F764:
                
                cmpi.b  #3,d0
                bcc.s   loc_F776
                lea     (byte_FF2F76).l,a5
                move.w  #$24E,d0
                bra.s   loc_F780
loc_F776:
                
                lea     (byte_FF2F9A).l,a5
                move.w  #$26A,d0
loc_F780:
                
                bsr.w   sub_F78E
                move.l  (sp)+,d1
                move.b  d1,(SAVE_SLOT).l
                rts

    ; End of function sub_F736


; =============== S U B R O U T I N E =======================================

sub_F78E:
                
                move.l  d0,-(sp)
                jsr     (LoadSave).l
                lea     (byte_FF3562).l,a0
                lea     (a5),a1
                moveq   #$11,d6
                moveq   #9,d7
                bsr.w   sub_F81A
                move.l  (sp)+,d0
                lea     $236(a5),a1
                bsr.w   sub_F578
                lea     $56(a5),a1
                move.b  (SAVE_SLOT).l,d0
                addq.b  #1,d0
                bsr.w   sub_F3CC
                move.w  (CURRENT_HP).l,d2
                beq.s   loc_F7CC
                addi.w  #$100,d2
loc_F7CC:
                
                lsr.w   #8,d2
                beq.w   loc_F808
                lea     $108(a5),a1
                bsr.w   sub_F3A6
                lea     $1A4(a5),a1
                bsr.w   sub_F346
                lea     $FC(a5),a1
                bsr.w   sub_F3E0
                bsr.w   sub_F416
                lea     $5A(a5),a1
                bsr.w   sub_F448
                lea     $68(a5),a1
                bsr.w   sub_F478
                lea     $68(a5),a1
                bsr.w   sub_F53C
                rts
loc_F808:
                
                lea     $F2(a5),a0
                lea     $F4(a5),a1
                moveq   #$E,d6
                moveq   #3,d7
                bsr.w   sub_F81A
                rts

    ; End of function sub_F78E


; =============== S U B R O U T I N E =======================================

sub_F81A:
                
                movem.l d6-a1,-(sp)
loc_F81E:
                
                movea.l a0,a2
                movea.l a1,a3
                move.w  d6,d5
loc_F824:
                
                move.w  (a0)+,(a1)+
                dbf     d5,loc_F824
                lea     $50(a2),a0
                lea     $50(a3),a1
                dbf     d7,loc_F81E
                movem.l (sp)+,d6-a1
                rts

    ; End of function sub_F81A


; =============== S U B R O U T I N E =======================================

sub_F83C:
                
                move.w  -$A(a6),d0
                addq.w  #1,-$A(a6)
                andi.b  #$1F,d0
                beq.s   loc_F852
                cmpi.b  #$10,d0
                beq.s   loc_F87C
                rts

    ; End of function sub_F83C


; START OF FUNCTION CHUNK FOR sub_F83C

loc_F852:
                
                lea     (PALETTE_1_BASE).l,a0
                lea     $20(a0),a1
                moveq   #$F,d7
                move.w  #$EEE,d1
loc_F862:
                
                move.w  (a0)+,d0
                move.w  d1,d2
                sub.w   d0,d2
                move.w  d2,(a1)+
                dbf     d7,loc_F862
                jsr     (DuplicatePalettes).l
                jsr     (EnableDMAQueueProcessing).l
                rts
loc_F87C:
                
                lea     (PALETTE_1_BASE).l,a0
                lea     $20(a0),a1
                moveq   #$F,d7
loc_F888:
                
                move.w  (a0)+,(a1)+
                dbf     d7,loc_F888
                jsr     (DuplicatePalettes).l
                jsr     (EnableDMAQueueProcessing).l
                rts

; END OF FUNCTION CHUNK FOR sub_F83C


; =============== S U B R O U T I N E =======================================

sub_F89C:
                
                bsr.w   sub_F90A
                bcs.s   loc_F8A4
                rts
loc_F8A4:
                
                lea     (byte_FF00A0).l,a0
                bsr.w   sub_F8C4
                lea     (byte_FF00E0).l,a0
                bra.s   sub_F8C4

    ; End of function sub_F89C


; =============== S U B R O U T I N E =======================================

sub_F8B6:
                
                bsr.w   sub_F90A
                bcs.s   loc_F8BE
                rts
loc_F8BE:
                
                lea     (byte_FF00E0).l,a0

    ; End of function sub_F8B6


; =============== S U B R O U T I N E =======================================

sub_F8C4:
                
                moveq   #$F,d7

    ; End of function sub_F8C4


; =============== S U B R O U T I N E =======================================

sub_F8C6:
                
                move.w  (a0),d0
                move.w  d0,d1
                andi.w  #$E00,d1
                subi.w  #$200,d1
                bpl.s   loc_F8D6
                clr.w   d1
loc_F8D6:
                
                move.w  d0,d2
                andi.w  #$E0,d2 
                subi.w  #$20,d2 
                bpl.s   loc_F8E4
                clr.w   d2
loc_F8E4:
                
                move.w  d0,d3
                andi.w  #$E,d3
                subi.w  #2,d3
                bpl.s   loc_F8F2
                clr.w   d3
loc_F8F2:
                
                or.w    d2,d1
                or.w    d3,d1
                move.w  d1,(a0)+
                dbf     d7,sub_F8C6
                jsr     (DuplicatePalettes).l
                jsr     (EnableDMAQueueProcessing).l
                rts

    ; End of function sub_F8C6


; =============== S U B R O U T I N E =======================================

sub_F90A:
                
                move.w  -$E(a6),d0
                bne.s   loc_F912
                rts
loc_F912:
                
                subq.w  #1,d0
                move.w  d0,-$E(a6)
                divu.w  #6,d0
                swap    d0
                tst.w   d0
                beq.s   loc_F924
                rts
loc_F924:
                
                ori     #1,ccr
                rts

    ; End of function sub_F90A


; =============== S U B R O U T I N E =======================================

sub_F92A:
                
                jsr     (ClearSpriteTable).l
                bsr.w   sub_F694
                bsr.w   sub_F202
                bsr.s   sub_F958
loc_F93A:
                
                move.w  #$B0,d0 
                move.w  #$134,d1
                moveq   #$50,d2 
                moveq   #3,d3
                clr.w   -$C(a6)
                bsr.w   sub_F9D6
                tst.w   d0
                bmi.s   loc_F93A
                move.w  d0,-$C(a6)
                rts

    ; End of function sub_F92A


; =============== S U B R O U T I N E =======================================

sub_F958:
                
                bsr.w   sub_F5F4
                move.w  #$28,(word_FF1194).l 
                move.w  #$43,d1 
                bsr.w   sub_F618
                move.w  #$78,(word_FF1194).l 
                move.w  #$44,d1 
                bsr.w   sub_F618
                move.w  #$C8,(word_FF1194).l 
                move.w  #$45,d1 
                bsr.w   sub_F618
                bsr.w   sub_F5DC
                rts

    ; End of function sub_F958


; =============== S U B R O U T I N E =======================================

sub_F992:
                
                bsr.w   sub_F1FA
                move.w  #$90,(word_FF1194).l 
                move.w  #$46,d1 
                bsr.w   sub_F618
                move.w  #$D0,(word_FF1194).l 
                move.w  #$47,d1 
                bsr.w   sub_F618
                jsr     (WaitForVInt).l
                bsr.w   sub_F5DC
                bsr.w   sub_F218
                move.w  #$118,d0
                move.w  #$134,d1
                moveq   #$40,d2 
                moveq   #2,d3
                bsr.w   sub_F9D6
                rts

    ; End of function sub_F992


; =============== S U B R O U T I N E =======================================

sub_F9D6:
                
                link    a4,#-$A
                move.w  d1,-6(a4)
                move.w  d1,(SPRITE_TABLE).l
                move.b  #5,(byte_FF0552).l
                move.w  #$A0AA,(word_FF0554).l
                move.w  d0,-4(a4)
                move.w  d0,(word_FF0556).l
                move.w  d2,-8(a4)
                clr.w   -2(a4)
                move.w  d3,-$A(a4)
                jsr     (DuplicatePalettes).l
                jsr     (WaitForVInt).l
                bsr.w   sub_F306
                bsr.s   sub_FA24        
                move.w  -2(a4),d0
                unlk    a4
                rts

    ; End of function sub_F9D6


; =============== S U B R O U T I N E =======================================

; Game save menu behaviour

sub_FA24:
                
                bsr.w   sub_F2E2
                move.b  (P1_INPUT).l,d1 
                cmpi.b  #$10,d1
                bcs.s   loc_FA58
                clr.w   -$A(a6)
                jsr     sub_FABC(pc)
                nop
                move.b  (P1_INPUT).l,d1 
                andi.b  #$10,d1
                beq.s   byte_FA52
                move.w  #$FFFF,-2(a4)
                rts
byte_FA52:
                
                sndCom  SFX_VALIDATION
                rts
loc_FA58:
                
                bsr.s   loc_FA6C
                move.w  d0,-2(a4)
                bsr.s   sub_FABC
                bsr.w   sub_F8B6
                jsr     (WaitForVInt).l
                bra.s   sub_FA24        
loc_FA6C:
                
                move.w  -2(a4),d0
                move.w  -8(a4),d1
                move.w  -$A(a4),d2
                move.b  (P1_INPUT).l,d3 
                btst    #2,d3
                bne.s   loc_FA8C
                btst    #3,d3
                bne.s   loc_FAA2
                rts
loc_FA8C:
                
                subq.w  #1,d0
                bpl.s   loc_FA94
                clr.w   d0
                bra.s   return_FAA0
loc_FA94:
                
                sub.w   d1,-4(a4)
                clr.w   -$A(a6)
                sndCom  SFX_MENU_SELECTION
return_FAA0:
                
                rts
loc_FAA2:
                
                addq.w  #1,d0
                cmp.w   d2,d0
                bcs.s   loc_FAAE
                move.w  d2,d0
                subq.w  #1,d0
                bra.s   return_FABA
loc_FAAE:
                
                add.w   d1,-4(a4)
                clr.w   -$A(a6)
                sndCom  SFX_MENU_SELECTION

    ; End of function sub_FA24


; START OF FUNCTION CHUNK FOR sub_FA24

return_FABA:
                
                rts

; END OF FUNCTION CHUNK FOR sub_FA24


; =============== S U B R O U T I N E =======================================

sub_FABC:
                
                addq.w  #1,-$A(a6)
                move.w  -$A(a6),d0
                andi.b  #$10,d0
                beq.s   loc_FAD4
                move.w  #1,(word_FF0556).l
                rts
loc_FAD4:
                
                move.w  -4(a4),(word_FF0556).l
                move.w  -6(a4),(SPRITE_TABLE).l
                rts

    ; End of function sub_FABC


; =============== S U B R O U T I N E =======================================

sub_FAE6:
                
                move.w  #$FFFF,(SPRITE_TABLE).l
                rts

    ; End of function sub_FAE6


; =============== S U B R O U T I N E =======================================

sub_FAF0:
                
                move.w  -2(a6),d0
                move.b  d0,(SAVE_SLOT).l
                jsr     (LoadSave).l
                lea     (byte_FF00C0).l,a1
                bsr.w   sub_FB1E
                jsr     (sub_78B6).l
                jsr     (DuplicatePalettes).l
                jsr     (EnableDMAQueueProcessing).l
                rts

    ; End of function sub_FAF0


; =============== S U B R O U T I N E =======================================

sub_FB1E:
                
                lea     plt_FB32(pc), a0
                lea     (byte_FF00C0).l,a1
                moveq   #$F,d7
loc_FB2A:
                
                move.w  (a0)+,(a1)+
                dbf     d7,loc_FB2A
                rts

    ; End of function sub_FB1E

plt_FB32:       dc.w 0
                dc.w $CCC
                dc.w $824
                dc.w $4AE
                dc.w $48
                dc.w $24
                dc.w $888
                dc.w $444
                dc.w $ACE
                dc.w $8A0
                dc.w $240
                dc.w $E8E
                dc.w $A0A
                dc.w $A6E
                dc.w $A
                dc.w $200
unk_FB52:       dc.b $87 
                dc.b $AA 
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   1
                dc.b   4
                dc.b   1
                dc.b $BB 
                dc.b $BA 
                dc.b $AA 
                dc.b $9E 
                dc.b $AB 
                dc.b  $F
                dc.b   2
                dc.b  $F
                dc.b   6
                dc.b $BA 
                dc.b $BA 
                dc.b $AA 
                dc.b $BA 
                dc.b  $C
                dc.b   4
                dc.b $1E
                dc.b  $F
                dc.b  $F
                dc.b   9
                dc.b   4
                dc.b  $B
                dc.b $15
                dc.b $BB 
                dc.b $AA 
                dc.b $AA 
                dc.b $BA 
                dc.b  $E
                dc.b $28 
                dc.b $18
                dc.b  $E
                dc.b $30 
                dc.b   4
                dc.b $41 
                dc.b  $F
                dc.b $10
                dc.b $AB 
                dc.b $BA 
                dc.b  $C
                dc.b   8
                dc.b   0
                dc.b   4
                dc.b   0
                dc.b   4
                dc.b $C5 
                dc.b $AB 
                dc.b $BB 
                dc.b   0
                dc.b $80 
                dc.b  $D
                dc.b $80 
                dc.b   2
                dc.b $29 
                dc.b $BB 
                dc.b  $D
                dc.b   3
                dc.b $AB 
                dc.b $66 
                dc.b   3
                dc.b $42 
                dc.b $BB 
                dc.b $BB 
                dc.b   3
                dc.b $81 
                dc.b   0
                dc.b $40 
                dc.b $BA 
                dc.b $AA 
                dc.b   9
                dc.b $A8 
                dc.b $D0 
                dc.b $AB 
                dc.b $AA 
                dc.b  $A
                dc.b $50 
                dc.b $BA 
                dc.b   0
                dc.b $C0 
                dc.b  $B
                dc.b $C0 
                dc.b  $E
                dc.b $62 
                dc.b  $E
                dc.b $69 
                dc.b $B4 
                dc.b $AB 
                dc.b  $C
                dc.b   4
                dc.b $BA 
                dc.b $AB 
                dc.b  $B
                dc.b $2A 
                dc.b $AB 
                dc.b $1A
                dc.b $18
                dc.b  $B
                dc.b $74 
                dc.b $C1 
                dc.b $AB 
                dc.b $AA 
                dc.b   8
                dc.b   4
                dc.b   7
                dc.b $7F 
                dc.b  $F
                dc.b $1C
                dc.b   5
                dc.b $B9 
                dc.b $1F
                dc.b $50 
                dc.b $BB 
                dc.b $12
                dc.b   0
                dc.b $D0 
                dc.b   0
                dc.b $80 
                dc.b   0
                dc.b $C0 
                dc.b $BA 
                dc.b   0
                dc.b $44 
                dc.b  $C
                dc.b $38 
                dc.b $BA 
                dc.b   0
                dc.b $40 
                dc.b $61 
                dc.b   2
                dc.b $80 
                dc.b $BA 
                dc.b $BA 
                dc.b   9
                dc.b $A0 
                dc.b $14
                dc.b   7
                dc.b   0
                dc.b   4
                dc.b $20
                dc.b   0
                dc.b $AB 
                dc.b   1
                dc.b   3
                dc.b $6C 
                dc.b  $A
                dc.b $68 
                dc.b   0
                dc.b $18
                dc.b   0
                dc.b $80 
                dc.b   0
                dc.b $28 
                dc.b   9
                dc.b $44 
                dc.b  $F
                dc.b $C5 
                dc.b $BA 
                dc.b $1F
                dc.b $10
                dc.b   0
                dc.b $11
                dc.b $80 
                dc.b $1F
                dc.b $83 
                dc.b $AF 
                dc.b $FF
                dc.b $AA 
                dc.b $AA 
                dc.b $FB 
                dc.b $FF
                dc.b $BB 
                dc.b $FA 
                dc.b $AF 
                dc.b $BF 
                dc.b $FF
                dc.b $BF 
                dc.b $FB 
                dc.b $FF
                dc.b $D3 
                dc.b $FF
                dc.b $FB 
                dc.b  $F
                dc.b   4
                dc.b $FF
                dc.b  $E
                dc.b   4
                dc.b  $F
                dc.b $10
                dc.b $FF
                dc.b $AA 
                dc.b $46 
                dc.b  $F
                dc.b $11
                dc.b $AA 
                dc.b  $F
                dc.b $19
                dc.b  $F
                dc.b $21 
                dc.b  $F
                dc.b $25 
                dc.b $AF 
                dc.b $BF 
                dc.b  $F
                dc.b $F3 
                dc.b $8F 
                dc.b $FB 
                dc.b  $E
                dc.b $32 
                dc.b   0
                dc.b $40 
                dc.b  $F
                dc.b $40 
                dc.b $BD 
                dc.b $CC 
                dc.b $BF 
                dc.b $FB 
                dc.b $FF
                dc.b $DB 
                dc.b $BC 
                dc.b $CB 
                dc.b $FB 
                dc.b $DB 
                dc.b $CC 
                dc.b $CC 
                dc.b $FB 
                dc.b $ED 
                dc.b $DC 
                dc.b $CC 
                dc.b $CC 
                dc.b  $F
                dc.b $10
                dc.b $CC 
                dc.b $AA 
                dc.b  $F
                dc.b   9
                dc.b $AA 
                dc.b $29 
                dc.b  $F
                dc.b $19
                dc.b  $F
                dc.b $40 
                dc.b $DC 
                dc.b  $F
                dc.b $37 
                dc.b $BD 
                dc.b   0
                dc.b $40 
                dc.b  $D
                dc.b $41 
                dc.b $FA 
                dc.b $54 
                dc.b  $F
                dc.b $20
                dc.b $BF 
                dc.b  $F
                dc.b $5F 
                dc.b $FB 
                dc.b  $D
                dc.b $70 
                dc.b $FB 
                dc.b   0
                dc.b $78 
                dc.b   0
                dc.b $38 
                dc.b $3E 
                dc.b   0
                dc.b $40 
                dc.b  $F
                dc.b $68 
                dc.b $DB 
                dc.b $AA 
                dc.b $FB 
                dc.b $DB 
                dc.b $BD 
                dc.b  $F
                dc.b   4
                dc.b $4C 
                dc.b  $F
                dc.b $78 
                dc.b $DD 
                dc.b  $E
                dc.b $78 
                dc.b  $F
                dc.b $74 
                dc.b $FB 
                dc.b $DD 
                dc.b   0
                dc.b $78 
                dc.b $13
                dc.b $84 
                dc.b $FD 
                dc.b $FF
                dc.b $AF 
                dc.b $FA 
                dc.b $AF 
                dc.b $BB 
                dc.b $FB 
                dc.b  $F
                dc.b $FC 
                dc.b $BF 
                dc.b $1A
                dc.b  $E
                dc.b   5
                dc.b  $C
                dc.b $FD 
                dc.b  $E
                dc.b   4
                dc.b $FF
                dc.b $BF 
                dc.b $1C
                dc.b  $E
                dc.b $BF 
                dc.b  $F
                dc.b $99 
                dc.b $87 
                dc.b $FA 
                dc.b  $E
                dc.b $61 
                dc.b  $D
                dc.b $69 
                dc.b   0
                dc.b   1
                dc.b  $A
                dc.b $40 
                dc.b $CF 
                dc.b $BD 
                dc.b $DB 
                dc.b $AF 
                dc.b $BC 
                dc.b  $F
                dc.b $80 
                dc.b $DC 
                dc.b $1D
                dc.b   1
                dc.b $DD 
                dc.b $CC 
                dc.b $CC 
                dc.b $CF 
                dc.b $FF
                dc.b $BD 
                dc.b $DC 
                dc.b $CC 
                dc.b $CB 
                dc.b $FB 
                dc.b $DD 
                dc.b $DC 
                dc.b $BF 
                dc.b $1D
                dc.b  $F
                dc.b $99 
                dc.b   0
                dc.b $40 
                dc.b   0
                dc.b $40 
                dc.b $FF
                dc.b $BD 
                dc.b $DB 
                dc.b $1F
                dc.b $41 
                dc.b $BD 
                dc.b $AF 
                dc.b $FF
                dc.b  $F
                dc.b $40 
                dc.b $FF
                dc.b  $F
                dc.b $40 
                dc.b $FF
                dc.b $FF
                dc.b $BD 
                dc.b $DC 
                dc.b $51 
                dc.b  $F
                dc.b $80 
                dc.b $DD 
                dc.b  $F
                dc.b $80 
                dc.b $BD 
                dc.b   0
                dc.b $80 
                dc.b   6
                dc.b $40 
                dc.b  $F
                dc.b $E2 
                dc.b $BB 
                dc.b $7F 
                dc.b  $F
                dc.b $21 
                dc.b $FF
                dc.b $BF 
                dc.b $AA 
                dc.b $BF 
                dc.b $FF
                dc.b $FB 
                dc.b $FA 
                dc.b $B5 
                dc.b $FF
                dc.b   9
                dc.b   4
                dc.b $BF 
                dc.b $AA 
                dc.b  $F
                dc.b   7
                dc.b $AA 
                dc.b  $F
                dc.b $17
                dc.b $AA 
                dc.b $47 
                dc.b  $F
                dc.b $40 
                dc.b $AA 
                dc.b $1E
                dc.b $45 
                dc.b   0
                dc.b $40 
                dc.b   7
                dc.b $40 
                dc.b $CC 
                dc.b $BF 
                dc.b $AA 
                dc.b $F6 
                dc.b $BC 
                dc.b $CC 
                dc.b $CB 
                dc.b $FA 
                dc.b  $F
                dc.b $B5 
                dc.b $FA 
                dc.b $CC 
                dc.b  $D
                dc.b   4
                dc.b $DA 
                dc.b $BF 
                dc.b $AA 
                dc.b  $F
                dc.b   7
                dc.b $AA 
                dc.b $DC 
                dc.b  $F
                dc.b $40 
                dc.b $DB 
                dc.b   0
                dc.b $40 
                dc.b $73 
                dc.b $3C 
                dc.b $BE 
                dc.b $BF 
                dc.b $BB 
                dc.b $FA 
                dc.b $1E
                dc.b $39 
                dc.b $1F
                dc.b $2A 
                dc.b $BF 
                dc.b $AB 
                dc.b $5B 
                dc.b  $E
                dc.b $6D 
                dc.b $BF 
                dc.b  $F
                dc.b $A6 
                dc.b $AB 
                dc.b $FA 
                dc.b   5
                dc.b $20
                dc.b $BD 
                dc.b $CB 
                dc.b $DD 
                dc.b $CC 
                dc.b $BF 
                dc.b $2F 
                dc.b  $B
                dc.b $BF 
                dc.b $AB 
                dc.b $DC 
                dc.b  $F
                dc.b $4D 
                dc.b $BD 
                dc.b $1C
                dc.b   4
                dc.b $20
                dc.b   0
                dc.b   1
                dc.b $4C 
                dc.b $3B 
                dc.b $AB 
                dc.b $BB 
                dc.b $BB 
                dc.b $4D 
                dc.b $6D 
                dc.b  $A
                dc.b   9
                dc.b   0
                dc.b  $D
                dc.b $11
                dc.b  $F
                dc.b $10
                dc.b  $D
                dc.b   7
                dc.b $20
                dc.b $C3 
                dc.b   0
                dc.b   1
                dc.b $49 
                dc.b $B0 
                dc.b  $C
                dc.b $47 
                dc.b  $E
                dc.b $46 
                dc.b   0
                dc.b   2
                dc.b $37 
                dc.b   0
                dc.b   0
SaveScreenTileset1:
                incbin "data/graphics/specialscreens/savescreentileset1.bin"
SaveScreenTileset2:
                incbin "data/graphics/specialscreens/savescreentileset2.bin"

; =============== S U B R O U T I N E =======================================

sub_FF12:
                
                link    a4,#-$C
                movea.l a4,a0
                moveq   #$B,d7
loc_FF1A:
                
                clr.b   -(a0)
                dbf     d7,loc_FF1A
                clr.b   -$19(a6)
                bsr.w   sub_FF78
                move.w  #$60,-$E(a6) 
                move.w  #$78,d7 
loc_FF32:
                
                bsr.w   sub_F2E2
                move.b  (P1_INPUT).l,d0 
                cmpi.b  #$10,d0
                bcc.s   loc_FF74
                movem.w d7,-(sp)
                move.w  #0,d0
                bsr.w   sub_10014
                move.w  #$46,d0 
                bsr.w   sub_FFE2
                bsr.w   sub_F13A        
                move.w  #4,d0
                bsr.w   sub_1007E
                jsr     (WaitForVInt).l
                addq.w  #1,-2(a4)
                movem.w (sp)+,d7
                dbf     d7,loc_FF32
loc_FF74:
                
                unlk    a4
                rts

    ; End of function sub_FF12


; =============== S U B R O U T I N E =======================================

sub_FF78:
                
                lea     (byte_FF2C02).l,a0
                move.w  #$6000,d0
                move.w  (a0),d1
                move.w  #$36F,d7
loc_FF88:
                
                move.w  (a0),d2
                and.w   d0,d2
                bne.s   loc_FF90
                move.w  d0,(a0)
loc_FF90:
                
                addq.l  #2,a0
                dbf     d7,loc_FF88
                lea     (byte_FF2C52).l,a0
                move.w  #$6000,d0
                move.w  (a0),d1
                move.w  #$437,d7
loc_FFA6:
                
                move.w  (a0),d2
                and.w   d0,d2
                bne.s   loc_FFB0
                ori.w   #$2000,(a0)
loc_FFB0:
                
                addq.l  #2,a0
                dbf     d7,loc_FFA6
                jsr     (WaitForVInt).l
                bsr.w   sub_F30E
                lea     (byte_FF2C02).l,a0
                move.w  #$45E,d7
                move.w  (a0)+,d0
loc_FFCC:
                
                move.w  d0,(a0)+
                dbf     d7,loc_FFCC
                jsr     (WaitForVInt).l
                move.w  -2(a6),d0
                bsr.w   sub_F72E
                rts

    ; End of function sub_FF78


; =============== S U B R O U T I N E =======================================

sub_FFE2:
                
                cmp.w   -2(a4),d0
                bcs.s   loc_FFEA
                rts
loc_FFEA:
                
                tst.b   -9(a4)
                bpl.s   loc_FFF2
                rts
loc_FFF2:
                
                bne.s   loc_10002
                sndCom  SFX_SWORD_SLASH
                bsr.w   sub_F0F8
                move.b  #1,-9(a4)
loc_10002:
                
                tst.b   -$19(a6)
                beq.s   return_10012
                bsr.w   sub_F1E4
                move.b  #$FF,-9(a4)
return_10012:
                
                rts

    ; End of function sub_FFE2


; =============== S U B R O U T I N E =======================================

sub_10014:
                
                tst.b   -$B(a4)
                beq.s   loc_1001C
                rts
loc_1001C:
                
                cmp.w   -2(a4),d0
                bcs.s   loc_10024
                rts
loc_10024:
                
                lea     byte_1006E(pc), a0
                move.w  -4(a6),d0
                lsl.w   #2,d0
                move.w  (a0,d0.w),d1
                move.w  2(a0,d0.w),d2
                add.w   d1,-$10(a6)
                add.w   d2,-$12(a6)
                move.w  -$10(a6),d6
                jsr     (j_UpdateForegroundHScrollData).l
                move.w  -$12(a6),d6
                neg.w   d6
                jsr     (j_UpdateForegroundVScrolData).l
                jsr     (j_EnableDMAQueueProcessing).l
                addq.w  #1,-6(a4)
                move.w  -6(a4),d0
                cmpi.w  #$24,d0 
                bcs.s   return_1006C
                addq.b  #1,-$B(a4)
return_1006C:
                
                rts

    ; End of function sub_10014

byte_1006E:     dc.b 0
                dc.b   2
                dc.b   0
                dc.b   1
                dc.b $FF
                dc.b $FE 
                dc.b   0
                dc.b   1
                dc.b   0
                dc.b   2
                dc.b $FF
                dc.b $FF
                dc.b $FF
                dc.b $FE 
                dc.b $FF
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_1007E:
                
                cmp.w   -2(a4),d0
                bcs.s   loc_10086
                rts
loc_10086:
                
                bsr.w   sub_F89C
                rts

    ; End of function sub_1007E

                align $010300
