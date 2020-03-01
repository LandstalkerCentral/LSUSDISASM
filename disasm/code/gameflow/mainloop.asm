
; ASM FILE code\gameflow\mainloop.asm :
; 0x16DC..0x1788 : Main Loop

; =============== S U B R O U T I N E =======================================

MainLoop:
                
                bsr.w   sub_603C
                andi.w  #$1000,(dword_FF542C).l
                bsr.w   sub_1788
                bsr.w   sub_7624
                bsr.w   LoadNextMapInDebugMode
                bsr.w   SaveInDebugMode
                bsr.w   sub_2178
                bsr.w   sub_66AC
                bsr.w   sub_18C4
                jsr     sub_10348
                jsr     sub_10358
                bsr.w   sub_24F4
                bsr.w   sub_21DE
                jsr     sub_10300
                bsr.w   sub_2540
                bsr.w   sub_1858
                bsr.w   sub_17EE
                jsr     sub_103D8
                jsr     sub_1034C
                bsr.w   sub_7274
                jsr     sub_10310
                jsr     sub_10350
                jsr     (sub_401C).l
                jsr     sub_9DA2
                jsr     sub_10380
                jsr     sub_25C6(pc)
                nop
                jsr     sub_C46A        
                jsr     sub_10340
                bsr.w   sub_249A
                bsr.w   RequestVDPCommandQueueProcessing
                bsr.w   EnableDMAQueueProcessing
                move.w  (word_200).w,d0
                bsr.w   Sleep           
                jsr     sub_10384
                tst.b   d0
                rts

    ; End of function MainLoop

