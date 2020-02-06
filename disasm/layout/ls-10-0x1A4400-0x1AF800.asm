
; GAME SECTION 10 :
; 0x1A4400..0x1AF800 : To figure out and describe succinctly
; FREE SPACE : 518 bytes.



; =============== S U B R O U T I N E =======================================

sub_1A4400:
                
                jmp     sub_1A87CA(pc)

    ; End of function sub_1A4400


; =============== S U B R O U T I N E =======================================

sub_1A4404:
                
                jmp     sub_1A83E6(pc)

    ; End of function sub_1A4404


; =============== S U B R O U T I N E =======================================

sub_1A4408:
                
                jmp     sub_1A87A6(pc)

    ; End of function sub_1A4408


; =============== S U B R O U T I N E =======================================

sub_1A440C:
                
                jmp     sub_1A86D6(pc)

    ; End of function sub_1A440C


; =============== S U B R O U T I N E =======================================

sub_1A4410:
                
                jmp     sub_1AC3F4(pc)

    ; End of function sub_1A4410


; =============== S U B R O U T I N E =======================================

sub_1A4414:
                
                jmp     sub_1A4422(pc)

    ; End of function sub_1A4414


; =============== S U B R O U T I N E =======================================

sub_1A4418:
                
                jmp     sub_1A4468(pc)

    ; End of function sub_1A4418


; =============== S U B R O U T I N E =======================================

sub_1A441C:
                
                jmp     loc_1AEEDA

    ; End of function sub_1A441C


; =============== S U B R O U T I N E =======================================

sub_1A4422:
                
                lea     (byte_FF00A4).l,a0
                lea     (byte_FF00B0).l,a1
                lea     (word_FF00E4).l,a2
                moveq   #5,d7
loc_1A4436:
                
                clr.w   (a0)+
                clr.w   (a1)+
                clr.w   (a2)+
                dbf     d7,loc_1A4436
                clr.w   (a1)
                lea     (word_FF5480).l,a0
                moveq   #$E,d7
loc_1A444A:
                
                tst.w   (a0)
                bmi.s   return_1A4466
                move.b  6(a0),d0
                andi.b  #$20,d0 
                beq.s   loc_1A445E
                move.b  $3B(a0),d0
                bsr.s   sub_1A4468
loc_1A445E:
                
                lea     $80(a0),a0
                dbf     d7,loc_1A444A
return_1A4466:
                
                rts

    ; End of function sub_1A4422


; =============== S U B R O U T I N E =======================================

sub_1A4468:
                
                lea     dword_1A453A(pc), a1
loc_1A446C:
                
                move.b  (a1),d1
                cmp.b   d1,d0
                beq.s   loc_1A447C
loc_1A4472:
                
                addq.l  #2,a1
                cmpi.b  #$FF,(a1)
                bne.s   loc_1A446C
                rts
loc_1A447C:
                
                btst    #5,6(a0)
                beq.s   loc_1A4472
                move.b  1(a1),d2
                bmi.s   loc_1A44A0
                btst    #6,6(a0)
                beq.s   loc_1A44BE
                lea     (word_FF00E4).l,a2
                lea     unk_1A47E0(pc), a3
                moveq   #5,d6
                bra.s   loc_1A44CA
loc_1A44A0:
                
                btst    #6,6(a0)
                bne.s   loc_1A450A
                lea     (byte_FF00B0).l,a2
                lea     unk_1A4BA0(pc), a3
                moveq   #6,d6
                andi.w  #$7F,d2 
                mulu.w  #$E,d2
                bra.s   loc_1A44D2
loc_1A44BE:
                
                lea     (byte_FF00A4).l,a2
                lea     unk_1A47E0(pc), a3
                moveq   #5,d6
loc_1A44CA:
                
                andi.w  #$7F,d2 
                mulu.w  #$C,d2
loc_1A44D2:
                
                move.w  (a2),d5
                beq.s   loc_1A44DC
                cmp.w   (a3,d2.w),d5
                bne.s   loc_1A44EA
loc_1A44DC:
                
                move.w  (a3,d2.w),(a2)+
                addq.w  #2,d2
                dbf     d6,loc_1A44D2
                bra.w   loc_1A4472
loc_1A44EA:
                
                tst.w   (word_210).w
                bmi.w   loc_1A44DC
                movem.w d0,-(sp)
                sndCom  SFX_ENEMY_DEATH
                move.w  #6,d0
                jsr     (sub_278).l
                movem.w (sp)+,d0
                bra.s   loc_1A44DC
loc_1A450A:
                
                tst.w   (word_210).w
                bmi.w   loc_1A4472
                movem.w d7,-(sp)
                moveq   #6,d7
loc_1A4518:
                
                movem.w d0,-(sp)
                sndCom  SFX_ITEM_USE
                move.w  #6,d0
                jsr     (sub_278).l
                movem.w (sp)+,d0
                dbf     d7,loc_1A4518
                movem.w (sp)+,d7
                bra.w   loc_1A4472

    ; End of function sub_1A4468

dword_1A453A:   dc.l $80
                dc.b   1
                dc.b   1
                dc.b   2
                dc.b   1
                dc.b $C0 
                dc.b   1
                dc.b $C0 
                dc.b $81 
                dc.b   3
                dc.b   1
                dc.b   3
                dc.b $81 
                dc.b   4
                dc.b   2
                dc.b   5
                dc.b   1
                dc.b   6
                dc.b   3
                dc.b   7
                dc.b   4
                dc.b   8
                dc.b   5
                dc.b   9
                dc.b   6
                dc.b  $A
                dc.b   0
                dc.b  $A
                dc.b $80 
                dc.b  $B
                dc.b   1
                dc.b  $C
                dc.b   1
                dc.b  $D
                dc.b   1
                dc.b  $D
                dc.b $81 
                dc.b  $E
                dc.b   0
                dc.b  $F
                dc.b   1
                dc.b $10
                dc.b   1
                dc.b $10
                dc.b $81 
                dc.b $11
                dc.b   0
                dc.b $12
                dc.b   0
                dc.b $13
                dc.b $82 
                dc.b $14
                dc.b $82 
                dc.b $15
                dc.b   7
                dc.b $16
                dc.b   0
                dc.b $C1 
                dc.b   1
                dc.b $C1 
                dc.b $81 
                dc.b $C2 
                dc.b   1
                dc.b $C2 
                dc.b $81 
                dc.b $C3 
                dc.b   1
                dc.b $C3 
                dc.b $81 
                dc.b $C4 
                dc.b   1
                dc.b $C4 
                dc.b $81 
                dc.b $C5 
                dc.b   1
                dc.b $C5 
                dc.b $81 
                dc.b $C6 
                dc.b   1
                dc.b $C6 
                dc.b $81 
                dc.b $C7 
                dc.b   1
                dc.b $C7 
                dc.b $81 
                dc.b $C8 
                dc.b   1
                dc.b $C8 
                dc.b $81 
                dc.b $C9 
                dc.b   1
                dc.b $C9 
                dc.b $81 
                dc.b $CA 
                dc.b   1
                dc.b $CA 
                dc.b $81 
                dc.b $CB 
                dc.b   1
                dc.b $CB 
                dc.b $81 
                dc.b $CC 
                dc.b   1
                dc.b $CC 
                dc.b $81 
                dc.b $CD 
                dc.b   1
                dc.b $CD 
                dc.b $81 
                dc.b $CE 
                dc.b   1
                dc.b $CE 
                dc.b $81 
                dc.b $CF 
                dc.b   1
                dc.b $CF 
                dc.b $81 
                dc.b $D0 
                dc.b   1
                dc.b $D0 
                dc.b $81 
                dc.b $D1 
                dc.b   1
                dc.b $D1 
                dc.b $81 
                dc.b $D2 
                dc.b   1
                dc.b $D2 
                dc.b $81 
                dc.b $D3 
                dc.b   1
                dc.b $D3 
                dc.b $81 
                dc.b $D4 
                dc.b   1
                dc.b $D4 
                dc.b $81 
                dc.b $D5 
                dc.b   1
                dc.b $D5 
                dc.b $81 
                dc.b $D6 
                dc.b   1
                dc.b $D6 
                dc.b $81 
                dc.b $D7 
                dc.b   1
                dc.b $D7 
                dc.b $81 
                dc.b $D8 
                dc.b   1
                dc.b $D8 
                dc.b $81 
                dc.b $D9 
                dc.b   1
                dc.b $D9 
                dc.b $81 
                dc.b $DA 
                dc.b   1
                dc.b $DA 
                dc.b $81 
                dc.b $DB 
                dc.b   1
                dc.b $DB 
                dc.b $81 
                dc.b $DC 
                dc.b   1
                dc.b $DC 
                dc.b $81 
                dc.b $DD 
                dc.b   1
                dc.b $DD 
                dc.b $81 
                dc.b $DE 
                dc.b   1
                dc.b $DE 
                dc.b $81 
                dc.b $DF 
                dc.b   1
                dc.b $DF 
                dc.b $81 
                dc.b $E0 
                dc.b   1
                dc.b $E0 
                dc.b $81 
                dc.b $E1 
                dc.b   1
                dc.b $E1 
                dc.b $81 
                dc.b $E2 
                dc.b   1
                dc.b $E2 
                dc.b $81 
                dc.b $E3 
                dc.b   1
                dc.b $E3 
                dc.b $81 
                dc.b $E4 
                dc.b   1
                dc.b $E4 
                dc.b $81 
                dc.b $E5 
                dc.b   1
                dc.b $E5 
                dc.b $81 
                dc.b $E6 
                dc.b   1
                dc.b $E6 
                dc.b $81 
                dc.b $E7 
                dc.b   1
                dc.b $E7 
                dc.b $81 
                dc.b $E8 
                dc.b   1
                dc.b $E8 
                dc.b $81 
                dc.b $E9 
                dc.b   1
                dc.b $E9 
                dc.b $81 
                dc.b $EA 
                dc.b   1
                dc.b $EA 
                dc.b $81 
                dc.b $EB 
                dc.b   1
                dc.b $EB 
                dc.b $81 
                dc.b $EC 
                dc.b   1
                dc.b $EC 
                dc.b $81 
                dc.b $ED 
                dc.b   1
                dc.b $ED 
                dc.b $81 
                dc.b $EE 
                dc.b   1
                dc.b $EE 
                dc.b $81 
                dc.b $EF 
                dc.b   1
                dc.b $EF 
                dc.b $81 
                dc.b $F0 
                dc.b   1
                dc.b $F0 
                dc.b $81 
                dc.b $F1 
                dc.b   1
                dc.b $F1 
                dc.b $81 
                dc.b $F2 
                dc.b   1
                dc.b $F2 
                dc.b $81 
                dc.b $F3 
                dc.b   1
                dc.b $F3 
                dc.b $81 
                dc.b $F4 
                dc.b   1
                dc.b $F4 
                dc.b $81 
                dc.b $F5 
                dc.b   1
                dc.b $F5 
                dc.b $81 
                dc.b $F6 
                dc.b   1
                dc.b $F6 
                dc.b $81 
                dc.b $F7 
                dc.b   1
                dc.b $F7 
                dc.b $81 
                dc.b $F8 
                dc.b   1
                dc.b $F8 
                dc.b $81 
                dc.b $F9 
                dc.b   1
                dc.b $F9 
                dc.b $81 
                dc.b $FA 
                dc.b   1
                dc.b $FA 
                dc.b $81 
                dc.b $FB 
                dc.b   1
                dc.b $FB 
                dc.b $81 
                dc.b $FC 
                dc.b   1
                dc.b $FC 
                dc.b $81 
                dc.b $FD 
                dc.b   1
                dc.b $FD 
                dc.b $81 
                dc.b $FE 
                dc.b   1
                dc.b $FE 
                dc.b $81 
                dc.b $17
                dc.b   8
                dc.b $18
                dc.b   9
                dc.b $19
                dc.b  $A
                dc.b $1A
                dc.b  $B
                dc.b $1B
                dc.b  $C
                dc.b $1C
                dc.b  $D
                dc.b $1D
                dc.b  $E
                dc.b $1E
                dc.b  $F
                dc.b $1F
                dc.b $10
                dc.b $20
                dc.b $11
                dc.b $21 
                dc.b $12
                dc.b $22 
                dc.b $13
                dc.b $23 
                dc.b $14
                dc.b $24 
                dc.b $15
                dc.b $25 
                dc.b $16
                dc.b $26 
                dc.b $17
                dc.b $27 
                dc.b $18
                dc.b $28 
                dc.b $19
                dc.b $29 
                dc.b   0
                dc.b $2A 
                dc.b $1A
                dc.b $2B 
                dc.b $1B
                dc.b $2C 
                dc.b $1C
                dc.b $2D 
                dc.b $1D
                dc.b $2E 
                dc.b $1E
                dc.b $2F 
                dc.b   1
                dc.b $30 
                dc.b   1
                dc.b $31 
                dc.b   2
                dc.b $32 
                dc.b   1
                dc.b $33 
                dc.b   1
                dc.b $33 
                dc.b $81 
                dc.b $34 
                dc.b   1
                dc.b $35 
                dc.b   0
                dc.b $36 
                dc.b $1F
                dc.b $37 
                dc.b $20
                dc.b $38 
                dc.b $21 
                dc.b $39 
                dc.b $22 
                dc.b $3A 
                dc.b $23 
                dc.b $3B 
                dc.b $24 
                dc.b $3C 
                dc.b $25 
                dc.b $3D 
                dc.b $26 
                dc.b $3E 
                dc.b $27 
                dc.b $3F 
                dc.b   1
                dc.b $40 
                dc.b   2
                dc.b $41 
                dc.b   2
                dc.b $42 
                dc.b   1
                dc.b $43 
                dc.b   2
                dc.b $44 
                dc.b   0
                dc.b $45 
                dc.b   1
                dc.b $46 
                dc.b $28 
                dc.b $47 
                dc.b   1
                dc.b $48 
                dc.b   1
                dc.b $48 
                dc.b $81 
                dc.b $49 
                dc.b $82 
                dc.b $4A 
                dc.b $82 
                dc.b $4B 
                dc.b $83 
                dc.b $4C 
                dc.b   7
                dc.b $4D 
                dc.b $81 
                dc.b $4E 
                dc.b   0
                dc.b $4E 
                dc.b $80 
                dc.b $4F 
                dc.b   1
                dc.b $50 
                dc.b   1
                dc.b $52 
                dc.b $29 
                dc.b $52 
                dc.b $84 
                dc.b $53 
                dc.b $82 
                dc.b $54 
                dc.b   0
                dc.b $54 
                dc.b $85 
                dc.b $55 
                dc.b $82 
                dc.b $56 
                dc.b   0
                dc.b $56 
                dc.b $80 
                dc.b $57 
                dc.b   0
                dc.b $58 
                dc.b   0
                dc.b $58 
                dc.b $80 
                dc.b $59 
                dc.b   0
                dc.b $59 
                dc.b $80 
                dc.b $5A 
                dc.b   0
                dc.b $5B 
                dc.b   0
                dc.b $5B 
                dc.b $80 
                dc.b $5C 
                dc.b $82 
                dc.b $5D 
                dc.b   0
                dc.b $5E 
                dc.b   0
                dc.b $5E 
                dc.b $80 
                dc.b $5F 
                dc.b   0
                dc.b $5F 
                dc.b $80 
                dc.b $60 
                dc.b   0
                dc.b $60 
                dc.b $80 
                dc.b $61 
                dc.b   0
                dc.b $61 
                dc.b $80 
                dc.b $62 
                dc.b $2A 
                dc.b $63 
                dc.b   0
                dc.b $63 
                dc.b $80 
                dc.b $64 
                dc.b   0
                dc.b $64 
                dc.b $80 
                dc.b $65 
                dc.b   0
                dc.b $65 
                dc.b $80 
                dc.b $66 
                dc.b   0
                dc.b $66 
                dc.b $80 
                dc.b $67 
                dc.b $82 
                dc.b $68 
                dc.b $82 
                dc.b $69 
                dc.b $29 
                dc.b $69 
                dc.b $84 
                dc.b $6A 
                dc.b $29 
                dc.b $6A 
                dc.b $84 
                dc.b $6B 
                dc.b $2B 
                dc.b $6C 
                dc.b   0
                dc.b $6C 
                dc.b $80 
                dc.b $6D 
                dc.b $2C 
                dc.b $6D 
                dc.b $86 
                dc.b $6E 
                dc.b $2D 
                dc.b $6F 
                dc.b $29 
                dc.b $6F 
                dc.b $84 
                dc.b $70 
                dc.b   0
                dc.b $70 
                dc.b $80 
                dc.b $71 
                dc.b   7
                dc.b $72 
                dc.b $82 
                dc.b $73 
                dc.b $2E 
                dc.b $74 
                dc.b   3
                dc.b $75 
                dc.b $2F 
                dc.b $76 
                dc.b $30 
                dc.b $77 
                dc.b $31 
                dc.b $78 
                dc.b $80 
                dc.b $79 
                dc.b $32 
                dc.b $7A 
                dc.b   0
                dc.b $7B 
                dc.b   0
                dc.b $7C 
                dc.b $33 
                dc.b $7C 
                dc.b $87 
                dc.b $7D 
                dc.b $34 
                dc.b $7E 
                dc.b $35 
                dc.b $7F 
                dc.b $36 
                dc.b $80 
                dc.b   1
                dc.b $80 
                dc.b $81 
                dc.b $81 
                dc.b $37 
                dc.b $82 
                dc.b $38 
                dc.b $83 
                dc.b $39 
                dc.b $84 
                dc.b $3A 
                dc.b $85 
                dc.b   0
                dc.b $85 
                dc.b $80 
                dc.b $86 
                dc.b $3B 
                dc.b $87 
                dc.b $88 
                dc.b $88 
                dc.b $3C 
                dc.b $89 
                dc.b $3D 
                dc.b $8A 
                dc.b $3E 
                dc.b $8B 
                dc.b $31 
                dc.b $8C 
                dc.b $80 
                dc.b $8D 
                dc.b $80 
                dc.b $8E 
                dc.b $82 
                dc.b $8F 
                dc.b $3F 
                dc.b $90 
                dc.b $40 
                dc.b $91 
                dc.b $41 
                dc.b $92 
                dc.b $31 
                dc.b $93 
                dc.b $42 
                dc.b $94 
                dc.b $43 
                dc.b $95 
                dc.b $44 
                dc.b $96 
                dc.b $45 
                dc.b $97 
                dc.b $46 
                dc.b $98 
                dc.b $89 
                dc.b $99 
                dc.b $8A 
                dc.b $9A 
                dc.b $89 
                dc.b $9B 
                dc.b $8A 
                dc.b $9C 
                dc.b $47 
                dc.b $9C 
                dc.b $8B 
                dc.b $9D 
                dc.b $48 
                dc.b $9D 
                dc.b $8C 
                dc.b $9E 
                dc.b   0
                dc.b $9E 
                dc.b $80 
                dc.b $9F 
                dc.b   0
                dc.b $9F 
                dc.b $80 
                dc.b $A0 
                dc.b $49 
                dc.b $A0 
                dc.b $8D 
                dc.b $A1 
                dc.b $49 
                dc.b $A2 
                dc.b $4A 
                dc.b $A2 
                dc.b $8E 
                dc.b $A3 
                dc.b $42 
                dc.b $A4 
                dc.b $43 
                dc.b $A5 
                dc.b $4B 
                dc.b $A5 
                dc.b $8F 
                dc.b $A6 
                dc.b $4B 
                dc.b $A7 
                dc.b $4C 
                dc.b $A8 
                dc.b   0
                dc.b $A9 
                dc.b   0
                dc.b $A9 
                dc.b $80 
                dc.b $AA 
                dc.b $4D 
                dc.b $AA 
                dc.b $90 
                dc.b $AB 
                dc.b $4E 
                dc.b $AC 
                dc.b $4F 
                dc.b $FF
                dc.b $FF
unk_1A47E0:     dc.b  $A
                dc.b   0
                dc.b   4
                dc.b $AE 
                dc.b   0
                dc.b $48 
                dc.b   0
                dc.b $24 
                dc.b   8
                dc.b $88 
                dc.b   4
                dc.b $44 
                dc.b   6
                dc.b $8C 
                dc.b   2
                dc.b $40 
                dc.b   6
                dc.b $64 
                dc.b   0
                dc.b $6A 
                dc.b   0
                dc.b $24 
                dc.b   2
                dc.b $28 
                dc.b  $A
                dc.b $CE 
                dc.b  $A
                dc.b $24 
                dc.b   6
                dc.b $64 
                dc.b   8
                dc.b $6E 
                dc.b   0
                dc.b $48 
                dc.b   0
                dc.b $8C 
                dc.b   6
                dc.b $AE 
                dc.b   8
                dc.b $62 
                dc.b  $E
                dc.b $A6 
                dc.b   2
                dc.b $8C 
                dc.b   2
                dc.b $46 
                dc.b   2
                dc.b $4C 
                dc.b   6
                dc.b $CE 
                dc.b   4
                dc.b $8A 
                dc.b   0
                dc.b $46 
                dc.b   4
                dc.b $84 
                dc.b   2
                dc.b $68 
                dc.b   8
                dc.b $4A 
                dc.b   6
                dc.b $CE 
                dc.b   4
                dc.b $8A 
                dc.b   0
                dc.b $46 
                dc.b   2
                dc.b  $E
                dc.b   2
                dc.b $68 
                dc.b   8
                dc.b $4A 
                dc.b   6
                dc.b $CE 
                dc.b   4
                dc.b $8A 
                dc.b   0
                dc.b $46 
                dc.b  $E
                dc.b $48 
                dc.b   2
                dc.b $68 
                dc.b   8
                dc.b $4A 
                dc.b  $E
                dc.b  $E
                dc.b   6
                dc.b $22 
                dc.b  $E
                dc.b  $E
                dc.b  $E
                dc.b  $E
                dc.b  $E
                dc.b  $E
                dc.b  $E
                dc.b  $E
                dc.b   4
                dc.b $42 
                dc.b   0
                dc.b $40 
                dc.b   2
                dc.b $20
                dc.b   6
                dc.b $8A 
                dc.b   4
                dc.b $68 
                dc.b   6
                dc.b $66 
                dc.b   2
                dc.b  $C
                dc.b  $A
                dc.b $60 
                dc.b   0
                dc.b $24 
                dc.b   8
                dc.b $88 
                dc.b   4
                dc.b $44 
                dc.b   6
                dc.b $66 
                dc.b  $E
                dc.b $48 
                dc.b   0
                dc.b $48 
                dc.b   8
                dc.b $24 
                dc.b  $A
                dc.b $8E 
                dc.b   2
                dc.b  $A
                dc.b   6
                dc.b $66 
                dc.b  $A
                dc.b $AA 
                dc.b   4
                dc.b $84 
                dc.b   2
                dc.b $44 
                dc.b   4
                dc.b $8A 
                dc.b   2
                dc.b $46 
                dc.b   0
                dc.b $24 
                dc.b  $A
                dc.b $AA 
                dc.b   4
                dc.b $4A 
                dc.b   0
                dc.b $28 
                dc.b   8
                dc.b $88 
                dc.b   4
                dc.b $44 
                dc.b   2
                dc.b $22 
                dc.b  $A
                dc.b $AA 
                dc.b  $A
                dc.b $66 
                dc.b   6
                dc.b $44 
                dc.b   4
                dc.b $68 
                dc.b   0
                dc.b $46 
                dc.b   0
                dc.b $26 
                dc.b   2
                dc.b $20
                dc.b   4
                dc.b $62 
                dc.b   8
                dc.b $A4 
                dc.b   6
                dc.b $CE 
                dc.b   4
                dc.b $66 
                dc.b   2
                dc.b $8C 
                dc.b   4
                dc.b $44 
                dc.b   6
                dc.b $66 
                dc.b  $A
                dc.b $AA 
                dc.b   4
                dc.b $4C 
                dc.b   0
                dc.b   8
                dc.b   2
                dc.b $6C 
                dc.b   0
                dc.b $24 
                dc.b   2
                dc.b $68 
                dc.b   8
                dc.b $CE 
                dc.b  $E
                dc.b $88 
                dc.b  $A
                dc.b $42 
                dc.b  $A
                dc.b $A2 
                dc.b   4
                dc.b $44 
                dc.b   8
                dc.b $88 
                dc.b   2
                dc.b $22 
                dc.b   6
                dc.b $66 
                dc.b  $A
                dc.b $AA 
                dc.b   0
                dc.b  $E
                dc.b   2
                dc.b $46 
                dc.b   6
                dc.b $8A 
                dc.b   0
                dc.b $22 
                dc.b   4
                dc.b $66 
                dc.b   8
                dc.b $AA 
                dc.b   0
                dc.b  $E
                dc.b   6
                dc.b $42 
                dc.b   8
                dc.b $A8 
                dc.b   2
                dc.b $20
                dc.b   6
                dc.b $86 
                dc.b  $A
                dc.b $CA 
                dc.b   0
                dc.b  $E
                dc.b  $A
                dc.b $AA 
                dc.b   8
                dc.b $88 
                dc.b   6
                dc.b $66 
                dc.b   6
                dc.b $86 
                dc.b   2
                dc.b $42 
                dc.b   6
                dc.b $4E 
                dc.b   8
                dc.b $C8 
                dc.b   4
                dc.b $60 
                dc.b   2
                dc.b $42 
                dc.b   0
                dc.b $48 
                dc.b   0
                dc.b $22 
                dc.b   2
                dc.b $EE 
                dc.b   4
                dc.b $AE 
                dc.b   0
                dc.b $2A 
                dc.b   0
                dc.b $26 
                dc.b  $C
                dc.b $48 
                dc.b   6
                dc.b $22 
                dc.b  $E
                dc.b $A0 
                dc.b  $C
                dc.b $86 
                dc.b   4
                dc.b $44 
                dc.b   8
                dc.b $88 
                dc.b   2
                dc.b $8A 
                dc.b   2
                dc.b $48 
                dc.b   6
                dc.b $2E 
                dc.b   0
                dc.b $2E 
                dc.b   0
                dc.b $26 
                dc.b   4
                dc.b $8E 
                dc.b   6
                dc.b $A6 
                dc.b   4
                dc.b $62 
                dc.b   0
                dc.b $EE 
                dc.b   4
                dc.b $C8 
                dc.b   2
                dc.b $66 
                dc.b   2
                dc.b $6C 
                dc.b   2
                dc.b $48 
                dc.b   0
                dc.b $26 
                dc.b   6
                dc.b $2E 
                dc.b  $E
                dc.b  $E
                dc.b   4
                dc.b $6C 
                dc.b   2
                dc.b $28 
                dc.b   0
                dc.b   6
                dc.b  $C
                dc.b $68 
                dc.b   8
                dc.b $26 
                dc.b  $E
                dc.b  $E
                dc.b  $E
                dc.b $A4 
                dc.b  $A
                dc.b $64 
                dc.b   8
                dc.b $40 
                dc.b   6
                dc.b $84 
                dc.b   4
                dc.b $40 
                dc.b   4
                dc.b $44 
                dc.b   0
                dc.b $48 
                dc.b   0
                dc.b $24 
                dc.b   8
                dc.b $88 
                dc.b   2
                dc.b $42 
                dc.b   4
                dc.b $AE 
                dc.b   4
                dc.b $44 
                dc.b   0
                dc.b $48 
                dc.b   0
                dc.b $24 
                dc.b   8
                dc.b $88 
                dc.b   2
                dc.b $46 
                dc.b   4
                dc.b $AE 
                dc.b   4
                dc.b $44 
                dc.b   0
                dc.b $48 
                dc.b   0
                dc.b $24 
                dc.b   8
                dc.b $88 
                dc.b   8
                dc.b $42 
                dc.b   4
                dc.b $AE 
                dc.b   6
                dc.b $CE 
                dc.b   4
                dc.b $8A 
                dc.b   4
                dc.b $86 
                dc.b   2
                dc.b $42 
                dc.b   0
                dc.b $46 
                dc.b   8
                dc.b $6E 
                dc.b  $A
                dc.b $AE 
                dc.b   4
                dc.b $6E 
                dc.b   2
                dc.b  $E
                dc.b   2
                dc.b   6
                dc.b   0
                dc.b $28 
                dc.b  $C
                dc.b $66 
                dc.b  $A
                dc.b $AA 
                dc.b   4
                dc.b $68 
                dc.b   6
                dc.b $66 
                dc.b   2
                dc.b $22 
                dc.b   4
                dc.b $44 
                dc.b  $E
                dc.b $86 
                dc.b  $A
                dc.b $28 
                dc.b   8
                dc.b   4
                dc.b   4
                dc.b $42 
                dc.b   6
                dc.b $84 
                dc.b   2
                dc.b $8C 
                dc.b  $C
                dc.b $6A 
                dc.b   2
                dc.b $46 
                dc.b   0
                dc.b $22 
                dc.b   2
                dc.b $44 
                dc.b   4
                dc.b $66 
                dc.b   4
                dc.b $88 
                dc.b   4
                dc.b $6A 
                dc.b   4
                dc.b $44 
                dc.b   2
                dc.b $22 
                dc.b   2
                dc.b   8
                dc.b   6
                dc.b $4E 
                dc.b   0
                dc.b $8C 
                dc.b   8
                dc.b $88 
                dc.b   8
                dc.b $88 
                dc.b   4
                dc.b $44 
                dc.b   0
                dc.b $28 
                dc.b   8
                dc.b $88 
                dc.b   4
                dc.b $44 
                dc.b   2
                dc.b $22 
                dc.b  $C
                dc.b $84 
                dc.b  $A
                dc.b $42 
                dc.b   2
                dc.b $28 
                dc.b   2
                dc.b $24 
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $40 
                dc.b   4
                dc.b $8A 
                dc.b   0
                dc.b $48 
                dc.b   6
                dc.b $44 
                dc.b   4
                dc.b $68 
                dc.b   0
                dc.b $46 
                dc.b   0
                dc.b $26 
                dc.b  $E
                dc.b  $E
                dc.b  $E
                dc.b  $E
                dc.b  $E
                dc.b  $E
                dc.b  $E
                dc.b  $E
                dc.b  $E
                dc.b  $E
                dc.b  $E
                dc.b  $E
                dc.b   8
                dc.b $AE 
                dc.b   4
                dc.b $6C 
                dc.b   8
                dc.b $24 
                dc.b   8
                dc.b $88 
                dc.b   2
                dc.b $AE 
                dc.b   4
                dc.b $44 
                dc.b   0
                dc.b $44 
                dc.b   2
                dc.b $6A 
                dc.b   2
                dc.b $AC 
                dc.b   2
                dc.b $40 
                dc.b   0
                dc.b $84 
                dc.b   4
                dc.b $C0 
                dc.b  $A
                dc.b $CE 
                dc.b  $A
                dc.b $24 
                dc.b  $A
                dc.b $64 
                dc.b   8
                dc.b $6E 
                dc.b   0
                dc.b $48 
                dc.b   0
                dc.b $8C 
                dc.b   2
                dc.b $66 
                dc.b   6
                dc.b $AA 
                dc.b   0
                dc.b $24 
                dc.b   2
                dc.b $22 
                dc.b   4
                dc.b $44 
                dc.b   4
                dc.b $CE 
                dc.b   0
                dc.b $A8 
                dc.b   0
                dc.b   6
                dc.b   2
                dc.b $2A 
                dc.b   4
                dc.b $A0 
                dc.b   0
                dc.b $40 
                dc.b   4
                dc.b $80 
                dc.b   4
                dc.b $8C 
                dc.b   0
                dc.b $4A 
                dc.b   2
                dc.b $AE 
                dc.b   0
                dc.b $48 
                dc.b   0
                dc.b $24 
                dc.b   2
                dc.b   8
                dc.b   6
                dc.b $8C 
                dc.b   8
                dc.b $88 
                dc.b  $E
                dc.b $EE 
                dc.b  $C
                dc.b $CC 
                dc.b   0
                dc.b   4
                dc.b   0
                dc.b $46 
                dc.b   6
                dc.b $AE 
                dc.b   0
                dc.b $48 
                dc.b  $E
                dc.b $A6 
                dc.b   0
                dc.b $24 
                dc.b   4
                dc.b $20
                dc.b   4
                dc.b $44 
                dc.b   2
                dc.b   0
                dc.b   4
                dc.b   0
                dc.b   2
                dc.b $40 
                dc.b   6
                dc.b $80 
                dc.b   0
                dc.b   6
                dc.b   0
                dc.b  $E
                dc.b   2
                dc.b $6A 
                dc.b   4
                dc.b $22 
                dc.b  $C
                dc.b $66 
                dc.b   0
                dc.b $48 
                dc.b   0
                dc.b $26 
                dc.b   0
                dc.b $48 
                dc.b   6
                dc.b $64 
                dc.b   2
                dc.b $20
                dc.b   4
                dc.b $42 
                dc.b   2
                dc.b $46 
                dc.b   6
                dc.b $AE 
                dc.b   6
                dc.b $66 
                dc.b  $A
                dc.b $CE 
                dc.b   4
                dc.b $8E 
                dc.b   2
                dc.b $48 
                dc.b  $E
                dc.b $A6 
                dc.b   2
                dc.b $24 
                dc.b   0
                dc.b $8C 
                dc.b   0
                dc.b  $E
                dc.b   0
                dc.b  $C
                dc.b   2
                dc.b $4E 
                dc.b   4
                dc.b $6E 
                dc.b  $C
                dc.b $88 
                dc.b   8
                dc.b $86 
                dc.b   8
                dc.b $88 
                dc.b   4
                dc.b $44 
                dc.b   2
                dc.b $60 
                dc.b   6
                dc.b $C0 
                dc.b  $C
                dc.b $68 
                dc.b   2
                dc.b $6A 
                dc.b   4
                dc.b $EE 
                dc.b   0
                dc.b $8E 
                dc.b   2
                dc.b $28 
                dc.b   2
                dc.b $24 
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $40 
                dc.b   6
                dc.b $A2 
                dc.b   0
                dc.b $62 
                dc.b   2
                dc.b $28 
                dc.b   2
                dc.b $24 
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $40 
                dc.b  $E
                dc.b   8
                dc.b  $A
                dc.b   4
                dc.b   2
                dc.b $28 
                dc.b   2
                dc.b $24 
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $40 
                dc.b   2
                dc.b $6C 
                dc.b   0
                dc.b $26 
                dc.b   0
                dc.b $6C 
                dc.b   0
                dc.b $28 
                dc.b   2
                dc.b $22 
                dc.b  $A
                dc.b $60 
                dc.b   2
                dc.b   0
                dc.b   4
                dc.b $20
                dc.b   6
                dc.b $42 
                dc.b   8
                dc.b $64 
                dc.b  $E
                dc.b  $E
                dc.b  $E
                dc.b  $E
                dc.b   0
                dc.b $20
                dc.b   2
                dc.b $6A 
                dc.b  $C
                dc.b $68 
                dc.b   2
                dc.b $42 
                dc.b   0
                dc.b $48 
                dc.b   2
                dc.b $24 
                dc.b   0
                dc.b $48 
                dc.b  $A
                dc.b $42 
                dc.b   6
                dc.b $66 
                dc.b   0
                dc.b $AE 
                dc.b   6
                dc.b $66 
                dc.b   4
                dc.b $22 
                dc.b   0
                dc.b   6
                dc.b   2
                dc.b $86 
                dc.b   8
                dc.b $6E 
                dc.b   2
                dc.b  $C
                dc.b   0
                dc.b $88 
                dc.b   0
                dc.b $42 
                dc.b   4
                dc.b $44 
                dc.b   8
                dc.b $AA 
                dc.b   6
                dc.b $66 
                dc.b   0
                dc.b $22 
                dc.b   2
                dc.b $46 
                dc.b   2
                dc.b $24 
                dc.b   2
                dc.b $42 
                dc.b   8
                dc.b $A8 
                dc.b   4
                dc.b $64 
                dc.b   0
                dc.b $22 
                dc.b   2
                dc.b $46 
                dc.b   2
                dc.b $24 
                dc.b   2
                dc.b   2
                dc.b  $C
                dc.b $8A 
                dc.b   6
                dc.b $46 
                dc.b   4
                dc.b   4
                dc.b   2
                dc.b $46 
                dc.b   2
                dc.b $24 
                dc.b   2
                dc.b   0
                dc.b   2
                dc.b $22 
                dc.b   4
                dc.b $44 
                dc.b   8
                dc.b $8A 
                dc.b   2
                dc.b $26 
                dc.b   0
                dc.b $4E 
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $24 
                dc.b   0
                dc.b $46 
                dc.b   2
                dc.b $8C 
                dc.b   0
                dc.b   6
                dc.b   0
                dc.b  $E
                dc.b   2
                dc.b $44 
                dc.b   6
                dc.b $66 
                dc.b  $A
                dc.b $AA 
                dc.b   4
                dc.b $44 
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b   0
                dc.b $48 
                dc.b   2
                dc.b $6A 
                dc.b   6
                dc.b $AE 
                dc.b   0
                dc.b   2
                dc.b   2
                dc.b  $C
                dc.b   4
                dc.b $44 
                dc.b   6
                dc.b $26 
                dc.b  $A
                dc.b $6A 
                dc.b  $C
                dc.b $8C 
                dc.b   4
                dc.b $24 
                dc.b   2
                dc.b  $C
                dc.b   4
                dc.b $44 
                dc.b   6
                dc.b $8C 
                dc.b   2
                dc.b $48 
                dc.b   2
                dc.b $24 
                dc.b  $A
                dc.b $AA 
                dc.b   8
                dc.b $48 
                dc.b  $A
                dc.b $EC 
                dc.b   4
                dc.b $44 
                dc.b   6
                dc.b $66 
                dc.b   8
                dc.b $88 
                dc.b  $A
                dc.b $AA 
                dc.b   4
                dc.b $64 
                dc.b   8
                dc.b $AE 
                dc.b   0
                dc.b  $E
                dc.b   6
                dc.b $AE 
                dc.b   0
                dc.b $2A 
                dc.b   2
                dc.b $26 
                dc.b   2
                dc.b $6E 
                dc.b  $A
                dc.b $EE 
                dc.b   2
                dc.b $44 
                dc.b   2
                dc.b $68 
                dc.b  $A
                dc.b $AC 
                dc.b  $A
                dc.b $68 
                dc.b  $A
                dc.b $46 
                dc.b   8
                dc.b $24 
                dc.b   4
                dc.b $AE 
                dc.b  $C
                dc.b $EE 
                dc.b   2
                dc.b $68 
                dc.b   4
                dc.b $20
                dc.b   6
                dc.b $66 
                dc.b  $A
                dc.b $AA 
                dc.b   2
                dc.b $22 
                dc.b   4
                dc.b $44 
                dc.b   6
                dc.b $66 
                dc.b   8
                dc.b $88 
                dc.b  $A
                dc.b $AA 
                dc.b  $C
                dc.b $CC 
                dc.b   2
                dc.b   4
                dc.b   4
                dc.b $2A 
                dc.b   6
                dc.b $4E 
                dc.b  $A
                dc.b $8E 
                dc.b  $C
                dc.b $28 
                dc.b   2
                dc.b $C8 
                dc.b   0
                dc.b $24 
                dc.b   2
                dc.b $46 
                dc.b   4
                dc.b $6A 
                dc.b   4
                dc.b $8C 
                dc.b   8
                dc.b $CE 
                dc.b  $C
                dc.b $EE 
                dc.b   0
                dc.b $CE 
                dc.b   0
                dc.b $8C 
                dc.b   0
                dc.b $4C 
                dc.b   0
                dc.b  $C
                dc.b   8
                dc.b $88 
                dc.b   4
                dc.b $44 
unk_1A4BA0:     dc.b  $A
                dc.b $CE 
                dc.b   8
                dc.b $A0 
                dc.b   2
                dc.b $40 
                dc.b   2
                dc.b $6A 
                dc.b   0
                dc.b $24 
                dc.b  $A
                dc.b $AA 
                dc.b   6
                dc.b $66 
                dc.b   0
                dc.b $46 
                dc.b   4
                dc.b   2
                dc.b   0
                dc.b $AC 
                dc.b   0
                dc.b $A2 
                dc.b   8
                dc.b $88 
                dc.b   0
                dc.b $2E 
                dc.b  $E
                dc.b $66 
                dc.b   6
                dc.b $66 
                dc.b   4
                dc.b $44 
                dc.b   2
                dc.b $22 
                dc.b   0
                dc.b $24 
                dc.b   4
                dc.b $68 
                dc.b   0
                dc.b $2E 
                dc.b  $E
                dc.b  $E
                dc.b   0
                dc.b $44 
                dc.b   2
                dc.b $6A 
                dc.b   2
                dc.b $AC 
                dc.b   4
                dc.b $40 
                dc.b   2
                dc.b $62 
                dc.b   8
                dc.b $A0 
                dc.b  $E
                dc.b  $E
                dc.b   6
                dc.b $66 
                dc.b   6
                dc.b $A4 
                dc.b   2
                dc.b $48 
                dc.b   2
                dc.b $40 
                dc.b   2
                dc.b $22 
                dc.b   4
                dc.b $2C 
                dc.b  $C
                dc.b $CC 
                dc.b  $A
                dc.b $CE 
                dc.b   8
                dc.b $A0 
                dc.b   2
                dc.b $40 
                dc.b  $E
                dc.b $8E 
                dc.b  $A
                dc.b  $A
                dc.b  $E
                dc.b $EE 
                dc.b  $E
                dc.b $EE 
                dc.b   0
                dc.b $2E 
                dc.b   8
                dc.b $88 
                dc.b   4
                dc.b $8C 
                dc.b   0
                dc.b $48 
                dc.b   8
                dc.b   0
                dc.b  $C
                dc.b $42 
                dc.b   2
                dc.b $80 
                dc.b   2
                dc.b $22 
                dc.b   2
                dc.b $6A 
                dc.b  $A
                dc.b $AA 
                dc.b   0
                dc.b $24 
                dc.b  $A
                dc.b $2E 
                dc.b   0
                dc.b  $E
                dc.b  $C
                dc.b $A6 
                dc.b   0
                dc.b $8C 
                dc.b   0
                dc.b $2C 
                dc.b   0
                dc.b  $A
                dc.b   4
                dc.b $AE 
                dc.b   0
                dc.b $48 
                dc.b   6
                dc.b $40 
                dc.b  $E
                dc.b $84 
                dc.b  $E
                dc.b $82 
                dc.b   8
                dc.b $40 
                dc.b   4
                dc.b $20
                dc.b   0
                dc.b $24 
                dc.b   4
                dc.b $68 
                dc.b   0
                dc.b $2E 
                dc.b  $E
                dc.b  $E
                dc.b   2
                dc.b $4C 
                dc.b   0
                dc.b   8
                dc.b   0
                dc.b   4
                dc.b   0
                dc.b $24 
                dc.b   4
                dc.b $68 
                dc.b   0
                dc.b $2E 
                dc.b  $E
                dc.b  $E
                dc.b   4
                dc.b $24 
                dc.b   0
                dc.b $CA 
                dc.b  $A
                dc.b $44 
                dc.b   4
                dc.b $44 
                dc.b  $A
                dc.b $6A 
                dc.b   8
                dc.b $6E 
                dc.b  $E
                dc.b $CA 
                dc.b   0
                dc.b $28 
                dc.b   4
                dc.b $6C 
                dc.b   2
                dc.b $42 
                dc.b   2
                dc.b $22 
                dc.b   2
                dc.b $24 
                dc.b   0
                dc.b  $E
                dc.b  $C
                dc.b $A6 
                dc.b   4
                dc.b $4E 
                dc.b   0
                dc.b  $A
                dc.b   0
                dc.b  $E
                dc.b   0
                dc.b  $E
                dc.b   0
                dc.b  $E
                dc.b   0
                dc.b  $E
                dc.b  $E
                dc.b $EE 
                dc.b   4
                dc.b $20
                dc.b   8
                dc.b $40 
                dc.b  $E
                dc.b $22 
                dc.b  $C
                dc.b $62 
                dc.b  $C
                dc.b $A4 
                dc.b   4
                dc.b $22 
                dc.b   0
                dc.b $EE 
                dc.b   8
                dc.b $64 
                dc.b   2
                dc.b $46 
                dc.b   2
                dc.b $22 
                dc.b   8
                dc.b $CE 
                dc.b   2
                dc.b $8C 
                dc.b   0
                dc.b  $E
                dc.b   6
                dc.b $64 
                dc.b   0
                dc.b $42 
                dc.b   2
                dc.b $86 
                dc.b   6
                dc.b   0
                dc.b   0
                dc.b   2
                dc.b   0
                dc.b $20
                dc.b  $E
                dc.b  $E
                dc.b  $E
                dc.b  $E

; =============== S U B R O U T I N E =======================================

sub_1A4C8E:
                
                bra.s   loc_1A4CD6

    ; End of function sub_1A4C8E


; =============== S U B R O U T I N E =======================================

sub_1A4C90:
                
                btst    #1,$C(a5)
                bne.s   loc_1A4CA8
                move.b  $37(a5),d0
                beq.s   loc_1A4CAE
                cmpi.b  #$10,d0
                beq.s   loc_1A4CDA
                bra.w   loc_1A4E52
loc_1A4CA8:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A4CAE:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$20,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A4CD6
                rts
loc_1A4CD6:
                
                bra.w   sub_1A8AB6
loc_1A4CDA:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1A4D0A
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A4D0E
                bcs.s   loc_1A4D04
                bsr.s   sub_1A4D5C
                bcs.s   loc_1A4D04
                bsr.w   sub_1A4DAA
                bcs.s   loc_1A4D04
                bsr.w   sub_1A4DF8
loc_1A4D04:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A4D0A:
                
                bra.w   sub_1A8AA6

    ; End of function sub_1A4C90


; =============== S U B R O U T I N E =======================================

sub_1A4D0E:
                
                move.w  #$50,d5 
                move.w  #$50,d6 
                move.w  #$50,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A4D58
                move.w  #$38,d5 
                move.w  #$38,d6 
                move.w  #$38,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A4D58
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C,d7
                bhi.s   loc_1A4D58
                move.b  #$20,$37(a5) 
                move.w  #$E,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A4D58:
                
                tst.b   d0
                rts

    ; End of function sub_1A4D0E


; =============== S U B R O U T I N E =======================================

sub_1A4D5C:
                
                move.w  #$38,d5 
                move.w  #$38,d6 
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A4DA6
                move.w  #$28,d5 
                move.w  #$28,d6 
                move.w  #$28,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A4DA6
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12,d7
                bhi.s   loc_1A4DA6
                move.b  #$21,$37(a5) 
                move.w  #7,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A4DA6:
                
                tst.b   d0
                rts

    ; End of function sub_1A4D5C


; =============== S U B R O U T I N E =======================================

sub_1A4DAA:
                
                move.w  #$30,d5 
                move.w  #$30,d6 
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A4DF4
                move.w  #$28,d5 
                move.w  #$28,d6 
                move.w  #$28,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A4DF4
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C,d7
                bhi.s   loc_1A4DF4
                move.b  #$22,$37(a5) 
                move.w  #8,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A4DF4:
                
                tst.b   d0
                rts

    ; End of function sub_1A4DAA


; =============== S U B R O U T I N E =======================================

sub_1A4DF8:
                
                move.w  #$20,d5 
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A4E4E
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$32,d7 
                bcc.s   loc_1A4E34
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A4E34:
                
                move.b  #$24,$37(a5) 
                move.w  #9,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A4E4E:
                
                tst.b   d0
                rts

    ; End of function sub_1A4DF8


; START OF FUNCTION CHUNK FOR sub_1A4C90

loc_1A4E52:
                
                andi.b  #$F,d0
                beq.s   loc_1A4E6C
                cmpi.b  #1,d0
                beq.s   loc_1A4E78
                cmpi.b  #2,d0
                beq.s   loc_1A4E78
                cmpi.b  #3,d0
                beq.s   loc_1A4E7E
                bra.s   loc_1A4E7E
loc_1A4E6C:
                
                move.b  $2D(a5),d0
                andi.b  #$30,d0 
                beq.w   loc_1A4CD6
loc_1A4E78:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A4E7E:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   return_1A4EB2
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   return_1A4EB2
                beq.w   loc_1A4CD6
return_1A4EB2:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1A4C90


; =============== S U B R O U T I N E =======================================

sub_1A4EB4:
                
                bra.s   loc_1A4EFC

    ; End of function sub_1A4EB4


; =============== S U B R O U T I N E =======================================

sub_1A4EB6:
                
                btst    #1,$C(a5)
                bne.s   loc_1A4ECE
                move.b  $37(a5),d0
                beq.s   loc_1A4ED4
                cmpi.b  #$10,d0
                beq.s   loc_1A4F00
                bra.w   loc_1A5078
loc_1A4ECE:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A4ED4:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$30,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A4EFC
                rts
loc_1A4EFC:
                
                bra.w   sub_1A8AB6
loc_1A4F00:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1A4F30
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A4F34
                bcs.s   loc_1A4F2A
                bsr.s   sub_1A4F82
                bcs.s   loc_1A4F2A
                bsr.w   sub_1A4FD0
                bcs.s   loc_1A4F2A
                bsr.w   sub_1A501E
loc_1A4F2A:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A4F30:
                
                bra.w   sub_1A8AA6

    ; End of function sub_1A4EB6


; =============== S U B R O U T I N E =======================================

sub_1A4F34:
                
                move.w  #$50,d5 
                move.w  #$50,d6 
                move.w  #$50,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A4F7E
                move.w  #$38,d5 
                move.w  #$38,d6 
                move.w  #$38,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A4F7E
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #8,d7
                bhi.s   loc_1A4F7E
                move.b  #$20,$37(a5) 
                move.w  #$E,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A4F7E:
                
                tst.b   d0
                rts

    ; End of function sub_1A4F34


; =============== S U B R O U T I N E =======================================

sub_1A4F82:
                
                move.w  #$38,d5 
                move.w  #$38,d6 
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A4FCC
                move.w  #$28,d5 
                move.w  #$28,d6 
                move.w  #$28,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A4FCC
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12,d7
                bhi.s   loc_1A4FCC
                move.b  #$21,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A4FCC:
                
                tst.b   d0
                rts

    ; End of function sub_1A4F82


; =============== S U B R O U T I N E =======================================

sub_1A4FD0:
                
                move.w  #$30,d5 
                move.w  #$30,d6 
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A501A
                move.w  #$28,d5 
                move.w  #$28,d6 
                move.w  #$28,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A501A
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12,d7
                bhi.s   loc_1A501A
                move.b  #$22,$37(a5) 
                move.w  #8,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A501A:
                
                tst.b   d0
                rts

    ; End of function sub_1A4FD0


; =============== S U B R O U T I N E =======================================

sub_1A501E:
                
                move.w  #$20,d5 
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A5074
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$3C,d7 
                bcc.s   loc_1A505A
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A505A:
                
                move.b  #$24,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A5074:
                
                tst.b   d0
                rts

    ; End of function sub_1A501E


; START OF FUNCTION CHUNK FOR sub_1A4EB6

loc_1A5078:
                
                andi.b  #$F,d0
                beq.s   loc_1A5092
                cmpi.b  #1,d0
                beq.s   loc_1A50E0
                cmpi.b  #2,d0
                beq.s   loc_1A50A4
                cmpi.b  #3,d0
                beq.s   loc_1A50AA
                bra.s   loc_1A50E0
loc_1A5092:
                
                move.b  $2D(a5),d0
                andi.b  #$30,d0 
                beq.w   loc_1A4EFC
                bsr.w   sub_1A8ADA
                rts
loc_1A50A4:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A50AA:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   return_1A50DE
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   return_1A50DE
                beq.w   loc_1A4EFC
return_1A50DE:
                
                rts
loc_1A50E0:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   loc_1A5114
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   loc_1A5114
                beq.w   loc_1A4EFC
loc_1A5114:
                
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1A4EB6


; =============== S U B R O U T I N E =======================================

sub_1A511A:
                
                bra.s   loc_1A5162

    ; End of function sub_1A511A


; =============== S U B R O U T I N E =======================================

sub_1A511C:
                
                btst    #1,$C(a5)
                bne.s   loc_1A5134
                move.b  $37(a5),d0
                beq.s   loc_1A513A
                cmpi.b  #$10,d0
                beq.s   loc_1A5166
                bra.w   loc_1A52DE
loc_1A5134:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A513A:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$40,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A5162
                rts
loc_1A5162:
                
                bra.w   sub_1A8AB6
loc_1A5166:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1A5196
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A519A
                bcs.s   loc_1A5190
                bsr.s   sub_1A51E8
                bcs.s   loc_1A5190
                bsr.w   sub_1A5236
                bcs.s   loc_1A5190
                bsr.w   sub_1A5284
loc_1A5190:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A5196:
                
                bra.w   sub_1A8AA6

    ; End of function sub_1A511C


; =============== S U B R O U T I N E =======================================

sub_1A519A:
                
                move.w  #$50,d5 
                move.w  #$50,d6 
                move.w  #$50,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A51E4
                move.w  #$38,d5 
                move.w  #$38,d6 
                move.w  #$38,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A51E4
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #8,d7
                bhi.s   loc_1A51E4
                move.b  #$20,$37(a5) 
                move.w  #$E,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A51E4:
                
                tst.b   d0
                rts

    ; End of function sub_1A519A


; =============== S U B R O U T I N E =======================================

sub_1A51E8:
                
                move.w  #$38,d5 
                move.w  #$38,d6 
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A5232
                move.w  #$20,d5 
                move.w  #$20,d6 
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A5232
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C,d7
                bhi.s   loc_1A5232
                move.b  #$21,$37(a5) 
                move.w  #$12,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A5232:
                
                tst.b   d0
                rts

    ; End of function sub_1A51E8


; =============== S U B R O U T I N E =======================================

sub_1A5236:
                
                move.w  #$38,d5 
                move.w  #$38,d6 
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A5280
                move.w  #$20,d5 
                move.w  #$20,d6 
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A5280
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C,d7
                bhi.s   loc_1A5280
                move.b  #$22,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A5280:
                
                tst.b   d0
                rts

    ; End of function sub_1A5236


; =============== S U B R O U T I N E =======================================

sub_1A5284:
                
                move.w  #$20,d5 
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A52DA
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$32,d7 
                bcc.s   loc_1A52C0
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A52C0:
                
                move.b  #$24,$37(a5) 
                move.w  #$12,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A52DA:
                
                tst.b   d0
                rts

    ; End of function sub_1A5284


; START OF FUNCTION CHUNK FOR sub_1A511C

loc_1A52DE:
                
                andi.b  #$F,d0
                beq.s   loc_1A52F8
                cmpi.b  #1,d0
                beq.s   loc_1A5340
                cmpi.b  #2,d0
                beq.s   loc_1A5340
                cmpi.b  #3,d0
                beq.s   loc_1A530A
                bra.s   loc_1A5340
loc_1A52F8:
                
                move.b  $2D(a5),d0
                andi.b  #$30,d0 
                beq.w   loc_1A5162
                bsr.w   sub_1A8ADA
                rts
loc_1A530A:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   return_1A533E
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   return_1A533E
                beq.w   loc_1A5162
return_1A533E:
                
                rts
loc_1A5340:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   loc_1A5374
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   loc_1A5374
                beq.w   loc_1A5162
loc_1A5374:
                
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1A511C


; =============== S U B R O U T I N E =======================================

sub_1A537A:
                
                bra.s   loc_1A53C8

    ; End of function sub_1A537A


; =============== S U B R O U T I N E =======================================

sub_1A537C:
                
                btst    #1,$C(a5)
                bne.s   loc_1A5394
                move.b  $37(a5),d0
                beq.s   loc_1A539A
                cmpi.b  #$10,d0
                beq.s   loc_1A53E0
                bra.w   loc_1A558A
loc_1A5394:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A539A:
                
                move.w  $12(a5),$54(a5)
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$50,d5 
                move.w  #$10,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A53C8
                rts
loc_1A53C8:
                
                move.w  #5,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                rts
loc_1A53E0:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1A5414
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A5424
                bcs.s   loc_1A540E
                bsr.w   sub_1A548A
                bcs.w   loc_1A558A
                bsr.w   sub_1A54F4
                bcs.s   loc_1A540E
                bsr.w   sub_1A5550
loc_1A540E:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A5414:
                
                move.w  #5,$34(a5)
                bsr.w   sub_1A8AE0
                bsr.w   sub_1A8ADA
                rts

    ; End of function sub_1A537C


; =============== S U B R O U T I N E =======================================

sub_1A5424:
                
                move.b  $2F(a5),d0
                andi.b  #$30,d0 
                bne.w   loc_1A5486
                btst    #6,$38(a5)
                bne.s   loc_1A5486
                move.w  #$38,d5 
                move.w  #$38,d6 
                move.w  #$38,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A5486
                move.w  #$28,d5 
                move.w  #$28,d6 
                move.w  #$28,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A5486
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$1F,d7
                bhi.s   loc_1A5486

    ; End of function sub_1A5424


; =============== S U B R O U T I N E =======================================

sub_1A546C:
                
                move.b  #$20,$37(a5) 
                move.w  #$13,$34(a5)
                clr.b   $D(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts

    ; End of function sub_1A546C


; START OF FUNCTION CHUNK FOR sub_1A5424

loc_1A5486:
                
                tst.b   d0
                rts

; END OF FUNCTION CHUNK FOR sub_1A5424


; =============== S U B R O U T I N E =======================================

sub_1A548A:
                
                move.b  $2F(a5),d0
                andi.b  #$30,d0 
                bne.w   loc_1A54F0
                move.w  #$38,d5 
                move.w  #$38,d6 
                move.w  #$38,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A54F0
                move.w  #$28,d5 
                move.w  #$28,d6 
                move.w  #$28,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A54F0
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$1F,d7
                bhi.s   loc_1A54F0
                btst    #6,$38(a5)
                beq.s   sub_1A546C
                move.b  #$21,$37(a5) 
                move.w  #0,$34(a5)
                clr.b   $D(a5)
                bsr.w   sub_1A8AE0
                move.b  #1,d0
                ori     #1,ccr
                rts
loc_1A54F0:
                
                tst.b   d0
                rts

    ; End of function sub_1A548A


; =============== S U B R O U T I N E =======================================

sub_1A54F4:
                
                move.w  #$28,d5 
                move.w  #$28,d6 
                move.w  #$28,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A554C
                move.w  #$18,d5
                move.w  #$18,d6
                move.w  #$18,d7
                bsr.w   sub_1A8964
                bcs.s   loc_1A554C
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C,d7
                bhi.s   loc_1A554C
                btst    #6,$38(a5)
                beq.w   sub_1A546C
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A554C:
                
                tst.b   d0
                rts

    ; End of function sub_1A54F4


; =============== S U B R O U T I N E =======================================

sub_1A5550:
                
                move.w  #$18,d5
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A5586
                btst    #6,$38(a5)
                beq.w   sub_1A546C
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A5586:
                
                tst.b   d0
                rts

    ; End of function sub_1A5550


; START OF FUNCTION CHUNK FOR sub_1A537C

loc_1A558A:
                
                andi.b  #$F,d0
                beq.s   loc_1A55A8
                cmpi.b  #1,d0
                beq.w   loc_1A5638
                cmpi.b  #2,d0
                beq.w   loc_1A56BA
                cmpi.b  #3,d0
                bra.w   loc_1A56BA
loc_1A55A8:
                
                tst.b   $D(a5)
                bne.s   loc_1A55CE
                move.b  #$18,d0
                subq.b  #1,d0
                add.b   d0,$55(a5)
                jsr     (sub_3BC).l
                bcc.s   loc_1A55C8
                move.w  $12(a5),$54(a5)
                rts
loc_1A55C8:
                
                bset    #6,$38(a5)
loc_1A55CE:
                
                addq.b  #1,$D(a5)
                cmpi.b  #1,$D(a5)
                bne.s   loc_1A55E8
                move.b  #$FF,$2D(a5)
                move.w  #$40,$2E(a5) 
                rts
loc_1A55E8:
                
                cmpi.b  #$A,$D(a5)
                bne.s   loc_1A55FE
                move.b  #$FF,$2D(a5)
                move.w  #$80,$2E(a5) 
                rts
loc_1A55FE:
                
                cmpi.b  #$14,$D(a5)
                bne.s   loc_1A5614
                move.b  #$FF,$2D(a5)
                move.w  #$C0,$2E(a5) 
                rts
loc_1A5614:
                
                cmpi.b  #$1E,$D(a5)
                bne.s   loc_1A562A
                move.b  #$FF,$2D(a5)
                move.w  #$100,$2E(a5)
                rts
loc_1A562A:
                
                cmpi.b  #$32,$D(a5) 
                bne.w   return_1A56B8
                bra.w   loc_1A53C8
loc_1A5638:
                
                addq.b  #1,$D(a5)
                cmpi.b  #1,$D(a5)
                bne.s   loc_1A5658
                bclr    #6,$38(a5)
                move.b  #$FF,$2D(a5)
                move.w  #$100,$2E(a5)
                rts
loc_1A5658:
                
                cmpi.b  #$A,$D(a5)
                bne.s   loc_1A566E
                move.b  #$FF,$2D(a5)
                move.w  #$C0,$2E(a5) 
                rts
loc_1A566E:
                
                cmpi.b  #$14,$D(a5)
                bne.s   loc_1A5684
                move.b  #$FF,$2D(a5)
                move.w  #$140,$2E(a5)
                rts
loc_1A5684:
                
                cmpi.b  #$1E,$D(a5)
                bne.s   loc_1A569A
                move.b  #$FF,$2D(a5)
                move.w  #$180,$2E(a5)
                rts
loc_1A569A:
                
                cmpi.b  #$28,$D(a5) 
                bne.s   return_1A56B8
                move.b  #$FF,$2D(a5)
                move.w  #$20,$2E(a5) 
                move.w  $12(a5),$54(a5)
                bra.w   loc_1A53C8
return_1A56B8:
                
                rts
loc_1A56BA:
                
                btst    #6,$38(a5)
                bne.s   loc_1A56CA
                bsr.w   sub_1A546C
                bra.w   loc_1A55A8
loc_1A56CA:
                
                move.w  #$300,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   return_1A570C
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$400,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   return_1A570C
                clr.w   $2C(a5)
                clr.w   $2E(a5)
                bset    #6,$38(a5)
                bra.w   loc_1A53C8
return_1A570C:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1A537C


; =============== S U B R O U T I N E =======================================

sub_1A570E:
                
                bra.s   loc_1A575C

    ; End of function sub_1A570E


; =============== S U B R O U T I N E =======================================

sub_1A5710:
                
                btst    #1,$C(a5)
                bne.s   loc_1A5728
                move.b  $37(a5),d0
                beq.s   loc_1A572E
                cmpi.b  #$10,d0
                beq.s   loc_1A5774
                bra.w   loc_1A591E
loc_1A5728:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A572E:
                
                move.w  $12(a5),$54(a5)
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$50,d5 
                move.w  #$10,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A575C
                rts
loc_1A575C:
                
                move.w  #5,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                rts
loc_1A5774:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1A57A8
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A57B8
                bcs.s   loc_1A57A2
                bsr.w   sub_1A581E
                bcs.w   loc_1A591E
                bsr.w   sub_1A5888
                bcs.s   loc_1A57A2
                bsr.w   sub_1A58E4
loc_1A57A2:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A57A8:
                
                move.w  #5,$34(a5)
                bsr.w   sub_1A8AE0
                bsr.w   sub_1A8ADA
                rts

    ; End of function sub_1A5710


; =============== S U B R O U T I N E =======================================

sub_1A57B8:
                
                move.b  $2F(a5),d0
                andi.b  #$30,d0 
                bne.w   loc_1A581A
                btst    #6,$38(a5)
                bne.s   loc_1A581A
                move.w  #$38,d5 
                move.w  #$38,d6 
                move.w  #$38,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A581A
                move.w  #$28,d5 
                move.w  #$28,d6 
                move.w  #$28,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A581A
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$1F,d7
                bhi.s   loc_1A581A

    ; End of function sub_1A57B8


; =============== S U B R O U T I N E =======================================

sub_1A5800:
                
                move.b  #$20,$37(a5) 
                move.w  #$13,$34(a5)
                clr.b   $D(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts

    ; End of function sub_1A5800


; START OF FUNCTION CHUNK FOR sub_1A57B8

loc_1A581A:
                
                tst.b   d0
                rts

; END OF FUNCTION CHUNK FOR sub_1A57B8


; =============== S U B R O U T I N E =======================================

sub_1A581E:
                
                move.b  $2F(a5),d0
                andi.b  #$30,d0 
                bne.w   loc_1A5884
                move.w  #$38,d5 
                move.w  #$38,d6 
                move.w  #$38,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A5884
                move.w  #$28,d5 
                move.w  #$28,d6 
                move.w  #$28,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A5884
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$2B,d7 
                bhi.s   loc_1A5884
                btst    #6,$38(a5)
                beq.s   sub_1A5800
                move.b  #$21,$37(a5) 
                move.w  #0,$34(a5)
                clr.b   $D(a5)
                bsr.w   sub_1A8AE0
                move.b  #1,d0
                ori     #1,ccr
                rts
loc_1A5884:
                
                tst.b   d0
                rts

    ; End of function sub_1A581E


; =============== S U B R O U T I N E =======================================

sub_1A5888:
                
                move.w  #$28,d5 
                move.w  #$28,d6 
                move.w  #$28,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A58E0
                move.w  #$18,d5
                move.w  #$18,d6
                move.w  #$18,d7
                bsr.w   sub_1A8964
                bcs.s   loc_1A58E0
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$1F,d7
                bhi.s   loc_1A58E0
                btst    #6,$38(a5)
                beq.w   sub_1A5800
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A58E0:
                
                tst.b   d0
                rts

    ; End of function sub_1A5888


; =============== S U B R O U T I N E =======================================

sub_1A58E4:
                
                move.w  #$18,d5
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A591A
                btst    #6,$38(a5)
                beq.w   sub_1A5800
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A591A:
                
                tst.b   d0
                rts

    ; End of function sub_1A58E4


; START OF FUNCTION CHUNK FOR sub_1A5710

loc_1A591E:
                
                andi.b  #$F,d0
                beq.s   loc_1A593C
                cmpi.b  #1,d0
                beq.w   loc_1A59CC
                cmpi.b  #2,d0
                beq.w   loc_1A5A4E
                cmpi.b  #3,d0
                bra.w   loc_1A5AC8
loc_1A593C:
                
                tst.b   $D(a5)
                bne.s   loc_1A5962
                move.b  #$18,d0
                subq.b  #1,d0
                add.b   d0,$55(a5)
                jsr     (sub_3BC).l
                bcc.s   loc_1A595C
                move.w  $12(a5),$54(a5)
                rts
loc_1A595C:
                
                bset    #6,$38(a5)
loc_1A5962:
                
                addq.b  #1,$D(a5)
                cmpi.b  #1,$D(a5)
                bne.s   loc_1A597C
                move.b  #$FF,$2D(a5)
                move.w  #$40,$2E(a5) 
                rts
loc_1A597C:
                
                cmpi.b  #$A,$D(a5)
                bne.s   loc_1A5992
                move.b  #$FF,$2D(a5)
                move.w  #$80,$2E(a5) 
                rts
loc_1A5992:
                
                cmpi.b  #$14,$D(a5)
                bne.s   loc_1A59A8
                move.b  #$FF,$2D(a5)
                move.w  #$C0,$2E(a5) 
                rts
loc_1A59A8:
                
                cmpi.b  #$1E,$D(a5)
                bne.s   loc_1A59BE
                move.b  #$FF,$2D(a5)
                move.w  #$100,$2E(a5)
                rts
loc_1A59BE:
                
                cmpi.b  #$32,$D(a5) 
                bne.w   return_1A5A4C
                bra.w   loc_1A575C
loc_1A59CC:
                
                addq.b  #1,$D(a5)
                cmpi.b  #1,$D(a5)
                bne.s   loc_1A59EC
                bclr    #6,$38(a5)
                move.b  #$FF,$2D(a5)
                move.w  #$100,$2E(a5)
                rts
loc_1A59EC:
                
                cmpi.b  #$A,$D(a5)
                bne.s   loc_1A5A02
                move.b  #$FF,$2D(a5)
                move.w  #$C0,$2E(a5) 
                rts
loc_1A5A02:
                
                cmpi.b  #$14,$D(a5)
                bne.s   loc_1A5A18
                move.b  #$FF,$2D(a5)
                move.w  #$140,$2E(a5)
                rts
loc_1A5A18:
                
                cmpi.b  #$1E,$D(a5)
                bne.s   loc_1A5A2E
                move.b  #$FF,$2D(a5)
                move.w  #$180,$2E(a5)
                rts
loc_1A5A2E:
                
                cmpi.b  #$28,$D(a5) 
                bne.s   return_1A5A4C
                move.b  #$FF,$2D(a5)
                move.w  #$20,$2E(a5) 
                move.w  $12(a5),$54(a5)
                bra.w   loc_1A575C
return_1A5A4C:
                
                rts
loc_1A5A4E:
                
                btst    #6,$38(a5)
                bne.s   loc_1A5A5E
                bsr.w   sub_1A5800
                bra.w   loc_1A593C
loc_1A5A5E:
                
                move.w  #$300,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$C,$D(a5)
                bcs.w   return_1A5B1A
                move.w  #$500,$2C(a5)
                move.w  #$18,d1
                move.w  #0,d2
                move.w  #8,d3
                bsr.w   sub_1A880C
                bcc.s   loc_1A5AAC
                cmpi.b  #$C,$D(a5)
                bne.s   loc_1A5AAC
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.b  #$28,d7 
                bcc.s   return_1A5AC6
                move.b  #0,d0
                bsr.w   sub_1A8AD4
                bra.s   return_1A5AC6
loc_1A5AAC:
                
                cmpi.b  #$18,$D(a5)
                bcs.s   return_1A5AC6
                move.w  #$600,$2C(a5)
                cmpi.b  #$20,$D(a5) 
                bcs.s   return_1A5AC6
                bra.w   loc_1A5B08
return_1A5AC6:
                
                rts
loc_1A5AC8:
                
                btst    #6,$38(a5)
                bne.s   loc_1A5AD8
                bsr.w   sub_1A5800
                bra.w   loc_1A593C
loc_1A5AD8:
                
                move.w  #$300,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   return_1A5B1A
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$400,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   return_1A5B1A
loc_1A5B08:
                
                clr.w   $2C(a5)
                clr.w   $2E(a5)
                bset    #6,$38(a5)
                bra.w   loc_1A575C
return_1A5B1A:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1A5710


; =============== S U B R O U T I N E =======================================

sub_1A5B1C:
                
                bra.s   loc_1A5B6A

    ; End of function sub_1A5B1C


; =============== S U B R O U T I N E =======================================

sub_1A5B1E:
                
                btst    #1,$C(a5)
                bne.s   loc_1A5B36
                move.b  $37(a5),d0
                beq.s   loc_1A5B3C
                cmpi.b  #$10,d0
                beq.s   loc_1A5B82
                bra.w   loc_1A5D2C
loc_1A5B36:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A5B3C:
                
                move.w  $12(a5),$54(a5)
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$50,d5 
                move.w  #$10,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A5B6A
                rts
loc_1A5B6A:
                
                move.w  #5,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                rts
loc_1A5B82:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1A5BB6
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A5BC6
                bcs.s   loc_1A5BB0
                bsr.w   sub_1A5C2C
                bcs.w   loc_1A5D2C
                bsr.w   sub_1A5C96
                bcs.s   loc_1A5BB0
                bsr.w   sub_1A5CF2
loc_1A5BB0:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A5BB6:
                
                move.w  #5,$34(a5)
                bsr.w   sub_1A8AE0
                bsr.w   sub_1A8ADA
                rts

    ; End of function sub_1A5B1E


; =============== S U B R O U T I N E =======================================

sub_1A5BC6:
                
                move.b  $2F(a5),d0
                andi.b  #$30,d0 
                bne.w   loc_1A5C28
                btst    #6,$38(a5)
                bne.s   loc_1A5C28
                move.w  #$38,d5 
                move.w  #$38,d6 
                move.w  #$38,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A5C28
                move.w  #$28,d5 
                move.w  #$28,d6 
                move.w  #$28,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A5C28
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$25,d7 
                bhi.s   loc_1A5C28

    ; End of function sub_1A5BC6


; =============== S U B R O U T I N E =======================================

sub_1A5C0E:
                
                move.b  #$20,$37(a5) 
                move.w  #$13,$34(a5)
                clr.b   $D(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts

    ; End of function sub_1A5C0E


; START OF FUNCTION CHUNK FOR sub_1A5BC6

loc_1A5C28:
                
                tst.b   d0
                rts

; END OF FUNCTION CHUNK FOR sub_1A5BC6


; =============== S U B R O U T I N E =======================================

sub_1A5C2C:
                
                move.b  $2F(a5),d0
                andi.b  #$30,d0 
                bne.w   loc_1A5C92
                move.w  #$38,d5 
                move.w  #$38,d6 
                move.w  #$38,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A5C92
                move.w  #$28,d5 
                move.w  #$28,d6 
                move.w  #$28,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A5C92
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$32,d7 
                bhi.s   loc_1A5C92
                btst    #6,$38(a5)
                beq.s   sub_1A5C0E
                move.b  #$21,$37(a5) 
                move.w  #0,$34(a5)
                clr.b   $D(a5)
                bsr.w   sub_1A8AE0
                move.b  #1,d0
                ori     #1,ccr
                rts
loc_1A5C92:
                
                tst.b   d0
                rts

    ; End of function sub_1A5C2C


; =============== S U B R O U T I N E =======================================

sub_1A5C96:
                
                move.w  #$28,d5 
                move.w  #$28,d6 
                move.w  #$28,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A5CEE
                move.w  #$18,d5
                move.w  #$18,d6
                move.w  #$18,d7
                bsr.w   sub_1A8964
                bcs.s   loc_1A5CEE
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$25,d7 
                bhi.s   loc_1A5CEE
                btst    #6,$38(a5)
                beq.w   sub_1A5C0E
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A5CEE:
                
                tst.b   d0
                rts

    ; End of function sub_1A5C96


; =============== S U B R O U T I N E =======================================

sub_1A5CF2:
                
                move.w  #$18,d5
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A5D28
                btst    #6,$38(a5)
                beq.w   sub_1A5C0E
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A5D28:
                
                tst.b   d0
                rts

    ; End of function sub_1A5CF2


; START OF FUNCTION CHUNK FOR sub_1A5B1E

loc_1A5D2C:
                
                andi.b  #$F,d0
                beq.s   loc_1A5D4A
                cmpi.b  #1,d0
                beq.w   loc_1A5DDA
                cmpi.b  #2,d0
                beq.w   loc_1A5E5C
                cmpi.b  #3,d0
                bra.w   loc_1A5EE4
loc_1A5D4A:
                
                tst.b   $D(a5)
                bne.s   loc_1A5D70
                move.b  #$18,d0
                subq.b  #1,d0
                add.b   d0,$55(a5)
                jsr     (sub_3BC).l
                bcc.s   loc_1A5D6A
                move.w  $12(a5),$54(a5)
                rts
loc_1A5D6A:
                
                bset    #6,$38(a5)
loc_1A5D70:
                
                addq.b  #1,$D(a5)
                cmpi.b  #1,$D(a5)
                bne.s   loc_1A5D8A
                move.b  #$FF,$2D(a5)
                move.w  #$40,$2E(a5) 
                rts
loc_1A5D8A:
                
                cmpi.b  #$A,$D(a5)
                bne.s   loc_1A5DA0
                move.b  #$FF,$2D(a5)
                move.w  #$80,$2E(a5) 
                rts
loc_1A5DA0:
                
                cmpi.b  #$14,$D(a5)
                bne.s   loc_1A5DB6
                move.b  #$FF,$2D(a5)
                move.w  #$C0,$2E(a5) 
                rts
loc_1A5DB6:
                
                cmpi.b  #$1E,$D(a5)
                bne.s   loc_1A5DCC
                move.b  #$FF,$2D(a5)
                move.w  #$100,$2E(a5)
                rts
loc_1A5DCC:
                
                cmpi.b  #$32,$D(a5) 
                bne.w   return_1A5E5A
                bra.w   loc_1A5B6A
loc_1A5DDA:
                
                addq.b  #1,$D(a5)
                cmpi.b  #1,$D(a5)
                bne.s   loc_1A5DFA
                bclr    #6,$38(a5)
                move.b  #$FF,$2D(a5)
                move.w  #$100,$2E(a5)
                rts
loc_1A5DFA:
                
                cmpi.b  #$A,$D(a5)
                bne.s   loc_1A5E10
                move.b  #$FF,$2D(a5)
                move.w  #$C0,$2E(a5) 
                rts
loc_1A5E10:
                
                cmpi.b  #$14,$D(a5)
                bne.s   loc_1A5E26
                move.b  #$FF,$2D(a5)
                move.w  #$140,$2E(a5)
                rts
loc_1A5E26:
                
                cmpi.b  #$1E,$D(a5)
                bne.s   loc_1A5E3C
                move.b  #$FF,$2D(a5)
                move.w  #$180,$2E(a5)
                rts
loc_1A5E3C:
                
                cmpi.b  #$28,$D(a5) 
                bne.s   return_1A5E5A
                move.b  #$FF,$2D(a5)
                move.w  #$20,$2E(a5) 
                move.w  $12(a5),$54(a5)
                bra.w   loc_1A5B6A
return_1A5E5A:
                
                rts
loc_1A5E5C:
                
                btst    #6,$38(a5)
                bne.s   loc_1A5E6C
                bsr.w   sub_1A5C0E
                bra.w   loc_1A5D4A
loc_1A5E6C:
                
                move.w  #$300,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$C,$D(a5)
                bcs.w   return_1A5F36
                move.w  #$500,$2C(a5)
                move.w  #$20,d1 
                move.w  #0,d2
                move.w  #8,d3
                bsr.w   sub_1A880C
                bcc.s   loc_1A5EC8
                cmpi.b  #$C,$D(a5)
                bne.s   loc_1A5EC8
                move.w  #$64,d6 
                jsr     (sub_362).l
                move.b  #0,d0
                cmpi.b  #$A,d7
                bcs.s   loc_1A5EC2
                move.b  #2,d0
                cmpi.b  #$A,d7
                bcs.s   loc_1A5EC2
                move.b  #1,d0
loc_1A5EC2:
                
                bsr.w   sub_1A8AD4
                bra.s   return_1A5EE2
loc_1A5EC8:
                
                cmpi.b  #$18,$D(a5)
                bcs.s   return_1A5EE2
                move.w  #$600,$2C(a5)
                cmpi.b  #$20,$D(a5) 
                bcs.s   return_1A5EE2
                bra.w   loc_1A5F24
return_1A5EE2:
                
                rts
loc_1A5EE4:
                
                btst    #6,$38(a5)
                bne.s   loc_1A5EF4
                bsr.w   sub_1A5C0E
                bra.w   loc_1A5D4A
loc_1A5EF4:
                
                move.w  #$300,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   return_1A5F36
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$400,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   return_1A5F36
loc_1A5F24:
                
                clr.w   $2C(a5)
                clr.w   $2E(a5)
                bset    #6,$38(a5)
                bra.w   loc_1A5B6A
return_1A5F36:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1A5B1E


; =============== S U B R O U T I N E =======================================

sub_1A5F38:
                
                bra.s   loc_1A5F80

    ; End of function sub_1A5F38


; =============== S U B R O U T I N E =======================================

sub_1A5F3A:
                
                btst    #1,$C(a5)
                bne.s   loc_1A5F52
                move.b  $37(a5),d0
                beq.s   loc_1A5F58
                cmpi.b  #$10,d0
                beq.s   loc_1A5F84
                bra.w   loc_1A60DC
loc_1A5F52:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A5F58:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$30,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A5F80
                rts
loc_1A5F80:
                
                bra.w   sub_1A8AB6
loc_1A5F84:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1A5FB4
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A5FB8
                bcs.s   loc_1A5FAE
                bsr.s   sub_1A5FF8
                bcs.s   loc_1A5FAE
                bsr.w   sub_1A6034
                bcs.s   loc_1A5FAE
                bsr.w   sub_1A6082
loc_1A5FAE:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A5FB4:
                
                bra.w   sub_1A8AA6

    ; End of function sub_1A5F3A


; =============== S U B R O U T I N E =======================================

sub_1A5FB8:
                
                move.w  #$40,d5 
                move.w  #$FFC8,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A5FF4
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$25,d7 
                bhi.s   loc_1A5FF4
                move.b  #$20,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A5FF4:
                
                tst.b   d0
                rts

    ; End of function sub_1A5FB8


; =============== S U B R O U T I N E =======================================

sub_1A5FF8:
                
                move.w  #$38,d5 
                move.w  #$FFD0,d6
                move.w  #$38,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A6030
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C,d7
                bhi.s   loc_1A6030
                move.b  #$21,$37(a5) 
                move.w  #8,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A6030:
                
                tst.b   d0
                rts

    ; End of function sub_1A5FF8


; =============== S U B R O U T I N E =======================================

sub_1A6034:
                
                move.w  #$30,d5 
                move.w  #$30,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A607E
                move.w  #$28,d5 
                move.w  #$28,d6 
                move.w  #$28,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A607E
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12,d7
                bhi.s   loc_1A607E
                move.b  #$22,$37(a5) 
                move.w  #$12,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A607E:
                
                tst.b   d0
                rts

    ; End of function sub_1A6034


; =============== S U B R O U T I N E =======================================

sub_1A6082:
                
                move.w  #$16,d5
                move.w  #0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A60D8
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$28,d7 
                bcc.s   loc_1A60BE
                move.b  #$23,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A60BE:
                
                move.b  #$24,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A60D8:
                
                tst.b   d0
                rts

    ; End of function sub_1A6082


; START OF FUNCTION CHUNK FOR sub_1A5F3A

loc_1A60DC:
                
                andi.b  #$F,d0
                beq.s   loc_1A60FA
                cmpi.b  #1,d0
                beq.s   loc_1A6152
                cmpi.b  #2,d0
                beq.s   loc_1A6158
                cmpi.b  #3,d0
                beq.w   loc_1A6158
                bra.w   loc_1A6158
loc_1A60FA:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$40,d5 
                move.w  #$FFC8,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.w   loc_1A5F80
                addq.b  #1,$D(a5)
                move.b  $D(a5),d0
                cmpi.b  #$80,d0
                beq.w   loc_1A5F80
                andi.b  #$F,d0
                cmpi.b  #1,d0
                bne.s   return_1A6150
                move.b  #$FF,$2D(a5)
                move.b  $D(a5),d0
                andi.w  #$10,d0
                addi.b  #$10,d0
                lsl.b   #2,d0
                move.w  d0,$2E(a5)
return_1A6150:
                
                rts
loc_1A6152:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A6158:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   loc_1A618C
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   loc_1A618C
                beq.w   loc_1A5F80
loc_1A618C:
                
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1A5F3A


; =============== S U B R O U T I N E =======================================

sub_1A6192:
                
                bra.s   loc_1A61DA

    ; End of function sub_1A6192


; =============== S U B R O U T I N E =======================================

sub_1A6194:
                
                btst    #1,$C(a5)
                bne.s   loc_1A61AC
                move.b  $37(a5),d0
                beq.s   loc_1A61B2
                cmpi.b  #$10,d0
                beq.s   loc_1A61DE
                bra.w   loc_1A633A
loc_1A61AC:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A61B2:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$30,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A61DA
                rts
loc_1A61DA:
                
                bra.w   sub_1A8AB6
loc_1A61DE:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1A620E
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A6212
                bcs.s   loc_1A6208
                bsr.s   sub_1A6252
                bcs.s   loc_1A6208
                bsr.w   sub_1A628E
                bcs.s   loc_1A6208
                bsr.w   sub_1A62E0
loc_1A6208:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A620E:
                
                bra.w   sub_1A8AA6

    ; End of function sub_1A6194


; =============== S U B R O U T I N E =======================================

sub_1A6212:
                
                move.w  #$40,d5 
                move.w  #$FFC8,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A624E
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$25,d7 
                bhi.s   loc_1A624E
                move.b  #$20,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A624E:
                
                tst.b   d0
                rts

    ; End of function sub_1A6212


; =============== S U B R O U T I N E =======================================

sub_1A6252:
                
                move.w  #$38,d5 
                move.w  #$FFD0,d6
                move.w  #$38,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A628A
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C,d7
                bhi.s   loc_1A628A
                move.b  #$21,$37(a5) 
                move.w  #8,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A628A:
                
                tst.b   d0
                rts

    ; End of function sub_1A6252


; =============== S U B R O U T I N E =======================================

sub_1A628E:
                
                move.w  #$38,d5 
                move.w  #$38,d6 
                move.w  #$38,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A62DC
                move.w  #$30,d5 
                move.w  #$30,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A62DC
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C,d7
                bhi.s   loc_1A62DC
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A62DC:
                
                tst.b   d0
                rts

    ; End of function sub_1A628E


; =============== S U B R O U T I N E =======================================

sub_1A62E0:
                
                move.w  #$30,d5 
                move.w  #$30,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A6336
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$32,d7 
                bcc.s   loc_1A631C
                move.b  #$23,$37(a5) 
                move.w  #$12,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A631C:
                
                move.b  #$24,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A6336:
                
                tst.b   d0
                rts

    ; End of function sub_1A62E0


; START OF FUNCTION CHUNK FOR sub_1A6194

loc_1A633A:
                
                andi.b  #$F,d0
                beq.s   loc_1A6358
                cmpi.b  #1,d0
                beq.s   loc_1A63B0
                cmpi.b  #2,d0
                beq.s   loc_1A63B6
                cmpi.b  #3,d0
                beq.w   loc_1A645C
                bra.w   loc_1A645C
loc_1A6358:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$40,d5 
                move.w  #$FFC8,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.w   loc_1A61DA
                addq.b  #1,$D(a5)
                move.b  $D(a5),d0
                cmpi.b  #$80,d0
                beq.w   loc_1A61DA
                andi.b  #$F,d0
                cmpi.b  #1,d0
                bne.s   return_1A63AE
                move.b  #$FF,$2D(a5)
                move.b  $D(a5),d0
                andi.w  #$10,d0
                addi.b  #$10,d0
                lsl.b   #2,d0
                move.w  d0,$2E(a5)
return_1A63AE:
                
                rts
loc_1A63B0:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A63B6:
                
                move.l  (a5),d0
                movem.l d0,-(sp)
                move.w  (dword_FF5414).l,d1
                move.w  (dword_FF5414+2).l,d2
                move.b  (byte_FF5404).l,d0
                andi.b  #$C0,d0
                beq.s   loc_1A63E2
                cmpi.b  #$80,d0
                beq.s   loc_1A63E8
                bhi.s   loc_1A63EE
                addi.w  #$18,d1
                bra.s   loc_1A63F2
loc_1A63E2:
                
                subi.w  #$18,d2
                bra.s   loc_1A63F2
loc_1A63E8:
                
                addi.w  #$18,d2
                bra.s   loc_1A63F2
loc_1A63EE:
                
                subi.w  #$18,d1
loc_1A63F2:
                
                move.w  d1,d0
                lsr.w   #4,d1
                move.b  d1,(a5)
                andi.b  #$F,d0
                move.b  d0,2(a5)
                move.w  d2,d0
                lsr.w   #4,d2
                move.b  d2,1(a5)
                andi.b  #$F,d0
                move.b  d0,3(a5)
                movea.l a5,a1
                jsr     sub_1A8AE6
                jsr     (sub_3BC).l
                bcc.s   loc_1A6432
                movem.l (sp)+,d0
                move.l  d0,(a5)
                movea.l a5,a1
                jsr     sub_1A8AE6
                bra.w   loc_1A61DA
loc_1A6432:
                
                bset    #5,$2D(a5)
                move.b  (byte_FF5404).l,d0
                andi.b  #$C0,d0
                eori.b  #$80,d0
                andi.b  #$3F,4(a5) 
                or.b    d0,4(a5)
                movem.l (sp)+,d0
                move.b  #$23,$37(a5) 
                rts
loc_1A645C:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   loc_1A6490
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   loc_1A6490
                beq.w   loc_1A61DA
loc_1A6490:
                
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1A6194


; =============== S U B R O U T I N E =======================================

sub_1A6496:
                
                bra.s   loc_1A64DE

    ; End of function sub_1A6496


; =============== S U B R O U T I N E =======================================

sub_1A6498:
                
                btst    #1,$C(a5)
                bne.s   loc_1A64B0
                move.b  $37(a5),d0
                beq.s   loc_1A64B6
                cmpi.b  #$10,d0
                beq.s   loc_1A64E2
                bra.w   loc_1A662C
loc_1A64B0:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A64B6:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$30,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A64DE
                rts
loc_1A64DE:
                
                bra.w   sub_1A8AB6
loc_1A64E2:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1A6512
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A6516
                bcs.s   loc_1A650C
                bsr.s   sub_1A6556
                bcs.s   loc_1A650C
                bsr.w   sub_1A6592
                bcs.s   loc_1A650C
                bsr.w   sub_1A65D2
loc_1A650C:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A6512:
                
                bra.w   sub_1A8AA6

    ; End of function sub_1A6498


; =============== S U B R O U T I N E =======================================

sub_1A6516:
                
                move.w  #$40,d5 
                move.w  #$FFC8,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A6552
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$19,d7
                bhi.s   loc_1A6552
                move.b  #$20,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A6552:
                
                tst.b   d0
                rts

    ; End of function sub_1A6516


; =============== S U B R O U T I N E =======================================

sub_1A6556:
                
                move.w  #$38,d5 
                move.w  #$FFD0,d6
                move.w  #$38,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A658E
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12,d7
                bhi.s   loc_1A658E
                move.b  #$21,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A658E:
                
                tst.b   d0
                rts

    ; End of function sub_1A6556


; =============== S U B R O U T I N E =======================================

sub_1A6592:
                
                move.w  #$38,d5 
                move.w  #$FFD0,d6
                move.w  #$38,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A65CE
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12,d7
                bhi.s   loc_1A65CE
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A65CE:
                
                tst.b   d0
                rts

    ; End of function sub_1A6592


; =============== S U B R O U T I N E =======================================

sub_1A65D2:
                
                move.w  #$30,d5 
                move.w  #$30,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A6628
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$46,d7 
                bcc.s   loc_1A660E
                move.b  #$23,$37(a5) 
                move.w  #$12,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A660E:
                
                move.b  #$24,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A6628:
                
                tst.b   d0
                rts

    ; End of function sub_1A65D2


; START OF FUNCTION CHUNK FOR sub_1A6498

loc_1A662C:
                
                andi.b  #$F,d0
                beq.s   loc_1A664A
                cmpi.b  #1,d0
                beq.s   loc_1A66A2
                cmpi.b  #2,d0
                beq.s   loc_1A66B6
                cmpi.b  #3,d0
                beq.w   loc_1A676A
                bra.w   loc_1A676A
loc_1A664A:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$40,d5 
                move.w  #$FFC8,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.w   loc_1A64DE
                addq.b  #1,$D(a5)
                move.b  $D(a5),d0
                cmpi.b  #$80,d0
                beq.w   loc_1A64DE
                andi.b  #$F,d0
                cmpi.b  #1,d0
                bne.s   return_1A66A0
                move.b  #$FF,$2D(a5)
                move.b  $D(a5),d0
                andi.w  #$10,d0
                addi.b  #$10,d0
                lsl.b   #2,d0
                move.w  d0,$2E(a5)
return_1A66A0:
                
                rts
loc_1A66A2:
                
                move.l  (a5),d0
                movem.l d0,-(sp)
                move.b  (byte_FF5404).l,d0
                eori.b  #$80,d0
                clr.b   d1
                bra.s   loc_1A66C6
loc_1A66B6:
                
                move.l  (a5),d0
                movem.l d0,-(sp)
                move.b  (byte_FF5404).l,d0
                move.b  #$80,d1
loc_1A66C6:
                
                movem.w d1,-(sp)
                move.w  (dword_FF5414).l,d1
                move.w  (dword_FF5414+2).l,d2
                andi.b  #$C0,d0
                beq.s   loc_1A66EA
                cmpi.b  #$80,d0
                beq.s   loc_1A66F0
                bhi.s   loc_1A66F6
                addi.w  #$18,d1
                bra.s   loc_1A66FA
loc_1A66EA:
                
                subi.w  #$18,d2
                bra.s   loc_1A66FA
loc_1A66F0:
                
                addi.w  #$18,d2
                bra.s   loc_1A66FA
loc_1A66F6:
                
                subi.w  #$18,d1
loc_1A66FA:
                
                move.w  d1,d0
                lsr.w   #4,d1
                move.b  d1,(a5)
                andi.b  #$F,d0
                move.b  d0,2(a5)
                move.w  d2,d0
                lsr.w   #4,d2
                move.b  d2,1(a5)
                andi.b  #$F,d0
                move.b  d0,3(a5)
                movea.l a5,a1
                jsr     sub_1A8AE6
                jsr     (sub_3BC).l
                bcc.s   loc_1A673E
                movem.w (sp)+,d1
                movem.l (sp)+,d0
                move.l  d0,(a5)
                movea.l a5,a1
                jsr     sub_1A8AE6
                bra.w   loc_1A64DE
loc_1A673E:
                
                movem.w (sp)+,d1
                bset    #5,$2D(a5)
                move.b  (byte_FF5404).l,d0
                andi.b  #$C0,d0
                eor.b   d1,d0
                andi.b  #$3F,4(a5) 
                or.b    d0,4(a5)
                movem.l (sp)+,d0
                move.b  #$23,$37(a5) 
                rts
loc_1A676A:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   loc_1A679E
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   loc_1A679E
                beq.w   loc_1A64DE
loc_1A679E:
                
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1A6498


; =============== S U B R O U T I N E =======================================

sub_1A67A4:
                
                bra.s   loc_1A67EC

    ; End of function sub_1A67A4


; =============== S U B R O U T I N E =======================================

sub_1A67A6:
                
                btst    #1,$C(a5)
                bne.s   loc_1A67BE
                move.b  $37(a5),d0
                beq.s   loc_1A67C4
                cmpi.b  #$10,d0
                beq.s   loc_1A67F0
                bra.w   loc_1A6932
loc_1A67BE:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A67C4:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$30,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A67EC
                rts
loc_1A67EC:
                
                bra.w   sub_1A8AB6
loc_1A67F0:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1A6820
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A6824
                bcs.s   loc_1A681A
                bsr.s   sub_1A6860
                bcs.s   loc_1A681A
                bsr.w   sub_1A689C
                bcs.s   loc_1A681A
                bsr.w   sub_1A68D8
loc_1A681A:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A6820:
                
                bra.w   sub_1A8AA6

    ; End of function sub_1A67A6


; =============== S U B R O U T I N E =======================================

sub_1A6824:
                
                move.w  #$48,d5 
                move.w  #$FFC0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A685C
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C,d7
                bhi.s   loc_1A685C
                move.b  #$20,$37(a5) 
                move.w  #$13,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A685C:
                
                tst.b   d0
                rts

    ; End of function sub_1A6824


; =============== S U B R O U T I N E =======================================

sub_1A6860:
                
                move.w  #$50,d5 
                move.w  #$FFC8,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A6898
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$19,d7
                bhi.s   loc_1A6898
                move.b  #$21,$37(a5) 
                move.w  #$E,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A6898:
                
                tst.b   d0
                rts

    ; End of function sub_1A6860


; =============== S U B R O U T I N E =======================================

sub_1A689C:
                
                move.w  #$40,d5 
                move.w  #$FFD0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A68D4
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12,d7
                bhi.s   loc_1A68D4
                move.b  #$22,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A68D4:
                
                tst.b   d0
                rts

    ; End of function sub_1A689C


; =============== S U B R O U T I N E =======================================

sub_1A68D8:
                
                move.w  #$20,d5 
                move.w  #0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A692E
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$3C,d7 
                bcc.s   loc_1A6914
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A6914:
                
                move.b  #$24,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A692E:
                
                tst.b   d0
                rts

    ; End of function sub_1A68D8


; START OF FUNCTION CHUNK FOR sub_1A67A6

loc_1A6932:
                
                andi.b  #$F,d0
                beq.s   loc_1A694E
                cmpi.b  #1,d0
                beq.s   loc_1A6954
                cmpi.b  #2,d0
                beq.s   loc_1A6966
                cmpi.b  #3,d0
                beq.s   loc_1A69A0
                bra.w   loc_1A69D6
loc_1A694E:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A6954:
                
                move.b  $2D(a5),d0
                andi.b  #$30,d0 
                beq.w   loc_1A67EC
                bsr.w   sub_1A8ADA
                rts
loc_1A6966:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   loc_1A699A
                move.w  #$29,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   loc_1A699A
                bra.w   loc_1A67EC
loc_1A699A:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A69A0:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   return_1A69D4
                move.w  #$29,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   return_1A69D4
                bra.w   loc_1A67EC
return_1A69D4:
                
                rts
loc_1A69D6:
                
                move.w  #$300,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   return_1A6A0A
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$400,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   return_1A6A0A
                bra.w   loc_1A67EC
return_1A6A0A:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1A67A6


; =============== S U B R O U T I N E =======================================

sub_1A6A0C:
                
                bra.s   loc_1A6A54

    ; End of function sub_1A6A0C


; =============== S U B R O U T I N E =======================================

sub_1A6A0E:
                
                btst    #1,$C(a5)
                bne.s   loc_1A6A26
                move.b  $37(a5),d0
                beq.s   loc_1A6A2C
                cmpi.b  #$10,d0
                beq.s   loc_1A6A58
                bra.w   loc_1A6B9A
loc_1A6A26:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A6A2C:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$30,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A6A54
                rts
loc_1A6A54:
                
                bra.w   sub_1A8AB6
loc_1A6A58:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1A6A88
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A6A8C
                bcs.s   loc_1A6A82
                bsr.s   sub_1A6AC8
                bcs.s   loc_1A6A82
                bsr.w   sub_1A6B04
                bcs.s   loc_1A6A82
                bsr.w   sub_1A6B40
loc_1A6A82:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A6A88:
                
                bra.w   sub_1A8AA6

    ; End of function sub_1A6A0E


; =============== S U B R O U T I N E =======================================

sub_1A6A8C:
                
                move.w  #$48,d5 
                move.w  #$FFC0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A6AC4
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #6,d7
                bhi.s   loc_1A6AC4
                move.b  #$20,$37(a5) 
                move.w  #$13,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A6AC4:
                
                tst.b   d0
                rts

    ; End of function sub_1A6A8C


; =============== S U B R O U T I N E =======================================

sub_1A6AC8:
                
                move.w  #$50,d5 
                move.w  #$FFD0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A6B00
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12,d7
                bhi.s   loc_1A6B00
                move.b  #$21,$37(a5) 
                move.w  #$14,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A6B00:
                
                tst.b   d0
                rts

    ; End of function sub_1A6AC8


; =============== S U B R O U T I N E =======================================

sub_1A6B04:
                
                move.w  #$40,d5 
                move.w  #$FFD0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A6B3C
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$19,d7
                bhi.s   loc_1A6B3C
                move.b  #$22,$37(a5) 
                move.w  #$E,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A6B3C:
                
                tst.b   d0
                rts

    ; End of function sub_1A6B04


; =============== S U B R O U T I N E =======================================

sub_1A6B40:
                
                move.w  #$20,d5 
                move.w  #0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A6B96
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$32,d7 
                bcc.s   loc_1A6B7C
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A6B7C:
                
                move.b  #$24,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A6B96:
                
                tst.b   d0
                rts

    ; End of function sub_1A6B40


; START OF FUNCTION CHUNK FOR sub_1A6A0E

loc_1A6B9A:
                
                andi.b  #$F,d0
                beq.s   loc_1A6BB6
                cmpi.b  #1,d0
                beq.s   loc_1A6BBC
                cmpi.b  #2,d0
                beq.s   loc_1A6BC2
                cmpi.b  #3,d0
                beq.s   loc_1A6BFC
                bra.w   loc_1A6BC2
loc_1A6BB6:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A6BBC:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A6BC2:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   loc_1A6BF6
                move.w  #$29,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   loc_1A6BF6
                bra.w   loc_1A6A54
loc_1A6BF6:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A6BFC:
                
                move.w  #$300,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   return_1A6C30
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$400,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   return_1A6C30
                bra.w   loc_1A6A54
return_1A6C30:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1A6A0E


; =============== S U B R O U T I N E =======================================

sub_1A6C32:
                
                bra.s   loc_1A6C7A

    ; End of function sub_1A6C32


; =============== S U B R O U T I N E =======================================

sub_1A6C34:
                
                btst    #1,$C(a5)
                bne.s   loc_1A6C4C
                move.b  $37(a5),d0
                beq.s   loc_1A6C52
                cmpi.b  #$10,d0
                beq.s   loc_1A6C7E
                bra.w   loc_1A6DC0
loc_1A6C4C:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A6C52:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$30,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A6C7A
                rts
loc_1A6C7A:
                
                bra.w   sub_1A8AB6
loc_1A6C7E:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1A6CAE
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A6CB2
                bcs.s   loc_1A6CA8
                bsr.s   sub_1A6CEE
                bcs.s   loc_1A6CA8
                bsr.w   sub_1A6D2A
                bcs.s   loc_1A6CA8
                bsr.w   sub_1A6D66
loc_1A6CA8:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A6CAE:
                
                bra.w   sub_1A8AA6

    ; End of function sub_1A6C34


; =============== S U B R O U T I N E =======================================

sub_1A6CB2:
                
                move.w  #$50,d5 
                move.w  #$FFD0,d6
                move.w  #$28,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A6CEA
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$32,d7 
                bhi.s   loc_1A6CEA
                move.b  #$20,$37(a5) 
                move.w  #$15,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A6CEA:
                
                tst.b   d0
                rts

    ; End of function sub_1A6CB2


; =============== S U B R O U T I N E =======================================

sub_1A6CEE:
                
                move.w  #$40,d5 
                move.w  #$FFD0,d6
                move.w  #$28,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A6D26
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$1F,d7
                bhi.s   loc_1A6D26
                move.b  #$21,$37(a5) 
                move.w  #$E,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A6D26:
                
                tst.b   d0
                rts

    ; End of function sub_1A6CEE


; =============== S U B R O U T I N E =======================================

sub_1A6D2A:
                
                move.w  #$40,d5 
                move.w  #$FFD0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A6D62
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$1F,d7
                bhi.s   loc_1A6D62
                move.b  #$22,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A6D62:
                
                tst.b   d0
                rts

    ; End of function sub_1A6D2A


; =============== S U B R O U T I N E =======================================

sub_1A6D66:
                
                move.w  #$20,d5 
                move.w  #0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A6DBC
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$28,d7 
                bcc.s   loc_1A6DA2
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A6DA2:
                
                move.b  #$24,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A6DBC:
                
                tst.b   d0
                rts

    ; End of function sub_1A6D66


; START OF FUNCTION CHUNK FOR sub_1A6C34

loc_1A6DC0:
                
                andi.b  #$F,d0
                beq.s   loc_1A6DDE
                cmpi.b  #1,d0
                beq.s   loc_1A6E2C
                cmpi.b  #2,d0
                beq.s   loc_1A6E02
                cmpi.b  #3,d0
                beq.w   loc_1A6E66
                bra.w   loc_1A6E2C
loc_1A6DDE:
                
                cmpi.b  #8,$2A(a5)
                bcc.s   loc_1A6DFC
                move.w  #$29,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
loc_1A6DFC:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A6E02:
                
                move.w  #$29,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$19,$D(a5)
                bcc.w   loc_1A6C7A
                bsr.w   sub_1A8ADA
                rts
loc_1A6E2C:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   loc_1A6E60
                move.w  #$29,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   loc_1A6E60
                bra.w   loc_1A6C7A
loc_1A6E60:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A6E66:
                
                move.w  #$300,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   return_1A6E9A
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$400,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   return_1A6E9A
                bra.w   loc_1A6C7A
return_1A6E9A:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1A6C34


; =============== S U B R O U T I N E =======================================

sub_1A6E9C:
                
                bra.s   loc_1A6EE4

    ; End of function sub_1A6E9C


; =============== S U B R O U T I N E =======================================

sub_1A6E9E:
                
                btst    #1,$C(a5)
                bne.s   loc_1A6EB6
                move.b  $37(a5),d0
                beq.s   loc_1A6EBC
                cmpi.b  #$10,d0
                beq.s   loc_1A6EE8
                bra.w   loc_1A703A
loc_1A6EB6:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A6EBC:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$10,d6
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A6EE4
                rts
loc_1A6EE4:
                
                bra.w   sub_1A8AB6
loc_1A6EE8:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1A6F18
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A6F1C
                bcs.s   loc_1A6F12
                bsr.s   sub_1A6F58
                bcs.s   loc_1A6F12
                bsr.w   sub_1A6F94
                bcs.s   loc_1A6F12
                bsr.w   sub_1A6FE0
loc_1A6F12:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A6F18:
                
                bra.w   sub_1A8AA6

    ; End of function sub_1A6E9E


; =============== S U B R O U T I N E =======================================

sub_1A6F1C:
                
                move.w  #$48,d5 
                move.w  #$FFC0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A6F54
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$25,d7 
                bhi.s   loc_1A6F54
                move.b  #$20,$37(a5) 
                move.w  #$13,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A6F54:
                
                tst.b   d0
                rts

    ; End of function sub_1A6F1C


; =============== S U B R O U T I N E =======================================

sub_1A6F58:
                
                move.w  #$38,d5 
                move.w  #$FFD0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A6F90
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$19,d7
                bhi.s   loc_1A6F90
                move.b  #$21,$37(a5) 
                move.w  #8,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A6F90:
                
                tst.b   d0
                rts

    ; End of function sub_1A6F58


; =============== S U B R O U T I N E =======================================

sub_1A6F94:
                
                move.w  #$28,d5 
                move.w  #0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A6FDC
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$96,d7 
                bhi.s   loc_1A6FDC
                move.b  (dword_FF542C).l,d0
                andi.b  #7,d0
                beq.s   loc_1A6FDC
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A6FDC:
                
                tst.b   d0
                rts

    ; End of function sub_1A6F94


; =============== S U B R O U T I N E =======================================

sub_1A6FE0:
                
                move.w  #$20,d5 
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A7036
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$1E,d7
                bcc.s   loc_1A701C
                move.b  #$23,$37(a5) 
                move.w  #9,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A701C:
                
                move.b  #$24,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A7036:
                
                tst.b   d0
                rts

    ; End of function sub_1A6FE0


; START OF FUNCTION CHUNK FOR sub_1A6E9E

loc_1A703A:
                
                andi.b  #$F,d0
                beq.s   loc_1A7056
                cmpi.b  #1,d0
                beq.s   loc_1A7056
                cmpi.b  #2,d0
                beq.s   loc_1A705C
                cmpi.b  #3,d0
                beq.s   loc_1A708E
                bra.w   loc_1A708E
loc_1A7056:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A705C:
                
                move.w  #$300,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #5,$D(a5)
                bcs.s   loc_1A7086
                move.w  #$400,$2C(a5)
                cmpi.b  #$17,$D(a5)
                bcs.s   loc_1A7086
                bclr    #0,$38(a5)
                bra.w   loc_1A6EE4
loc_1A7086:
                
                bset    #0,$38(a5)
                rts
loc_1A708E:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   loc_1A70C2
                move.w  #$29,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   loc_1A70C2
                bra.w   loc_1A6EE4
loc_1A70C2:
                
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1A6E9E


; =============== S U B R O U T I N E =======================================

sub_1A70C8:
                
                bra.s   loc_1A7110

    ; End of function sub_1A70C8


; =============== S U B R O U T I N E =======================================

sub_1A70CA:
                
                btst    #1,$C(a5)
                bne.s   loc_1A70E2
                move.b  $37(a5),d0
                beq.s   loc_1A70E8
                cmpi.b  #$10,d0
                beq.s   loc_1A7114
                bra.w   loc_1A7266
loc_1A70E2:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A70E8:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$10,d6
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A7110
                rts
loc_1A7110:
                
                bra.w   sub_1A8AB6
loc_1A7114:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1A7144
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A7148
                bcs.s   loc_1A713E
                bsr.s   sub_1A7184
                bcs.s   loc_1A713E
                bsr.w   sub_1A71C0
                bcs.s   loc_1A713E
                bsr.w   sub_1A720C
loc_1A713E:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A7144:
                
                bra.w   sub_1A8AA6

    ; End of function sub_1A70CA


; =============== S U B R O U T I N E =======================================

sub_1A7148:
                
                move.w  #$48,d5 
                move.w  #$FFC0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A7180
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$19,d7
                bhi.s   loc_1A7180
                move.b  #$20,$37(a5) 
                move.w  #$13,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A7180:
                
                tst.b   d0
                rts

    ; End of function sub_1A7148


; =============== S U B R O U T I N E =======================================

sub_1A7184:
                
                move.w  #$30,d5 
                move.w  #$FFE8,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A71BC
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$19,d7
                bhi.s   loc_1A71BC
                move.b  #$21,$37(a5) 
                move.w  #$12,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A71BC:
                
                tst.b   d0
                rts

    ; End of function sub_1A7184


; =============== S U B R O U T I N E =======================================

sub_1A71C0:
                
                move.w  #$30,d5 
                move.w  #0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A7208
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$96,d7 
                bhi.s   loc_1A7208
                move.b  (dword_FF542C).l,d0
                andi.b  #7,d0
                beq.s   loc_1A7208
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A7208:
                
                tst.b   d0
                rts

    ; End of function sub_1A71C0


; =============== S U B R O U T I N E =======================================

sub_1A720C:
                
                move.w  #$20,d5 
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A7262
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$14,d7
                bcc.s   loc_1A7248
                move.b  #$23,$37(a5) 
                move.w  #9,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A7248:
                
                move.b  #$24,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A7262:
                
                tst.b   d0
                rts

    ; End of function sub_1A720C


; START OF FUNCTION CHUNK FOR sub_1A70CA

loc_1A7266:
                
                andi.b  #$F,d0
                beq.s   loc_1A7282
                cmpi.b  #1,d0
                beq.s   loc_1A72BA
                cmpi.b  #2,d0
                beq.s   loc_1A7288
                cmpi.b  #3,d0
                beq.s   loc_1A72BA
                bra.w   loc_1A72BA
loc_1A7282:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A7288:
                
                move.w  #$300,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #5,$D(a5)
                bcs.s   loc_1A72B2
                move.w  #$400,$2C(a5)
                cmpi.b  #$17,$D(a5)
                bcs.s   loc_1A72B2
                bclr    #0,$38(a5)
                bra.w   loc_1A7110
loc_1A72B2:
                
                bset    #0,$38(a5)
                rts
loc_1A72BA:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   loc_1A72EE
                move.w  #$29,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   loc_1A72EE
                bra.w   loc_1A7110
loc_1A72EE:
                
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1A70CA


; =============== S U B R O U T I N E =======================================

sub_1A72F4:
                
                bra.s   loc_1A733C

    ; End of function sub_1A72F4


; =============== S U B R O U T I N E =======================================

sub_1A72F6:
                
                btst    #1,$C(a5)
                bne.s   loc_1A730E
                move.b  $37(a5),d0
                beq.s   loc_1A7314
                cmpi.b  #$10,d0
                beq.s   loc_1A7340
                bra.w   loc_1A7490
loc_1A730E:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A7314:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$10,d6
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A733C
                rts
loc_1A733C:
                
                bra.w   sub_1A8AB6
loc_1A7340:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1A7370
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A7374
                bcs.s   loc_1A736A
                bsr.s   sub_1A73B0
                bcs.s   loc_1A736A
                bsr.w   sub_1A73F6
                bcs.s   loc_1A736A
                bsr.w   sub_1A7436
loc_1A736A:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A7370:
                
                bra.w   sub_1A8AA6

    ; End of function sub_1A72F6


; =============== S U B R O U T I N E =======================================

sub_1A7374:
                
                move.w  #$40,d5 
                move.w  #$FFD0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A73AC
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12,d7
                bhi.s   loc_1A73AC
                move.b  #$20,$37(a5) 
                move.w  #$12,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A73AC:
                
                tst.b   d0
                rts

    ; End of function sub_1A7374


; =============== S U B R O U T I N E =======================================

sub_1A73B0:
                
                move.w  #$38,d5 
                move.w  #$FFE0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A73F2
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12,d7
                move.b  (dword_FF542C).l,d0
                andi.b  #7,d0
                beq.s   loc_1A73F2
                move.b  #$21,$37(a5) 
                move.w  #$12,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A73F2:
                
                tst.b   d0
                rts

    ; End of function sub_1A73B0


; =============== S U B R O U T I N E =======================================

sub_1A73F6:
                
                move.w  #$30,d5 
                move.w  #0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A7432
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$4B,d7 
                bhi.s   loc_1A7432
                move.b  #$22,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A7432:
                
                tst.b   d0
                rts

    ; End of function sub_1A73F6


; =============== S U B R O U T I N E =======================================

sub_1A7436:
                
                move.w  #$28,d5 
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A748C
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$A,d7
                bcc.s   loc_1A7472
                move.b  #$23,$37(a5) 
                move.w  #9,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A7472:
                
                move.b  #$24,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A748C:
                
                tst.b   d0
                rts

    ; End of function sub_1A7436


; START OF FUNCTION CHUNK FOR sub_1A72F6

loc_1A7490:
                
                andi.b  #$F,d0
                beq.s   loc_1A74E2
                cmpi.b  #1,d0
                beq.s   loc_1A74AC
                cmpi.b  #2,d0
                beq.s   loc_1A74E2
                cmpi.b  #3,d0
                beq.s   loc_1A74E2
                bra.w   loc_1A74E2
loc_1A74AC:
                
                move.w  #$300,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #5,$D(a5)
                bcs.s   loc_1A74D6
                move.w  #$400,$2C(a5)
                cmpi.b  #$17,$D(a5)
                bcs.s   loc_1A74D6
                bclr    #0,$38(a5)
                bra.w   loc_1A733C
loc_1A74D6:
                
                bset    #0,$38(a5)
                bsr.w   sub_1A8ADA
                rts
loc_1A74E2:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   loc_1A7516
                move.w  #$29,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   loc_1A7516
                bra.w   loc_1A733C
loc_1A7516:
                
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1A72F6


; =============== S U B R O U T I N E =======================================

sub_1A751C:
                
                bra.s   loc_1A753E

    ; End of function sub_1A751C


; =============== S U B R O U T I N E =======================================

sub_1A751E:
                
                btst    #1,$C(a5)
                bne.s   loc_1A7536
                move.b  $37(a5),d0
                beq.s   loc_1A753C
                cmpi.b  #$10,d0
                beq.s   sub_1A757C
                bra.w   sub_1A75E4
loc_1A7536:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A753C:
                
                bra.s   loc_1A7544

    ; End of function sub_1A751E


; START OF FUNCTION CHUNK FOR sub_1A75E4

loc_1A753E:
                
                tst.b   $A(a5)
                bpl.s   loc_1A7560
loc_1A7544:
                
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$20,$37(a5) 
                bclr    #1,$C(a5)
                clr.b   $D(a5)
                rts
loc_1A7560:
                
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                clr.b   $D(a5)
                rts

; END OF FUNCTION CHUNK FOR sub_1A75E4


; =============== S U B R O U T I N E =======================================

sub_1A757C:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.w   sub_1A7596
                bsr.w   sub_1A8ADA
                rts

    ; End of function sub_1A757C


; =============== S U B R O U T I N E =======================================

sub_1A7596:
                
                move.w  #$10,d5
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   sub_1A75E0
                move.w  $54(a5),d0
                sub.w   (word_FF5412).l,d0
                cmpi.w  #$20,d0 
                bcc.s   sub_1A75E0
                move.w  #$64,d6 
                jsr     (sub_362).l
                move.b  #$21,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                clr.b   $4D(a5)
                ori     #1,ccr
                rts

    ; End of function sub_1A7596


; =============== S U B R O U T I N E =======================================

sub_1A75E0:
                
                tst.b   d0
                rts

    ; End of function sub_1A75E0


; =============== S U B R O U T I N E =======================================

sub_1A75E4:
                
                andi.b  #$F,d0
                beq.s   loc_1A75F4
                cmpi.b  #1,d0
                beq.s   sub_1A7642
                bra.w   loc_1A753E
loc_1A75F4:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #8,$D(a5)
                bcs.s   return_1A7640
                move.w  #$200,$2C(a5)
                cmpi.b  #$10,$D(a5)
                bcs.s   return_1A7640
                move.w  #$300,$2C(a5)
                cmpi.b  #$18,$D(a5)
                bcs.s   return_1A7640
                move.w  #$400,$2C(a5)
                cmpi.b  #$20,$D(a5) 
                bcs.s   return_1A7640
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
return_1A7640:
                
                rts

    ; End of function sub_1A75E4


; =============== S U B R O U T I N E =======================================

sub_1A7642:
                
                tst.b   (byte_FF1145).l
                bne.w   loc_1A753E
                tst.b   (byte_FF1142).l
                bne.s   loc_1A765C
                move.b  #1,(byte_FF1142).l
loc_1A765C:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$10,d5
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.w   loc_1A7560
                move.b  $4D(a5),d0
                addq.b  #1,$4D(a5)
                tst.b   d0
                bne.s   loc_1A76A4
                sndCom  SFX_BUBOBI
                lea     (dword_FF5400).l,a5
                move.w  #$80,d0 
                bsr.w   sub_1A8ACE
                tst.w   $3E(a5)
                beq.s   sub_1A76AE
loc_1A76A4:
                
                cmpi.b  #$3C,d0 
                bcc.w   loc_1A7560
                rts

    ; End of function sub_1A7642


; =============== S U B R O U T I N E =======================================

sub_1A76AE:
                
                bclr    #6,$C(a5)
                bra.w   sub_1A8AEC
loc_1A76B8:
                
                bra.s   loc_1A76DA
loc_1A76BA:
                
                btst    #1,$C(a5)
                bne.s   sub_1A76D2
                move.b  $37(a5),d0
                beq.s   sub_1A76D8
                cmpi.b  #$10,d0
                beq.s   sub_1A7718
                bra.w   sub_1A77A0

    ; End of function sub_1A76AE


; =============== S U B R O U T I N E =======================================

sub_1A76D2:
                
                bsr.w   sub_1A8ADA
                rts

    ; End of function sub_1A76D2


; =============== S U B R O U T I N E =======================================

sub_1A76D8:
                
                bra.s   loc_1A76E0

    ; End of function sub_1A76D8


; START OF FUNCTION CHUNK FOR sub_1A76AE

loc_1A76DA:
                
                tst.b   $A(a5)
                bpl.s   loc_1A76FC
loc_1A76E0:
                
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$20,$37(a5) 
                bclr    #1,$C(a5)
                clr.b   $D(a5)
                rts
loc_1A76FC:
                
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                clr.b   $D(a5)
                rts

; END OF FUNCTION CHUNK FOR sub_1A76AE


; =============== S U B R O U T I N E =======================================

sub_1A7718:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.w   sub_1A7732
                bsr.w   sub_1A8ADA
                rts

    ; End of function sub_1A7718


; =============== S U B R O U T I N E =======================================

sub_1A7732:
                
                move.w  #$10,d5
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   sub_1A779C
                move.w  $54(a5),d0
                sub.w   (word_FF5412).l,d0
                cmpi.w  #$20,d0 
                bcc.s   sub_1A779C
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$5A,d7 
                bcc.s   sub_1A7782
                move.b  #$21,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                clr.b   $4D(a5)
                ori     #1,ccr
                rts

    ; End of function sub_1A7732


; =============== S U B R O U T I N E =======================================

sub_1A7782:
                
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts

    ; End of function sub_1A7782


; =============== S U B R O U T I N E =======================================

sub_1A779C:
                
                tst.b   d0
                rts

    ; End of function sub_1A779C


; =============== S U B R O U T I N E =======================================

sub_1A77A0:
                
                andi.b  #$F,d0
                beq.s   loc_1A77B8
                cmpi.b  #1,d0
                beq.s   sub_1A7806
                cmpi.b  #2,d0
                beq.w   sub_1A7882
                bra.w   loc_1A76DA
loc_1A77B8:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #8,$D(a5)
                bcs.s   return_1A7804
                move.w  #$200,$2C(a5)
                cmpi.b  #$10,$D(a5)
                bcs.s   return_1A7804
                move.w  #$300,$2C(a5)
                cmpi.b  #$18,$D(a5)
                bcs.s   return_1A7804
                move.w  #$400,$2C(a5)
                cmpi.b  #$20,$D(a5) 
                bcs.s   return_1A7804
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
return_1A7804:
                
                rts

    ; End of function sub_1A77A0


; =============== S U B R O U T I N E =======================================

sub_1A7806:
                
                tst.b   (byte_FF1145).l
                bne.w   loc_1A76DA
                tst.b   (byte_FF1142).l
                bne.w   loc_1A7826
                move.b  #1,(byte_FF1142).l
                bra.w   *+4
loc_1A7826:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$19,d5
                move.w  #9,d6
                move.w  #9,d7
                bsr.w   sub_1A8964
                bcc.w   loc_1A76FC
                move.b  $4D(a5),d0
                addq.b  #1,$4D(a5)
                tst.b   d0
                bne.s   loc_1A786E
                sndCom  SFX_BUBOBI
                lea     (dword_FF5400).l,a5
                move.w  #$100,d0
                bsr.w   sub_1A8ACE
                tst.w   $3E(a5)
                beq.s   sub_1A7878
loc_1A786E:
                
                cmpi.b  #$3C,d0 
                bcc.w   loc_1A76FC
                rts

    ; End of function sub_1A7806


; =============== S U B R O U T I N E =======================================

sub_1A7878:
                
                bclr    #6,$C(a5)
                bra.w   sub_1A8AEC

    ; End of function sub_1A7878


; =============== S U B R O U T I N E =======================================

sub_1A7882:
                
                move.w  #$29,d1 
                move.w  #$29,d2 
                move.w  #$19,d3
                bsr.w   sub_1A880C
                move.w  #$500,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcc.w   loc_1A78B4
                cmpi.b  #2,$D(a5)
                bne.s   return_1A78B2
                sndCom  SFX_ENEMY_DEATH

    ; End of function sub_1A7882


; START OF FUNCTION CHUNK FOR sub_1A7882

return_1A78B2:
                
                rts
loc_1A78B4:
                
                bsr.w   sub_1A87A6

; END OF FUNCTION CHUNK FOR sub_1A7882


; =============== S U B R O U T I N E =======================================

sub_1A78B8:
                
                bra.w   loc_1A76DA
loc_1A78BC:
                
                bra.s   loc_1A78DE
loc_1A78BE:
                
                btst    #1,$C(a5)
                bne.s   loc_1A78D6
                move.b  $37(a5),d0
                beq.s   loc_1A78DC
                cmpi.b  #$10,d0
                beq.s   loc_1A791C
                bra.w   loc_1A79A4
loc_1A78D6:
                
                bsr.w   sub_1A8ADA
                rts

    ; End of function sub_1A78B8


; START OF FUNCTION CHUNK FOR sub_1A78B8

loc_1A78DC:
                
                bra.s   loc_1A78E4
loc_1A78DE:
                
                tst.b   $A(a5)
                bpl.s   loc_1A7900
loc_1A78E4:
                
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$20,$37(a5) 
                bclr    #1,$C(a5)
                clr.b   $D(a5)
                rts
loc_1A7900:
                
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                clr.b   $D(a5)
                rts
loc_1A791C:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.w   sub_1A7936
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1A78B8


; =============== S U B R O U T I N E =======================================

sub_1A7936:
                
                move.w  #$10,d5
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A79A0
                move.w  $54(a5),d0
                sub.w   (word_FF5412).l,d0
                cmpi.w  #$20,d0 
                bcc.s   loc_1A79A0
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$50,d7 
                bcc.s   loc_1A7986
                move.b  #$21,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1A7986:
                
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A79A0:
                
                tst.b   d0
                rts

    ; End of function sub_1A7936


; START OF FUNCTION CHUNK FOR sub_1A78B8

loc_1A79A4:
                
                andi.b  #$F,d0
                beq.s   loc_1A79BC
                cmpi.b  #1,d0
                beq.s   loc_1A7A0A
                cmpi.b  #2,d0
                beq.w   loc_1A7A86
                bra.w   loc_1A78DE
loc_1A79BC:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #8,$D(a5)
                bcs.s   return_1A7A08
                move.w  #$200,$2C(a5)
                cmpi.b  #$10,$D(a5)
                bcs.s   return_1A7A08
                move.w  #$300,$2C(a5)
                cmpi.b  #$18,$D(a5)
                bcs.s   return_1A7A08
                move.w  #$400,$2C(a5)
                cmpi.b  #$20,$D(a5) 
                bcs.s   return_1A7A08
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
return_1A7A08:
                
                rts
loc_1A7A0A:
                
                tst.b   (byte_FF1145).l
                bne.w   loc_1A78DE
                tst.b   (byte_FF1142).l
                bne.w   loc_1A7A2A
                move.b  #1,(byte_FF1142).l
                bra.w   *+4
loc_1A7A2A:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$19,d5
                move.w  #9,d6
                move.w  #9,d7
                bsr.w   sub_1A8964
                bcc.w   loc_1A7900
                move.b  $4D(a5),d0
                addq.b  #1,$4D(a5)
                tst.b   d0
                bne.s   loc_1A7A72
                sndCom  SFX_BUBOBI
                lea     (dword_FF5400).l,a5
                move.w  #$200,d0
                bsr.w   sub_1A8ACE
                tst.w   $3E(a5)
                beq.s   loc_1A7A7C
loc_1A7A72:
                
                cmpi.b  #$3C,d0 
                bcc.w   loc_1A7900
                rts
loc_1A7A7C:
                
                bclr    #6,$C(a5)
                bra.w   sub_1A8AEC
loc_1A7A86:
                
                move.w  #$29,d1 
                move.w  #$29,d2 
                move.w  #$19,d3
                bsr.w   sub_1A880C
                move.w  #$500,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcc.w   loc_1A7AB8
                cmpi.b  #2,$D(a5)
                bne.s   return_1A7AB6
                sndCom  SFX_ENEMY_DEATH
return_1A7AB6:
                
                rts
loc_1A7AB8:
                
                bsr.w   sub_1A87A6
                bra.w   loc_1A78DE

; END OF FUNCTION CHUNK FOR sub_1A78B8


; =============== S U B R O U T I N E =======================================

sub_1A7AC0:
                
                bra.s   loc_1A7B08
loc_1A7AC2:
                
                btst    #1,$C(a5)
                bne.s   loc_1A7ADA
                move.b  $37(a5),d0
                beq.s   loc_1A7AE0
                cmpi.b  #$10,d0
                beq.s   loc_1A7B40
                bra.w   loc_1A7C9E
loc_1A7ADA:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A7AE0:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$70,d5 
                move.w  #$30,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A7B08
                rts
loc_1A7B08:
                
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                clr.b   $D(a5)
                rts

    ; End of function sub_1A7AC0


; START OF FUNCTION CHUNK FOR sub_1A7AC0

loc_1A7B24:
                
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$24,$37(a5) 
                bclr    #1,$C(a5)
                clr.b   $D(a5)
                rts
loc_1A7B40:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1A7B70
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A7B80
                bcs.s   loc_1A7B6A
                bsr.s   sub_1A7BBC
                bcs.s   loc_1A7B6A
                bsr.w   sub_1A7BF8
                bcs.s   loc_1A7B6A
                bsr.w   sub_1A7C34
loc_1A7B6A:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A7B70:
                
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1A7AC0


; =============== S U B R O U T I N E =======================================

sub_1A7B80:
                
                move.w  #$50,d5 
                move.w  #$FFC0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A7BB8
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12,d7
                bhi.s   loc_1A7BB8
                move.b  #$20,$37(a5) 
                move.w  #$13,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A7BB8:
                
                tst.b   d0
                rts

    ; End of function sub_1A7B80


; =============== S U B R O U T I N E =======================================

sub_1A7BBC:
                
                move.w  #$48,d5 
                move.w  #$FFD0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A7BF4
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C,d7
                bhi.s   loc_1A7BF4
                move.b  #$21,$37(a5) 
                move.w  #8,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A7BF4:
                
                tst.b   d0
                rts

    ; End of function sub_1A7BBC


; =============== S U B R O U T I N E =======================================

sub_1A7BF8:
                
                move.w  #$38,d5 
                move.w  #$FFD8,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A7C30
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$14,d7
                bhi.s   loc_1A7C30
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A7C30:
                
                tst.b   d0
                rts

    ; End of function sub_1A7BF8


; =============== S U B R O U T I N E =======================================

sub_1A7C34:
                
                move.w  #$18,d5
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A7C9A
                move.w  $54(a5),d0
                sub.w   (word_FF5412).l,d0
                cmpi.w  #$21,d0 
                bhi.s   loc_1A7C9A
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$50,d7 
                bcc.s   loc_1A7C80
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A7C80:
                
                move.b  #$24,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A7C9A:
                
                tst.b   d0
                rts

    ; End of function sub_1A7C34


; START OF FUNCTION CHUNK FOR sub_1A7AC0

loc_1A7C9E:
                
                andi.b  #$F,d0
                beq.s   loc_1A7CBE
                cmpi.b  #1,d0
                beq.s   loc_1A7CBE
                cmpi.b  #2,d0
                beq.w   loc_1A7CC4
                cmpi.b  #3,d0
                beq.w   loc_1A7DC4
                bra.w   loc_1A7D48
loc_1A7CBE:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A7CC4:
                
                move.w  #$300,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #8,$D(a5)
                bcs.s   return_1A7D46
                move.w  #$400,$2C(a5)
                cmpi.b  #$10,$D(a5)
                bcs.s   return_1A7D46
                move.w  #$500,$2C(a5)
                cmpi.b  #$18,$D(a5)
                bcs.s   return_1A7D46
                cmpi.b  #$19,$D(a5)
                bcc.s   loc_1A7D22
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$30,d5 
                move.w  #$30,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcc.w   loc_1A7D42
                addq.b  #1,$D(a5)
loc_1A7D22:
                
                move.w  #$400,$2C(a5)
                cmpi.b  #$20,$D(a5) 
                bcs.s   return_1A7D46
                move.w  #$300,$2C(a5)
                cmpi.b  #$28,$D(a5) 
                bcs.s   return_1A7D46
                bra.w   loc_1A7B08
loc_1A7D42:
                
                subq.b  #1,$D(a5)
return_1A7D46:
                
                rts
loc_1A7D48:
                
                tst.b   (byte_FF1145).l
                bne.w   loc_1A7B08
                tst.b   (byte_FF1142).l
                bne.w   loc_1A7D68
                move.b  #1,(byte_FF1142).l
                bra.w   *+4
loc_1A7D68:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$15,d5
                move.w  #9,d6
                move.w  #9,d7
                bsr.w   sub_1A8964
                bcc.w   loc_1A7B08
                move.b  $D(a5),d0
                addq.b  #1,$D(a5)
                tst.b   d0
                bne.s   loc_1A7DB0
                sndCom  SFX_BLOB
                lea     (dword_FF5400).l,a5
                move.w  #$40,d0 
                bsr.w   sub_1A8ACE
                tst.w   $3E(a5)
                beq.s   loc_1A7DBA
loc_1A7DB0:
                
                cmpi.b  #$28,d0 
                bcc.w   loc_1A7B24
                rts
loc_1A7DBA:
                
                bclr    #6,$C(a5)
                bra.w   sub_1A8AEC
loc_1A7DC4:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.w   return_1A7DF8
                move.w  #$21,d1 
                move.w  #9,d2
                move.w  #$11,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcc.w   loc_1A7B08
return_1A7DF8:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1A7AC0


; =============== S U B R O U T I N E =======================================

sub_1A7DFA:
                
                bra.s   loc_1A7E42

    ; End of function sub_1A7DFA


; =============== S U B R O U T I N E =======================================

sub_1A7DFC:
                
                btst    #1,$C(a5)
                bne.s   loc_1A7E14
                move.b  $37(a5),d0
                beq.s   loc_1A7E1A
                cmpi.b  #$10,d0
                beq.s   sub_1A7E7A
                bra.w   sub_1A7FD8
loc_1A7E14:
                
                bsr.w   sub_1A8ADA
                rts

    ; End of function sub_1A7DFC


; START OF FUNCTION CHUNK FOR sub_1A7DFC

loc_1A7E1A:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$70,d5 
                move.w  #$30,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A7E42
                rts

; END OF FUNCTION CHUNK FOR sub_1A7DFC


; START OF FUNCTION CHUNK FOR sub_1A8082

loc_1A7E42:
                
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                clr.b   $D(a5)
                rts
loc_1A7E5E:
                
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$24,$37(a5) 
                bclr    #1,$C(a5)
                clr.b   $D(a5)
                rts

; END OF FUNCTION CHUNK FOR sub_1A8082


; =============== S U B R O U T I N E =======================================

sub_1A7E7A:
                
                tst.b   (byte_FF1142).l
                bne.s   sub_1A7EAA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A7EBA
                bcs.s   loc_1A7EA4
                bsr.s   sub_1A7EF6
                bcs.s   loc_1A7EA4
                bsr.w   sub_1A7F32
                bcs.s   loc_1A7EA4
                bsr.w   sub_1A7F6E
loc_1A7EA4:
                
                bsr.w   sub_1A8ADA
                rts

    ; End of function sub_1A7E7A


; =============== S U B R O U T I N E =======================================

sub_1A7EAA:
                
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                bsr.w   sub_1A8ADA
                rts

    ; End of function sub_1A7EAA


; =============== S U B R O U T I N E =======================================

sub_1A7EBA:
                
                move.w  #$50,d5 
                move.w  #$FFC0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   sub_1A7EF2
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12,d7
                bhi.s   sub_1A7EF2
                move.b  #$20,$37(a5) 
                move.w  #$13,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts

    ; End of function sub_1A7EBA


; =============== S U B R O U T I N E =======================================

sub_1A7EF2:
                
                tst.b   d0
                rts

    ; End of function sub_1A7EF2


; =============== S U B R O U T I N E =======================================

sub_1A7EF6:
                
                move.w  #$48,d5 
                move.w  #$FFC8,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   sub_1A7F2E
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$19,d7
                bhi.s   sub_1A7F2E
                move.b  #$21,$37(a5) 
                move.w  #$14,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts

    ; End of function sub_1A7EF6


; =============== S U B R O U T I N E =======================================

sub_1A7F2E:
                
                tst.b   d0
                rts

    ; End of function sub_1A7F2E


; =============== S U B R O U T I N E =======================================

sub_1A7F32:
                
                move.w  #$38,d5 
                move.w  #$FFD8,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A7F6A
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$1E,d7
                bhi.s   loc_1A7F6A
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A7F6A:
                
                tst.b   d0
                rts

    ; End of function sub_1A7F32


; =============== S U B R O U T I N E =======================================

sub_1A7F6E:
                
                move.w  #$18,d5
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   sub_1A7FD4
                move.w  $54(a5),d0
                sub.w   (word_FF5412).l,d0
                cmpi.w  #$21,d0 
                bhi.s   sub_1A7FD4
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$3C,d7 
                bcc.s   sub_1A7FBA
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts

    ; End of function sub_1A7F6E


; =============== S U B R O U T I N E =======================================

sub_1A7FBA:
                
                move.b  #$24,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts

    ; End of function sub_1A7FBA


; =============== S U B R O U T I N E =======================================

sub_1A7FD4:
                
                tst.b   d0
                rts

    ; End of function sub_1A7FD4


; =============== S U B R O U T I N E =======================================

sub_1A7FD8:
                
                andi.b  #$F,d0
                beq.s   loc_1A7FF8
                cmpi.b  #1,d0
                beq.s   loc_1A7FF8
                cmpi.b  #2,d0
                beq.w   sub_1A7FFE
                cmpi.b  #3,d0
                beq.w   loc_1A80FE
                bra.w   sub_1A8082
loc_1A7FF8:
                
                bsr.w   sub_1A8ADA
                rts

    ; End of function sub_1A7FD8


; =============== S U B R O U T I N E =======================================

sub_1A7FFE:
                
                move.w  #$300,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #8,$D(a5)
                bcs.s   return_1A8080
                move.w  #$400,$2C(a5)
                cmpi.b  #$10,$D(a5)
                bcs.s   return_1A8080
                move.w  #$500,$2C(a5)
                cmpi.b  #$18,$D(a5)
                bcs.s   return_1A8080
                cmpi.b  #$19,$D(a5)
                bcc.s   loc_1A805C
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$30,d5 
                move.w  #$30,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcc.w   loc_1A807C
                addq.b  #1,$D(a5)
loc_1A805C:
                
                move.w  #$400,$2C(a5)
                cmpi.b  #$20,$D(a5) 
                bcs.s   return_1A8080
                move.w  #$300,$2C(a5)
                cmpi.b  #$28,$D(a5) 
                bcs.s   return_1A8080
                bra.w   loc_1A7E42
loc_1A807C:
                
                subq.b  #1,$D(a5)
return_1A8080:
                
                rts

    ; End of function sub_1A7FFE


; =============== S U B R O U T I N E =======================================

sub_1A8082:
                
                tst.b   (byte_FF1145).l
                bne.w   loc_1A7E42
                tst.b   (byte_FF1142).l
                bne.w   loc_1A80A2
                move.b  #1,(byte_FF1142).l
                bra.w   *+4
loc_1A80A2:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$15,d5
                move.w  #9,d6
                move.w  #9,d7
                bsr.w   sub_1A8964
                bcc.w   loc_1A7E42
                move.b  $D(a5),d0
                addq.b  #1,$D(a5)
                tst.b   d0
                bne.s   loc_1A80EA
                sndCom  SFX_BLOB
                lea     (dword_FF5400).l,a5
                move.w  #$40,d0 
                bsr.w   sub_1A8ACE
                tst.w   $3E(a5)
                beq.s   sub_1A80F4
loc_1A80EA:
                
                cmpi.b  #$28,d0 
                bcc.w   loc_1A7E5E
                rts

    ; End of function sub_1A8082


; =============== S U B R O U T I N E =======================================

sub_1A80F4:
                
                bclr    #6,$C(a5)
                bra.w   sub_1A8AEC
loc_1A80FE:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.w   return_1A8132
                move.w  #$21,d1 
                move.w  #9,d2
                move.w  #$11,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcc.w   loc_1A7E42
return_1A8132:
                
                rts

    ; End of function sub_1A80F4


; =============== S U B R O U T I N E =======================================

sub_1A8134:
                
                bra.s   sub_1A817C
loc_1A8136:
                
                btst    #1,$C(a5)
                bne.s   sub_1A814E
                move.b  $37(a5),d0
                beq.s   sub_1A8154
                cmpi.b  #$10,d0
                beq.s   sub_1A81B4
                bra.w   loc_1A830E

    ; End of function sub_1A8134


; =============== S U B R O U T I N E =======================================

sub_1A814E:
                
                bsr.w   sub_1A8ADA
                rts

    ; End of function sub_1A814E


; =============== S U B R O U T I N E =======================================

sub_1A8154:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$70,d5 
                move.w  #$30,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.s   sub_1A817C
                rts

    ; End of function sub_1A8154


; =============== S U B R O U T I N E =======================================

sub_1A817C:
                
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                clr.b   $D(a5)
                rts

    ; End of function sub_1A817C


; =============== S U B R O U T I N E =======================================

sub_1A8198:
                
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$24,$37(a5) 
                bclr    #1,$C(a5)
                clr.b   $D(a5)
                rts

    ; End of function sub_1A8198


; =============== S U B R O U T I N E =======================================

sub_1A81B4:
                
                tst.b   (byte_FF1142).l
                bne.s   sub_1A81E0
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A822C
                bcs.s   loc_1A81DA
                bsr.w   sub_1A8268
                bcs.s   loc_1A81DA
                bsr.w   sub_1A82A4

    ; End of function sub_1A81B4


; START OF FUNCTION CHUNK FOR sub_1A81B4

loc_1A81DA:
                
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1A81B4


; =============== S U B R O U T I N E =======================================

sub_1A81E0:
                
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                bsr.w   sub_1A8ADA
                rts
                move.w  #$50,d5 
                move.w  #$FFC0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   sub_1A8228
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12,d7
                bhi.s   sub_1A8228
                move.b  #$20,$37(a5) 
                move.w  #$13,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts

    ; End of function sub_1A81E0


; =============== S U B R O U T I N E =======================================

sub_1A8228:
                
                tst.b   d0
                rts

    ; End of function sub_1A8228


; =============== S U B R O U T I N E =======================================

sub_1A822C:
                
                move.w  #$50,d5 
                move.w  #$FFC0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A8264
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$1F,d7
                bhi.s   loc_1A8264
                move.b  #$21,$37(a5) 
                move.w  #$16,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A8264:
                
                tst.b   d0
                rts

    ; End of function sub_1A822C


; =============== S U B R O U T I N E =======================================

sub_1A8268:
                
                move.w  #$48,d5 
                move.w  #$FFC8,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A82A0
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12,d7
                bhi.s   loc_1A82A0
                move.b  #$22,$37(a5) 
                move.w  #$14,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A82A0:
                
                tst.b   d0
                rts

    ; End of function sub_1A8268


; =============== S U B R O U T I N E =======================================

sub_1A82A4:
                
                move.w  #$18,d5
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A830A
                move.w  $54(a5),d0
                sub.w   (word_FF5412).l,d0
                cmpi.w  #$21,d0 
                bhi.s   loc_1A830A
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$28,d7 
                bcc.s   loc_1A82F0
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A82F0:
                
                move.b  #$24,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A830A:
                
                tst.b   d0
                rts

    ; End of function sub_1A82A4


; START OF FUNCTION CHUNK FOR sub_1A8134

loc_1A830E:
                
                andi.b  #$F,d0
                beq.s   loc_1A832E
                cmpi.b  #1,d0
                beq.s   loc_1A832E
                cmpi.b  #2,d0
                beq.w   loc_1A832E
                cmpi.b  #3,d0
                beq.w   loc_1A83B0
                bra.w   loc_1A8334
loc_1A832E:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A8334:
                
                tst.b   (byte_FF1145).l
                bne.w   sub_1A817C
                tst.b   (byte_FF1142).l
                bne.w   loc_1A8354
                move.b  #1,(byte_FF1142).l
                bra.w   *+4
loc_1A8354:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$15,d5
                move.w  #9,d6
                move.w  #9,d7
                bsr.w   sub_1A8964
                bcc.w   sub_1A817C
                move.b  $D(a5),d0
                addq.b  #1,$D(a5)
                tst.b   d0
                bne.s   loc_1A839C
                sndCom  SFX_BLOB
                lea     (dword_FF5400).l,a5
                move.w  #$40,d0 
                bsr.w   sub_1A8ACE
                tst.w   $3E(a5)
                beq.s   loc_1A83A6
loc_1A839C:
                
                cmpi.b  #$28,d0 
                bcc.w   sub_1A8198
                rts
loc_1A83A6:
                
                bclr    #6,$C(a5)
                bra.w   sub_1A8AEC
loc_1A83B0:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.w   return_1A83E4
                move.w  #$21,d1 
                move.w  #9,d2
                move.w  #$11,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcc.w   sub_1A817C
return_1A83E4:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1A8134


; =============== S U B R O U T I N E =======================================

sub_1A83E6:
                
                cmpi.b  #$7F,(a5) 
                beq.w   loc_1A870E
                clr.w   d1

    ; End of function sub_1A83E6


; =============== S U B R O U T I N E =======================================

sub_1A83F0:
                
                move.w  $3A(a5),d0
                andi.w  #$3FF,d0
                lea     byte_1A8418(pc), a0
loc_1A83FC:
                
                cmp.w   (a0),d0
                beq.s   loc_1A840E
                addq.w  #8,d1
                cmpi.w  #$FFFF,(a0)+
                bne.s   loc_1A83FC
                bsr.w   sub_1A8ADA
                rts
loc_1A840E:
                
                lea     sub_1A84A6(pc), a0
                nop
                jmp     (a0,d1.w)

    ; End of function sub_1A83F0

byte_1A8418:    dc.b 0
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
                dc.b   0
                dc.b   0
                dc.b $7C 
                dc.b   0
                dc.b $88 
                dc.b   0
                dc.b $87 
                dc.b   0
                dc.b $70 
                dc.b   0
                dc.b $8F 
                dc.b   0
                dc.b $90 
                dc.b   0
                dc.b $91 
                dc.b   0
                dc.b $85 
                dc.b   0
                dc.b $92 
                dc.b   0
                dc.b $93 
                dc.b   0
                dc.b $94 
                dc.b   0
                dc.b $89 
                dc.b   0
                dc.b $8A 
                dc.b   0
                dc.b $95 
                dc.b   0
                dc.b $96 
                dc.b   0
                dc.b $97 
                dc.b   0
                dc.b $7D 
                dc.b   0
                dc.b $7E 
                dc.b   0
                dc.b $7F 
                dc.b   0
                dc.b $9D 
                dc.b   0
                dc.b $9F 
                dc.b   0
                dc.b $A0 
                dc.b   0
                dc.b $A2 
                dc.b   0
                dc.b $A5 
                dc.b   0
                dc.b $A7 
                dc.b   0
                dc.b $81 
                dc.b   0
                dc.b $82 
                dc.b   0
                dc.b $83 
                dc.b   0
                dc.b $AA 
                dc.b   0
                dc.b $AB 
                dc.b $FF
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_1A84A6:
                
                bra.w   sub_1A4C90
                bra.w   sub_1A4C8E
                bra.w   sub_1A4EB6
                bra.w   sub_1A4EB4
                bra.w   sub_1A511C
                bra.w   sub_1A511A
                bra.w   sub_1A537C
                bra.w   sub_1A537A
                bra.w   sub_1A5710
                bra.w   sub_1A570E
                bra.w   sub_1A5B1E
                bra.w   sub_1A5B1C
                bra.w   sub_1A5F3A
                bra.w   sub_1A5F38
                bra.w   sub_1A6194
                bra.w   sub_1A6192
                bra.w   sub_1A6498
                bra.w   sub_1A6496
                bra.w   sub_1A67A6
                bra.w   sub_1A67A4
                bra.w   sub_1A6A0E
                bra.w   sub_1A6A0C
                bra.w   sub_1A6C34
                bra.w   sub_1A6C32
                bra.w   sub_1A6E9E
                bra.w   sub_1A6E9C
                bra.w   sub_1A70CA
                bra.w   sub_1A70C8
                bra.w   sub_1A72F6
                bra.w   sub_1A72F4
                bra.w   sub_1A751E
                bra.w   sub_1A751C
                bra.w   loc_1A76BA
                bra.w   loc_1A76B8
                bra.w   loc_1A78BE
                bra.w   loc_1A78BC
                bra.w   loc_1A7AC2
                bra.w   sub_1A7AC0
                bra.w   sub_1A7DFC
                bra.w   sub_1A7DFA
                bra.w   loc_1A8136
                bra.w   sub_1A8134
                bra.w   sub_1A8AF4
                bra.w   sub_1A8AF2
                bra.w   sub_1A8DB4
                bra.w   sub_1A8DB2
                bra.w   sub_1A9074
                bra.w   sub_1A9072
                bra.w   loc_1A9334
                bra.w   sub_1A9332
                bra.w   loc_1A95DA
                bra.w   sub_1A95D8
                bra.w   loc_1A9886
                bra.w   sub_1A9884
                bra.w   loc_1A9B08
                bra.w   sub_1A9B06
                bra.w   loc_1A9F10
                bra.w   sub_1A9F0E
                bra.w   sub_1AA346
                bra.w   sub_1AA344
                bra.w   sub_1AA77C
                bra.w   sub_1AA77A
                bra.w   loc_1AAB1A
                bra.w   sub_1AAB18
                bra.w   loc_1AAEBA
                bra.w   sub_1AAEB8
                bra.w   loc_1AB264
                bra.w   sub_1AB262
                bra.w   loc_1AB49C
                bra.w   sub_1AB49A
                bra.w   loc_1AB706
                bra.w   sub_1AB704
                bra.w   loc_1AB9A0
                bra.w   sub_1AB99E
                bra.w   loc_1ABA3C
                bra.w   sub_1ABA3A
                bra.w   loc_1ABB18
                bra.w   sub_1ABB16
                bra.w   loc_1ABC16
                bra.w   sub_1ABC14
                bra.w   loc_1ABF36
                bra.w   sub_1ABF34
                bra.w   loc_1AC122
                bra.w   sub_1AC120
                bra.w   loc_1A86E4
                bra.w   sub_1A86E2
                bra.w   loc_1ACAB4
                bra.w   sub_1ACAB2
                bra.w   sub_1A86F2
                bra.w   sub_1A86F0
                bra.w   sub_1A86F2
                bra.w   sub_1A86F0
                bra.w   sub_1A86F2
                bra.w   sub_1A86F0
                bra.w   loc_1ACD08
                bra.w   sub_1ACD06
                bra.w   loc_1AD0B2
                bra.w   sub_1AD0B0
                bra.w   loc_1AD1DC
                bra.w   sub_1AD1DA
                bra.w   loc_1AD1DC
                bra.w   sub_1AD1DA
                bra.w   loc_1AC50C
                bra.w   sub_1AC50A
                bra.w   loc_1AC7E0
                bra.w   sub_1AC7DE
                bra.w   loc_1AD306
                bra.w   sub_1AD304
                bra.w   loc_1AD58C
                bra.w   sub_1AD58A
                bra.w   loc_1AD812
                bra.w   sub_1AD810
                bra.w   loc_1ADA98
                bra.w   sub_1ADA96
                bra.w   loc_1ADCD0
                bra.w   sub_1ADCCE
                bra.w   loc_1ADF08
                bra.w   sub_1ADF06
                bra.w   loc_1AE140
                bra.w   sub_1AE13E
                bra.w   loc_1ABC16
                bra.w   sub_1ABC14
                bra.w   loc_1AE3A0
                bra.w   sub_1AE39E
                bra.w   loc_1AEEDA
                bra.w   sub_1AEED8
                bra.w   loc_1AE87E
                bra.w   sub_1AE87C
                bra.w   loc_1AEC5A
                bra.w   sub_1AEC58
                bra.w   loc_1ABB18
                bra.w   sub_1ABB16
                bra.w   loc_1ABB18
                bra.w   sub_1ABB16
                bra.w   loc_1ABB18
                bra.w   sub_1ABB16
                bra.w   loc_1AE140
                bra.w   sub_1AE13E
                bra.w   loc_1AEC5A
                bra.w   sub_1AEC58

    ; End of function sub_1A84A6


; =============== S U B R O U T I N E =======================================

sub_1A86D6:
                
                move.w  #4,d1
                bsr.w   sub_1A83F0
                bra.w   sub_1A8ADA

    ; End of function sub_1A86D6


; =============== S U B R O U T I N E =======================================

sub_1A86E2:
                
                nop
loc_1A86E4:
                
                bset    #0,$38(a5)
                bsr.w   sub_1A8ADA
                rts

    ; End of function sub_1A86E2


; =============== S U B R O U T I N E =======================================

sub_1A86F0:
                
                bra.s   sub_1A86FC

    ; End of function sub_1A86F0


; =============== S U B R O U T I N E =======================================

sub_1A86F2:
                
                clr.b   9(a5)
                bsr.w   sub_1A8ADA
                rts

    ; End of function sub_1A86F2


; =============== S U B R O U T I N E =======================================

sub_1A86FC:
                
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                bclr    #1,$C(a5)
                rts

    ; End of function sub_1A86FC


; START OF FUNCTION CHUNK FOR sub_1A83E6

loc_1A870E:
                
                cmpi.b  #$18,$4B(a5)
                beq.s   loc_1A8718
return_1A8716:
                
                rts
loc_1A8718:
                
                lea     (word_FF5480).l,a0
loc_1A871E:
                
                move.w  (a0),d0
                bmi.s   return_1A8716
                cmpi.b  #$11,$B(a0)
                beq.s   loc_1A8730
                lea     $80(a0),a0
                bra.s   loc_1A871E
loc_1A8730:
                
                cmpi.b  #$7F,d0 
                beq.s   return_1A8716
                move.w  $40(a5),(a5)
                move.w  $42(a5),2(a5)
                move.w  $44(a5),4(a5)
                andi.b  #$1F,6(a5)
                move.b  $46(a5),d0
                or.b    d0,6(a5)
                move.w  $4A(a5),$A(a5)
                move.b  $4C(a5),$C(a5)
                move.w  $52(a5),$12(a5)
                move.w  $6A(a5),$2A(a5)
                move.l  $72(a5),$32(a5)
                move.b  $76(a5),$36(a5)
                move.w  $7A(a5),$3A(a5)
                move.w  $7E(a5),$3E(a5)
                bclr    #0,8(a5)
                clr.b   $37(a5)
                clr.b   $38(a5)
                movea.l a5,a1
                jsr     sub_103A0
                bsr.w   sub_1A8AE6
                jsr     (sub_3BC).l
                bcc.s   loc_1A87D2

; END OF FUNCTION CHUNK FOR sub_1A83E6


; =============== S U B R O U T I N E =======================================

sub_1A87A6:
                
                move.b  #$7F,(a5) 
                move.b  #$7F,1(a5) 
                move.b  #$7F,$14(a5) 
                move.b  #$7F,$16(a5) 
                move.b  #$7F,$18(a5) 
                move.b  #$7F,$1A(a5) 
                rts

    ; End of function sub_1A87A6


; =============== S U B R O U T I N E =======================================

sub_1A87CA:
                
                ori.b   #1,8(a5)
                bra.s   sub_1A87A6

    ; End of function sub_1A87CA


; START OF FUNCTION CHUNK FOR sub_1A83E6

loc_1A87D2:
                
                clr.w   $2C(a5)
                move.w  #$FFFF,$2E(a5)
                clr.w   $26(a5)
                ori.b   #$80,$A(a5)
                cmpi.b  #$18,$B(a5)
                bne.s   loc_1A8800
                move.w  #8,$24(a5)
                bset    #7,$48(a5)
                bsr.w   sub_1A86D6
                rts
loc_1A8800:
                
                bset    #7,$48(a5)
                clr.w   $24(a5)
                rts

; END OF FUNCTION CHUNK FOR sub_1A83E6


; =============== S U B R O U T I N E =======================================

sub_1A880C:
                
                bsr.s   sub_1A8824
                bcc.s   return_1A8822
                move.b  d0,(byte_FF1143).l
                move.w  $3C(a5),(word_FF543C).l
                ori     #1,ccr
return_1A8822:
                
                rts

    ; End of function sub_1A880C


; =============== S U B R O U T I N E =======================================

sub_1A8824:
                
                move.w  d3,d4
                move.w  $12(a5),d5
                move.w  $54(a5),d6
                lea     (dword_FF5400).l,a1
                move.b  4(a5),d7
                andi.b  #$C0,d7
                beq.s   loc_1A8890
                cmpi.b  #$80,d7
                beq.w   loc_1A88D8
                bcs.w   loc_1A891E
                neg.w   d1
                add.w   $14(a5),d1
                add.w   $14(a5),d2
                neg.w   d3
                add.w   $16(a5),d3
                add.w   $16(a5),d4
                cmp.w   $1A(a1),d1
                bhi.s   loc_1A888C
                cmp.w   $18(a1),d2
                bcs.s   loc_1A888C
                cmp.w   $1E(a1),d3
                bhi.s   loc_1A888C
                cmp.w   $1C(a1),d4
                bcs.s   loc_1A888C
                cmp.w   $54(a1),d5
                bhi.s   loc_1A888C
                cmp.w   $12(a1),d6
                bcs.s   loc_1A888C
                move.b  #$43,d0 
                ori     #1,ccr
                rts
loc_1A888C:
                
                tst.b   d0
                rts
loc_1A8890:
                
                neg.w   d1
                add.w   $16(a5),d1
                add.w   $16(a5),d2
                add.w   $14(a5),d3
                neg.w   d4
                add.w   $14(a5),d4
                cmp.w   $1E(a1),d1
                bhi.s   loc_1A88D4
                cmp.w   $1C(a1),d2
                bcs.s   loc_1A88D4
                cmp.w   $18(a1),d3
                bcs.w   loc_1A88D4
                cmp.w   $1A(a1),d4
                bhi.s   loc_1A88D4
                cmp.w   $54(a1),d5
                bhi.s   loc_1A88D4
                cmp.w   $12(a1),d6
                bcs.s   loc_1A88D4
                move.b  #$40,d0 
                ori     #1,ccr
                rts
loc_1A88D4:
                
                tst.b   d0
                rts
loc_1A88D8:
                
                add.w   $16(a5),d1
                neg.w   d2
                add.w   $16(a5),d2
                neg.w   d3
                add.w   $14(a5),d3
                add.w   $14(a5),d4
                cmp.w   $1C(a1),d1
                bcs.s   loc_1A891A
                cmp.w   $1E(a1),d2
                bhi.s   loc_1A891A
                cmp.w   $1A(a1),d3
                bhi.s   loc_1A891A
                cmp.w   $18(a1),d4
                bcs.s   loc_1A891A
                cmp.w   $54(a1),d5
                bhi.s   loc_1A891A
                cmp.w   $12(a1),d6
                bcs.s   loc_1A891A
                move.b  #$42,d0 
                ori     #1,ccr
                rts
loc_1A891A:
                
                tst.b   d0
                rts
loc_1A891E:
                
                add.w   $14(a5),d1
                neg.w   d2
                add.w   $14(a5),d2
                add.w   $16(a5),d3
                neg.w   d4
                add.w   $16(a5),d4
                cmp.w   $18(a1),d1
                bcs.s   loc_1A8960
                cmp.w   $1A(a1),d2
                bhi.s   loc_1A8960
                cmp.w   $1C(a1),d3
                bcs.s   loc_1A8960
                cmp.w   $1E(a1),d4
                bhi.s   loc_1A8960
                cmp.w   $54(a1),d5
                bhi.s   loc_1A8960
                cmp.w   $12(a1),d6
                bcs.s   loc_1A8960
                move.b  #$41,d0 
                ori     #1,ccr
                rts
loc_1A8960:
                
                tst.b   d0
                rts

    ; End of function sub_1A8824


; =============== S U B R O U T I N E =======================================

sub_1A8964:
                
                move.b  4(a5),d0
                andi.b  #$C0,d0
                beq.s   loc_1A89C8
                cmpi.b  #$80,d0
                bcs.w   loc_1A8A16
                beq.w   loc_1A8A5C
                move.w  (word_FF1800).l,d1
                sub.w   d5,d1
                cmp.w   (dword_FF5414).l,d1
                bhi.w   loc_1A8AA2
                move.w  (word_FF1800).l,d1
                add.w   d6,d1
                cmp.w   (dword_FF5414).l,d1
                bcs.w   loc_1A8AA2
                move.w  (dword_FF1804).l,d2
                sub.w   d7,d2
                cmp.w   (dword_FF5414+2).l,d2
                bhi.w   loc_1A8AA2
                move.w  (dword_FF1804).l,d2
                add.w   d7,d2
                cmp.w   (dword_FF5414+2).l,d2
                bcs.w   loc_1A8AA2
                ori     #1,ccr
                rts

    ; End of function sub_1A8964


; START OF FUNCTION CHUNK FOR sub_1A8964

loc_1A89C8:
                
                move.w  (word_FF1800).l,d1
                sub.w   d7,d1
                cmp.w   (dword_FF5414).l,d1
                bhi.w   loc_1A8AA2
                move.w  (word_FF1800).l,d1
                add.w   d7,d1
                cmp.w   (dword_FF5414).l,d1
                bcs.w   loc_1A8AA2
                move.w  (dword_FF1804).l,d2
                sub.w   d5,d2
                cmp.w   (dword_FF5414+2).l,d2
                bhi.w   loc_1A8AA2
                move.w  (dword_FF1804).l,d2
                add.w   d6,d2
                cmp.w   (dword_FF5414+2).l,d2
                bcs.w   loc_1A8AA2
                ori     #1,ccr
                rts
loc_1A8A16:
                
                move.w  (word_FF1800).l,d1
                add.w   d5,d1
                cmp.w   (dword_FF5414).l,d1
                bcs.s   loc_1A8AA2
                move.w  (word_FF1800).l,d1
                sub.w   d6,d1
                cmp.w   (dword_FF5414).l,d1
                bhi.s   loc_1A8AA2
                move.w  (dword_FF1804).l,d2
                sub.w   d7,d2
                cmp.w   (dword_FF5414+2).l,d2
                bhi.s   loc_1A8AA2
                move.w  (dword_FF1804).l,d2
                add.w   d7,d2
                cmp.w   (dword_FF5414+2).l,d2
                bcs.s   loc_1A8AA2
                ori     #1,ccr
                rts
loc_1A8A5C:
                
                move.w  (word_FF1800).l,d1
                sub.w   d7,d1
                cmp.w   (dword_FF5414).l,d1
                bhi.s   loc_1A8AA2
                move.w  (word_FF1800).l,d1
                add.w   d7,d1
                cmp.w   (dword_FF5414).l,d1
                bcs.s   loc_1A8AA2
                move.w  (dword_FF1804).l,d2
                add.w   d5,d2
                cmp.w   (dword_FF5414+2).l,d2
                bcs.s   loc_1A8AA2
                move.w  (dword_FF1804).l,d2
                sub.w   d6,d2
                cmp.w   (dword_FF5414+2).l,d2
                bhi.s   loc_1A8AA2
                ori     #1,ccr
                rts
loc_1A8AA2:
                
                tst.b   d0
                rts

; END OF FUNCTION CHUNK FOR sub_1A8964


; =============== S U B R O U T I N E =======================================

sub_1A8AA6:
                
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                bsr.w   sub_1A8ADA
                rts

    ; End of function sub_1A8AA6


; =============== S U B R O U T I N E =======================================

sub_1A8AB6:
                
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                rts

    ; End of function sub_1A8AB6


; =============== S U B R O U T I N E =======================================

sub_1A8ACE:
                
                jmp     sub_1033C

    ; End of function sub_1A8ACE


; =============== S U B R O U T I N E =======================================

sub_1A8AD4:
                
                jmp     sub_10398

    ; End of function sub_1A8AD4


; =============== S U B R O U T I N E =======================================

sub_1A8ADA:
                
                jmp     sub_1039C

    ; End of function sub_1A8ADA


; =============== S U B R O U T I N E =======================================

sub_1A8AE0:
                
                jmp     sub_9B000

    ; End of function sub_1A8AE0


; =============== S U B R O U T I N E =======================================

sub_1A8AE6:
                
                jmp     sub_1038E

    ; End of function sub_1A8AE6


; =============== S U B R O U T I N E =======================================

sub_1A8AEC:
                
                jmp     sub_10394

    ; End of function sub_1A8AEC


; =============== S U B R O U T I N E =======================================

sub_1A8AF2:
                
                bra.s   sub_1A8B40

    ; End of function sub_1A8AF2


; =============== S U B R O U T I N E =======================================

sub_1A8AF4:
                
                bclr    #1,$38(a5)
                btst    #1,$C(a5)
                bne.s   loc_1A8B12
                move.b  $37(a5),d0
                beq.s   loc_1A8B18
                cmpi.b  #$10,d0
                beq.s   loc_1A8B5E
                bra.w   loc_1A8CCA
loc_1A8B12:
                
                bsr.w   sub_1A8ADA
                rts

    ; End of function sub_1A8AF4


; START OF FUNCTION CHUNK FOR sub_1A8AF4

loc_1A8B18:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$30,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcs.s   sub_1A8B40
                rts

; END OF FUNCTION CHUNK FOR sub_1A8AF4


; =============== S U B R O U T I N E =======================================

sub_1A8B40:
                
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                bclr    #1,$38(a5)
                rts

    ; End of function sub_1A8B40


; START OF FUNCTION CHUNK FOR sub_1A8AF4

loc_1A8B5E:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1A8B8A
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A8B9A
                bcs.s   loc_1A8B84
                bsr.w   sub_1A8C1E
                bcs.s   loc_1A8B84
                bsr.w   sub_1A8C9E
loc_1A8B84:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A8B8A:
                
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1A8AF4


; =============== S U B R O U T I N E =======================================

sub_1A8B9A:
                
                move.w  #$40,d5 
                move.w  #$40,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A8C1A
                move.w  #$30,d5 
                move.w  #$30,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A8C1A
                move.b  4(a5),d0
                andi.b  #$C0,d0
                eori.b  #$80,d0
                move.b  (byte_FF5404).l,d1
                andi.b  #$C0,d1
                cmp.b   d0,d1
                bne.s   loc_1A8C16
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$50,d7 
                bls.w   loc_1A8C00
                move.b  #$20,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A8C00:
                
                move.b  #$21,$37(a5) 
                move.w  #$18,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A8C16:
                
                bsr.w   sub_1A8B40
loc_1A8C1A:
                
                tst.b   d0
                rts

    ; End of function sub_1A8B9A


; =============== S U B R O U T I N E =======================================

sub_1A8C1E:
                
                move.w  #$28,d5 
                move.w  #0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A8C84
                move.b  4(a5),d0
                andi.b  #$C0,d0
                eori.b  #$80,d0
                move.b  (byte_FF5404).l,d1
                andi.b  #$C0,d1
                cmp.b   d0,d1
                bne.s   loc_1A8C84
                move.b  (dword_FF542C+2).l,d0
                andi.b  #7,d0
                beq.w   loc_1A8C88
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$1E,d7
                bhi.s   loc_1A8C84
                bset    #1,$38(a5)
                move.b  #$22,$37(a5) 
                move.w  #$17,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A8C84:
                
                tst.b   d0
                rts
loc_1A8C88:
                
                move.b  #$23,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts

    ; End of function sub_1A8C1E


; =============== S U B R O U T I N E =======================================

sub_1A8C9E:
                
                move.w  #$20,d5 
                move.w  #0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A8CC6
                move.b  #$24,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A8CC6:
                
                tst.b   d0
                rts

    ; End of function sub_1A8C9E


; START OF FUNCTION CHUNK FOR sub_1A8AF4

loc_1A8CCA:
                
                andi.b  #$F,d0
                beq.s   loc_1A8CEC
                cmpi.b  #1,d0
                beq.w   loc_1A8D74
                cmpi.b  #2,d0
                beq.w   loc_1A8DA6
                cmpi.b  #3,d0
                beq.w   loc_1A8D7A
                bra.w   loc_1A8D7A
loc_1A8CEC:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$40,d5 
                move.w  #$40,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcc.w   sub_1A8B40
                move.w  #$30,d5 
                move.w  #$30,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.w   sub_1A8B40
                move.b  4(a5),d0
                andi.b  #$C0,d0
                eori.b  #$80,d0
                move.b  (byte_FF5404).l,d1
                andi.b  #$C0,d1
                cmp.b   d0,d1
                bne.w   sub_1A8B40
                addq.b  #1,$D(a5)
                move.b  $D(a5),d0
                andi.b  #$F,d0
                bne.s   loc_1A8D60
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$50,d7 
                bcs.w   loc_1A8C00
loc_1A8D60:
                
                move.b  $D(a5),d0
                andi.w  #$10,d0
                lsl.w   #4,d0
                addi.w  #$300,d0
                move.w  d0,$2C(a5)
                rts
loc_1A8D74:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A8D7A:
                
                addq.b  #1,$D(a5)
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$100,$2C(a5)
                cmpi.b  #$10,$D(a5)
                bcs.s   loc_1A8DA0
                bra.w   sub_1A8B40
loc_1A8DA0:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A8DA6:
                
                bset    #1,$38(a5)
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1A8AF4


; =============== S U B R O U T I N E =======================================

sub_1A8DB2:
                
                bra.s   sub_1A8E00

    ; End of function sub_1A8DB2


; =============== S U B R O U T I N E =======================================

sub_1A8DB4:
                
                bclr    #1,$38(a5)
                btst    #1,$C(a5)
                bne.s   loc_1A8DD2
                move.b  $37(a5),d0
                beq.s   loc_1A8DD8
                cmpi.b  #$10,d0
                beq.s   loc_1A8E1E
                bra.w   loc_1A8F8A
loc_1A8DD2:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A8DD8:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$30,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcs.s   sub_1A8E00
                rts

    ; End of function sub_1A8DB4


; =============== S U B R O U T I N E =======================================

sub_1A8E00:
                
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                bclr    #1,$38(a5)
                rts

    ; End of function sub_1A8E00


; START OF FUNCTION CHUNK FOR sub_1A8DB4

loc_1A8E1E:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1A8E4A
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A8E5A
                bcs.s   loc_1A8E44
                bsr.w   sub_1A8EDE
                bcs.s   loc_1A8E44
                bsr.w   sub_1A8F5E
loc_1A8E44:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A8E4A:
                
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1A8DB4


; =============== S U B R O U T I N E =======================================

sub_1A8E5A:
                
                move.w  #$40,d5 
                move.w  #$40,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A8EDA
                move.w  #$30,d5 
                move.w  #$30,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A8EDA
                move.b  4(a5),d0
                andi.b  #$C0,d0
                eori.b  #$80,d0
                move.b  (byte_FF5404).l,d1
                andi.b  #$C0,d1
                cmp.b   d0,d1
                bne.s   loc_1A8ED6
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$32,d7 
                bls.w   loc_1A8EC0
                move.b  #$20,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A8EC0:
                
                move.b  #$21,$37(a5) 
                move.w  #$18,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A8ED6:
                
                bsr.w   sub_1A8E00
loc_1A8EDA:
                
                tst.b   d0
                rts

    ; End of function sub_1A8E5A


; =============== S U B R O U T I N E =======================================

sub_1A8EDE:
                
                move.w  #$28,d5 
                move.w  #0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A8F44
                move.b  4(a5),d0
                andi.b  #$C0,d0
                eori.b  #$80,d0
                move.b  (byte_FF5404).l,d1
                andi.b  #$C0,d1
                cmp.b   d0,d1
                bne.s   loc_1A8F44
                move.b  (dword_FF542C+2).l,d0
                andi.b  #7,d0
                beq.w   loc_1A8F48
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$32,d7 
                bhi.s   loc_1A8F44
                bset    #1,$38(a5)
                move.b  #$22,$37(a5) 
                move.w  #$17,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A8F44:
                
                tst.b   d0
                rts
loc_1A8F48:
                
                move.b  #$23,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts

    ; End of function sub_1A8EDE


; =============== S U B R O U T I N E =======================================

sub_1A8F5E:
                
                move.w  #$20,d5 
                move.w  #0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A8F86
                move.b  #$24,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A8F86:
                
                tst.b   d0
                rts

    ; End of function sub_1A8F5E


; START OF FUNCTION CHUNK FOR sub_1A8DB4

loc_1A8F8A:
                
                andi.b  #$F,d0
                beq.s   loc_1A8FAC
                cmpi.b  #1,d0
                beq.w   loc_1A9034
                cmpi.b  #2,d0
                beq.w   loc_1A9066
                cmpi.b  #3,d0
                beq.w   loc_1A903A
                bra.w   loc_1A903A
loc_1A8FAC:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$40,d5 
                move.w  #$40,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcc.w   sub_1A8E00
                move.w  #$30,d5 
                move.w  #$30,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.w   sub_1A8E00
                move.b  4(a5),d0
                andi.b  #$C0,d0
                eori.b  #$80,d0
                move.b  (byte_FF5404).l,d1
                andi.b  #$C0,d1
                cmp.b   d0,d1
                bne.w   sub_1A8E00
                addq.b  #1,$D(a5)
                move.b  $D(a5),d0
                andi.b  #$F,d0
                bne.s   loc_1A9020
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$32,d7 
                bcs.w   loc_1A8EC0
loc_1A9020:
                
                move.b  $D(a5),d0
                andi.w  #$10,d0
                lsl.w   #4,d0
                addi.w  #$300,d0
                move.w  d0,$2C(a5)
                rts
loc_1A9034:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A903A:
                
                addq.b  #1,$D(a5)
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$100,$2C(a5)
                cmpi.b  #$10,$D(a5)
                bcs.s   loc_1A9060
                bra.w   sub_1A8E00
loc_1A9060:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A9066:
                
                bset    #1,$38(a5)
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1A8DB4


; =============== S U B R O U T I N E =======================================

sub_1A9072:
                
                bra.s   sub_1A90C0

    ; End of function sub_1A9072


; =============== S U B R O U T I N E =======================================

sub_1A9074:
                
                bclr    #1,$38(a5)
                btst    #1,$C(a5)
                bne.s   loc_1A9092
                move.b  $37(a5),d0
                beq.s   loc_1A9098
                cmpi.b  #$10,d0
                beq.s   loc_1A90DE
                bra.w   loc_1A924A
loc_1A9092:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A9098:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$30,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcs.s   sub_1A90C0
                rts

    ; End of function sub_1A9074


; =============== S U B R O U T I N E =======================================

sub_1A90C0:
                
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                bclr    #1,$38(a5)
                rts

    ; End of function sub_1A90C0


; START OF FUNCTION CHUNK FOR sub_1A9074

loc_1A90DE:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1A910A
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A911A
                bcs.s   loc_1A9104
                bsr.w   sub_1A919E
                bcs.s   loc_1A9104
                bsr.w   sub_1A921E
loc_1A9104:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A910A:
                
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1A9074


; =============== S U B R O U T I N E =======================================

sub_1A911A:
                
                move.w  #$40,d5 
                move.w  #$40,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A919A
                move.w  #$30,d5 
                move.w  #$30,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A919A
                move.b  4(a5),d0
                andi.b  #$C0,d0
                eori.b  #$80,d0
                move.b  (byte_FF5404).l,d1
                andi.b  #$C0,d1
                cmp.b   d0,d1
                bne.s   loc_1A9196
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$1E,d7
                bls.w   loc_1A9180
                move.b  #$20,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A9180:
                
                move.b  #$21,$37(a5) 
                move.w  #$18,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A9196:
                
                bsr.w   sub_1A90C0
loc_1A919A:
                
                tst.b   d0
                rts

    ; End of function sub_1A911A


; =============== S U B R O U T I N E =======================================

sub_1A919E:
                
                move.w  #$28,d5 
                move.w  #0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A9204
                move.b  4(a5),d0
                andi.b  #$C0,d0
                eori.b  #$80,d0
                move.b  (byte_FF5404).l,d1
                andi.b  #$C0,d1
                cmp.b   d0,d1
                bne.s   loc_1A9204
                move.b  (dword_FF542C+2).l,d0
                andi.b  #7,d0
                beq.w   loc_1A9208
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$50,d7 
                bhi.s   loc_1A9204
                bset    #1,$38(a5)
                move.b  #$22,$37(a5) 
                move.w  #$17,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A9204:
                
                tst.b   d0
                rts
loc_1A9208:
                
                move.b  #$23,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts

    ; End of function sub_1A919E


; =============== S U B R O U T I N E =======================================

sub_1A921E:
                
                move.w  #$20,d5 
                move.w  #0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A9246
                move.b  #$24,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A9246:
                
                tst.b   d0
                rts

    ; End of function sub_1A921E


; START OF FUNCTION CHUNK FOR sub_1A9074

loc_1A924A:
                
                andi.b  #$F,d0
                beq.s   loc_1A926C
                cmpi.b  #1,d0
                beq.w   loc_1A92F4
                cmpi.b  #2,d0
                beq.w   loc_1A9326
                cmpi.b  #3,d0
                beq.w   loc_1A92FA
                bra.w   loc_1A92FA
loc_1A926C:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$40,d5 
                move.w  #$40,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcc.w   sub_1A90C0
                move.w  #$30,d5 
                move.w  #$30,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.w   sub_1A90C0
                move.b  4(a5),d0
                andi.b  #$C0,d0
                eori.b  #$80,d0
                move.b  (byte_FF5404).l,d1
                andi.b  #$C0,d1
                cmp.b   d0,d1
                bne.w   sub_1A90C0
                addq.b  #1,$D(a5)
                move.b  $D(a5),d0
                andi.b  #$F,d0
                bne.s   loc_1A92E0
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$1E,d7
                bcs.w   loc_1A9180
loc_1A92E0:
                
                move.b  $D(a5),d0
                andi.w  #$10,d0
                lsl.w   #4,d0
                addi.w  #$200,d0
                move.w  d0,$2C(a5)
                rts
loc_1A92F4:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A92FA:
                
                addq.b  #1,$D(a5)
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$100,$2C(a5)
                cmpi.b  #$10,$D(a5)
                bcs.s   loc_1A9320
                bra.w   sub_1A90C0
loc_1A9320:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A9326:
                
                bset    #1,$38(a5)
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1A9074


; =============== S U B R O U T I N E =======================================

sub_1A9332:
                
                bra.s   loc_1A937A
loc_1A9334:
                
                btst    #1,$C(a5)
                bne.s   loc_1A934C
                move.b  $37(a5),d0
                beq.s   loc_1A9352
                cmpi.b  #$10,d0
                beq.s   loc_1A9392
                bra.w   loc_1A94E8
loc_1A934C:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A9352:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$30,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A937A
                rts
loc_1A937A:
                
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                rts

    ; End of function sub_1A9332


; START OF FUNCTION CHUNK FOR sub_1A9332

loc_1A9392:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1A93C2
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A93D2
                bcs.s   loc_1A93BC
                bsr.s   sub_1A940E
                bcs.s   loc_1A93BC
                bsr.w   sub_1A944E
                bcs.s   loc_1A93BC
                bsr.w   sub_1A948E
loc_1A93BC:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A93C2:
                
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1A9332


; =============== S U B R O U T I N E =======================================

sub_1A93D2:
                
                move.w  #$90,d5 
                move.w  #$FFA0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A940A
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$24,d7 
                bhi.s   loc_1A940A
                move.b  #$20,$37(a5) 
                move.w  #$14,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A940A:
                
                tst.b   d0
                rts

    ; End of function sub_1A93D2


; =============== S U B R O U T I N E =======================================

sub_1A940E:
                
                move.w  #$40,d5 
                move.w  #$FFD0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A944A
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$24,d7 
                bhi.s   loc_1A944A
                move.b  #$21,$37(a5) 
                move.w  #$E,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A944A:
                
                tst.b   d0
                rts

    ; End of function sub_1A940E


; =============== S U B R O U T I N E =======================================

sub_1A944E:
                
                move.w  #$48,d5 
                move.w  #$FFD8,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A948A
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$24,d7 
                bhi.s   loc_1A948A
                move.b  #$22,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A948A:
                
                tst.b   d0
                rts

    ; End of function sub_1A944E


; =============== S U B R O U T I N E =======================================

sub_1A948E:
                
                move.w  #$20,d5 
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A94E4
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$3C,d7 
                bcc.s   loc_1A94CA
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A94CA:
                
                move.b  #$24,$37(a5) 
                move.w  #9,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A94E4:
                
                tst.b   d0
                rts

    ; End of function sub_1A948E


; START OF FUNCTION CHUNK FOR sub_1A9332

loc_1A94E8:
                
                andi.b  #$F,d0
                beq.s   loc_1A9506
                cmpi.b  #1,d0
                beq.s   loc_1A950C
                cmpi.b  #2,d0
                beq.s   loc_1A9546
                cmpi.b  #3,d0
                beq.w   loc_1A950C
                bra.w   loc_1A950C
loc_1A9506:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A950C:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   loc_1A9540
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   loc_1A9540
                beq.w   loc_1A937A
loc_1A9540:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A9546:
                
                move.w  #$29,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$300,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   loc_1A9540
                bra.w   loc_1A937A

; END OF FUNCTION CHUNK FOR sub_1A9332


; =============== S U B R O U T I N E =======================================

sub_1A956C:
                
                jsr     sub_103B2
                bcs.w   loc_1A95D4
                move.w  (a5),d0
                move.b  4(a5),d1
                andi.b  #$C0,d1
                eori.b  #$80,d1
                beq.s   loc_1A9594
                cmpi.b  #$80,d1
                bcs.s   loc_1A9598
                beq.s   loc_1A959E
                subi.w  #$200,d0
                bra.s   loc_1A95A0
loc_1A9594:
                
                subq.b  #2,d0
                bra.s   loc_1A95A0
loc_1A9598:
                
                addi.w  #$200,d0
                bra.s   loc_1A95A0
loc_1A959E:
                
                addq.b  #2,d0
loc_1A95A0:
                
                move.w  d0,(a1)
                move.b  d1,4(a1)
                move.b  #$78,d2 
                move.w  $12(a5),d3
                addi.w  #$10,d3
                move.w  d3,$12(a1)
                move.w  2(a5),2(a1)
                move.w  #$47C0,6(a1)
                move.w  #$13C,$34(a1)
                move.b  #4,9(a1)
                jsr     sub_103B8
loc_1A95D4:
                
                bra.w   loc_1A937A

    ; End of function sub_1A956C


; =============== S U B R O U T I N E =======================================

sub_1A95D8:
                
                bra.s   loc_1A9626
loc_1A95DA:
                
                btst    #1,$C(a5)
                bne.s   loc_1A95F2
                move.b  $37(a5),d0
                beq.s   loc_1A95FE
                cmpi.b  #$10,d0
                beq.s   loc_1A9644
                bra.w   loc_1A97B4
loc_1A95F2:
                
                bclr    #0,$38(a5)
                bsr.w   sub_1A8ADA
                rts
loc_1A95FE:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$30,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A9626
                rts
loc_1A9626:
                
                bclr    #0,$38(a5)
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                rts

    ; End of function sub_1A95D8


; START OF FUNCTION CHUNK FOR sub_1A95D8

loc_1A9644:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1A9674
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A9684
                bcs.s   loc_1A966E
                bsr.s   sub_1A96C0
                bcs.s   loc_1A966E
                bsr.w   sub_1A971A
                bcs.s   loc_1A966E
                bsr.w   sub_1A975A
loc_1A966E:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A9674:
                
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1A95D8


; =============== S U B R O U T I N E =======================================

sub_1A9684:
                
                move.w  #$70,d5 
                move.w  #$FFB0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A96BC
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$3E,d7 
                bhi.s   loc_1A96BC
                move.b  #$20,$37(a5) 
                move.w  #$19,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A96BC:
                
                tst.b   d0
                rts

    ; End of function sub_1A9684


; =============== S U B R O U T I N E =======================================

sub_1A96C0:
                
                move.w  #$50,d5 
                move.w  #0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A9716
                move.b  4(a5),d0
                andi.b  #$C0,d0
                eori.b  #$80,d0
                move.b  (byte_FF5404).l,d1
                andi.b  #$C0,d1
                cmp.b   d0,d1
                bne.s   loc_1A9716
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$3C,d7 
                bhi.s   loc_1A9716
                move.b  #$21,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A9716:
                
                tst.b   d0
                rts

    ; End of function sub_1A96C0


; =============== S U B R O U T I N E =======================================

sub_1A971A:
                
                move.w  #$30,d5 
                move.w  #$FFE0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A9756
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12,d7
                bhi.s   loc_1A9756
                move.b  #$22,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A9756:
                
                tst.b   d0
                rts

    ; End of function sub_1A971A


; =============== S U B R O U T I N E =======================================

sub_1A975A:
                
                move.w  #$28,d5 
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A97B0
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$28,d7 
                bcc.s   loc_1A9796
                move.b  #$23,$37(a5) 
                move.w  #$12,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A9796:
                
                move.b  #$24,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A97B0:
                
                tst.b   d0
                rts

    ; End of function sub_1A975A


; START OF FUNCTION CHUNK FOR sub_1A95D8

loc_1A97B4:
                
                andi.b  #$F,d0
                beq.s   loc_1A97D4
                cmpi.b  #1,d0
                beq.s   loc_1A9808
                cmpi.b  #2,d0
                beq.w   loc_1A985E
                cmpi.b  #3,d0
                beq.w   loc_1A9824
                bra.w   loc_1A9824
loc_1A97D4:
                
                btst    #5,$2D(a5)
                beq.s   loc_1A97E4
                move.w  #$100,$2C(a5)
                bra.s   loc_1A9802
loc_1A97E4:
                
                btst    #4,$2D(a5)
                beq.s   loc_1A9802
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
loc_1A9802:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A9808:
                
                bset    #0,$38(a5)
                move.w  #$400,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$28,$D(a5) 
                bcc.w   loc_1A9626
                rts
loc_1A9824:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   loc_1A9858
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   loc_1A9858
                beq.w   loc_1A9626
loc_1A9858:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A985E:
                
                move.w  #$29,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$300,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   loc_1A9858
                bra.w   loc_1A9626

; END OF FUNCTION CHUNK FOR sub_1A95D8


; =============== S U B R O U T I N E =======================================

sub_1A9884:
                
                bra.s   loc_1A98D2
loc_1A9886:
                
                btst    #1,$C(a5)
                bne.s   loc_1A989E
                move.b  $37(a5),d0
                beq.s   loc_1A98AA
                cmpi.b  #$10,d0
                beq.s   loc_1A98F0
                bra.w   loc_1A9A46
loc_1A989E:
                
                bclr    #0,$38(a5)
                bsr.w   sub_1A8ADA
                rts
loc_1A98AA:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$30,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A98D2
                rts
loc_1A98D2:
                
                bclr    #0,$38(a5)
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                rts

    ; End of function sub_1A9884


; START OF FUNCTION CHUNK FOR sub_1A9884

loc_1A98F0:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1A9920
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A9930
                bcs.s   loc_1A991A
                bsr.s   sub_1A996C
                bcs.s   loc_1A991A
                bsr.w   sub_1A99AC
                bcs.s   loc_1A991A
                bsr.w   sub_1A99EC
loc_1A991A:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A9920:
                
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1A9884


; =============== S U B R O U T I N E =======================================

sub_1A9930:
                
                move.w  #$70,d5 
                move.w  #$FFB0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A9968
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$56,d7 
                bhi.s   loc_1A9968
                move.b  #$20,$37(a5) 
                move.w  #$1A,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A9968:
                
                tst.b   d0
                rts

    ; End of function sub_1A9930


; =============== S U B R O U T I N E =======================================

sub_1A996C:
                
                move.w  #$50,d5 
                move.w  #0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A99A8
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$7D,d7 
                bhi.s   loc_1A99A8
                move.b  #$21,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A99A8:
                
                tst.b   d0
                rts

    ; End of function sub_1A996C


; =============== S U B R O U T I N E =======================================

sub_1A99AC:
                
                move.w  #$30,d5 
                move.w  #$FFE0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A99E8
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$2B,d7 
                bhi.s   loc_1A99E8
                move.b  #$22,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A99E8:
                
                tst.b   d0
                rts

    ; End of function sub_1A99AC


; =============== S U B R O U T I N E =======================================

sub_1A99EC:
                
                move.w  #$28,d5 
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A9A42
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$32,d7 
                bcc.s   loc_1A9A28
                move.b  #$23,$37(a5) 
                move.w  #$12,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A9A28:
                
                move.b  #$24,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A9A42:
                
                tst.b   d0
                rts

    ; End of function sub_1A99EC


; START OF FUNCTION CHUNK FOR sub_1A9884

loc_1A9A46:
                
                andi.b  #$F,d0
                beq.s   loc_1A9A66
                cmpi.b  #1,d0
                beq.s   loc_1A9A8A
                cmpi.b  #2,d0
                beq.w   loc_1A9AE0
                cmpi.b  #3,d0
                beq.w   loc_1A9AA6
                bra.w   loc_1A9AA6
loc_1A9A66:
                
                cmpi.b  #$18,$2A(a5)
                bcc.s   loc_1A9A84
                move.w  #$300,$2C(a5)
                move.w  #$29,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
loc_1A9A84:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A9A8A:
                
                bset    #0,$38(a5)
                move.w  #$400,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$28,$D(a5) 
                bcc.w   loc_1A98D2
                rts
loc_1A9AA6:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   loc_1A9ADA
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   loc_1A9ADA
                beq.w   loc_1A98D2
loc_1A9ADA:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A9AE0:
                
                move.w  #$29,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$300,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   loc_1A9ADA
                bra.w   loc_1A98D2

; END OF FUNCTION CHUNK FOR sub_1A9884


; =============== S U B R O U T I N E =======================================

sub_1A9B06:
                
                bra.s   loc_1A9B4E
loc_1A9B08:
                
                btst    #1,$C(a5)
                bne.s   loc_1A9B20
                move.b  $37(a5),d0
                beq.s   loc_1A9B26
                cmpi.b  #$10,d0
                beq.s   loc_1A9B6C
                bra.w   loc_1A9CD4
loc_1A9B20:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A9B26:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$50,d5 
                move.w  #$10,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A9B4E
                rts
loc_1A9B4E:
                
                bclr    #6,$38(a5)
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                rts

    ; End of function sub_1A9B06


; START OF FUNCTION CHUNK FOR sub_1A9B06

loc_1A9B6C:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A9B9E
                bcs.s   loc_1A9B90
                bsr.w   sub_1A9BF6
                bcs.s   loc_1A9B90
                bsr.w   sub_1A9C3E
                bcs.s   loc_1A9B90
                bsr.w   sub_1A9C88
loc_1A9B90:
                
                btst    #6,$38(a5)
                bne.s   return_1A9B9C
                bsr.w   sub_1A8ADA
return_1A9B9C:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1A9B06


; =============== S U B R O U T I N E =======================================

sub_1A9B9E:
                
                move.b  $2F(a5),d0
                andi.b  #$30,d0 
                bne.w   loc_1A9BF2
                btst    #6,$38(a5)
                bne.s   loc_1A9BF2
                move.w  #$80,d5 
                move.w  #$80,d6 
                move.w  #$80,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A9BF2
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #2,d7
                move.b  #$20,$37(a5) 
                move.w  #0,$34(a5)
                clr.b   $D(a5)
                bsr.w   sub_1A8AE0
                bset    #6,$38(a5)
                ori     #1,ccr
                rts
loc_1A9BF2:
                
                tst.b   d0
                rts

    ; End of function sub_1A9B9E


; =============== S U B R O U T I N E =======================================

sub_1A9BF6:
                
                btst    #6,$38(a5)
                bne.s   loc_1A9C3A
                move.w  #$20,d5 
                move.w  #$20,d6 
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A9C3A
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$190,d7
                bhi.s   loc_1A9C3A
                move.b  #$21,$37(a5) 
                move.w  #$1B,$34(a5)
                clr.b   $D(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1A9C3A:
                
                tst.b   d0
                rts

    ; End of function sub_1A9BF6


; =============== S U B R O U T I N E =======================================

sub_1A9C3E:
                
                move.b  $2F(a5),d0
                andi.b  #$30,d0 
                bne.w   loc_1A9C84
                btst    #6,$38(a5)
                beq.s   loc_1A9C84
                move.w  #$30,d5 
                move.w  #$30,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1A9C84
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                bclr    #6,$38(a5)
                ori     #1,ccr
                rts
loc_1A9C84:
                
                tst.b   d0
                rts

    ; End of function sub_1A9C3E


; =============== S U B R O U T I N E =======================================

sub_1A9C88:
                
                btst    #6,$38(a5)
                bne.s   loc_1A9CD0
                move.w  #$10,d5
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1A9CD0
                move.b  $55(a5),d0
                subi.b  #$10,d0
                sub.b   (word_FF5454+1).l,d0
                cmpi.b  #$20,d0 
                bcc.s   loc_1A9CD0
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1A9CD0:
                
                tst.b   d0
                rts

    ; End of function sub_1A9C88


; START OF FUNCTION CHUNK FOR sub_1A9B06

loc_1A9CD4:
                
                andi.b  #$F,d0
                beq.s   loc_1A9CF6
                cmpi.b  #1,d0
                beq.w   return_1A9DA0
                cmpi.b  #2,d0
                beq.w   loc_1A9DA2
                cmpi.b  #3,d0
                beq.w   loc_1A9E4A
                bra.w   loc_1A9E4A
loc_1A9CF6:
                
                addq.b  #1,$D(a5)
                cmpi.b  #1,$D(a5)
                bne.s   loc_1A9D10
                move.b  #$FF,$2D(a5)
                move.w  #$1C0,$2E(a5)
                rts
loc_1A9D10:
                
                cmpi.b  #8,$D(a5)
                bne.s   loc_1A9D26
                move.b  #$FF,$2D(a5)
                move.w  #$180,$2E(a5)
                rts
loc_1A9D26:
                
                cmpi.b  #$10,$D(a5)
                bne.s   loc_1A9D3C
                move.b  #$FF,$2D(a5)
                move.w  #$140,$2E(a5)
                rts
loc_1A9D3C:
                
                cmpi.b  #$18,$D(a5)
                bne.s   loc_1A9D52
                move.b  #$FF,$2D(a5)
                move.w  #$100,$2E(a5)
                rts
loc_1A9D52:
                
                cmpi.b  #$20,$D(a5) 
                bne.w   loc_1A9D6A
                move.b  #$FF,$2D(a5)
                move.w  #$C0,$2E(a5) 
                rts
loc_1A9D6A:
                
                cmpi.b  #$28,$D(a5) 
                bne.w   loc_1A9D82
                move.b  #$FF,$2D(a5)
                move.w  #$80,$2E(a5) 
                rts
loc_1A9D82:
                
                cmpi.b  #$30,$D(a5) 
                bne.w   return_1A9D9E
                move.b  #$FF,$2D(a5)
                move.w  #$40,$2E(a5) 
                move.b  #$10,$37(a5)
return_1A9D9E:
                
                rts
return_1A9DA0:
                
                rts
loc_1A9DA2:
                
                addq.b  #1,$D(a5)
                cmpi.b  #1,$D(a5)
                bne.s   loc_1A9DBC
                move.b  #$FF,$2D(a5)
                move.w  #$40,$2E(a5) 
                rts
loc_1A9DBC:
                
                cmpi.b  #8,$D(a5)
                bne.s   loc_1A9DD2
                move.b  #$FF,$2D(a5)
                move.w  #$80,$2E(a5) 
                rts
loc_1A9DD2:
                
                cmpi.b  #$10,$D(a5)
                bne.s   loc_1A9DE8
                move.b  #$FF,$2D(a5)
                move.w  #$C0,$2E(a5) 
                rts
loc_1A9DE8:
                
                cmpi.b  #$18,$D(a5)
                bne.s   loc_1A9DFE
                move.b  #$FF,$2D(a5)
                move.w  #$100,$2E(a5)
                rts
loc_1A9DFE:
                
                cmpi.b  #$20,$D(a5) 
                bne.w   loc_1A9E16
                move.b  #$FF,$2D(a5)
                move.w  #$140,$2E(a5)
                rts
loc_1A9E16:
                
                cmpi.b  #$28,$D(a5) 
                bne.w   loc_1A9E2E
                move.b  #$FF,$2D(a5)
                move.w  #$180,$2E(a5)
                rts
loc_1A9E2E:
                
                cmpi.b  #$30,$D(a5) 
                bne.w   return_1A9E48
                move.b  #$FF,$2D(a5)
                move.w  #$1C0,$2E(a5)
                bra.w   loc_1A9B4E
return_1A9E48:
                
                rts
loc_1A9E4A:
                
                move.w  #$100,$2C(a5)
                move.w  $12(a5),d0
                move.w  $54(a5),d1
                movem.w d0-d1,-(sp)
                move.w  (word_FF5454).l,d0
                addi.w  #$11,d0
                move.w  d0,$54(a5)
                clr.w   d1
                move.b  5(a5),d1
                sub.w   d1,d0
                addq.w  #1,d0
                move.w  d0,$12(a5)
                jsr     (sub_3BC).l
                bcc.s   loc_1A9E90
                movem.w (sp)+,d0-d1
                move.w  d0,$12(a5)
                move.w  d1,$54(a5)
                bra.w   loc_1A9B4E
loc_1A9E90:
                
                movem.w (sp)+,d0-d1
                tst.b   (byte_FF1145).l
                bne.w   loc_1A9B4E
                tst.b   (byte_FF1142).l
                bne.s   loc_1A9EAE
                move.b  #1,(byte_FF1142).l
loc_1A9EAE:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$10,d5
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.w   loc_1A9B4E
                move.b  $D(a5),d0
                addq.b  #1,$D(a5)
                tst.b   d0
                bne.s   loc_1A9EF6
                sndCom  SFX_BLOB
                lea     (dword_FF5400).l,a5
                move.w  #$100,d0
                bsr.w   sub_1A8ACE
                tst.w   $3E(a5)
                beq.s   loc_1A9F04
loc_1A9EF6:
                
                cmpi.b  #$1E,d0
                bcs.w   return_1A9F02
                clr.b   $D(a5)
return_1A9F02:
                
                rts
loc_1A9F04:
                
                bclr    #6,$C(a5)
                bra.w   sub_1A8AEC

; END OF FUNCTION CHUNK FOR sub_1A9B06


; =============== S U B R O U T I N E =======================================

sub_1A9F0E:
                
                bra.s   loc_1A9F56
loc_1A9F10:
                
                btst    #1,$C(a5)
                bne.s   loc_1A9F28
                move.b  $37(a5),d0
                beq.s   loc_1A9F2E
                cmpi.b  #$10,d0
                beq.s   loc_1A9F74
                bra.w   loc_1AA104
loc_1A9F28:
                
                bsr.w   sub_1A8ADA
                rts
loc_1A9F2E:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$50,d5 
                move.w  #$10,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A9F56
                rts
loc_1A9F56:
                
                bclr    #6,$38(a5)
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                rts

    ; End of function sub_1A9F0E


; START OF FUNCTION CHUNK FOR sub_1A9F0E

loc_1A9F74:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1A9FA6
                bcs.s   loc_1A9F98
                bsr.w   sub_1AA000
                bcs.s   loc_1A9F98
                bsr.w   sub_1AA048
                bcs.s   loc_1A9F98
                bsr.w   sub_1AA092
loc_1A9F98:
                
                btst    #6,$38(a5)
                bne.s   return_1A9FA4
                bsr.w   sub_1A8ADA
return_1A9FA4:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1A9F0E


; =============== S U B R O U T I N E =======================================

sub_1A9FA6:
                
                move.b  $2F(a5),d0
                andi.b  #$30,d0 
                bne.w   loc_1A9FFC
                btst    #6,$38(a5)
                bne.s   loc_1A9FFC
                move.w  #$80,d5 
                move.w  #$80,d6 
                move.w  #$80,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1A9FFC
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #2,d7
                bhi.s   loc_1A9FFC
                move.b  #$20,$37(a5) 
                move.w  #0,$34(a5)
                clr.b   $D(a5)
                bsr.w   sub_1A8AE0
                bset    #6,$38(a5)
                ori     #1,ccr
                rts
loc_1A9FFC:
                
                tst.b   d0
                rts

    ; End of function sub_1A9FA6


; =============== S U B R O U T I N E =======================================

sub_1AA000:
                
                btst    #6,$38(a5)
                bne.s   loc_1AA044
                move.w  #$50,d5 
                move.w  #0,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1AA044
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$28,d7 
                bhi.s   loc_1AA044
                move.b  #$21,$37(a5) 
                move.w  #$1C,$34(a5)
                clr.b   $D(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1AA044:
                
                tst.b   d0
                rts

    ; End of function sub_1AA000


; =============== S U B R O U T I N E =======================================

sub_1AA048:
                
                move.b  $2F(a5),d0
                andi.b  #$30,d0 
                bne.w   loc_1AA08E
                btst    #6,$38(a5)
                beq.s   loc_1AA08E
                move.w  #$50,d5 
                move.w  #$50,d6 
                move.w  #$50,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1AA08E
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                bclr    #6,$38(a5)
                ori     #1,ccr
                rts
loc_1AA08E:
                
                tst.b   d0
                rts

    ; End of function sub_1AA048


; =============== S U B R O U T I N E =======================================

sub_1AA092:
                
                btst    #6,$38(a5)
                bne.s   loc_1AA100
                move.w  #$10,d5
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AA100
                move.b  $55(a5),d0
                subi.b  #$10,d0
                sub.b   (word_FF5454+1).l,d0
                cmpi.b  #$20,d0 
                bcc.s   loc_1AA100
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$A,d7
                bhi.s   loc_1AA0EA
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AA0EA:
                
                move.b  #$24,$37(a5) 
                move.w  #$1D,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1AA100:
                
                tst.b   d0
                rts

    ; End of function sub_1AA092


; START OF FUNCTION CHUNK FOR sub_1A9F0E

loc_1AA104:
                
                andi.b  #$F,d0
                beq.s   loc_1AA126
                cmpi.b  #1,d0
                beq.w   loc_1AA1D0
                cmpi.b  #2,d0
                beq.w   loc_1AA1D6
                cmpi.b  #3,d0
                beq.w   loc_1AA27E
                bra.w   loc_1AA1D0
loc_1AA126:
                
                addq.b  #1,$D(a5)
                cmpi.b  #1,$D(a5)
                bne.s   loc_1AA140
                move.b  #$FF,$2D(a5)
                move.w  #$1C0,$2E(a5)
                rts
loc_1AA140:
                
                cmpi.b  #7,$D(a5)
                bne.s   loc_1AA156
                move.b  #$FF,$2D(a5)
                move.w  #$180,$2E(a5)
                rts
loc_1AA156:
                
                cmpi.b  #$E,$D(a5)
                bne.s   loc_1AA16C
                move.b  #$FF,$2D(a5)
                move.w  #$140,$2E(a5)
                rts
loc_1AA16C:
                
                cmpi.b  #$15,$D(a5)
                bne.s   loc_1AA182
                move.b  #$FF,$2D(a5)
                move.w  #$100,$2E(a5)
                rts
loc_1AA182:
                
                cmpi.b  #$1C,$D(a5)
                bne.w   loc_1AA19A
                move.b  #$FF,$2D(a5)
                move.w  #$C0,$2E(a5) 
                rts
loc_1AA19A:
                
                cmpi.b  #$23,$D(a5) 
                bne.w   loc_1AA1B2
                move.b  #$FF,$2D(a5)
                move.w  #$80,$2E(a5) 
                rts
loc_1AA1B2:
                
                cmpi.b  #$2A,$D(a5) 
                bne.w   return_1AA1CE
                move.b  #$FF,$2D(a5)
                move.w  #$40,$2E(a5) 
                move.b  #$10,$37(a5)
return_1AA1CE:
                
                rts
loc_1AA1D0:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AA1D6:
                
                addq.b  #1,$D(a5)
                cmpi.b  #1,$D(a5)
                bne.s   loc_1AA1F0
                move.b  #$FF,$2D(a5)
                move.w  #$40,$2E(a5) 
                rts
loc_1AA1F0:
                
                cmpi.b  #7,$D(a5)
                bne.s   loc_1AA206
                move.b  #$FF,$2D(a5)
                move.w  #$80,$2E(a5) 
                rts
loc_1AA206:
                
                cmpi.b  #$E,$D(a5)
                bne.s   loc_1AA21C
                move.b  #$FF,$2D(a5)
                move.w  #$C0,$2E(a5) 
                rts
loc_1AA21C:
                
                cmpi.b  #$15,$D(a5)
                bne.s   loc_1AA232
                move.b  #$FF,$2D(a5)
                move.w  #$100,$2E(a5)
                rts
loc_1AA232:
                
                cmpi.b  #$1C,$D(a5)
                bne.w   loc_1AA24A
                move.b  #$FF,$2D(a5)
                move.w  #$140,$2E(a5)
                rts
loc_1AA24A:
                
                cmpi.b  #$23,$D(a5) 
                bne.w   loc_1AA262
                move.b  #$FF,$2D(a5)
                move.w  #$180,$2E(a5)
                rts
loc_1AA262:
                
                cmpi.b  #$2A,$D(a5) 
                bne.w   return_1AA27C
                move.b  #$FF,$2D(a5)
                move.w  #$1C0,$2E(a5)
                bra.w   loc_1A9F56
return_1AA27C:
                
                rts
loc_1AA27E:
                
                move.w  #$100,$2C(a5)
                move.w  $12(a5),d0
                move.w  $54(a5),d1
                movem.w d0-d1,-(sp)
                move.w  (word_FF5454).l,d0
                addi.w  #$11,d0
                move.w  d0,$54(a5)
                clr.w   d1
                move.b  5(a5),d1
                sub.w   d1,d0
                addq.w  #1,d0
                move.w  d0,$12(a5)
                jsr     (sub_3BC).l
                bcc.s   loc_1AA2C4
                movem.w (sp)+,d0-d1
                move.w  d0,$12(a5)
                move.w  d1,$54(a5)
                bra.w   loc_1A9F56
loc_1AA2C4:
                
                movem.w (sp)+,d0-d1
                tst.b   (byte_FF1145).l
                bne.w   loc_1A9F56
                tst.b   (byte_FF1142).l
                bne.s   loc_1AA2E2
                move.b  #1,(byte_FF1142).l
loc_1AA2E2:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$10,d5
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.w   loc_1A9F56
                move.b  $D(a5),d0
                addq.b  #1,$D(a5)
                tst.b   d0
                bne.s   loc_1AA32C
                sndCom  SFX_BLOB
                lea     (dword_FF5400).l,a5
                move.w  #$200,d0
                jsr     sub_1A8ACE
                tst.w   $3E(a5)
                beq.s   loc_1AA33A
loc_1AA32C:
                
                cmpi.b  #$1E,d0
                bcs.w   return_1AA338
                clr.b   $D(a5)
return_1AA338:
                
                rts
loc_1AA33A:
                
                bclr    #6,$C(a5)
                bra.w   sub_1A8AEC

; END OF FUNCTION CHUNK FOR sub_1A9F0E


; =============== S U B R O U T I N E =======================================

sub_1AA344:
                
                bra.s   loc_1AA38C

    ; End of function sub_1AA344


; =============== S U B R O U T I N E =======================================

sub_1AA346:
                
                btst    #1,$C(a5)
                bne.s   loc_1AA35E
                move.b  $37(a5),d0
                beq.s   loc_1AA364
                cmpi.b  #$10,d0
                beq.s   loc_1AA3AA
                bra.w   loc_1AA53A
loc_1AA35E:
                
                bsr.w   sub_1A8ADA
                rts

    ; End of function sub_1AA346


; START OF FUNCTION CHUNK FOR sub_1AA346

loc_1AA364:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$50,d5 
                move.w  #$10,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1AA38C
                rts
loc_1AA38C:
                
                bclr    #6,$38(a5)
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                rts
loc_1AA3AA:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1AA3DC
                bcs.s   loc_1AA3CE
                bsr.w   sub_1AA436
                bcs.s   loc_1AA3CE
                bsr.w   sub_1AA47E
                bcs.s   loc_1AA3CE
                bsr.w   sub_1AA4C8
loc_1AA3CE:
                
                btst    #6,$38(a5)
                bne.s   return_1AA3DA
                bsr.w   sub_1A8ADA
return_1AA3DA:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1AA346


; =============== S U B R O U T I N E =======================================

sub_1AA3DC:
                
                move.b  $2F(a5),d0
                andi.b  #$30,d0 
                bne.w   loc_1AA432
                btst    #6,$38(a5)
                bne.s   loc_1AA432
                move.w  #$80,d5 
                move.w  #$80,d6 
                move.w  #$80,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1AA432
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$14,d7
                bhi.s   loc_1AA432
                move.b  #$20,$37(a5) 
                move.w  #0,$34(a5)
                clr.b   $D(a5)
                bsr.w   sub_1A8AE0
                bset    #6,$38(a5)
                ori     #1,ccr
                rts
loc_1AA432:
                
                tst.b   d0
                rts

    ; End of function sub_1AA3DC


; =============== S U B R O U T I N E =======================================

sub_1AA436:
                
                btst    #6,$38(a5)
                bne.s   loc_1AA47A
                move.w  #$50,d5 
                move.w  #0,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1AA47A
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$50,d7 
                bhi.s   loc_1AA47A
                move.b  #$21,$37(a5) 
                move.w  #$1D,$34(a5)
                clr.b   $D(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1AA47A:
                
                tst.b   d0
                rts

    ; End of function sub_1AA436


; =============== S U B R O U T I N E =======================================

sub_1AA47E:
                
                move.b  $2F(a5),d0
                andi.b  #$30,d0 
                bne.w   loc_1AA4C4
                btst    #6,$38(a5)
                beq.s   loc_1AA4C4
                move.w  #$50,d5 
                move.w  #$50,d6 
                move.w  #$50,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1AA4C4
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                bclr    #6,$38(a5)
                ori     #1,ccr
                rts
loc_1AA4C4:
                
                tst.b   d0
                rts

    ; End of function sub_1AA47E


; =============== S U B R O U T I N E =======================================

sub_1AA4C8:
                
                btst    #6,$38(a5)
                bne.s   loc_1AA536
                move.w  #$10,d5
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AA536
                move.b  $55(a5),d0
                subi.b  #$10,d0
                sub.b   (word_FF5454+1).l,d0
                cmpi.b  #$20,d0 
                bcc.s   loc_1AA536
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #5,d7
                bhi.s   loc_1AA520
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AA520:
                
                move.b  #$24,$37(a5) 
                move.w  #$1E,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1AA536:
                
                tst.b   d0
                rts

    ; End of function sub_1AA4C8


; START OF FUNCTION CHUNK FOR sub_1AA346

loc_1AA53A:
                
                andi.b  #$F,d0
                beq.s   loc_1AA55C
                cmpi.b  #1,d0
                beq.w   loc_1AA606
                cmpi.b  #2,d0
                beq.w   loc_1AA60C
                cmpi.b  #3,d0
                beq.w   loc_1AA6B4
                bra.w   loc_1AA606
loc_1AA55C:
                
                addq.b  #1,$D(a5)
                cmpi.b  #1,$D(a5)
                bne.s   loc_1AA576
                move.b  #$FF,$2D(a5)
                move.w  #$1C0,$2E(a5)
                rts
loc_1AA576:
                
                cmpi.b  #5,$D(a5)
                bne.s   loc_1AA58C
                move.b  #$FF,$2D(a5)
                move.w  #$180,$2E(a5)
                rts
loc_1AA58C:
                
                cmpi.b  #$A,$D(a5)
                bne.s   loc_1AA5A2
                move.b  #$FF,$2D(a5)
                move.w  #$140,$2E(a5)
                rts
loc_1AA5A2:
                
                cmpi.b  #$F,$D(a5)
                bne.s   loc_1AA5B8
                move.b  #$FF,$2D(a5)
                move.w  #$100,$2E(a5)
                rts
loc_1AA5B8:
                
                cmpi.b  #$14,$D(a5)
                bne.w   loc_1AA5D0
                move.b  #$FF,$2D(a5)
                move.w  #$C0,$2E(a5) 
                rts
loc_1AA5D0:
                
                cmpi.b  #$19,$D(a5)
                bne.w   loc_1AA5E8
                move.b  #$FF,$2D(a5)
                move.w  #$80,$2E(a5) 
                rts
loc_1AA5E8:
                
                cmpi.b  #$1E,$D(a5)
                bne.w   return_1AA604
                move.b  #$FF,$2D(a5)
                move.w  #$40,$2E(a5) 
                move.b  #$10,$37(a5)
return_1AA604:
                
                rts
loc_1AA606:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AA60C:
                
                addq.b  #1,$D(a5)
                cmpi.b  #1,$D(a5)
                bne.s   loc_1AA626
                move.b  #$FF,$2D(a5)
                move.w  #$40,$2E(a5) 
                rts
loc_1AA626:
                
                cmpi.b  #5,$D(a5)
                bne.s   loc_1AA63C
                move.b  #$FF,$2D(a5)
                move.w  #$80,$2E(a5) 
                rts
loc_1AA63C:
                
                cmpi.b  #$A,$D(a5)
                bne.s   loc_1AA652
                move.b  #$FF,$2D(a5)
                move.w  #$C0,$2E(a5) 
                rts
loc_1AA652:
                
                cmpi.b  #$F,$D(a5)
                bne.s   loc_1AA668
                move.b  #$FF,$2D(a5)
                move.w  #$100,$2E(a5)
                rts
loc_1AA668:
                
                cmpi.b  #$14,$D(a5)
                bne.w   loc_1AA680
                move.b  #$FF,$2D(a5)
                move.w  #$140,$2E(a5)
                rts
loc_1AA680:
                
                cmpi.b  #$19,$D(a5)
                bne.w   loc_1AA698
                move.b  #$FF,$2D(a5)
                move.w  #$180,$2E(a5)
                rts
loc_1AA698:
                
                cmpi.b  #$1E,$D(a5)
                bne.w   return_1AA6B2
                move.b  #$FF,$2D(a5)
                move.w  #$1C0,$2E(a5)
                bra.w   loc_1AA38C
return_1AA6B2:
                
                rts
loc_1AA6B4:
                
                move.w  #$100,$2C(a5)
                move.w  $12(a5),d0
                move.w  $54(a5),d1
                movem.w d0-d1,-(sp)
                move.b  (word_FF5454).l,d0
                addi.w  #$11,d0
                move.w  d0,$54(a5)
                clr.w   d1
                move.b  5(a5),d1
                sub.w   d1,d0
                addq.w  #1,d0
                move.w  d0,$12(a5)
                jsr     (sub_3BC).l
                bcc.s   loc_1AA6FA
                movem.w (sp)+,d0-d1
                move.w  d0,$12(a5)
                move.w  d1,$54(a5)
                bra.w   loc_1AA38C
loc_1AA6FA:
                
                movem.w (sp)+,d0-d1
                tst.b   (byte_FF1145).l
                bne.w   loc_1AA38C
                tst.b   (byte_FF1142).l
                bne.s   loc_1AA718
                move.b  #1,(byte_FF1142).l
loc_1AA718:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$10,d5
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.w   loc_1AA38C
                move.b  $D(a5),d0
                addq.b  #1,$D(a5)
                tst.b   d0
                bne.s   loc_1AA762
                sndCom  SFX_BLOB
                lea     (dword_FF5400).l,a5
                move.w  #$300,d0
                jsr     sub_1A8ACE
                tst.w   $3E(a5)
                beq.s   loc_1AA770
loc_1AA762:
                
                cmpi.b  #$A,d0
                bcs.w   return_1AA76E
                clr.b   $D(a5)
return_1AA76E:
                
                rts
loc_1AA770:
                
                bclr    #6,$C(a5)
                bra.w   sub_1A8AEC

; END OF FUNCTION CHUNK FOR sub_1AA346


; =============== S U B R O U T I N E =======================================

sub_1AA77A:
                
                bra.s   loc_1AA7C2

    ; End of function sub_1AA77A


; =============== S U B R O U T I N E =======================================

sub_1AA77C:
                
                btst    #1,$C(a5)
                bne.s   loc_1AA794
                move.b  $37(a5),d0
                beq.s   loc_1AA79A
                cmpi.b  #$10,d0
                beq.s   loc_1AA7E0
                bra.w   loc_1AA9B6
loc_1AA794:
                
                bsr.w   sub_1A8ADA
                rts

    ; End of function sub_1AA77C


; START OF FUNCTION CHUNK FOR sub_1AA77C

loc_1AA79A:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$50,d5 
                move.w  #$10,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1AA7C2
                rts
loc_1AA7C2:
                
                bclr    #6,$38(a5)
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                rts
loc_1AA7E0:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1AA812
                bcs.s   loc_1AA804
                bsr.w   sub_1AA8C4
                bcs.s   loc_1AA804
                bsr.w   sub_1AA90C
                bcs.s   loc_1AA804
                bsr.w   sub_1AA954
loc_1AA804:
                
                btst    #6,$38(a5)
                bne.s   return_1AA810
                bsr.w   sub_1A8ADA
return_1AA810:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1AA77C


; =============== S U B R O U T I N E =======================================

sub_1AA812:
                
                move.b  $2F(a5),d0
                andi.b  #$30,d0 
                bne.w   loc_1AA8C0
                btst    #6,$38(a5)
                bne.s   loc_1AA882
                move.w  #$40,d5 
                move.w  #$40,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcc.w   loc_1AA8C0
                move.w  #$38,d5 
                move.w  #$38,d6 
                move.w  #$38,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1AA8C0
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$19,d7
                bhi.s   loc_1AA8C0
                move.b  #$20,$37(a5) 
                move.w  #0,$34(a5)
                clr.b   $D(a5)
                bsr.w   sub_1A8AE0
                bset    #6,$38(a5)
                move.w  $12(a5),$54(a5)
                ori     #1,ccr
                rts
loc_1AA882:
                
                move.w  #$38,d5 
                move.w  #$38,d6 
                move.w  #$38,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1AA8C0
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$19,d7
                bhi.s   loc_1AA8C0
                move.b  #$20,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$1F,$D(a5)
                ori     #1,ccr
                rts
loc_1AA8C0:
                
                tst.b   d0
                rts

    ; End of function sub_1AA812


; =============== S U B R O U T I N E =======================================

sub_1AA8C4:
                
                btst    #6,$38(a5)
                bne.s   loc_1AA908
                move.w  #$38,d5 
                move.w  #$FFD0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AA908
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$19,d7
                bhi.s   loc_1AA908
                move.b  #$21,$37(a5) 
                move.w  #$13,$34(a5)
                clr.b   $D(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1AA908:
                
                tst.b   d0
                rts

    ; End of function sub_1AA8C4


; =============== S U B R O U T I N E =======================================

sub_1AA90C:
                
                btst    #6,$38(a5)
                bne.s   loc_1AA950
                move.w  #$20,d5 
                move.w  #$FFE8,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AA950
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$32,d7 
                bhi.s   loc_1AA950
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AA950:
                
                tst.b   d0
                rts

    ; End of function sub_1AA90C


; =============== S U B R O U T I N E =======================================

sub_1AA954:
                
                btst    #6,$38(a5)
                bne.s   loc_1AA9B2
                move.w  #$18,d5
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AA9B2
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$32,d7 
                bcc.s   loc_1AA998
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AA998:
                
                move.b  #$24,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AA9B2:
                
                tst.b   d0
                rts

    ; End of function sub_1AA954


; START OF FUNCTION CHUNK FOR sub_1AA77C

loc_1AA9B6:
                
                andi.b  #$F,d0
                beq.s   loc_1AA9D8
                cmpi.b  #1,d0
                beq.w   loc_1AAAA2
                cmpi.b  #2,d0
                beq.w   loc_1AAAA8
                cmpi.b  #3,d0
                beq.w   loc_1AAAE4
                bra.w   loc_1AAAA2
loc_1AA9D8:
                
                addq.b  #1,$D(a5)
                cmpi.b  #1,$D(a5)
                bne.s   loc_1AA9F2
                move.b  #$FF,$2D(a5)
                move.w  #$40,$2E(a5) 
                rts
loc_1AA9F2:
                
                cmpi.b  #8,$D(a5)
                bne.s   loc_1AAA08
                move.b  #$FF,$2D(a5)
                move.w  #$80,$2E(a5) 
                rts
loc_1AAA08:
                
                cmpi.b  #$10,$D(a5)
                bne.s   loc_1AAA1E
                move.b  #$FF,$2D(a5)
                move.w  #$C0,$2E(a5) 
                rts
loc_1AAA1E:
                
                cmpi.b  #$18,$D(a5)
                bne.s   loc_1AAA3A
                move.b  #$FF,$2D(a5)
                move.w  #$100,$2E(a5)
                move.b  #$10,$37(a5)
                rts
loc_1AAA3A:
                
                cmpi.b  #$20,$D(a5) 
                bne.w   loc_1AAA72
                clr.w   d0
                move.b  #$20,d0 
                subq.b  #1,d0
                add.w   d0,$54(a5)
                jsr     (sub_3BC).l
                bcc.s   loc_1AAA64
                move.w  $12(a5),$54(a5)
                subq.b  #1,$D(a5)
                rts
loc_1AAA64:
                
                move.b  #$FF,$2D(a5)
                move.w  #$C0,$2E(a5) 
                rts
loc_1AAA72:
                
                cmpi.b  #$28,$D(a5) 
                bne.s   loc_1AAA88
                move.b  #$FF,$2D(a5)
                move.w  #$80,$2E(a5) 
                rts
loc_1AAA88:
                
                cmpi.b  #$30,$D(a5) 
                bne.s   return_1AAAA0
                move.w  #$40,$2E(a5) 
                bclr    #6,$38(a5)
                bra.w   loc_1AA7C2
return_1AAAA0:
                
                rts
loc_1AAAA2:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AAAA8:
                
                addq.b  #1,$D(a5)
                cmpi.b  #1,$D(a5)
                bne.s   loc_1AAAC4
                move.w  #$49,d1 
                move.w  #$49,d2 
                move.w  #$49,d3 
                bsr.w   sub_1A880C
loc_1AAAC4:
                
                move.b  $D(a5),d0
                andi.w  #4,d0
                lsl.w   #6,d0
                addi.w  #$300,d0
                move.w  d0,$2C(a5)
                cmpi.b  #$20,$D(a5) 
                bcs.s   return_1AAAE2
                bra.w   loc_1AA7C2
return_1AAAE2:
                
                rts
loc_1AAAE4:
                
                addq.b  #1,$D(a5)
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.b  $D(a5),d0
                andi.w  #4,d0
                lsl.w   #6,d0
                addi.w  #$100,d0
                move.w  d0,$2C(a5)
                cmpi.b  #$20,$D(a5) 
                bcs.s   return_1AAB16
                bra.w   loc_1AA7C2
return_1AAB16:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1AA77C


; =============== S U B R O U T I N E =======================================

sub_1AAB18:
                
                bra.s   loc_1AAB60
loc_1AAB1A:
                
                btst    #1,$C(a5)
                bne.s   loc_1AAB32
                move.b  $37(a5),d0
                beq.s   loc_1AAB38
                cmpi.b  #$10,d0
                beq.s   loc_1AAB7E
                bra.w   loc_1AAD42
loc_1AAB32:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AAB38:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$50,d5 
                move.w  #$10,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1AAB60
                rts
loc_1AAB60:
                
                bclr    #6,$38(a5)
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                rts

    ; End of function sub_1AAB18


; START OF FUNCTION CHUNK FOR sub_1AAB18

loc_1AAB7E:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1AABB0
                bcs.s   loc_1AABA2
                bsr.w   sub_1AAC50
                bcs.s   loc_1AABA2
                bsr.w   sub_1AAC98
                bcs.s   loc_1AABA2
                bsr.w   sub_1AACE0
loc_1AABA2:
                
                btst    #6,$38(a5)
                bne.s   return_1AABAE
                bsr.w   sub_1A8ADA
return_1AABAE:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1AAB18


; =============== S U B R O U T I N E =======================================

sub_1AABB0:
                
                move.b  $2D(a5),d0
                andi.b  #$30,d0 
                bne.w   loc_1AAC4C
                btst    #6,$38(a5)
                bne.s   loc_1AAC0E
                move.w  #$20,d5 
                move.w  #$20,d6 
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.w   loc_1AAC4C
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12,d7
                bhi.s   loc_1AAC4C
                move.b  #$20,$37(a5) 
                move.w  #0,$34(a5)
                clr.b   $D(a5)
                bsr.w   sub_1A8AE0
                bset    #6,$38(a5)
                move.w  $12(a5),$54(a5)
                ori     #1,ccr
                rts
loc_1AAC0E:
                
                move.w  #$20,d5 
                move.w  #$20,d6 
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1AAC4C
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12,d7
                bhi.s   loc_1AAC4C
                move.b  #$20,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$1F,$D(a5)
                ori     #1,ccr
                rts
loc_1AAC4C:
                
                tst.b   d0
                rts

    ; End of function sub_1AABB0


; =============== S U B R O U T I N E =======================================

sub_1AAC50:
                
                btst    #6,$38(a5)
                bne.s   loc_1AAC94
                move.w  #$38,d5 
                move.w  #$FFD0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AAC94
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C,d7
                bhi.s   loc_1AAC94
                move.b  #$21,$37(a5) 
                move.w  #$13,$34(a5)
                clr.b   $D(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1AAC94:
                
                tst.b   d0
                rts

    ; End of function sub_1AAC50


; =============== S U B R O U T I N E =======================================

sub_1AAC98:
                
                btst    #6,$38(a5)
                bne.s   loc_1AACDC
                move.w  #$20,d5 
                move.w  #$FFE8,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AACDC
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$3E,d7 
                bhi.s   loc_1AACDC
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AACDC:
                
                tst.b   d0
                rts

    ; End of function sub_1AAC98


; =============== S U B R O U T I N E =======================================

sub_1AACE0:
                
                btst    #6,$38(a5)
                bne.s   loc_1AAD3E
                move.w  #$18,d5
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AAD3E
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$3C,d7 
                bcc.s   loc_1AAD24
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AAD24:
                
                move.b  #$24,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AAD3E:
                
                tst.b   d0
                rts

    ; End of function sub_1AACE0


; START OF FUNCTION CHUNK FOR sub_1AAB18

loc_1AAD42:
                
                andi.b  #$F,d0
                beq.s   loc_1AAD64
                cmpi.b  #1,d0
                beq.w   loc_1AAE2C
                cmpi.b  #2,d0
                beq.w   loc_1AAE32
                cmpi.b  #3,d0
                beq.w   loc_1AAE84
                bra.w   loc_1AAE2C
loc_1AAD64:
                
                addq.b  #1,$D(a5)
                cmpi.b  #1,$D(a5)
                bne.s   loc_1AAD7E
                move.b  #$FF,$2D(a5)
                move.w  #$40,$2E(a5) 
                rts
loc_1AAD7E:
                
                cmpi.b  #8,$D(a5)
                bne.s   loc_1AAD94
                move.b  #$FF,$2D(a5)
                move.w  #$80,$2E(a5) 
                rts
loc_1AAD94:
                
                cmpi.b  #$10,$D(a5)
                bne.s   loc_1AADAA
                move.b  #$FF,$2D(a5)
                move.w  #$C0,$2E(a5) 
                rts
loc_1AADAA:
                
                cmpi.b  #$18,$D(a5)
                bne.s   loc_1AADC0
                move.b  #$FF,$2D(a5)
                move.w  #$100,$2E(a5)
                rts
loc_1AADC0:
                
                cmpi.b  #$20,$D(a5) 
                bne.s   loc_1AADF6
                clr.w   d0
                move.b  #$20,d0 
                subq.b  #1,d0
                add.w   d0,$54(a5)
                jsr     (sub_3BC).l
                bcc.s   loc_1AADE8
                move.w  $12(a5),$54(a5)
                subq.b  #1,$D(a5)
                rts
loc_1AADE8:
                
                move.b  #$FF,$2D(a5)
                move.w  #$C0,$2E(a5) 
                rts
loc_1AADF6:
                
                cmpi.b  #$28,$D(a5) 
                bne.s   loc_1AAE0C
                move.b  #$FF,$2D(a5)
                move.w  #$80,$2E(a5) 
                rts
loc_1AAE0C:
                
                cmpi.b  #$30,$D(a5) 
                bne.s   return_1AAE2A
                move.b  #$FF,$2D(a5)
                move.w  #$40,$2E(a5) 
                bclr    #6,$38(a5)
                bra.w   loc_1AAB60
return_1AAE2A:
                
                rts
loc_1AAE2C:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AAE32:
                
                addq.b  #1,$D(a5)
                move.b  $D(a5),d0
                andi.w  #4,d0
                lsl.w   #6,d0
                addi.w  #$300,d0
                move.w  d0,$2C(a5)
                cmpi.b  #$20,$D(a5) 
                bcs.w   return_1AAE82
                move.w  #$64,d6 
                jsr     (sub_362).l
                move.b  #0,d0
                cmpi.b  #$28,d7 
                bcs.s   loc_1AAE7A
                move.w  #$49,d1 
                move.w  #$49,d2 
                move.w  #$49,d3 
                bsr.w   sub_1A880C
                bra.w   loc_1AAB60
loc_1AAE7A:
                
                bsr.w   sub_1A8AD4
                bra.w   loc_1AAB60
return_1AAE82:
                
                rts
loc_1AAE84:
                
                addq.b  #1,$D(a5)
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.b  $D(a5),d0
                andi.w  #4,d0
                lsl.w   #6,d0
                addi.w  #$100,d0
                move.w  d0,$2C(a5)
                cmpi.b  #$20,$D(a5) 
                bcs.s   return_1AAEB6
                bra.w   loc_1AAB60
return_1AAEB6:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1AAB18


; =============== S U B R O U T I N E =======================================

sub_1AAEB8:
                
                bra.s   loc_1AAF00
loc_1AAEBA:
                
                btst    #1,$C(a5)
                bne.s   loc_1AAED2
                move.b  $37(a5),d0
                beq.s   loc_1AAED8
                cmpi.b  #$10,d0
                beq.s   loc_1AAF1E
                bra.w   loc_1AB0E2
loc_1AAED2:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AAED8:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$50,d5 
                move.w  #$10,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1AAF00
                rts
loc_1AAF00:
                
                bclr    #6,$38(a5)
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                rts

    ; End of function sub_1AAEB8


; START OF FUNCTION CHUNK FOR sub_1AAEB8

loc_1AAF1E:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1AAF50
                bcs.s   loc_1AAF42
                bsr.w   sub_1AAFF0
                bcs.s   loc_1AAF42
                bsr.w   sub_1AB038
                bcs.s   loc_1AAF42
                bsr.w   sub_1AB080
loc_1AAF42:
                
                btst    #6,$38(a5)
                bne.s   return_1AAF4E
                bsr.w   sub_1A8ADA
return_1AAF4E:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1AAEB8


; =============== S U B R O U T I N E =======================================

sub_1AAF50:
                
                move.b  $2F(a5),d0
                andi.b  #$30,d0 
                bne.w   loc_1AAFEC
                btst    #6,$38(a5)
                bne.s   loc_1AAFAE
                move.w  #$20,d5 
                move.w  #$20,d6 
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.w   loc_1AAFEC
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$25,d7 
                bhi.s   loc_1AAFEC
                move.b  #$20,$37(a5) 
                move.w  #0,$34(a5)
                clr.b   $D(a5)
                bsr.w   sub_1A8AE0
                bset    #6,$38(a5)
                move.w  $12(a5),$54(a5)
                ori     #1,ccr
                rts
loc_1AAFAE:
                
                move.w  #$20,d5 
                move.w  #$20,d6 
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1AAFEC
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$25,d7 
                bhi.s   loc_1AAFEC
                move.b  #$20,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$1F,$D(a5)
                ori     #1,ccr
                rts
loc_1AAFEC:
                
                tst.b   d0
                rts

    ; End of function sub_1AAF50


; =============== S U B R O U T I N E =======================================

sub_1AAFF0:
                
                btst    #6,$38(a5)
                bne.s   loc_1AB034
                move.w  #$38,d5 
                move.w  #$FFD0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AB034
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C,d7
                bhi.s   loc_1AB034
                move.b  #$21,$37(a5) 
                move.w  #$13,$34(a5)
                clr.b   $D(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1AB034:
                
                tst.b   d0
                rts

    ; End of function sub_1AAFF0


; =============== S U B R O U T I N E =======================================

sub_1AB038:
                
                btst    #6,$38(a5)
                bne.s   loc_1AB07C
                move.w  #$20,d5 
                move.w  #$FFE8,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AB07C
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$57,d7 
                bhi.s   loc_1AB07C
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AB07C:
                
                tst.b   d0
                rts

    ; End of function sub_1AB038


; =============== S U B R O U T I N E =======================================

sub_1AB080:
                
                btst    #6,$38(a5)
                bne.s   loc_1AB0DE
                move.w  #$18,d5
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AB0DE
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$46,d7 
                bcc.s   loc_1AB0C4
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AB0C4:
                
                move.b  #$24,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AB0DE:
                
                tst.b   d0
                rts

    ; End of function sub_1AB080


; START OF FUNCTION CHUNK FOR sub_1AAEB8

loc_1AB0E2:
                
                andi.b  #$F,d0
                beq.s   loc_1AB104
                cmpi.b  #1,d0
                beq.w   loc_1AB1CC
                cmpi.b  #2,d0
                beq.w   loc_1AB1D2
                cmpi.b  #3,d0
                beq.w   loc_1AB22E
                bra.w   loc_1AB1CC
loc_1AB104:
                
                addq.b  #1,$D(a5)
                cmpi.b  #1,$D(a5)
                bne.s   loc_1AB11E
                move.b  #$FF,$2D(a5)
                move.w  #$40,$2E(a5) 
                rts
loc_1AB11E:
                
                cmpi.b  #8,$D(a5)
                bne.s   loc_1AB134
                move.b  #$FF,$2D(a5)
                move.w  #$80,$2E(a5) 
                rts
loc_1AB134:
                
                cmpi.b  #$10,$D(a5)
                bne.s   loc_1AB14A
                move.b  #$FF,$2D(a5)
                move.w  #$C0,$2E(a5) 
                rts
loc_1AB14A:
                
                cmpi.b  #$18,$D(a5)
                bne.s   loc_1AB160
                move.b  #$FF,$2D(a5)
                move.w  #$100,$2E(a5)
                rts
loc_1AB160:
                
                cmpi.b  #$20,$D(a5) 
                bne.s   loc_1AB196
                clr.w   d0
                move.b  #$20,d0 
                subq.b  #1,d0
                add.w   d0,$54(a5)
                jsr     (sub_3BC).l
                bcc.s   loc_1AB188
                move.w  $12(a5),$54(a5)
                subq.b  #1,$D(a5)
                rts
loc_1AB188:
                
                move.b  #$FF,$2D(a5)
                move.w  #$C0,$2E(a5) 
                rts
loc_1AB196:
                
                cmpi.b  #$28,$D(a5) 
                bne.s   loc_1AB1AC
                move.b  #$FF,$2D(a5)
                move.w  #$80,$2E(a5) 
                rts
loc_1AB1AC:
                
                cmpi.b  #$30,$D(a5) 
                bne.s   return_1AB1CA
                move.b  #$FF,$2D(a5)
                move.w  #$40,$2E(a5) 
                bclr    #6,$38(a5)
                bra.w   loc_1AAF00
return_1AB1CA:
                
                rts
loc_1AB1CC:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AB1D2:
                
                addq.b  #1,$D(a5)
                move.b  $D(a5),d0
                andi.w  #4,d0
                lsl.w   #6,d0
                addi.w  #$300,d0
                move.w  d0,$2C(a5)
                cmpi.b  #$20,$D(a5) 
                bcs.s   return_1AB22C
                move.w  #$64,d6 
                jsr     (sub_362).l
                move.b  #0,d0
                cmpi.b  #$1E,d7
                bcs.s   loc_1AB224
                move.b  #2,d0
                cmpi.b  #$32,d7 
                bcs.s   loc_1AB224
                move.b  #1,d0
                cmpi.b  #$41,d7 
                bcs.s   loc_1AB224
                move.b  #3,d0
                cmpi.b  #$46,d7 
                bcc.w   loc_1AAF00
loc_1AB224:
                
                bsr.w   sub_1A8AD4
                bra.w   loc_1AAF00
return_1AB22C:
                
                rts
loc_1AB22E:
                
                addq.b  #1,$D(a5)
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.b  $D(a5),d0
                andi.w  #4,d0
                lsl.w   #6,d0
                addi.w  #$100,d0
                move.w  d0,$2C(a5)
                cmpi.b  #$20,$D(a5) 
                bcs.s   return_1AB260
                bra.w   loc_1AAF00
return_1AB260:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1AAEB8


; =============== S U B R O U T I N E =======================================

sub_1AB262:
                
                bra.s   loc_1AB2AA
loc_1AB264:
                
                btst    #1,$C(a5)
                bne.s   loc_1AB27C
                move.b  $37(a5),d0
                beq.s   loc_1AB282
                cmpi.b  #$10,d0
                beq.s   loc_1AB2AE
                bra.w   loc_1AB3F0
loc_1AB27C:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AB282:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$30,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1AB2AA
                rts
loc_1AB2AA:
                
                bra.w   sub_1A8AB6

    ; End of function sub_1AB262


; START OF FUNCTION CHUNK FOR sub_1AB262

loc_1AB2AE:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1AB2DE
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1AB2E2
                bcs.s   loc_1AB2D8
                bsr.s   sub_1AB31E
                bcs.s   loc_1AB2D8
                bsr.w   sub_1AB35A
                bcs.s   loc_1AB2D8
                bsr.w   sub_1AB396
loc_1AB2D8:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AB2DE:
                
                bra.w   sub_1A8AA6

; END OF FUNCTION CHUNK FOR sub_1AB262


; =============== S U B R O U T I N E =======================================

sub_1AB2E2:
                
                move.w  #$50,d5 
                move.w  #$FFB8,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1AB31A
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$19,d7
                bhi.s   loc_1AB31A
                move.b  #$20,$37(a5) 
                move.w  #$13,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1AB31A:
                
                tst.b   d0
                rts

    ; End of function sub_1AB2E2


; =============== S U B R O U T I N E =======================================

sub_1AB31E:
                
                move.w  #$58,d5 
                move.w  #$FFC0,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1AB356
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #8,d7
                bhi.s   loc_1AB356
                move.b  #$21,$37(a5) 
                move.w  #$E,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1AB356:
                
                tst.b   d0
                rts

    ; End of function sub_1AB31E


; =============== S U B R O U T I N E =======================================

sub_1AB35A:
                
                move.w  #$38,d5 
                move.w  #$FFE0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AB392
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #4,d7
                bhi.s   loc_1AB392
                move.b  #$22,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1AB392:
                
                tst.b   d0
                rts

    ; End of function sub_1AB35A


; =============== S U B R O U T I N E =======================================

sub_1AB396:
                
                move.w  #$28,d5 
                move.w  #0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AB3EC
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$46,d7 
                bcc.s   loc_1AB3D2
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AB3D2:
                
                move.b  #$24,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AB3EC:
                
                tst.b   d0
                rts

    ; End of function sub_1AB396


; START OF FUNCTION CHUNK FOR sub_1AB262

loc_1AB3F0:
                
                andi.b  #$F,d0
                beq.s   loc_1AB40C
                cmpi.b  #1,d0
                beq.s   loc_1AB418
                cmpi.b  #2,d0
                beq.s   loc_1AB42A
                cmpi.b  #3,d0
                beq.s   loc_1AB42A
                bra.w   loc_1AB464
loc_1AB40C:
                
                move.w  #$100,$2C(a5)
                bsr.w   sub_1A8ADA
                rts
loc_1AB418:
                
                move.b  $2D(a5),d0
                andi.b  #$30,d0 
                beq.w   loc_1AB2AA
                bsr.w   sub_1A8ADA
                rts
loc_1AB42A:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   loc_1AB45E
                move.w  #$21,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   loc_1AB45E
                bra.w   loc_1AB2AA
loc_1AB45E:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AB464:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   return_1AB498
                move.w  #$21,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$2D,$D(a5) 
                bcs.s   return_1AB498
                bra.w   loc_1AB2AA
return_1AB498:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1AB262


; =============== S U B R O U T I N E =======================================

sub_1AB49A:
                
                bra.s   loc_1AB4E2
loc_1AB49C:
                
                btst    #1,$C(a5)
                bne.s   loc_1AB4B4
                move.b  $37(a5),d0
                beq.s   loc_1AB4BA
                cmpi.b  #$10,d0
                beq.s   loc_1AB4E6
                bra.w   loc_1AB628
loc_1AB4B4:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AB4BA:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$30,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1AB4E2
                rts
loc_1AB4E2:
                
                bra.w   sub_1A8AB6

    ; End of function sub_1AB49A


; START OF FUNCTION CHUNK FOR sub_1AB49A

loc_1AB4E6:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1AB516
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1AB51A
                bcs.s   loc_1AB510
                bsr.s   sub_1AB556
                bcs.s   loc_1AB510
                bsr.w   sub_1AB592
                bcs.s   loc_1AB510
                bsr.w   sub_1AB5CE
loc_1AB510:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AB516:
                
                bra.w   sub_1A8AA6

; END OF FUNCTION CHUNK FOR sub_1AB49A


; =============== S U B R O U T I N E =======================================

sub_1AB51A:
                
                move.w  #$60,d5 
                move.w  #$FFB8,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1AB552
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #8,d7
                bhi.s   loc_1AB552
                move.b  #$20,$37(a5) 
                move.w  #$14,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1AB552:
                
                tst.b   d0
                rts

    ; End of function sub_1AB51A


; =============== S U B R O U T I N E =======================================

sub_1AB556:
                
                move.w  #$58,d5 
                move.w  #$FFC0,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1AB58E
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C,d7
                bhi.s   loc_1AB58E
                move.b  #$21,$37(a5) 
                move.w  #$E,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1AB58E:
                
                tst.b   d0
                rts

    ; End of function sub_1AB556


; =============== S U B R O U T I N E =======================================

sub_1AB592:
                
                move.w  #$38,d5 
                move.w  #0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AB5CA
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #3,d7
                bhi.s   loc_1AB5CA
                move.b  #$22,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1AB5CA:
                
                tst.b   d0
                rts

    ; End of function sub_1AB592


; =============== S U B R O U T I N E =======================================

sub_1AB5CE:
                
                move.w  #$28,d5 
                move.w  #0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AB624
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$28,d7 
                bcc.s   loc_1AB60A
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AB60A:
                
                move.b  #$24,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AB624:
                
                tst.b   d0
                rts

    ; End of function sub_1AB5CE


; START OF FUNCTION CHUNK FOR sub_1AB49A

loc_1AB628:
                
                andi.b  #$F,d0
                beq.s   loc_1AB644
                cmpi.b  #1,d0
                beq.s   loc_1AB64A
                cmpi.b  #2,d0
                beq.s   loc_1AB65C
                cmpi.b  #3,d0
                beq.s   loc_1AB696
                bra.w   loc_1AB6CC
loc_1AB644:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AB64A:
                
                move.b  $2D(a5),d0
                andi.b  #$30,d0 
                beq.w   loc_1AB4E2
                bsr.w   sub_1A8ADA
                rts
loc_1AB65C:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   loc_1AB690
                move.w  #$21,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   loc_1AB690
                bra.w   loc_1AB4E2
loc_1AB690:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AB696:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   return_1AB6CA
                move.w  #$21,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$2D,$D(a5) 
                bcs.s   return_1AB6CA
                bra.w   loc_1AB4E2
return_1AB6CA:
                
                rts
loc_1AB6CC:
                
                addq.b  #1,$D(a5)
                move.b  $D(a5),d0
                andi.w  #8,d0
                lsl.w   #5,d0
                addi.w  #$100,d0
                move.w  d0,$2C(a5)
                cmpi.w  #$100,d0
                beq.s   loc_1AB6F8
                move.w  #$21,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
loc_1AB6F8:
                
                cmpi.b  #$60,$D(a5) 
                bcc.w   loc_1AB4E2
                rts

; END OF FUNCTION CHUNK FOR sub_1AB49A


; =============== S U B R O U T I N E =======================================

sub_1AB704:
                
                bra.s   loc_1AB74C
loc_1AB706:
                
                btst    #1,$C(a5)
                bne.s   loc_1AB71E
                move.b  $37(a5),d0
                beq.s   loc_1AB724
                cmpi.b  #$10,d0
                beq.s   loc_1AB750
                bra.w   loc_1AB892
loc_1AB71E:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AB724:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$30,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1AB74C
                rts
loc_1AB74C:
                
                bra.w   sub_1A8AB6

    ; End of function sub_1AB704


; START OF FUNCTION CHUNK FOR sub_1AB704

loc_1AB750:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1AB780
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1AB784
                bcs.s   loc_1AB77A
                bsr.s   sub_1AB7C0
                bcs.s   loc_1AB77A
                bsr.w   sub_1AB7FC
                bcs.s   loc_1AB77A
                bsr.w   sub_1AB838
loc_1AB77A:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AB780:
                
                bra.w   sub_1A8AA6

; END OF FUNCTION CHUNK FOR sub_1AB704


; =============== S U B R O U T I N E =======================================

sub_1AB784:
                
                move.w  #$58,d5 
                move.w  #$FFC0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AB7BC
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #8,d7
                bhi.s   loc_1AB7BC
                move.b  #$20,$37(a5) 
                move.w  #$1F,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1AB7BC:
                
                tst.b   d0
                rts

    ; End of function sub_1AB784


; =============== S U B R O U T I N E =======================================

sub_1AB7C0:
                
                move.w  #$48,d5 
                move.w  #$FFC8,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AB7F8
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12,d7
                bhi.s   loc_1AB7F8
                move.b  #$21,$37(a5) 
                move.w  #$E,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1AB7F8:
                
                tst.b   d0
                rts

    ; End of function sub_1AB7C0


; =============== S U B R O U T I N E =======================================

sub_1AB7FC:
                
                move.w  #$38,d5 
                move.w  #0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AB834
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #5,d7
                bhi.s   loc_1AB834
                move.b  #$22,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1AB834:
                
                tst.b   d0
                rts

    ; End of function sub_1AB7FC


; =============== S U B R O U T I N E =======================================

sub_1AB838:
                
                move.w  #$28,d5 
                move.w  #0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AB88E
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$32,d7 
                bcc.s   loc_1AB874
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AB874:
                
                move.b  #$24,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AB88E:
                
                tst.b   d0
                rts

    ; End of function sub_1AB838


; START OF FUNCTION CHUNK FOR sub_1AB704

loc_1AB892:
                
                andi.b  #$F,d0
                beq.s   loc_1AB8B0
                cmpi.b  #1,d0
                beq.s   loc_1AB8B6
                cmpi.b  #2,d0
                beq.s   loc_1AB8F6
                cmpi.b  #3,d0
                beq.w   loc_1AB930
                bra.w   loc_1AB966
loc_1AB8B0:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AB8B6:
                
                move.b  $2D(a5),d1
                move.b  d1,d2
                move.w  #$100,$2C(a5)
                andi.b  #$20,d1 
                bne.s   loc_1AB8F0
                movem.w d2,-(sp)
                move.w  #$21,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                movem.w (sp)+,d2
                move.w  #$200,$2C(a5)
                andi.b  #$10,d2
                bne.s   loc_1AB8F0
                bra.w   loc_1AB74C
loc_1AB8F0:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AB8F6:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   loc_1AB92A
                move.w  #$21,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   loc_1AB92A
                bra.w   loc_1AB74C
loc_1AB92A:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AB930:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   return_1AB964
                move.w  #$21,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$2D,$D(a5) 
                bcs.s   return_1AB964
                bra.w   loc_1AB74C
return_1AB964:
                
                rts
loc_1AB966:
                
                addq.b  #1,$D(a5)
                move.b  $D(a5),d0
                andi.w  #8,d0
                lsl.w   #5,d0
                addi.w  #$100,d0
                move.w  d0,$2C(a5)
                cmpi.w  #$100,d0
                beq.s   loc_1AB992
                move.w  #$21,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
loc_1AB992:
                
                cmpi.b  #$60,$D(a5) 
                bcc.w   loc_1AB74C
                rts

; END OF FUNCTION CHUNK FOR sub_1AB704


; =============== S U B R O U T I N E =======================================

sub_1AB99E:
                
                bra.s   loc_1AB9F4
loc_1AB9A0:
                
                btst    #1,$C(a5)
                bne.s   loc_1AB9B4
                move.b  $37(a5),d0
                beq.s   loc_1AB9BA
                cmpi.b  #$10,d0
                beq.s   loc_1ABA0C
loc_1AB9B4:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AB9BA:
                
                tst.w   $2A(a5)
                bne.s   loc_1AB9E2
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.b  #1,d7
                bcs.s   loc_1AB9D8
                cmpi.b  #2,d7
                bcs.s   loc_1AB9E8
                rts
loc_1AB9D8:
                
                move.w  #$20,$34(a5) 
                bsr.w   sub_1A8AE0
loc_1AB9E2:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AB9E8:
                
                move.b  #$10,$37(a5)
                clr.b   $D(a5)
                rts
loc_1AB9F4:
                
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #0,$37(a5)
                bclr    #1,$C(a5)
                rts

    ; End of function sub_1AB99E


; START OF FUNCTION CHUNK FOR sub_1AB99E

loc_1ABA0C:
                
                addq.b  #1,$D(a5)
                move.b  $D(a5),d0
                andi.w  #4,d0
                lsl.w   #6,d0
                addi.w  #$300,d0
                move.w  d0,$2C(a5)
                cmpi.b  #$40,$D(a5) 
                bcs.s   return_1ABA38
                clr.w   $2C(a5)
                move.w  #$FFFF,$2E(a5)
                clr.b   $37(a5)
return_1ABA38:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1AB99E


; =============== S U B R O U T I N E =======================================

sub_1ABA3A:
                
                bra.s   loc_1ABA58
loc_1ABA3C:
                
                btst    #1,$C(a5)
                bne.s   loc_1ABA52
                move.b  $37(a5),d0
                beq.s   loc_1ABA70
                cmpi.b  #$10,d0
                beq.w   loc_1ABAE8
loc_1ABA52:
                
                bsr.w   sub_1A8ADA
                rts
loc_1ABA58:
                
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #0,$37(a5)
                bclr    #1,$C(a5)
                rts

    ; End of function sub_1ABA3A


; START OF FUNCTION CHUNK FOR sub_1ABA3A

loc_1ABA70:
                
                tst.w   $2A(a5)
                bne.s   loc_1ABAAE
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.b  #1,d7
                bcs.s   loc_1ABA8E
                cmpi.b  #2,d7
                bcs.s   loc_1ABAC4
                rts
loc_1ABA8E:
                
                move.b  #$22,d0 
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.b  #$50,d7 
                bcs.s   loc_1ABAA6
                move.b  #$21,d0 
loc_1ABAA6:
                
                move.w  d0,$34(a5)
                bsr.w   sub_1A8AE0
loc_1ABAAE:
                
                btst    #5,$2D(a5)
                bne.s   loc_1ABAD0
                btst    #4,$2D(a5)
                bne.s   loc_1ABADC
                bsr.w   sub_1A8ADA
                rts
loc_1ABAC4:
                
                move.b  #$10,$37(a5)
                clr.b   $D(a5)
                rts
loc_1ABAD0:
                
                bsr.w   sub_1A8ADA
                move.w  #$100,$2C(a5)
                rts
loc_1ABADC:
                
                bsr.w   sub_1A8ADA
                move.w  #$200,$2C(a5)
                rts
loc_1ABAE8:
                
                addq.b  #1,$D(a5)
                move.b  $D(a5),d0
                andi.w  #4,d0
                lsl.w   #6,d0
                addi.w  #$300,d0
                move.w  d0,$2C(a5)
                cmpi.b  #$40,$D(a5) 
                bcs.s   return_1ABB14
                clr.w   $2C(a5)
                move.w  #$FFFF,$2E(a5)
                clr.b   $37(a5)
return_1ABB14:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1ABA3A


; =============== S U B R O U T I N E =======================================

sub_1ABB16:
                
                bra.s   loc_1ABB34
loc_1ABB18:
                
                btst    #1,$C(a5)
                bne.s   loc_1ABB2E
                move.b  $37(a5),d0
                beq.s   loc_1ABB4C
                cmpi.b  #$10,d0
                beq.w   loc_1ABBE6
loc_1ABB2E:
                
                bsr.w   sub_1A8ADA
                rts
loc_1ABB34:
                
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #0,$37(a5)
                bclr    #1,$C(a5)
                rts

    ; End of function sub_1ABB16


; START OF FUNCTION CHUNK FOR sub_1ABB16

loc_1ABB4C:
                
                tst.w   $2A(a5)
                bne.s   loc_1ABBAC
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$40,d5 
                move.w  #$40,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1ABB8C
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.b  #1,d7
                bcs.s   loc_1ABB8C
                cmpi.b  #2,d7
                bcs.s   loc_1ABBC2
                rts
loc_1ABB8C:
                
                move.b  #$22,d0 
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.b  #$50,d7 
                bcs.s   loc_1ABBA4
                move.b  #$21,d0 
loc_1ABBA4:
                
                move.w  d0,$34(a5)
                bsr.w   sub_1A8AE0
loc_1ABBAC:
                
                btst    #5,$2D(a5)
                bne.s   loc_1ABBCE
                btst    #4,$2D(a5)
                bne.s   loc_1ABBDA
                bsr.w   sub_1A8ADA
                rts
loc_1ABBC2:
                
                move.b  #$10,$37(a5)
                clr.b   $D(a5)
                rts
loc_1ABBCE:
                
                bsr.w   sub_1A8ADA
                move.w  #$100,$2C(a5)
                rts
loc_1ABBDA:
                
                bsr.w   sub_1A8ADA
                move.w  #$200,$2C(a5)
                rts
loc_1ABBE6:
                
                addq.b  #1,$D(a5)
                move.b  $D(a5),d0
                andi.w  #4,d0
                lsl.w   #6,d0
                addi.w  #$300,d0
                move.w  d0,$2C(a5)
                cmpi.b  #$40,$D(a5) 
                bcs.s   return_1ABC12
                clr.w   $2C(a5)
                move.w  #$FFFF,$2E(a5)
                clr.b   $37(a5)
return_1ABC12:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1ABB16


; =============== S U B R O U T I N E =======================================

sub_1ABC14:
                
                bra.s   loc_1ABC34
loc_1ABC16:
                
                btst    #1,$C(a5)
                bne.s   loc_1ABC2E
                move.b  $37(a5),d0
                beq.s   loc_1ABC34
                cmpi.b  #$10,d0
                beq.s   loc_1ABC4C
                bra.w   loc_1ABE36
loc_1ABC2E:
                
                bsr.w   sub_1A8ADA
                rts
loc_1ABC34:
                
                move.w  #$180,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                rts

    ; End of function sub_1ABC14


; START OF FUNCTION CHUNK FOR sub_1ABC14

loc_1ABC4C:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1ABC8A
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1ABC8E
                bcs.s   loc_1ABC84
                bsr.s   sub_1ABCCE
                bcs.s   loc_1ABC84
                bsr.w   sub_1ABD0E
                bcs.s   loc_1ABC84
                bsr.w   sub_1ABD4E
                bcs.s   loc_1ABC84
                bsr.w   sub_1ABD9A
                bcs.w   loc_1ABC84
                bsr.w   sub_1ABDDA
loc_1ABC84:
                
                bsr.w   sub_1A8ADA
                rts
loc_1ABC8A:
                
                bra.w   sub_1A8AA6

; END OF FUNCTION CHUNK FOR sub_1ABC14


; =============== S U B R O U T I N E =======================================

sub_1ABC8E:
                
                move.w  #$70,d5 
                move.w  #$FFB0,d6
                move.w  #$18,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1ABCCA
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #9,d7
                bhi.s   loc_1ABCCA
                move.b  #$20,$37(a5) 
                move.w  #$19,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1ABCCA:
                
                tst.b   d0
                rts

    ; End of function sub_1ABC8E


; =============== S U B R O U T I N E =======================================

sub_1ABCCE:
                
                move.w  #$40,d5 
                move.w  #$FFD8,d6
                move.w  #$18,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1ABD0A
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$19,d7
                bhi.s   loc_1ABD0A
                move.b  #$21,$37(a5) 
                move.w  #$12,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1ABD0A:
                
                tst.b   d0
                rts

    ; End of function sub_1ABCCE


; =============== S U B R O U T I N E =======================================

sub_1ABD0E:
                
                move.w  #$50,d5 
                move.w  #$FFC0,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1ABD4A
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C,d7
                bhi.s   loc_1ABD4A
                move.b  #$22,$37(a5) 
                move.w  #7,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1ABD4A:
                
                tst.b   d0
                rts

    ; End of function sub_1ABD0E


; =============== S U B R O U T I N E =======================================

sub_1ABD4E:
                
                move.w  #$40,d5 
                move.w  #$FFF0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1ABD96
                move.b  (dword_FF542C).l,d0
                andi.b  #7,d0
                beq.s   loc_1ABD96
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$5A,d7 
                bhi.s   loc_1ABD96
                move.b  #$23,$37(a5) 
                move.w  #$17F,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1ABD96:
                
                tst.b   d0
                rts

    ; End of function sub_1ABD4E


; =============== S U B R O U T I N E =======================================

sub_1ABD9A:
                
                move.w  #$38,d5 
                move.w  #0,d6
                move.w  #$18,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1ABDD6
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #7,d7
                bhi.s   loc_1ABDD6
                move.b  #$24,$37(a5) 
                move.w  #7,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1ABDD6:
                
                tst.b   d0
                rts

    ; End of function sub_1ABD9A


; =============== S U B R O U T I N E =======================================

sub_1ABDDA:
                
                move.w  #$28,d5 
                move.w  #0,d6
                move.w  #$18,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1ABE32
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$46,d7 
                bcc.s   loc_1ABE18
                bra.s   loc_1ABE18
                move.b  #$25,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1ABE18:
                
                move.b  #$26,$37(a5) 
                move.w  #$181,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1ABE32:
                
                tst.b   d0
                rts

    ; End of function sub_1ABDDA


; START OF FUNCTION CHUNK FOR sub_1ABC14

loc_1ABE36:
                
                andi.b  #$F,d0
                beq.w   loc_1ABEC0
                cmpi.b  #1,d0
                beq.s   loc_1ABEC0
                cmpi.b  #2,d0
                beq.w   loc_1ABED4
                cmpi.b  #3,d0
                beq.w   loc_1ABED4
                cmpi.b  #4,d0
                beq.s   sub_1ABE66
                cmpi.b  #5,d0
                beq.s   loc_1ABEDA
                bra.w   loc_1ABEE6

; END OF FUNCTION CHUNK FOR sub_1ABC14


; =============== S U B R O U T I N E =======================================

sub_1ABE64:
                
                nop

    ; End of function sub_1ABE64


; =============== S U B R O U T I N E =======================================

sub_1ABE66:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$4D(a5)
                cmpi.b  #4,$4D(a5)
                bcs.s   loc_1ABEBA
                move.w  #$21,d1 
                move.w  #9,d2
                move.w  #$D,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #8,$4D(a5)
                bcs.s   loc_1ABEBA
                move.w  #$300,$2C(a5)
                cmpi.b  #$C,$4D(a5)
                bcs.s   loc_1ABEBA
                move.w  #$400,$2C(a5)
                cmpi.b  #$10,$4D(a5)
                bcs.s   loc_1ABEBA
                clr.w   $2C(a5)
                clr.b   $4D(a5)
loc_1ABEBA:
                
                bsr.w   sub_1A8ADA
                rts

    ; End of function sub_1ABE66


; START OF FUNCTION CHUNK FOR sub_1ABC14

loc_1ABEC0:
                
                tst.b   $4D(a5)
                bne.s   sub_1ABE66
                btst    #4,$2D(a5)
                bne.s   sub_1ABE66
                bsr.w   sub_1A8ADA
                rts
loc_1ABED4:
                
                bsr.w   sub_1A8ADA
                rts
loc_1ABEDA:
                
                bsr.s   sub_1ABE66
                tst.w   $2C(a5)
                beq.w   loc_1ABC34
                rts
loc_1ABEE6:
                
                tst.b   $2B(a5)
                bne.w   loc_1ABF26
                tst.b   $4D(a5)
                bne.w   sub_1ABE66
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$28,d5 
                move.w  #0,d6
                move.w  #$18,d7
                bsr.w   sub_1A8964
                bcc.w   loc_1ABC34
                tst.b   (byte_FF1142).l
                beq.w   sub_1ABE66
                rts
loc_1ABF26:
                
                clr.w   $2C(a5)
                clr.b   $4D(a5)
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1ABC14


; =============== S U B R O U T I N E =======================================

sub_1ABF34:
                
                bra.s   loc_1ABF5A
loc_1ABF36:
                
                bset    #0,$C(a5)
                bclr    #1,$38(a5)
                btst    #1,$C(a5)
                bne.w   loc_1ABFF2
                move.b  $37(a5),d0
                cmpi.b  #$10,d0
                bne.w   loc_1AC04E
                bra.s   loc_1ABF72
loc_1ABF5A:
                
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                rts

    ; End of function sub_1ABF34


; START OF FUNCTION CHUNK FOR sub_1ABF34

loc_1ABF72:
                
                bsr.w   sub_1AC010
                move.b  d2,d1
                movea.l a5,a1
                bclr    #0,$C(a5)
                jsr     sub_103CC
                bset    #7,$48(a5)
                clr.b   $A(a5)
                move.w  (dword_FF5414).l,d0
                subi.w  #$70,d0 
                move.w  $14(a5),d1
                sub.w   d0,d1
                cmpi.w  #$E0,d1 
                bcc.s   loc_1ABFF8
                move.w  (dword_FF5414+2).l,d0
                subi.w  #$70,d0 
                move.w  $16(a5),d2
                sub.w   d0,d2
                cmpi.w  #$E0,d2 
                bcc.s   loc_1ABFF8
                move.w  (dword_FF5414).l,d0
                subi.w  #$60,d0 
                move.w  $14(a5),d1
                sub.w   d0,d1
                cmpi.w  #$C0,d1 
                bcc.s   loc_1AC004
                move.w  (dword_FF5414+2).l,d0
                subi.w  #$60,d0 
                move.w  $16(a5),d2
                sub.w   d0,d2
                cmpi.w  #$C0,d2 
                bcc.s   loc_1AC004
                move.w  #$266,$34(a5)
                bsr.w   sub_1A8AE0
loc_1ABFF2:
                
                bsr.w   sub_1A8ADA
                rts
loc_1ABFF8:
                
                move.w  #$267,$34(a5)
                bsr.w   sub_1A8AE0
                bra.s   loc_1ABFF2
loc_1AC004:
                
                clr.b   $4D(a5)
                move.b  #$20,$37(a5) 
                rts

; END OF FUNCTION CHUNK FOR sub_1ABF34


; =============== S U B R O U T I N E =======================================

sub_1AC010:
                
                move.w  $14(a5),d0
                sub.w   (dword_FF5414).l,d0
                move.w  $16(a5),d1
                sub.w   (dword_FF5414+2).l,d1
                movem.w d0-d1,-(sp)
                add.w   d0,d1
                bpl.s   loc_1AC03E
                movem.w (sp)+,d0-d1
                move.b  #$80,d2
                sub.w   d1,d0
                bpl.s   return_1AC04C
                move.b  #$40,d2 
                bra.s   return_1AC04C
loc_1AC03E:
                
                movem.w (sp)+,d0-d1
                move.b  #$C0,d2
                sub.w   d1,d0
                bpl.s   return_1AC04C
                clr.b   d2
return_1AC04C:
                
                rts

    ; End of function sub_1AC010


; START OF FUNCTION CHUNK FOR sub_1ABF34

loc_1AC04E:
                
                bset    #7,$48(a5)
                bsr.w   sub_1AC010
                move.b  d2,d1
                movea.l a5,a1
                bclr    #0,$C(a5)
                jsr     sub_103CC
                bset    #0,$C(a5)
                andi.w  #4,$24(a5)
                addi.w  #8,$24(a5)
                move.b  #1,$A(a5)
                andi.b  #$BF,$C(a5)
                addq.b  #1,$4D(a5)
                move.w  #0,$26(a5)
                move.w  #$100,$2C(a5)
                cmpi.b  #1,$4D(a5)
                bne.s   loc_1AC0AE
                lea     (unk_9880).l,a2
                move.b  #1,d0
                jmp     (sub_488).l
loc_1AC0AE:
                
                cmpi.b  #2,$4D(a5)
                bne.w   loc_1AC0C0
                move.b  #1,d0
                bra.w   sub_1AC3F4
loc_1AC0C0:
                
                cmpi.b  #$F,$4D(a5)
                bhi.w   loc_1AC108
                bcs.w   return_1AC11E
                bsr.w   sub_1AC010
                move.b  4(a5),d0
                movem.w d0,-(sp)
                andi.b  #$3F,4(a5) 
                or.b    d2,4(a5)
                move.b  #1,d0
                move.w  #$300,d1
                bsr.w   sub_1AC474
                bcs.s   loc_1AC0FC
                movem.w (sp)+,d0
                move.b  d0,4(a5)
                rts
loc_1AC0FC:
                
                movem.w (sp)+,d0
                move.b  d0,4(a5)
                bra.w   loc_1ABF5A
loc_1AC108:
                
                move.w  #4,$26(a5)
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$4D(a5)
                beq.w   loc_1ABF5A
return_1AC11E:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1ABF34


; =============== S U B R O U T I N E =======================================

sub_1AC120:
                
                bra.s   loc_1AC168
loc_1AC122:
                
                btst    #1,$C(a5)
                bne.s   loc_1AC13A
                move.b  $37(a5),d0
                beq.s   loc_1AC140
                cmpi.b  #$10,d0
                beq.s   loc_1AC16C
                bra.w   loc_1AC258
loc_1AC13A:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AC140:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$100,d5
                move.w  #$100,d6
                move.w  #$100,d7
                bsr.w   sub_1A8964
                bcs.s   loc_1AC168
                rts
loc_1AC168:
                
                bra.w   sub_1A8AB6

    ; End of function sub_1AC120


; START OF FUNCTION CHUNK FOR sub_1AC120

loc_1AC16C:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1AC1CC
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                addq.b  #1,$4D(a5)
                cmpi.b  #$3C,$4D(a5) 
                bcs.s   loc_1AC1B8
                clr.b   $4D(a5)
                bsr.s   sub_1AC1D0
                bcs.s   loc_1AC1B2
                ori.b   #$40,$C(a5) 
                move.w  #$100,$12(a5)
                move.w  #$120,$54(a5)
                bsr.s   sub_1AC200
                bcs.s   loc_1AC1B2
                bsr.w   sub_1AC22A
loc_1AC1B2:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AC1B8:
                
                ori.b   #$40,$C(a5) 
                move.w  #$100,$12(a5)
                move.w  #$120,$54(a5)
                rts
loc_1AC1CC:
                
                bra.w   sub_1A8AA6

; END OF FUNCTION CHUNK FOR sub_1AC120


; =============== S U B R O U T I N E =======================================

sub_1AC1D0:
                
                move.w  #$60,d5 
                move.w  #$FFB8,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AC1FC
                move.b  #$20,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1AC1FC:
                
                tst.b   d0
                rts

    ; End of function sub_1AC1D0


; =============== S U B R O U T I N E =======================================

sub_1AC200:
                
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C8,d7 
                bhi.s   loc_1AC226
                move.b  #$21,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1AC226:
                
                tst.b   d0
                rts

    ; End of function sub_1AC200


; =============== S U B R O U T I N E =======================================

sub_1AC22A:
                
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C8,d7 
                bhi.s   loc_1AC254
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AC254:
                
                tst.b   d0
                rts

    ; End of function sub_1AC22A


; START OF FUNCTION CHUNK FOR sub_1AC120

loc_1AC258:
                
                clr.b   $D(a5)
                andi.b  #$F,d0
                beq.w   loc_1AC368
                cmpi.b  #1,d0
                beq.s   loc_1AC27E
                cmpi.b  #2,d0
                beq.w   loc_1AC292
                cmpi.b  #3,d0
                beq.w   loc_1AC292
                bra.w   loc_1AC292
loc_1AC27E:
                
                move.l  (a5),d0
                movem.l d0,-(sp)
                move.b  (byte_FF5404).l,d0
                eori.b  #$80,d0
                clr.b   d1
                bra.s   loc_1AC2A2
loc_1AC292:
                
                move.l  (a5),d0
                movem.l d0,-(sp)
                move.b  (byte_FF5404).l,d0
                move.b  #$80,d1
loc_1AC2A2:
                
                movem.w d1,-(sp)
                move.w  (dword_FF5414).l,d1
                move.w  (dword_FF5414+2).l,d2
                andi.b  #$C0,d0
                beq.s   loc_1AC2C6
                cmpi.b  #$80,d0
                beq.s   loc_1AC2CC
                bhi.s   loc_1AC2D2
                addi.w  #$68,d1 
                bra.s   loc_1AC2D6
loc_1AC2C6:
                
                subi.w  #$68,d2 
                bra.s   loc_1AC2D6
loc_1AC2CC:
                
                addi.w  #$68,d2 
                bra.s   loc_1AC2D6
loc_1AC2D2:
                
                subi.w  #$68,d1 
loc_1AC2D6:
                
                move.w  d1,d0
                lsr.w   #4,d1
                move.b  d1,(a5)
                andi.b  #$F,d0
                move.b  d0,2(a5)
                move.w  d2,d0
                lsr.w   #4,d2
                move.b  d2,1(a5)
                andi.b  #$F,d0
                move.b  d0,3(a5)
                clr.w   d0
                move.b  $39(a5),d0
                move.w  d0,$12(a5)
                addi.w  #$1F,d0
                move.w  d0,$54(a5)
                movea.l a5,a1
                jsr     sub_1A8AE6
                jsr     (sub_3BC).l
                bcc.s   loc_1AC338
                movem.w (sp)+,d1
                movem.l (sp)+,d0
                move.l  d0,(a5)
                movea.l a5,a1
                move.w  #$100,$12(a5)
                move.w  #$120,$54(a5)
                jsr     sub_1A8AE6
                bra.w   loc_1AC168
loc_1AC338:
                
                movem.w (sp)+,d1
                bset    #5,$2D(a5)
                move.b  (byte_FF5404).l,d0
                andi.b  #$C0,d0
                eor.b   d1,d0
                andi.b  #$3F,4(a5) 
                or.b    d0,4(a5)
                movem.l (sp)+,d0
                move.b  #$20,$37(a5) 
                clr.b   $4D(a5)
                rts
loc_1AC368:
                
                andi.b  #$BF,$C(a5)
                clr.w   d0
                move.b  $39(a5),d0
                move.w  d0,$12(a5)
                addi.w  #$1F,d0
                move.w  d0,$54(a5)
                addq.b  #1,$4D(a5)
                cmpi.b  #1,$4D(a5)
                bne.s   loc_1AC3A2
                move.w  #$100,$2C(a5)
                lea     (unk_9880).l,a2
                move.b  #1,d0
                jmp     (sub_488).l
loc_1AC3A2:
                
                cmpi.b  #2,$4D(a5)
                bne.w   loc_1AC3B4
                move.b  #1,d0
                bra.w   sub_1AC3F4
loc_1AC3B4:
                
                cmpi.b  #$2D,$4D(a5) 
                bhi.w   loc_1AC3DA
                bcs.w   return_1AC3EA
                move.w  #$200,$2C(a5)
                move.b  #1,d0
                move.w  #$300,d1
                bsr.w   sub_1AC474
                bcs.w   loc_1AC3EC
                rts
loc_1AC3DA:
                
                move.w  #$200,$2C(a5)
                cmpi.b  #$46,$4D(a5) 
                beq.w   loc_1AC3EC
return_1AC3EA:
                
                rts
loc_1AC3EC:
                
                clr.b   $4D(a5)
                bra.w   loc_1AC168

; END OF FUNCTION CHUNK FOR sub_1AC120


; =============== S U B R O U T I N E =======================================

sub_1AC3F4:
                
                subq.b  #1,d0
                ext.w   d0
                lsl.b   #2,d0
                move.l  #$C0700000,(VDP_Control).l
                move.w  word_1AC468(pc,d0.w),d1
                move.w  d1,(VDP_Data).l
                move.w  d1,(word_FF00F0).l
                move.w  d1,(word_FF0F40).l
                move.w  word_1AC46A(pc,d0.w),d1
                move.w  d1,(VDP_Data).l
                move.w  d1,(word_FF00F2).l
                move.w  d1,(word_FF0F42).l
                move.l  #$C03A0000,(VDP_Control).l
                move.w  word_1AC468(pc,d0.w),d1
                move.w  d1,(VDP_Data).l
                move.w  d1,(word_FF00BA).l
                move.w  d1,(word_FF0F0A).l
                move.w  word_1AC46A(pc,d0.w),d1
                move.w  d1,(VDP_Data).l
                move.w  d1,(word_FF00BC).l
                move.w  d1,(word_FF0F0C).l
                rts

    ; End of function sub_1AC3F4

word_1AC468:    dc.w $8C
word_1AC46A:    dc.w $2C
                dc.b   6
                dc.b $40 
                dc.b  $E
                dc.b $84 
                dc.b  $E
                dc.b $48 
                dc.b  $E
                dc.b $EE 

; =============== S U B R O U T I N E =======================================

sub_1AC474:
                
                movem.w d0-d1,-(sp)
                jsr     sub_103B2
                bcs.w   loc_1AC4FC
                move.w  (a5),d0
                move.b  4(a5),d1
                andi.b  #$C0,d1
                beq.s   loc_1AC49C
                cmpi.b  #$80,d1
                bcs.s   loc_1AC4A0
                beq.s   loc_1AC4A6
                subi.w  #$100,d0
                bra.s   loc_1AC4A8
loc_1AC49C:
                
                subq.b  #1,d0
                bra.s   loc_1AC4A8
loc_1AC4A0:
                
                addi.w  #$100,d0
                bra.s   loc_1AC4A8
loc_1AC4A6:
                
                addq.b  #1,d0
loc_1AC4A8:
                
                move.w  d0,(a1)
                move.b  d1,4(a1)
                movem.w (sp)+,d0-d1
                ext.w   d0
                move.b  return_1AC504+1(pc,d0.w),d2
                move.w  d1,$3C(a1)
                move.w  $12(a5),d3
                addi.w  #$10,d3
                move.w  d3,$12(a1)
                move.w  2(a5),2(a1)
                move.w  #$64C0,6(a1)
                move.w  #$21C,$34(a1)
                move.b  #4,9(a1)
                jsr     sub_103B8
                bset    #0,$38(a1)
                bset    #7,$C(a1)
                bset    #7,$4C(a1)
                tst.b   d0
                rts
loc_1AC4FC:
                
                movem.w (sp)+,d0-d1
                ori     #1,ccr
return_1AC504:
                
                rts

    ; End of function sub_1AC474

                dc.b $87 
                dc.b $A6 
                dc.b $A8 
                dc.b $FF

; =============== S U B R O U T I N E =======================================

sub_1AC50A:
                
                bra.s   loc_1AC552
loc_1AC50C:
                
                btst    #1,$C(a5)
                bne.s   loc_1AC524
                move.b  $37(a5),d0
                beq.s   loc_1AC52A
                cmpi.b  #$10,d0
                beq.s   loc_1AC556
                bra.w   loc_1AC642
loc_1AC524:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AC52A:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$100,d5
                move.w  #$100,d6
                move.w  #$100,d7
                bsr.w   sub_1A8964
                bcs.s   loc_1AC552
                rts
loc_1AC552:
                
                bra.w   sub_1A8AB6

    ; End of function sub_1AC50A


; START OF FUNCTION CHUNK FOR sub_1AC50A

loc_1AC556:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1AC5B6
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                addq.b  #1,$4D(a5)
                cmpi.b  #$2D,$4D(a5) 
                bcs.s   loc_1AC5A2
                clr.b   $4D(a5)
                bsr.s   sub_1AC5BA
                bcs.s   loc_1AC59C
                ori.b   #$40,$C(a5) 
                move.w  #$100,$12(a5)
                move.w  #$120,$54(a5)
                bsr.s   sub_1AC5EA
                bcs.s   loc_1AC59C
                bsr.w   sub_1AC614
loc_1AC59C:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AC5A2:
                
                ori.b   #$40,$C(a5) 
                move.w  #$100,$12(a5)
                move.w  #$120,$54(a5)
                rts
loc_1AC5B6:
                
                bra.w   sub_1A8AA6

; END OF FUNCTION CHUNK FOR sub_1AC50A


; =============== S U B R O U T I N E =======================================

sub_1AC5BA:
                
                move.w  #$60,d5 
                move.w  #$FFB8,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AC5E6
                move.b  #$20,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1AC5E6:
                
                tst.b   d0
                rts

    ; End of function sub_1AC5BA


; =============== S U B R O U T I N E =======================================

sub_1AC5EA:
                
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12C,d7
                bhi.s   loc_1AC610
                move.b  #$21,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1AC610:
                
                tst.b   d0
                rts

    ; End of function sub_1AC5EA


; =============== S U B R O U T I N E =======================================

sub_1AC614:
                
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12C,d7
                bhi.s   loc_1AC63E
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AC63E:
                
                tst.b   d0
                rts

    ; End of function sub_1AC614


; START OF FUNCTION CHUNK FOR sub_1AC50A

loc_1AC642:
                
                clr.b   $D(a5)
                andi.b  #$F,d0
                beq.w   loc_1AC752
                cmpi.b  #1,d0
                beq.s   loc_1AC668
                cmpi.b  #2,d0
                beq.w   loc_1AC67C
                cmpi.b  #3,d0
                beq.w   loc_1AC67C
                bra.w   loc_1AC67C
loc_1AC668:
                
                move.l  (a5),d0
                movem.l d0,-(sp)
                move.b  (byte_FF5404).l,d0
                eori.b  #$80,d0
                clr.b   d1
                bra.s   loc_1AC68C
loc_1AC67C:
                
                move.l  (a5),d0
                movem.l d0,-(sp)
                move.b  (byte_FF5404).l,d0
                move.b  #$80,d1
loc_1AC68C:
                
                movem.w d1,-(sp)
                move.w  (dword_FF5414).l,d1
                move.w  (dword_FF5414+2).l,d2
                andi.b  #$C0,d0
                beq.s   loc_1AC6B0
                cmpi.b  #$80,d0
                beq.s   loc_1AC6B6
                bhi.s   loc_1AC6BC
                addi.w  #$68,d1 
                bra.s   loc_1AC6C0
loc_1AC6B0:
                
                subi.w  #$68,d2 
                bra.s   loc_1AC6C0
loc_1AC6B6:
                
                addi.w  #$68,d2 
                bra.s   loc_1AC6C0
loc_1AC6BC:
                
                subi.w  #$68,d1 
loc_1AC6C0:
                
                move.w  d1,d0
                lsr.w   #4,d1
                move.b  d1,(a5)
                andi.b  #$F,d0
                move.b  d0,2(a5)
                move.w  d2,d0
                lsr.w   #4,d2
                move.b  d2,1(a5)
                andi.b  #$F,d0
                move.b  d0,3(a5)
                clr.w   d0
                move.b  $39(a5),d0
                move.w  d0,$12(a5)
                addi.w  #$1F,d0
                move.w  d0,$54(a5)
                movea.l a5,a1
                jsr     sub_1A8AE6
                jsr     (sub_3BC).l
                bcc.s   loc_1AC722
                movem.w (sp)+,d1
                movem.l (sp)+,d0
                move.l  d0,(a5)
                movea.l a5,a1
                move.w  #$100,$12(a5)
                move.w  #$120,$54(a5)
                jsr     sub_1A8AE6
                bra.w   loc_1AC552
loc_1AC722:
                
                movem.w (sp)+,d1
                bset    #5,$2D(a5)
                move.b  (byte_FF5404).l,d0
                andi.b  #$C0,d0
                eor.b   d1,d0
                andi.b  #$3F,4(a5) 
                or.b    d0,4(a5)
                movem.l (sp)+,d0
                move.b  #$20,$37(a5) 
                clr.b   $4D(a5)
                rts
loc_1AC752:
                
                andi.b  #$BF,$C(a5)
                clr.w   d0
                move.b  $39(a5),d0
                move.w  d0,$12(a5)
                addi.w  #$1F,d0
                move.w  d0,$54(a5)
                addq.b  #1,$4D(a5)
                cmpi.b  #1,$4D(a5)
                bne.s   loc_1AC78C
                move.w  #$100,$2C(a5)
                lea     (unk_9880).l,a2
                move.b  #1,d0
                jmp     (sub_488).l
loc_1AC78C:
                
                cmpi.b  #2,$4D(a5)
                bne.w   loc_1AC79E
                move.b  #1,d0
                bra.w   sub_1AC3F4
loc_1AC79E:
                
                cmpi.b  #$2D,$4D(a5) 
                bhi.w   loc_1AC7C4
                bcs.w   return_1AC7D4
                move.w  #$200,$2C(a5)
                move.b  #1,d0
                move.w  #$500,d1
                bsr.w   sub_1AC474
                bcs.w   loc_1AC7D6
                rts
loc_1AC7C4:
                
                move.w  #$200,$2C(a5)
                cmpi.b  #$46,$4D(a5) 
                beq.w   loc_1AC7D6
return_1AC7D4:
                
                rts
loc_1AC7D6:
                
                clr.b   $4D(a5)
                bra.w   loc_1AC552

; END OF FUNCTION CHUNK FOR sub_1AC50A


; =============== S U B R O U T I N E =======================================

sub_1AC7DE:
                
                bra.s   loc_1AC826
loc_1AC7E0:
                
                btst    #1,$C(a5)
                bne.s   loc_1AC7F8
                move.b  $37(a5),d0
                beq.s   loc_1AC7FE
                cmpi.b  #$10,d0
                beq.s   loc_1AC82A
                bra.w   loc_1AC916
loc_1AC7F8:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AC7FE:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$100,d5
                move.w  #$100,d6
                move.w  #$100,d7
                bsr.w   sub_1A8964
                bcs.s   loc_1AC826
                rts
loc_1AC826:
                
                bra.w   sub_1A8AB6

    ; End of function sub_1AC7DE


; START OF FUNCTION CHUNK FOR sub_1AC7DE

loc_1AC82A:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1AC88A
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                addq.b  #1,$4D(a5)
                cmpi.b  #$1E,$4D(a5)
                bcs.s   loc_1AC876
                clr.b   $4D(a5)
                bsr.s   sub_1AC88E
                bcs.s   loc_1AC870
                ori.b   #$40,$C(a5) 
                move.w  #$100,$12(a5)
                move.w  #$120,$54(a5)
                bsr.s   sub_1AC8BE
                bcs.s   loc_1AC870
                bsr.w   sub_1AC8E8
loc_1AC870:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AC876:
                
                ori.b   #$40,$C(a5) 
                move.w  #$100,$12(a5)
                move.w  #$120,$54(a5)
                rts
loc_1AC88A:
                
                bra.w   sub_1A8AA6

; END OF FUNCTION CHUNK FOR sub_1AC7DE


; =============== S U B R O U T I N E =======================================

sub_1AC88E:
                
                move.w  #$60,d5 
                move.w  #$FFB8,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AC8BA
                move.b  #$20,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1AC8BA:
                
                tst.b   d0
                rts

    ; End of function sub_1AC88E


; =============== S U B R O U T I N E =======================================

sub_1AC8BE:
                
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$190,d7
                bhi.s   loc_1AC8E4
                move.b  #$21,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1AC8E4:
                
                tst.b   d0
                rts

    ; End of function sub_1AC8BE


; =============== S U B R O U T I N E =======================================

sub_1AC8E8:
                
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$190,d7
                bhi.s   loc_1AC912
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AC912:
                
                tst.b   d0
                rts

    ; End of function sub_1AC8E8


; START OF FUNCTION CHUNK FOR sub_1AC7DE

loc_1AC916:
                
                clr.b   $D(a5)
                andi.b  #$F,d0
                beq.w   loc_1ACA26
                cmpi.b  #1,d0
                beq.s   loc_1AC93C
                cmpi.b  #2,d0
                beq.w   loc_1AC950
                cmpi.b  #3,d0
                beq.w   loc_1AC950
                bra.w   loc_1AC950
loc_1AC93C:
                
                move.l  (a5),d0
                movem.l d0,-(sp)
                move.b  (byte_FF5404).l,d0
                eori.b  #$80,d0
                clr.b   d1
                bra.s   loc_1AC960
loc_1AC950:
                
                move.l  (a5),d0
                movem.l d0,-(sp)
                move.b  (byte_FF5404).l,d0
                move.b  #$80,d1
loc_1AC960:
                
                movem.w d1,-(sp)
                move.w  (dword_FF5414).l,d1
                move.w  (dword_FF5414+2).l,d2
                andi.b  #$C0,d0
                beq.s   loc_1AC984
                cmpi.b  #$80,d0
                beq.s   loc_1AC98A
                bhi.s   loc_1AC990
                addi.w  #$68,d1 
                bra.s   loc_1AC994
loc_1AC984:
                
                subi.w  #$68,d2 
                bra.s   loc_1AC994
loc_1AC98A:
                
                addi.w  #$68,d2 
                bra.s   loc_1AC994
loc_1AC990:
                
                subi.w  #$68,d1 
loc_1AC994:
                
                move.w  d1,d0
                lsr.w   #4,d1
                move.b  d1,(a5)
                andi.b  #$F,d0
                move.b  d0,2(a5)
                move.w  d2,d0
                lsr.w   #4,d2
                move.b  d2,1(a5)
                andi.b  #$F,d0
                move.b  d0,3(a5)
                clr.w   d0
                move.b  $39(a5),d0
                move.w  d0,$12(a5)
                addi.w  #$1F,d0
                move.w  d0,$54(a5)
                movea.l a5,a1
                jsr     sub_1A8AE6
                jsr     (sub_3BC).l
                bcc.s   loc_1AC9F6
                movem.w (sp)+,d1
                movem.l (sp)+,d0
                move.l  d0,(a5)
                movea.l a5,a1
                move.w  #$100,$12(a5)
                move.w  #$120,$54(a5)
                jsr     sub_1A8AE6
                bra.w   loc_1AC826
loc_1AC9F6:
                
                movem.w (sp)+,d1
                bset    #5,$2D(a5)
                move.b  (byte_FF5404).l,d0
                andi.b  #$C0,d0
                eor.b   d1,d0
                andi.b  #$3F,4(a5) 
                or.b    d0,4(a5)
                movem.l (sp)+,d0
                move.b  #$20,$37(a5) 
                clr.b   $4D(a5)
                rts
loc_1ACA26:
                
                andi.b  #$BF,$C(a5)
                clr.w   d0
                move.b  $39(a5),d0
                move.w  d0,$12(a5)
                addi.w  #$1F,d0
                move.w  d0,$54(a5)
                addq.b  #1,$4D(a5)
                cmpi.b  #1,$4D(a5)
                bne.s   loc_1ACA60
                move.w  #$100,$2C(a5)
                lea     (unk_9880).l,a2
                move.b  #1,d0
                jmp     (sub_488).l
loc_1ACA60:
                
                cmpi.b  #2,$4D(a5)
                bne.w   loc_1ACA72
                move.b  #1,d0
                bra.w   sub_1AC3F4
loc_1ACA72:
                
                cmpi.b  #$2D,$4D(a5) 
                bhi.w   loc_1ACA98
                bcs.w   return_1ACAA8
                move.w  #$200,$2C(a5)
                move.b  #1,d0
                move.w  #$800,d1
                bsr.w   sub_1AC474
                bcs.w   loc_1ACAAA
                rts
loc_1ACA98:
                
                move.w  #$200,$2C(a5)
                cmpi.b  #$46,$4D(a5) 
                beq.w   loc_1ACAAA
return_1ACAA8:
                
                rts
loc_1ACAAA:
                
                clr.b   $4D(a5)
                bra.w   loc_1AC826

; END OF FUNCTION CHUNK FOR sub_1AC7DE


; =============== S U B R O U T I N E =======================================

sub_1ACAB2:
                
                bra.s   loc_1ACB06
loc_1ACAB4:
                
                bset    #6,$38(a5)
                btst    #1,$C(a5)
                bne.s   loc_1ACAD2
                move.b  $37(a5),d0
                beq.s   loc_1ACADE
                cmpi.b  #$10,d0
                beq.s   loc_1ACB24
                bra.w   loc_1ACC7A
loc_1ACAD2:
                
                bclr    #0,$38(a5)
                bsr.w   sub_1A8ADA
                rts
loc_1ACADE:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$30,d6 
                move.w  #$40,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1ACB06
                rts
loc_1ACB06:
                
                bclr    #0,$38(a5)
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                rts

    ; End of function sub_1ACAB2


; START OF FUNCTION CHUNK FOR sub_1ACAB2

loc_1ACB24:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1ACB54
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1ACB64
                bcs.s   loc_1ACB4E
                bsr.s   sub_1ACBA0
                bcs.s   loc_1ACB4E
                bsr.w   sub_1ACBE0
                bcs.s   loc_1ACB4E
                bsr.w   sub_1ACC20
loc_1ACB4E:
                
                bsr.w   sub_1A8ADA
                rts
loc_1ACB54:
                
                move.w  #6,$34(a5)
                bsr.w   sub_1A8AE0
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1ACAB2


; =============== S U B R O U T I N E =======================================

sub_1ACB64:
                
                move.w  #$70,d5 
                move.w  #$FFB0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1ACB9C
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$56,d7 
                bhi.s   loc_1ACB9C
                move.b  #$20,$37(a5) 
                move.w  #$1A,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1ACB9C:
                
                tst.b   d0
                rts

    ; End of function sub_1ACB64


; =============== S U B R O U T I N E =======================================

sub_1ACBA0:
                
                move.w  #$50,d5 
                move.w  #0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1ACBDC
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$7D,d7 
                bhi.s   loc_1ACBDC
                move.b  #$21,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1ACBDC:
                
                tst.b   d0
                rts

    ; End of function sub_1ACBA0


; =============== S U B R O U T I N E =======================================

sub_1ACBE0:
                
                move.w  #$30,d5 
                move.w  #$FFE0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1ACC1C
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$2B,d7 
                bhi.s   loc_1ACC1C
                move.b  #$22,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1ACC1C:
                
                tst.b   d0
                rts

    ; End of function sub_1ACBE0


; =============== S U B R O U T I N E =======================================

sub_1ACC20:
                
                move.w  #$28,d5 
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1ACC76
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$32,d7 
                bcc.s   loc_1ACC5C
                move.b  #$23,$37(a5) 
                move.w  #$12,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1ACC5C:
                
                move.b  #$24,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1ACC76:
                
                tst.b   d0
                rts

    ; End of function sub_1ACC20


; START OF FUNCTION CHUNK FOR sub_1ACAB2

loc_1ACC7A:
                
                andi.b  #$F,d0
                beq.s   loc_1ACC9A
                cmpi.b  #1,d0
                beq.s   loc_1ACCBE
                cmpi.b  #2,d0
                beq.w   loc_1ACCE0
                cmpi.b  #3,d0
                beq.w   loc_1ACC9A
                bra.w   *+4
loc_1ACC9A:
                
                cmpi.b  #$18,$2A(a5)
                bcc.s   loc_1ACCB8
                move.w  #$100,$2C(a5)
                move.w  #$29,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
loc_1ACCB8:
                
                bsr.w   sub_1A8ADA
                rts
loc_1ACCBE:
                
                bset    #0,$38(a5)
                move.w  #$200,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$28,$D(a5) 
                bcc.w   loc_1ACB06
                rts
loc_1ACCDA:
                
                bsr.w   sub_1A8ADA
                rts
loc_1ACCE0:
                
                move.w  #$29,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   loc_1ACCDA
                bra.w   loc_1ACB06

; END OF FUNCTION CHUNK FOR sub_1ACAB2


; =============== S U B R O U T I N E =======================================

sub_1ACD06:
                
                bra.s   loc_1ACD4E
loc_1ACD08:
                
                btst    #1,$C(a5)
                bne.s   loc_1ACD20
                move.b  $37(a5),d0
                beq.s   loc_1ACD26
                cmpi.b  #$10,d0
                beq.s   loc_1ACD5E
                bra.w   loc_1ACEFC
loc_1ACD20:
                
                bsr.w   sub_1A8ADA
                rts
loc_1ACD26:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$40,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.s   sub_1ACD54
                rts
loc_1ACD4E:
                
                bsr.s   sub_1ACD54
                bra.w   loc_1ACE0C

    ; End of function sub_1ACD06


; =============== S U B R O U T I N E =======================================

sub_1ACD54:
                
                bset    #8,$20(a5)
                bra.w   sub_1A8AB6

    ; End of function sub_1ACD54


; START OF FUNCTION CHUNK FOR sub_1ACD06

loc_1ACD5E:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1ACD94
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1ACD98
                bcs.s   loc_1ACD8E
                bsr.s   sub_1ACDD8
                bcs.s   loc_1ACD8E
                bsr.w   sub_1ACE2A
                bcs.s   loc_1ACD8E
                bsr.w   sub_1ACE66
                bcs.s   loc_1ACD8E
                bsr.w   sub_1ACEA2
loc_1ACD8E:
                
                bsr.w   sub_1A8ADA
                rts
loc_1ACD94:
                
                bra.w   sub_1A8AA6

; END OF FUNCTION CHUNK FOR sub_1ACD06


; =============== S U B R O U T I N E =======================================

sub_1ACD98:
                
                move.w  #$80,d5 
                move.w  #$FFC0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1ACDD4
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$10,d7
                bhi.s   loc_1ACDD4
                move.b  #$25,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1ACDD4:
                
                tst.b   d0
                rts

    ; End of function sub_1ACD98


; =============== S U B R O U T I N E =======================================

sub_1ACDD8:
                
                move.w  #$70,d5 
                move.w  #$70,d6 
                move.w  #$70,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1ACE26
                move.w  #$30,d5 
                move.w  #$30,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1ACE26
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$10,d7
                bhi.s   loc_1ACE26
loc_1ACE0C:
                
                move.b  #$20,$37(a5) 
                move.w  #4,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1ACE26:
                
                tst.b   d0
                rts

    ; End of function sub_1ACDD8


; =============== S U B R O U T I N E =======================================

sub_1ACE2A:
                
                move.w  #$60,d5 
                move.w  #$FFD0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1ACE62
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C,d7
                bhi.s   loc_1ACE62
                move.b  #$21,$37(a5) 
                move.w  #$12,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1ACE62:
                
                tst.b   d0
                rts

    ; End of function sub_1ACE2A


; =============== S U B R O U T I N E =======================================

sub_1ACE66:
                
                move.w  #$40,d5 
                move.w  #$20,d6 
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1ACE9E
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C,d7
                bhi.s   loc_1ACE9E
                move.b  #$22,$37(a5) 
                move.w  #$11,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1ACE9E:
                
                tst.b   d0
                rts

    ; End of function sub_1ACE66


; =============== S U B R O U T I N E =======================================

sub_1ACEA2:
                
                move.w  #$20,d5 
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1ACEF8
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$32,d7 
                bcc.s   loc_1ACEDE
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1ACEDE:
                
                move.b  #$24,$37(a5) 
                move.w  #$12,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1ACEF8:
                
                tst.b   d0
                rts

    ; End of function sub_1ACEA2


; START OF FUNCTION CHUNK FOR sub_1ACD06

loc_1ACEFC:
                
                andi.b  #$F,d0
                beq.s   loc_1ACF26
                cmpi.b  #1,d0
                beq.w   loc_1AD014
                cmpi.b  #2,d0
                beq.w   loc_1AD014
                cmpi.b  #3,d0
                beq.w   loc_1ACFDE
                cmpi.b  #4,d0
                beq.w   loc_1AD014
                bra.w   loc_1AD04E
loc_1ACF26:
                
                addq.b  #1,$4D(a5)
                cmpi.b  #$1F,$4D(a5)
                bhi.s   loc_1ACF6A
                bset    #7,$20(a5)
                addi.w  #4,$12(a5)
                addi.w  #4,$54(a5)
                move.b  $4D(a5),d0
                andi.w  #$E,d0
                lsl.w   #7,d0
                move.w  d0,$2C(a5)
                bsr.w   sub_1AC010
                andi.b  #$3F,4(a5) 
                or.b    d2,4(a5)
                sndCom  SFX_ENEMY_SLASH
                bsr.w   sub_1A8ADA
                rts
loc_1ACF6A:
                
                bclr    #7,$20(a5)
                cmpi.b  #$20,$4D(a5) 
                bne.s   loc_1ACF98
                sndCom  SFX_FALL
                move.w  #2,d6
                jsr     (sub_362).l
                move.w  #$40,d0 
                tst.b   d7
                beq.s   loc_1ACF92
                move.w  #$58,d0 
loc_1ACF92:
                
                move.w  d0,$62(a5)
                rts
loc_1ACF98:
                
                subq.b  #1,$4D(a5)
                bclr    #7,$20(a5)
                move.b  $2D(a5),d0
                andi.b  #$30,d0 
                beq.w   byte_1ACFD6
                move.w  (word_FF5412).l,d0
                add.w   $62(a5),d0
                cmp.w   $12(a5),d0
                bcc.s   loc_1ACFCE
                move.l  (dword_FF5400).l,(a5)
                movea.l a5,a1
                jsr     sub_1A8AE6
                rts
loc_1ACFCE:
                
                move.w  #$300,$2C(a5)
                rts
byte_1ACFD6:
                
                sndCom  SFX_DOUBLE_STEP
                bra.w   sub_1ACD54
loc_1ACFDE:
                
                move.w  #$200,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   return_1AD012
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$300,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   return_1AD012
                beq.w   sub_1ACD54
return_1AD012:
                
                rts
loc_1AD014:
                
                move.w  #$200,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   loc_1AD048
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$300,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   loc_1AD048
                beq.w   sub_1ACD54
loc_1AD048:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AD04E:
                
                move.w  #$200,$2C(a5)
                addq.b  #1,$4D(a5)
                cmpi.b  #$F,$4D(a5)
                bcs.s   return_1AD09C
                bhi.s   loc_1AD09E
                move.w  #$300,$2C(a5)
                sndCom  SFX_SLASH
                move.b  #3,d0
                move.w  #$1400,d1
                bsr.w   sub_1AC474
                bcs.w   return_1AD09C
                move.w  #$44C0,6(a1)
                move.b  #4,9(a1)
                move.w  #$36A,$34(a1)
                movem.l a5,-(sp)
                movea.l a1,a5
                bsr.w   sub_1A8AE0
                movem.l (sp)+,a5
return_1AD09C:
                
                rts
loc_1AD09E:
                
                move.w  #$300,$2C(a5)
                cmpi.b  #$3C,$4D(a5) 
                beq.w   sub_1ACD54
                rts

; END OF FUNCTION CHUNK FOR sub_1ACD06


; =============== S U B R O U T I N E =======================================

sub_1AD0B0:
                
                bra.s   loc_1AD0F8
loc_1AD0B2:
                
                btst    #1,$C(a5)
                bne.s   loc_1AD0CA
                move.b  $37(a5),d0
                beq.s   loc_1AD0D0
                cmpi.b  #$10,d0
                beq.s   loc_1AD0FC
                bra.w   loc_1AD194
loc_1AD0CA:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AD0D0:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$40,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1AD0F8
                rts
loc_1AD0F8:
                
                bra.w   sub_1A8AB6

    ; End of function sub_1AD0B0


; START OF FUNCTION CHUNK FOR sub_1AD0B0

loc_1AD0FC:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1AD120
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1AD124
                bcs.s   loc_1AD11A
                bsr.s   sub_1AD164
loc_1AD11A:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AD120:
                
                bra.w   sub_1A8AA6

; END OF FUNCTION CHUNK FOR sub_1AD0B0


; =============== S U B R O U T I N E =======================================

sub_1AD124:
                
                move.w  #$50,d5 
                move.w  #$FFD8,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AD160
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12,d7
                bcc.s   loc_1AD160
                move.b  #$22,$37(a5) 
                move.w  #$13,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AD160:
                
                tst.b   d0
                rts

    ; End of function sub_1AD124


; =============== S U B R O U T I N E =======================================

sub_1AD164:
                
                move.w  #$20,d5 
                move.w  #$20,d6 
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1AD190
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AD190:
                
                tst.b   d0
                rts

    ; End of function sub_1AD164


; START OF FUNCTION CHUNK FOR sub_1AD0B0

loc_1AD194:
                
                andi.b  #$F,d0
                cmpi.b  #3,d0
                bcs.s   loc_1AD1D4
                move.w  #$300,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   return_1AD1D2
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   return_1AD1D2
                beq.w   loc_1AD0F8
return_1AD1D2:
                
                rts
loc_1AD1D4:
                
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1AD0B0


; =============== S U B R O U T I N E =======================================

sub_1AD1DA:
                
                bra.s   loc_1AD222
loc_1AD1DC:
                
                btst    #1,$C(a5)
                bne.s   loc_1AD1F4
                move.b  $37(a5),d0
                beq.s   loc_1AD1FA
                cmpi.b  #$10,d0
                beq.s   loc_1AD226
                bra.w   loc_1AD2BE
loc_1AD1F4:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AD1FA:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$40,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1AD222
                rts
loc_1AD222:
                
                bra.w   sub_1A8AB6

    ; End of function sub_1AD1DA


; START OF FUNCTION CHUNK FOR sub_1AD1DA

loc_1AD226:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1AD24A
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1AD24E
                bcs.s   loc_1AD244
                bsr.s   sub_1AD28E
loc_1AD244:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AD24A:
                
                bra.w   sub_1A8AA6

; END OF FUNCTION CHUNK FOR sub_1AD1DA


; =============== S U B R O U T I N E =======================================

sub_1AD24E:
                
                move.w  #$60,d5 
                move.w  #$FFC0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AD28A
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$32,d7 
                bcc.s   loc_1AD28A
                move.b  #$22,$37(a5) 
                move.w  #$1A,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AD28A:
                
                tst.b   d0
                rts

    ; End of function sub_1AD24E


; =============== S U B R O U T I N E =======================================

sub_1AD28E:
                
                move.w  #$20,d5 
                move.w  #$20,d6 
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1AD2BA
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AD2BA:
                
                tst.b   d0
                rts

    ; End of function sub_1AD28E


; START OF FUNCTION CHUNK FOR sub_1AD1DA

loc_1AD2BE:
                
                andi.b  #$F,d0
                cmpi.b  #3,d0
                bcs.s   loc_1AD2FE
                move.w  #$300,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   return_1AD2FC
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   return_1AD2FC
                beq.w   loc_1AD222
return_1AD2FC:
                
                rts
loc_1AD2FE:
                
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1AD1DA


; =============== S U B R O U T I N E =======================================

sub_1AD304:
                
                bra.s   loc_1AD352
loc_1AD306:
                
                bset    #7,$20(a5)
                btst    #1,$C(a5)
                bne.s   loc_1AD324
                move.b  $37(a5),d0
                beq.s   loc_1AD32A
                cmpi.b  #$10,d0
                beq.s   loc_1AD356
                bra.w   loc_1AD4C6
loc_1AD324:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AD32A:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$20,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1AD352
                rts
loc_1AD352:
                
                bra.w   sub_1A8AB6

    ; End of function sub_1AD304


; START OF FUNCTION CHUNK FOR sub_1AD304

loc_1AD356:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1AD3A2
                btst    #6,$C(a5)
                beq.s   loc_1AD37A
                addq.b  #1,$4D(a5)
                cmpi.b  #$1E,$4D(a5)
                bcs.s   loc_1AD39C
                subq.b  #1,$4D(a5)
                bsr.w   sub_1AD4A4
loc_1AD37A:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1AD3A6
                bcs.s   loc_1AD39C
                bsr.s   sub_1AD3E8
                bcs.s   loc_1AD39C
                bsr.w   sub_1AD41A
                bcs.s   loc_1AD39C
                bsr.w   sub_1AD460
loc_1AD39C:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AD3A2:
                
                bra.w   sub_1A8AA6

; END OF FUNCTION CHUNK FOR sub_1AD304


; =============== S U B R O U T I N E =======================================

sub_1AD3A6:
                
                move.w  #$70,d5 
                move.w  #$30,d6 
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1AD3E4
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #8,d7
                bhi.s   loc_1AD3E4
                bset    #6,$C(a5)
                move.w  #$100,$12(a5)
                move.w  #$120,$54(a5)
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1AD3E4:
                
                tst.b   d0
                rts

    ; End of function sub_1AD3A6


; =============== S U B R O U T I N E =======================================

sub_1AD3E8:
                
                move.w  #$60,d5 
                move.w  #0,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1AD416
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #6,d7
                bhi.s   loc_1AD416
                bsr.w   sub_1AD4A4
                bcc.s   loc_1AD416
                ori     #1,ccr
                rts
loc_1AD416:
                
                tst.b   d0
                rts

    ; End of function sub_1AD3E8


; =============== S U B R O U T I N E =======================================

sub_1AD41A:
                
                move.w  #$60,d5 
                move.w  #$48,d6 
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AD45C
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C,d7
                bhi.s   loc_1AD45C
                bsr.w   sub_1AD4A4
                bcc.s   loc_1AD45C
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1AD45C:
                
                tst.b   d0
                rts

    ; End of function sub_1AD41A


; =============== S U B R O U T I N E =======================================

sub_1AD460:
                
                move.w  #$18,d5
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AD4A0
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$50,d7 
                bcc.s   loc_1AD4A0
                bsr.s   sub_1AD4A4
                bcc.s   loc_1AD4A0
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AD4A0:
                
                tst.b   d0
                rts

    ; End of function sub_1AD460


; =============== S U B R O U T I N E =======================================

sub_1AD4A4:
                
                btst    #6,$C(a5)
                beq.s   loc_1AD4BA
                move.w  #$F,d1
                bsr.w   sub_1AE944
                bcs.s   loc_1AD4BA
                tst.b   d0
                rts
loc_1AD4BA:
                
                bclr    #6,$C(a5)
                ori     #1,ccr
                rts

    ; End of function sub_1AD4A4


; START OF FUNCTION CHUNK FOR sub_1AD304

loc_1AD4C6:
                
                andi.b  #$F,d0
                beq.s   loc_1AD4E0
                cmpi.b  #1,d0
                beq.s   loc_1AD4E0
                cmpi.b  #2,d0
                beq.s   loc_1AD4E0
                cmpi.b  #3,d0
                beq.s   loc_1AD554
                bra.s   loc_1AD554
loc_1AD4E0:
                
                addq.b  #1,$4D(a5)
                cmpi.b  #1,$4D(a5)
                bne.s   loc_1AD502
                move.w  #$300,$2C(a5)
                lea     (unk_9880).l,a2
                move.b  #1,d0
                jmp     (sub_488).l
loc_1AD502:
                
                cmpi.b  #2,$4D(a5)
                bne.w   loc_1AD514
                move.b  #1,d0
                bra.w   sub_1AC3F4
loc_1AD514:
                
                cmpi.b  #$2D,$4D(a5) 
                bhi.w   loc_1AD53A
                bcs.w   return_1AD54A
                move.w  #$200,$2C(a5)
                move.b  #1,d0
                move.w  #$300,d1
                bsr.w   sub_1AC474
                bcs.w   loc_1AD54C
                rts
loc_1AD53A:
                
                move.w  #$200,$2C(a5)
                cmpi.b  #$46,$4D(a5) 
                beq.w   loc_1AD54C
return_1AD54A:
                
                rts
loc_1AD54C:
                
                clr.b   $4D(a5)
                bra.w   loc_1AD352
loc_1AD554:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   return_1AD588
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   return_1AD588
                beq.w   loc_1AD352
return_1AD588:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1AD304


; =============== S U B R O U T I N E =======================================

sub_1AD58A:
                
                bra.s   loc_1AD5D8
loc_1AD58C:
                
                bset    #7,$20(a5)
                btst    #1,$C(a5)
                bne.s   loc_1AD5AA
                move.b  $37(a5),d0
                beq.s   loc_1AD5B0
                cmpi.b  #$10,d0
                beq.s   loc_1AD5DC
                bra.w   loc_1AD74C
loc_1AD5AA:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AD5B0:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$20,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1AD5D8
                rts
loc_1AD5D8:
                
                bra.w   sub_1A8AB6

    ; End of function sub_1AD58A


; START OF FUNCTION CHUNK FOR sub_1AD58A

loc_1AD5DC:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1AD628
                btst    #6,$C(a5)
                beq.s   loc_1AD600
                addq.b  #1,$4D(a5)
                cmpi.b  #$1E,$4D(a5)
                bcs.s   loc_1AD622
                subq.b  #1,$4D(a5)
                bsr.w   sub_1AD72A
loc_1AD600:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1AD62C
                bcs.s   loc_1AD622
                bsr.s   sub_1AD66E
                bcs.s   loc_1AD622
                bsr.w   sub_1AD6A0
                bcs.s   loc_1AD622
                bsr.w   sub_1AD6E6
loc_1AD622:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AD628:
                
                bra.w   sub_1A8AA6

; END OF FUNCTION CHUNK FOR sub_1AD58A


; =============== S U B R O U T I N E =======================================

sub_1AD62C:
                
                move.w  #$70,d5 
                move.w  #$30,d6 
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1AD66A
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12,d7
                bhi.s   loc_1AD66A
                bset    #6,$C(a5)
                move.w  #$100,$12(a5)
                move.w  #$120,$54(a5)
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1AD66A:
                
                tst.b   d0
                rts

    ; End of function sub_1AD62C


; =============== S U B R O U T I N E =======================================

sub_1AD66E:
                
                move.w  #$60,d5 
                move.w  #0,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1AD69C
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #6,d7
                bhi.s   loc_1AD69C
                bsr.w   sub_1AD72A
                bcc.s   loc_1AD69C
                ori     #1,ccr
                rts
loc_1AD69C:
                
                tst.b   d0
                rts

    ; End of function sub_1AD66E


; =============== S U B R O U T I N E =======================================

sub_1AD6A0:
                
                move.w  #$60,d5 
                move.w  #$48,d6 
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AD6E2
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$10,d7
                bhi.s   loc_1AD6E2
                bsr.w   sub_1AD72A
                bcc.s   loc_1AD6E2
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1AD6E2:
                
                tst.b   d0
                rts

    ; End of function sub_1AD6A0


; =============== S U B R O U T I N E =======================================

sub_1AD6E6:
                
                move.w  #$18,d5
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AD726
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$50,d7 
                bcc.s   loc_1AD726
                bsr.s   sub_1AD72A
                bcc.s   loc_1AD726
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AD726:
                
                tst.b   d0
                rts

    ; End of function sub_1AD6E6


; =============== S U B R O U T I N E =======================================

sub_1AD72A:
                
                btst    #6,$C(a5)
                beq.s   loc_1AD740
                move.w  #$F,d1
                bsr.w   sub_1AE944
                bcs.s   loc_1AD740
                tst.b   d0
                rts
loc_1AD740:
                
                bclr    #6,$C(a5)
                ori     #1,ccr
                rts

    ; End of function sub_1AD72A


; START OF FUNCTION CHUNK FOR sub_1AD58A

loc_1AD74C:
                
                andi.b  #$F,d0
                beq.s   loc_1AD766
                cmpi.b  #1,d0
                beq.s   loc_1AD766
                cmpi.b  #2,d0
                beq.s   loc_1AD766
                cmpi.b  #3,d0
                beq.s   loc_1AD7DA
                bra.s   loc_1AD7DA
loc_1AD766:
                
                addq.b  #1,$4D(a5)
                cmpi.b  #1,$4D(a5)
                bne.s   loc_1AD788
                move.w  #$300,$2C(a5)
                lea     (unk_9880).l,a2
                move.b  #1,d0
                jmp     (sub_488).l
loc_1AD788:
                
                cmpi.b  #2,$4D(a5)
                bne.w   loc_1AD79A
                move.b  #1,d0
                bra.w   sub_1AC3F4
loc_1AD79A:
                
                cmpi.b  #$2D,$4D(a5) 
                bhi.w   loc_1AD7C0
                bcs.w   return_1AD7D0
                move.w  #$200,$2C(a5)
                move.b  #1,d0
                move.w  #$500,d1
                bsr.w   sub_1AC474
                bcs.w   loc_1AD7D2
                rts
loc_1AD7C0:
                
                move.w  #$200,$2C(a5)
                cmpi.b  #$46,$4D(a5) 
                beq.w   loc_1AD7D2
return_1AD7D0:
                
                rts
loc_1AD7D2:
                
                clr.b   $4D(a5)
                bra.w   loc_1AD5D8
loc_1AD7DA:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   return_1AD80E
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   return_1AD80E
                beq.w   loc_1AD5D8
return_1AD80E:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1AD58A


; =============== S U B R O U T I N E =======================================

sub_1AD810:
                
                bra.s   loc_1AD85E
loc_1AD812:
                
                bset    #7,$20(a5)
                btst    #1,$C(a5)
                bne.s   loc_1AD830
                move.b  $37(a5),d0
                beq.s   loc_1AD836
                cmpi.b  #$10,d0
                beq.s   loc_1AD862
                bra.w   loc_1AD9D2
loc_1AD830:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AD836:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$20,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1AD85E
                rts
loc_1AD85E:
                
                bra.w   sub_1A8AB6

    ; End of function sub_1AD810


; START OF FUNCTION CHUNK FOR sub_1AD810

loc_1AD862:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1AD8AE
                btst    #6,$C(a5)
                beq.s   loc_1AD886
                addq.b  #1,$4D(a5)
                cmpi.b  #$1E,$4D(a5)
                bcs.s   loc_1AD8A8
                subq.b  #1,$4D(a5)
                bsr.w   sub_1AD9B0
loc_1AD886:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1AD8B2
                bcs.s   loc_1AD8A8
                bsr.s   sub_1AD8F4
                bcs.s   loc_1AD8A8
                bsr.w   sub_1AD926
                bcs.s   loc_1AD8A8
                bsr.w   sub_1AD96C
loc_1AD8A8:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AD8AE:
                
                bra.w   sub_1A8AA6

; END OF FUNCTION CHUNK FOR sub_1AD810


; =============== S U B R O U T I N E =======================================

sub_1AD8B2:
                
                move.w  #$70,d5 
                move.w  #$30,d6 
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1AD8F0
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$20,d7 
                bhi.s   loc_1AD8F0
                bset    #6,$C(a5)
                move.w  #$100,$12(a5)
                move.w  #$120,$54(a5)
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1AD8F0:
                
                tst.b   d0
                rts

    ; End of function sub_1AD8B2


; =============== S U B R O U T I N E =======================================

sub_1AD8F4:
                
                move.w  #$60,d5 
                move.w  #0,d6
                move.w  #$20,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1AD922
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #6,d7
                bhi.s   loc_1AD922
                bsr.w   sub_1AD9B0
                bcc.s   loc_1AD922
                ori     #1,ccr
                rts
loc_1AD922:
                
                tst.b   d0
                rts

    ; End of function sub_1AD8F4


; =============== S U B R O U T I N E =======================================

sub_1AD926:
                
                move.w  #$60,d5 
                move.w  #$48,d6 
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AD968
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$19,d7
                bhi.s   loc_1AD968
                bsr.w   sub_1AD9B0
                bcc.s   loc_1AD968
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1AD968:
                
                tst.b   d0
                rts

    ; End of function sub_1AD926


; =============== S U B R O U T I N E =======================================

sub_1AD96C:
                
                move.w  #$18,d5
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AD9AC
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$50,d7 
                bcc.s   loc_1AD9AC
                bsr.s   sub_1AD9B0
                bcc.s   loc_1AD9AC
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AD9AC:
                
                tst.b   d0
                rts

    ; End of function sub_1AD96C


; =============== S U B R O U T I N E =======================================

sub_1AD9B0:
                
                btst    #6,$C(a5)
                beq.s   loc_1AD9C6
                move.w  #$F,d1
                bsr.w   sub_1AE944
                bcs.s   loc_1AD9C6
                tst.b   d0
                rts
loc_1AD9C6:
                
                bclr    #6,$C(a5)
                ori     #1,ccr
                rts

    ; End of function sub_1AD9B0


; START OF FUNCTION CHUNK FOR sub_1AD810

loc_1AD9D2:
                
                andi.b  #$F,d0
                beq.s   loc_1AD9EC
                cmpi.b  #1,d0
                beq.s   loc_1AD9EC
                cmpi.b  #2,d0
                beq.s   loc_1AD9EC
                cmpi.b  #3,d0
                beq.s   loc_1ADA60
                bra.s   loc_1ADA60
loc_1AD9EC:
                
                addq.b  #1,$4D(a5)
                cmpi.b  #1,$4D(a5)
                bne.s   loc_1ADA0E
                move.w  #$300,$2C(a5)
                lea     (unk_9880).l,a2
                move.b  #1,d0
                jmp     (sub_488).l
loc_1ADA0E:
                
                cmpi.b  #2,$4D(a5)
                bne.w   loc_1ADA20
                move.b  #1,d0
                bra.w   sub_1AC3F4
loc_1ADA20:
                
                cmpi.b  #$2D,$4D(a5) 
                bhi.w   loc_1ADA46
                bcs.w   return_1ADA56
                move.w  #$200,$2C(a5)
                move.b  #1,d0
                move.w  #$700,d1
                bsr.w   sub_1AC474
                bcs.w   loc_1ADA58
                rts
loc_1ADA46:
                
                move.w  #$200,$2C(a5)
                cmpi.b  #$46,$4D(a5) 
                beq.w   loc_1ADA58
return_1ADA56:
                
                rts
loc_1ADA58:
                
                clr.b   $4D(a5)
                bra.w   loc_1AD85E
loc_1ADA60:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   return_1ADA94
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   return_1ADA94
                beq.w   loc_1AD85E
return_1ADA94:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1AD810


; =============== S U B R O U T I N E =======================================

sub_1ADA96:
                
                bra.s   loc_1ADADC
loc_1ADA98:
                
                btst    #1,$C(a5)
                bne.s   loc_1ADAB0
                move.b  $37(a5),d0
                beq.s   loc_1ADAB6
                cmpi.b  #$10,d0
                beq.s   loc_1ADAF4
                bra.w   loc_1ADC6C
loc_1ADAB0:
                
                bsr.w   sub_1A8ADA
                rts
loc_1ADAB6:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$20,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                rts
loc_1ADADC:
                
                move.w  #4,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                rts

    ; End of function sub_1ADA96


; START OF FUNCTION CHUNK FOR sub_1ADA96

loc_1ADAF4:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1ADB24
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1ADB28
                bcs.s   loc_1ADB1E
                bsr.s   sub_1ADB76
                bcs.s   loc_1ADB1E
                bsr.w   sub_1ADBC4
                bcs.s   loc_1ADB1E
                bsr.w   sub_1ADC12
loc_1ADB1E:
                
                bsr.w   sub_1A8ADA
                rts
loc_1ADB24:
                
                bra.w   sub_1A8AA6

; END OF FUNCTION CHUNK FOR sub_1ADA96


; =============== S U B R O U T I N E =======================================

sub_1ADB28:
                
                move.w  #$50,d5 
                move.w  #$50,d6 
                move.w  #$50,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1ADB72
                move.w  #$38,d5 
                move.w  #$38,d6 
                move.w  #$38,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1ADB72
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C,d7
                bhi.s   loc_1ADB72
                move.b  #$20,$37(a5) 
                move.w  #$E,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1ADB72:
                
                tst.b   d0
                rts

    ; End of function sub_1ADB28


; =============== S U B R O U T I N E =======================================

sub_1ADB76:
                
                move.w  #$38,d5 
                move.w  #$38,d6 
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1ADBC0
                move.w  #$28,d5 
                move.w  #$28,d6 
                move.w  #$28,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1ADBC0
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12,d7
                bhi.s   loc_1ADBC0
                move.b  #$21,$37(a5) 
                move.w  #7,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1ADBC0:
                
                tst.b   d0
                rts

    ; End of function sub_1ADB76


; =============== S U B R O U T I N E =======================================

sub_1ADBC4:
                
                move.w  #$30,d5 
                move.w  #$30,d6 
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1ADC0E
                move.w  #$28,d5 
                move.w  #$28,d6 
                move.w  #$28,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1ADC0E
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C,d7
                bhi.s   loc_1ADC0E
                move.b  #$22,$37(a5) 
                move.w  #8,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1ADC0E:
                
                tst.b   d0
                rts

    ; End of function sub_1ADBC4


; =============== S U B R O U T I N E =======================================

sub_1ADC12:
                
                move.w  #$20,d5 
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1ADC68
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$32,d7 
                bcc.s   loc_1ADC4E
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1ADC4E:
                
                move.b  #$24,$37(a5) 
                move.w  #9,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1ADC68:
                
                tst.b   d0
                rts

    ; End of function sub_1ADC12


; START OF FUNCTION CHUNK FOR sub_1ADA96

loc_1ADC6C:
                
                andi.b  #$F,d0
                beq.s   loc_1ADC86
                cmpi.b  #1,d0
                beq.s   loc_1ADC92
                cmpi.b  #2,d0
                beq.s   loc_1ADC92
                cmpi.b  #3,d0
                beq.s   loc_1ADC98
                bra.s   loc_1ADC98
loc_1ADC86:
                
                move.b  $2D(a5),d0
                andi.b  #$30,d0 
                beq.w   loc_1ADADC
loc_1ADC92:
                
                bsr.w   sub_1A8ADA
                rts
loc_1ADC98:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   return_1ADCCC
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   return_1ADCCC
                beq.w   loc_1ADADC
return_1ADCCC:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1ADA96


; =============== S U B R O U T I N E =======================================

sub_1ADCCE:
                
                bra.s   loc_1ADD14
loc_1ADCD0:
                
                btst    #1,$C(a5)
                bne.s   loc_1ADCE8
                move.b  $37(a5),d0
                beq.s   loc_1ADCEE
                cmpi.b  #$10,d0
                beq.s   loc_1ADD2C
                bra.w   loc_1ADEA4
loc_1ADCE8:
                
                bsr.w   sub_1A8ADA
                rts
loc_1ADCEE:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$20,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                rts
loc_1ADD14:
                
                move.w  #4,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                rts

    ; End of function sub_1ADCCE


; START OF FUNCTION CHUNK FOR sub_1ADCCE

loc_1ADD2C:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1ADD5C
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1ADD60
                bcs.s   loc_1ADD56
                bsr.s   sub_1ADDAE
                bcs.s   loc_1ADD56
                bsr.w   sub_1ADDFC
                bcs.s   loc_1ADD56
                bsr.w   sub_1ADE4A
loc_1ADD56:
                
                bsr.w   sub_1A8ADA
                rts
loc_1ADD5C:
                
                bra.w   sub_1A8AA6

; END OF FUNCTION CHUNK FOR sub_1ADCCE


; =============== S U B R O U T I N E =======================================

sub_1ADD60:
                
                move.w  #$50,d5 
                move.w  #$50,d6 
                move.w  #$50,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1ADDAA
                move.w  #$38,d5 
                move.w  #$38,d6 
                move.w  #$38,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1ADDAA
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C,d7
                bhi.s   loc_1ADDAA
                move.b  #$20,$37(a5) 
                move.w  #$E,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1ADDAA:
                
                tst.b   d0
                rts

    ; End of function sub_1ADD60


; =============== S U B R O U T I N E =======================================

sub_1ADDAE:
                
                move.w  #$38,d5 
                move.w  #$38,d6 
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1ADDF8
                move.w  #$28,d5 
                move.w  #$28,d6 
                move.w  #$28,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1ADDF8
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12,d7
                bhi.s   loc_1ADDF8
                move.b  #$21,$37(a5) 
                move.w  #7,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1ADDF8:
                
                tst.b   d0
                rts

    ; End of function sub_1ADDAE


; =============== S U B R O U T I N E =======================================

sub_1ADDFC:
                
                move.w  #$30,d5 
                move.w  #$30,d6 
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1ADE46
                move.w  #$28,d5 
                move.w  #$28,d6 
                move.w  #$28,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1ADE46
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C,d7
                bhi.s   loc_1ADE46
                move.b  #$22,$37(a5) 
                move.w  #8,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1ADE46:
                
                tst.b   d0
                rts

    ; End of function sub_1ADDFC


; =============== S U B R O U T I N E =======================================

sub_1ADE4A:
                
                move.w  #$20,d5 
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1ADEA0
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$32,d7 
                bcc.s   loc_1ADE86
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1ADE86:
                
                move.b  #$24,$37(a5) 
                move.w  #9,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1ADEA0:
                
                tst.b   d0
                rts

    ; End of function sub_1ADE4A


; START OF FUNCTION CHUNK FOR sub_1ADCCE

loc_1ADEA4:
                
                andi.b  #$F,d0
                beq.s   loc_1ADEBE
                cmpi.b  #1,d0
                beq.s   loc_1ADECA
                cmpi.b  #2,d0
                beq.s   loc_1ADECA
                cmpi.b  #3,d0
                beq.s   loc_1ADED0
                bra.s   loc_1ADED0
loc_1ADEBE:
                
                move.b  $2D(a5),d0
                andi.b  #$30,d0 
                beq.w   loc_1ADD14
loc_1ADECA:
                
                bsr.w   sub_1A8ADA
                rts
loc_1ADED0:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   return_1ADF04
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   return_1ADF04
                beq.w   loc_1ADD14
return_1ADF04:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1ADCCE


; =============== S U B R O U T I N E =======================================

sub_1ADF06:
                
                bra.s   loc_1ADF4C
loc_1ADF08:
                
                btst    #1,$C(a5)
                bne.s   loc_1ADF20
                move.b  $37(a5),d0
                beq.s   loc_1ADF26
                cmpi.b  #$10,d0
                beq.s   loc_1ADF64
                bra.w   loc_1AE0DC
loc_1ADF20:
                
                bsr.w   sub_1A8ADA
                rts
loc_1ADF26:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$20,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                rts
loc_1ADF4C:
                
                move.w  #4,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                rts

    ; End of function sub_1ADF06


; START OF FUNCTION CHUNK FOR sub_1ADF06

loc_1ADF64:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1ADF94
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1ADF98
                bcs.s   loc_1ADF8E
                bsr.s   sub_1ADFE6
                bcs.s   loc_1ADF8E
                bsr.w   sub_1AE034
                bcs.s   loc_1ADF8E
                bsr.w   sub_1AE082
loc_1ADF8E:
                
                bsr.w   sub_1A8ADA
                rts
loc_1ADF94:
                
                bra.w   sub_1A8AA6

; END OF FUNCTION CHUNK FOR sub_1ADF06


; =============== S U B R O U T I N E =======================================

sub_1ADF98:
                
                move.w  #$50,d5 
                move.w  #$50,d6 
                move.w  #$50,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1ADFE2
                move.w  #$38,d5 
                move.w  #$38,d6 
                move.w  #$38,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1ADFE2
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C,d7
                bhi.s   loc_1ADFE2
                move.b  #$20,$37(a5) 
                move.w  #$E,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1ADFE2:
                
                tst.b   d0
                rts

    ; End of function sub_1ADF98


; =============== S U B R O U T I N E =======================================

sub_1ADFE6:
                
                move.w  #$38,d5 
                move.w  #$38,d6 
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AE030
                move.w  #$28,d5 
                move.w  #$28,d6 
                move.w  #$28,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1AE030
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12,d7
                bhi.s   loc_1AE030
                move.b  #$21,$37(a5) 
                move.w  #7,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1AE030:
                
                tst.b   d0
                rts

    ; End of function sub_1ADFE6


; =============== S U B R O U T I N E =======================================

sub_1AE034:
                
                move.w  #$30,d5 
                move.w  #$30,d6 
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AE07E
                move.w  #$28,d5 
                move.w  #$28,d6 
                move.w  #$28,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1AE07E
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$C,d7
                bhi.s   loc_1AE07E
                move.b  #$22,$37(a5) 
                move.w  #8,$34(a5)
                bsr.w   sub_1A8AE0
                ori     #1,ccr
                rts
loc_1AE07E:
                
                tst.b   d0
                rts

    ; End of function sub_1AE034


; =============== S U B R O U T I N E =======================================

sub_1AE082:
                
                move.w  #$20,d5 
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AE0D8
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$32,d7 
                bcc.s   loc_1AE0BE
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AE0BE:
                
                move.b  #$24,$37(a5) 
                move.w  #9,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AE0D8:
                
                tst.b   d0
                rts

    ; End of function sub_1AE082


; START OF FUNCTION CHUNK FOR sub_1ADF06

loc_1AE0DC:
                
                andi.b  #$F,d0
                beq.s   loc_1AE0F6
                cmpi.b  #1,d0
                beq.s   loc_1AE102
                cmpi.b  #2,d0
                beq.s   loc_1AE102
                cmpi.b  #3,d0
                beq.s   loc_1AE108
                bra.s   loc_1AE108
loc_1AE0F6:
                
                move.b  $2D(a5),d0
                andi.b  #$30,d0 
                beq.w   loc_1ADF4C
loc_1AE102:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AE108:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #$F,$D(a5)
                bcs.s   return_1AE13C
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$200,$2C(a5)
                cmpi.b  #$1E,$D(a5)
                bcs.s   return_1AE13C
                beq.w   loc_1ADF4C
return_1AE13C:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1ADF06


; =============== S U B R O U T I N E =======================================

sub_1AE13E:
                
                bra.s   loc_1AE15C
loc_1AE140:
                
                btst    #1,$C(a5)
                bne.s   loc_1AE156
                move.b  $37(a5),d0
                cmpi.b  #$10,d0
                beq.s   loc_1AE180
                bra.w   loc_1AE2DC
loc_1AE156:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AE15C:
                
                bclr    #6,$38(a5)
                bclr    #0,$38(a5)
                move.w  #$180,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                rts

    ; End of function sub_1AE13E


; START OF FUNCTION CHUNK FOR sub_1AE13E

loc_1AE180:
                
                bclr    #0,$38(a5)
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1AE1B4
                bcs.s   loc_1AE1AE
                bsr.s   sub_1AE1F4
                bcs.s   loc_1AE1AE
                bsr.w   sub_1AE234
                bcs.s   loc_1AE1AE
                bsr.w   sub_1AE274
                bcs.s   loc_1AE1AE
                bsr.w   sub_1AE2A0
loc_1AE1AE:
                
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1AE13E


; =============== S U B R O U T I N E =======================================

sub_1AE1B4:
                
                move.w  #$A0,d5 
                move.w  #$FFC0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AE1F0
                move.b  4(a5),d0
                andi.b  #$C0,d0
                cmpi.b  #$40,d0 
                cmpi.b  #$80,d0
                move.b  #$20,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1AE1F0:
                
                tst.b   d0
                rts

    ; End of function sub_1AE1B4


; =============== S U B R O U T I N E =======================================

sub_1AE1F4:
                
                move.w  #$50,d5 
                move.w  #$FFE0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AE230
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$19,d7
                bhi.s   loc_1AE230
                move.b  #$21,$37(a5) 
                move.w  #$1A,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1AE230:
                
                tst.b   d0
                rts

    ; End of function sub_1AE1F4


; =============== S U B R O U T I N E =======================================

sub_1AE234:
                
                move.w  #$30,d5 
                move.w  #$FFE0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AE270
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$10,d7
                bhi.s   loc_1AE270
                move.b  #$22,$37(a5) 
                move.w  #$12,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1AE270:
                
                tst.b   d0
                rts

    ; End of function sub_1AE234


; =============== S U B R O U T I N E =======================================

sub_1AE274:
                
                move.w  #$20,d5 
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AE2D8
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts

    ; End of function sub_1AE274


; =============== S U B R O U T I N E =======================================

sub_1AE2A0:
                
                move.w  #$40,d5 
                move.w  #$FFF0,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AE2D8
                move.b  (dword_FF542C).l,d0
                andi.b  #7,d0
                beq.s   loc_1AE2D8
                move.b  #$24,$37(a5) 
                move.w  #$17F,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1AE2D8:
                
                tst.b   d0
                rts

    ; End of function sub_1AE2A0


; START OF FUNCTION CHUNK FOR sub_1AE13E

loc_1AE2DC:
                
                andi.b  #$F,d0
                beq.s   loc_1AE2F8
                cmpi.b  #1,d0
                beq.s   loc_1AE33C
                cmpi.b  #2,d0
                beq.s   loc_1AE33C
                cmpi.b  #3,d0
                beq.s   loc_1AE33C
                bra.w   loc_1AE398
loc_1AE2F8:
                
                cmpi.b  #$14,$4D(a5)
                bhi.s   loc_1AE336
                move.w  #$500,$2C(a5)
                addq.b  #1,$4D(a5)
                cmpi.b  #$A,$4D(a5)
                bcs.s   loc_1AE336
                move.w  #$600,$2C(a5)
                cmpi.b  #$14,$4D(a5)
                bcs.s   loc_1AE336
                bset    #6,$38(a5)
                bset    #0,$38(a5)
                move.w  #$320,$34(a5)
                bsr.w   sub_1A8AE0
loc_1AE336:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AE33C:
                
                bset    #0,$38(a5)
                move.w  #$100,$2C(a5)
                addq.b  #1,$4D(a5)
                cmpi.b  #5,$4D(a5)
                bcs.s   loc_1AE398
                bne.s   loc_1AE35A

; END OF FUNCTION CHUNK FOR sub_1AE13E

                sndCom  SFX_SWORD_SLASH

; START OF FUNCTION CHUNK FOR sub_1AE13E

loc_1AE35A:
                
                move.w  #$200,$2C(a5)
                cmpi.b  #$A,$4D(a5)
                bcs.s   loc_1AE398
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$300,$2C(a5)
                cmpi.b  #$F,$4D(a5)
                bcs.s   loc_1AE398
                move.w  #$400,$2C(a5)
                cmpi.b  #$14,$4D(a5)
                bcs.s   loc_1AE398
                beq.w   loc_1AE15C
loc_1AE398:
                
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1AE13E


; =============== S U B R O U T I N E =======================================

sub_1AE39E:
                
                bra.s   loc_1AE3C2
loc_1AE3A0:
                
                btst    #1,$C(a5)
                bne.s   loc_1AE3B8
                move.b  $37(a5),d0
                beq.s   loc_1AE3C2
                cmpi.b  #$10,d0
                beq.s   loc_1AE3EC
                bra.w   loc_1AE562
loc_1AE3B8:
                
                clr.b   9(a5)
                bsr.w   sub_1A8ADA
                rts
loc_1AE3C2:
                
                bsr.s   sub_1AE3C8
                bra.w   loc_1AE4D4

    ; End of function sub_1AE39E


; =============== S U B R O U T I N E =======================================

sub_1AE3C8:
                
                bclr    #6,$38(a5)
                bclr    #0,$38(a5)
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                rts

    ; End of function sub_1AE3C8


; START OF FUNCTION CHUNK FOR sub_1AE39E

loc_1AE3EC:
                
                bclr    #0,$38(a5)
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.s   sub_1AE41C
                bcs.s   loc_1AE416
                bsr.w   sub_1AE4C4
                bcs.s   loc_1AE416
                bsr.w   sub_1AE4F8
                bcs.s   loc_1AE416
                bsr.w   sub_1AE524
loc_1AE416:
                
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1AE39E


; =============== S U B R O U T I N E =======================================

sub_1AE41C:
                
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$A,d7
                bhi.w   loc_1AE4C0
                move.b  4(a5),d0
                andi.b  #$C0,d0
                cmpi.w  #$1B1D,(a5)
                beq.s   loc_1AE45C
                cmpi.w  #$221D,(a5)
                beq.s   loc_1AE472
                cmpi.w  #$1B24,(a5)
                beq.s   loc_1AE488
                move.w  #$34A,d1
                tst.b   d0
                beq.s   loc_1AE49C
                move.w  #$34D,d1
                cmpi.b  #$C0,d0
                beq.s   loc_1AE49C
                bra.s   loc_1AE4C0
loc_1AE45C:
                
                move.w  #$34B,d1
                cmpi.b  #$40,d0 
                beq.s   loc_1AE49C
                move.w  #$34C,d1
                cmpi.b  #$80,d0
                beq.s   loc_1AE49C
                bra.s   loc_1AE4C0
loc_1AE472:
                
                move.w  #$34C,d1
                cmpi.b  #$80,d0
                beq.s   loc_1AE49C
                move.w  #$34D,d1
                cmpi.b  #$C0,d0
                beq.s   loc_1AE49C
                bra.s   loc_1AE4C0
loc_1AE488:
                
                move.w  #$34B,d1
                cmpi.b  #$40,d0 
                beq.s   loc_1AE49C
                move.w  #$34A,d1
                tst.b   d0
                beq.s   loc_1AE49C
                bra.s   loc_1AE4C0
loc_1AE49C:
                
                move.b  #$21,$37(a5) 
                move.w  d1,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                bset    #0,$38(a5)
                bset    #6,$38(a5)
                ori     #1,ccr
                rts
loc_1AE4C0:
                
                tst.b   d0
                rts

    ; End of function sub_1AE41C


; =============== S U B R O U T I N E =======================================

sub_1AE4C4:
                
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$14,d7
                bhi.s   loc_1AE4F4
loc_1AE4D4:
                
                move.b  #$22,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                bset    #0,$38(a5)
                ori     #1,ccr
                rts
loc_1AE4F4:
                
                tst.b   d0
                rts

    ; End of function sub_1AE4C4


; =============== S U B R O U T I N E =======================================

sub_1AE4F8:
                
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$4B,d7 
                bcc.s   sub_1AE524
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                bsr.s   sub_1AE550
                ori     #1,ccr
                rts

    ; End of function sub_1AE4F8


; =============== S U B R O U T I N E =======================================

sub_1AE524:
                
                move.w  #$40,d5 
                move.w  #$FFF0,d6
                move.w  #$10,d7
                move.b  #$24,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                bsr.s   sub_1AE550
                ori     #1,ccr
                rts

    ; End of function sub_1AE524


; =============== S U B R O U T I N E =======================================

sub_1AE54C:
                
                tst.b   d0
                rts

    ; End of function sub_1AE54C


; =============== S U B R O U T I N E =======================================

sub_1AE550:
                
                bsr.w   sub_1AC010
                move.b  d2,d1
                andi.b  #$3F,4(a5) 
                or.b    d2,4(a5)
                rts

    ; End of function sub_1AE550


; START OF FUNCTION CHUNK FOR sub_1AE39E

loc_1AE562:
                
                andi.b  #$F,d0
                beq.s   return_1AE582
                cmpi.b  #1,d0
                beq.s   loc_1AE584
                cmpi.b  #2,d0
                beq.w   loc_1AE612
                cmpi.b  #3,d0
                beq.w   loc_1AE6A4
                bra.w   loc_1AE714
return_1AE582:
                
                rts
loc_1AE584:
                
                bset    #0,$38(a5)
                bset    #6,$38(a5)
                move.w  #$300,$2C(a5)
                addq.b  #1,$4D(a5)
                cmpi.b  #5,$4D(a5)
                bcs.w   loc_1AE606
                cmpi.b  #$F,$4D(a5)
                bne.s   loc_1AE5BC
                move.w  #$500,$2C(a5)
                addi.w  #$10,$12(a5)
                bra.w   loc_1AE606
loc_1AE5BC:
                
                move.w  #$400,$2C(a5)
                cmpi.b  #$10,$4D(a5)
                bcs.w   loc_1AE606
                clr.w   $2C(a5)
                cmpi.b  #$1D,$4D(a5)
                bcs.w   loc_1AE606
                bne.s   loc_1AE5E2
                subi.w  #$10,$12(a5)
loc_1AE5E2:
                
                move.w  #$400,$2C(a5)
                cmpi.b  #$22,$4D(a5) 
                bcs.w   loc_1AE606
                move.w  #$300,$2C(a5)
                cmpi.b  #$27,$4D(a5) 
                bcs.w   loc_1AE606
                bra.w   sub_1AE3C8
loc_1AE606:
                
                bsr.w   sub_1A8ADA
                bclr    #7,$A(a5)
                rts
loc_1AE612:
                
                bset    #0,$38(a5)
                move.w  #$600,$2C(a5)
                addq.b  #1,$4D(a5)
                cmpi.b  #5,$4D(a5)
                bcs.w   return_1AE6A2
                move.w  #$700,$2C(a5)
                cmpi.b  #$F,$4D(a5)
                bcs.s   return_1AE6A2
                bhi.s   loc_1AE67A
                bset    #6,$C(a5)
                move.w  #4,d6
                jsr     (sub_362).l
                add.b   d7,d7
                move.w  word_1AE672(pc,d7.w),d6
                cmp.w   (a5),d6
                bne.s   loc_1AE660
                addq.b  #2,d7
                andi.b  #6,d7
                move.w  word_1AE672(pc,d7.w),d6
loc_1AE660:
                
                move.w  d6,(a5)
                move.w  #$808,2(a5)
                movea.l a5,a1
                jsr     sub_1A8AE6
                rts

; END OF FUNCTION CHUNK FOR sub_1AE39E

word_1AE672:    dc.w $1B1D
                dc.b $22 
                dc.b $1D
                dc.b $1B
                dc.b $24 
                dc.b $22 
                dc.b $24 

; START OF FUNCTION CHUNK FOR sub_1AE39E

loc_1AE67A:
                
                cmpi.b  #$14,$4D(a5)
                bcs.s   return_1AE6A2
                bhi.s   loc_1AE690
                bsr.w   sub_1AE550
                bclr    #6,$C(a5)
                rts
loc_1AE690:
                
                move.w  #$600,$2C(a5)
                cmpi.b  #$1E,$4D(a5)
                bcs.s   return_1AE6A2
                beq.w   sub_1AE3C8
return_1AE6A2:
                
                rts
loc_1AE6A4:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$4D(a5)
                cmpi.b  #1,$4D(a5)
                bne.s   loc_1AE6C6
                lea     (unk_9880).l,a2
                move.b  #1,d0
                jmp     (sub_488).l
loc_1AE6C6:
                
                cmpi.b  #2,$4D(a5)
                bne.w   loc_1AE6D8
                move.b  #1,d0
                bra.w   sub_1AC3F4
loc_1AE6D8:
                
                cmpi.b  #$A,$4D(a5)
                bhi.w   loc_1AE6FA
                bcs.w   return_1AE70A
                move.w  #$200,$2C(a5)
                move.w  #$345,d6
                bsr.w   sub_1AE792
                bcs.w   loc_1AE70C
                rts
loc_1AE6FA:
                
                move.w  #$200,$2C(a5)
                cmpi.b  #$14,$4D(a5)
                beq.w   loc_1AE70C
return_1AE70A:
                
                rts
loc_1AE70C:
                
                clr.b   $4D(a5)
                bra.w   sub_1AE3C8
loc_1AE714:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$4D(a5)
                cmpi.b  #1,$4D(a5)
                bne.s   loc_1AE736
                lea     (unk_9880).l,a2
                move.b  #1,d0
                jmp     (sub_488).l
loc_1AE736:
                
                cmpi.b  #2,$4D(a5)
                bne.w   loc_1AE748
                move.b  #1,d0
                bra.w   sub_1AC3F4
loc_1AE748:
                
                cmpi.b  #$10,$4D(a5)
                bhi.w   loc_1AE778
                bcs.w   return_1AE788
                move.w  #$200,$2C(a5)
                move.w  #$345,d6
                bsr.s   sub_1AE792
                bcs.w   loc_1AE78A
                move.w  #$346,d6
                bsr.s   sub_1AE792
                bcs.w   loc_1AE78A
                move.w  #$347,d6
                bsr.s   sub_1AE792
                rts
loc_1AE778:
                
                move.w  #$200,$2C(a5)
                cmpi.b  #$20,$4D(a5) 
                beq.w   loc_1AE78A
return_1AE788:
                
                rts
loc_1AE78A:
                
                clr.b   $4D(a5)
                bra.w   sub_1AE3C8

; END OF FUNCTION CHUNK FOR sub_1AE39E


; =============== S U B R O U T I N E =======================================

sub_1AE792:
                
                move.b  4(a5),d2
                movem.w d6,-(sp)
                movem.w d2,-(sp)
                jsr     sub_103B2
                movem.w (sp)+,d1
                movem.w (sp)+,d6
                bcs.w   loc_1AE876
                move.w  (a5),d0
                andi.b  #$C0,d1
                beq.s   loc_1AE7DA
                cmpi.b  #$80,d1
                bcs.s   loc_1AE7F2
                beq.s   loc_1AE80C
                subi.w  #$100,d0
                cmpi.w  #$345,d6
                beq.s   loc_1AE822
                subi.w  #1,d0
                cmpi.w  #$346,d6
                beq.s   loc_1AE822
                addi.w  #2,d0
                bra.s   loc_1AE822
loc_1AE7DA:
                
                subq.b  #1,d0
                cmpi.w  #$345,d6
                beq.s   loc_1AE822
                addi.w  #$100,d0
                cmpi.w  #$346,d6
                beq.s   loc_1AE822
                subi.w  #$200,d0
                bra.s   loc_1AE822
loc_1AE7F2:
                
                addi.w  #$100,d0
                cmpi.w  #$345,d6
                beq.s   loc_1AE822
                addi.w  #1,d0
                cmpi.w  #$346,d6
                beq.s   loc_1AE822
                subi.w  #2,d0
                bra.s   loc_1AE822
loc_1AE80C:
                
                addq.b  #1,d0
                cmpi.w  #$345,d6
                beq.s   loc_1AE822
                subi.w  #$100,d0
                cmpi.w  #$346,d6
                beq.s   loc_1AE822
                addi.w  #$200,d0
loc_1AE822:
                
                move.w  d0,(a1)
                move.b  d1,4(a1)
                move.b  #$A1,d2
                move.w  #$F00,$3C(a1)
                move.w  $12(a5),d3
                addi.w  #$20,d3 
                move.w  d3,$12(a1)
                move.w  2(a5),2(a1)
                move.w  #$24B4,6(a1)
                move.w  d6,$34(a1)
                move.b  #4,9(a1)
                move.b  #$80,$20(a1)
                jsr     sub_103B8
                bset    #0,$38(a1)
                bset    #7,$C(a1)
                bset    #7,$4C(a1)
                tst.b   d0
                rts
loc_1AE876:
                
                ori     #1,ccr
                rts

    ; End of function sub_1AE792


; =============== S U B R O U T I N E =======================================

sub_1AE87C:
                
                bra.s   loc_1AE8C4
loc_1AE87E:
                
                btst    #1,$C(a5)
                bne.s   loc_1AE896
                move.b  $37(a5),d0
                beq.s   loc_1AE89C
                cmpi.b  #$10,d0
                beq.s   loc_1AE8CE
                bra.w   loc_1AEAE4
loc_1AE896:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AE89C:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$20,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.s   sub_1AE8CA
                rts
loc_1AE8C4:
                
                bsr.s   sub_1AE8CA
                bra.w   loc_1AE9FE

    ; End of function sub_1AE87C


; =============== S U B R O U T I N E =======================================

sub_1AE8CA:
                
                bra.w   sub_1A8AB6

    ; End of function sub_1AE8CA


; START OF FUNCTION CHUNK FOR sub_1AE87C

loc_1AE8CE:
                
                btst    #6,$C(a5)
                beq.s   loc_1AE8E6
                addq.b  #1,$4D(a5)
                cmpi.b  #$1E,$4D(a5)
                bcs.s   loc_1AE912
                subq.b  #1,$4D(a5)
loc_1AE8E6:
                
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.w   sub_1AE91C
                bcs.s   loc_1AE912
                bsr.w   sub_1AE9EE
                bcs.s   loc_1AE912
                bsr.w   sub_1AEA1C
                bcs.s   loc_1AE912
                bsr.w   sub_1AEA64
                bcs.s   loc_1AE912
                bsr.w   sub_1AEAAC
loc_1AE912:
                
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1AE87C


; =============== S U B R O U T I N E =======================================

sub_1AE918:
                
                bra.w   sub_1A8AA6

    ; End of function sub_1AE918


; =============== S U B R O U T I N E =======================================

sub_1AE91C:
                
                btst    #6,$C(a5)
                beq.w   loc_1AE9CA
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$1E,d7
                bhi.w   loc_1AE9CA
                move.w  #$1F,d1
                bsr.s   sub_1AE944
                bcs.w   loc_1AE9D4
                rts

    ; End of function sub_1AE91C


; =============== S U B R O U T I N E =======================================

sub_1AE944:
                
                movem.w d1,-(sp)
                move.w  #7,d6
                jsr     (sub_362).l
                addi.b  #3,d7
                move.w  d7,d5
                move.w  #2,d6
                jsr     (sub_362).l
                tst.b   d7
                beq.s   loc_1AE968
                neg.b   d5
loc_1AE968:
                
                move.w  #2,d6
                jsr     (sub_362).l
                tst.b   d7
                beq.s   loc_1AE988
                add.b   (dword_FF5400).l,d5
                move.b  d5,(a5)
                move.b  (dword_FF5400+1).l,1(a5)
                bra.s   loc_1AE998
loc_1AE988:
                
                add.b   (dword_FF5400+1).l,d5
                move.b  d5,1(a5)
                move.b  (dword_FF5400).l,(a5)
loc_1AE998:
                
                movea.l a5,a1
                jsr     sub_1A8AE6
                move.w  (word_FF5412).l,d0
                move.w  d0,$12(a5)
                movem.w (sp)+,d1
                add.w   d1,d0
                move.w  d0,$54(a5)
                movea.l a5,a1
                jsr     (sub_3BC).l
                bcc.s   loc_1AE9CE
                move.w  #$100,$12(a5)
                move.w  #$120,$54(a5)
loc_1AE9CA:
                
                tst.b   d0
                rts
loc_1AE9CE:
                
                ori     #1,ccr
                rts

    ; End of function sub_1AE944


; START OF FUNCTION CHUNK FOR sub_1AE91C

loc_1AE9D4:
                
                move.b  #$25,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts

; END OF FUNCTION CHUNK FOR sub_1AE91C


; =============== S U B R O U T I N E =======================================

sub_1AE9EE:
                
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #1,d7
                bhi.s   loc_1AEA18
loc_1AE9FE:
                
                move.b  #$20,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1AEA18:
                
                tst.b   d0
                rts

    ; End of function sub_1AE9EE


; =============== S U B R O U T I N E =======================================

sub_1AEA1C:
                
                btst    #6,$C(a5)
                bne.s   loc_1AEA60
                move.w  #$A0,d5 
                move.w  #$FFD8,d6
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AEA60
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$12C,d7
                bhi.s   loc_1AEA60
                move.b  #$21,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1AEA60:
                
                tst.b   d0
                rts

    ; End of function sub_1AEA1C


; =============== S U B R O U T I N E =======================================

sub_1AEA64:
                
                btst    #6,$C(a5)
                bne.s   loc_1AEAA8
                move.w  #$48,d5 
                move.w  #$30,d6 
                move.w  #$10,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AEAA8
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #$19,d7
                bhi.s   loc_1AEAA8
                move.b  #$22,$37(a5) 
                move.w  #$12,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1AEAA8:
                
                tst.b   d0
                rts

    ; End of function sub_1AEA64


; =============== S U B R O U T I N E =======================================

sub_1AEAAC:
                
                btst    #6,$C(a5)
                bne.s   loc_1AEAE0
                move.w  #$20,d5 
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AEAE0
                move.b  #$23,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $D(a5)
                ori     #1,ccr
                rts
loc_1AEAE0:
                
                tst.b   d0
                rts

    ; End of function sub_1AEAAC


; START OF FUNCTION CHUNK FOR sub_1AE87C

loc_1AEAE4:
                
                andi.b  #$F,d0
                beq.s   loc_1AEB0C
                cmpi.b  #1,d0
                beq.w   loc_1AEB8C
                cmpi.b  #2,d0
                beq.w   loc_1AEBFC
                cmpi.b  #3,d0
                beq.w   loc_1AEBFC
                cmpi.b  #4,d0
                beq.w   loc_1AEBFC
                bra.s   loc_1AEB54
loc_1AEB0C:
                
                bset    #0,$38(a5)
                move.w  #$500,$2C(a5)
                addq.b  #1,$4D(a5)
                cmpi.b  #4,$4D(a5)
                bcs.s   return_1AEB52
                move.w  #$600,$2C(a5)
                cmpi.b  #8,$4D(a5)
                bcs.s   return_1AEB52
                bset    #6,$C(a5)
                move.w  #$100,$12(a5)
                move.w  #$120,$54(a5)
                bset    #7,$20(a5)
                clr.b   $4D(a5)
                bra.w   sub_1AE8CA
return_1AEB52:
                
                rts
loc_1AEB54:
                
                bclr    #6,$C(a5)
                move.w  #$600,$2C(a5)
                addq.b  #1,$4D(a5)
                cmpi.b  #4,$4D(a5)
                bcs.s   return_1AEB8A
                move.w  #$500,$2C(a5)
                cmpi.b  #8,$4D(a5)
                bcs.s   return_1AEB8A
                bclr    #0,$38(a5)
                bclr    #7,$20(a5)
                bra.w   sub_1AE8CA
return_1AEB8A:
                
                rts
loc_1AEB8C:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$4D(a5)
                cmpi.b  #8,$4D(a5)
                bcs.s   return_1AEBF2
                move.w  #$200,$2C(a5)
                cmpi.b  #$10,$4D(a5)
                bcs.s   return_1AEBF2
                move.w  #$300,$2C(a5)
                cmpi.b  #$18,$4D(a5)
                bhi.w   loc_1AEBE2
                bcs.w   return_1AEBF2
                sndCom  SFX_BUBOBI
                move.b  #2,d0
                move.w  #$1E00,d1
                bsr.w   sub_1AC474
                bcs.w   loc_1AEBF4
                move.w  #$24C0,6(a1)
                move.b  #8,9(a1)
                rts
loc_1AEBE2:
                
                move.w  #$400,$2C(a5)
                cmpi.b  #$20,$4D(a5) 
                beq.w   loc_1AEBF4
return_1AEBF2:
                
                rts
loc_1AEBF4:
                
                clr.b   $4D(a5)
                bra.w   sub_1AE8CA
loc_1AEBFC:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$D(a5)
                cmpi.b  #8,$D(a5)
                bcs.s   loc_1AEC52
                move.w  #$200,$2C(a5)
                cmpi.b  #$10,$D(a5)
                bcs.s   loc_1AEC52
                bhi.s   loc_1AEC22

; END OF FUNCTION CHUNK FOR sub_1AE87C

                sndCom  SFX_SWORD_SLASH

; START OF FUNCTION CHUNK FOR sub_1AE87C

loc_1AEC22:
                
                move.w  #$21,d1 
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$300,$2C(a5)
                cmpi.b  #$18,$D(a5)
                bcs.s   loc_1AEC52
                move.w  #$400,$2C(a5)
                cmpi.b  #$20,$D(a5) 
                bcs.s   loc_1AEC52
                beq.w   sub_1AE8CA
loc_1AEC52:
                
                bsr.w   sub_1A8ADA
                rts

; END OF FUNCTION CHUNK FOR sub_1AE87C


; =============== S U B R O U T I N E =======================================

sub_1AEC58:
                
                bra.s   loc_1AECA0
loc_1AEC5A:
                
                btst    #1,$C(a5)
                bne.s   loc_1AEC72
                move.b  $37(a5),d0
                beq.s   loc_1AEC78
                cmpi.b  #$10,d0
                beq.s   loc_1AECB0
                bra.w   loc_1AED88
loc_1AEC72:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AEC78:
                
                bsr.w   sub_1A8ADA
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                move.w  #$60,d5 
                move.w  #$20,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.s   sub_1AECAC
                rts
loc_1AECA0:
                
                bsr.s   sub_1AECAC
                eori.b  #$80,4(a5)
                bra.w   loc_1AED50

    ; End of function sub_1AEC58


; =============== S U B R O U T I N E =======================================

sub_1AECAC:
                
                bra.w   sub_1A8AB6

    ; End of function sub_1AECAC


; START OF FUNCTION CHUNK FOR sub_1AEC58

loc_1AECB0:
                
                tst.b   (byte_FF1142).l
                bne.s   loc_1AECD8
                move.w  $14(a5),(word_FF1800).l
                move.w  $16(a5),(dword_FF1804).l
                bsr.w   sub_1AECDC
                bcs.s   loc_1AECD2
                bsr.w   sub_1AED2E
loc_1AECD2:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AECD8:
                
                bra.w   sub_1A8AA6

; END OF FUNCTION CHUNK FOR sub_1AEC58


; =============== S U B R O U T I N E =======================================

sub_1AECDC:
                
                move.w  #$80,d5 
                move.w  #$80,d6 
                move.w  #$80,d7 
                bsr.w   sub_1A8964
                bcc.s   loc_1AED2A
                move.w  #$30,d5 
                move.w  #$30,d6 
                move.w  #$30,d7 
                bsr.w   sub_1A8964
                bcs.s   loc_1AED2A
                move.w  #$3E8,d6
                jsr     (sub_362).l
                cmpi.w  #6,d7
                bhi.s   loc_1AED2A
                move.b  #$24,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1AED2A:
                
                tst.b   d0
                rts

    ; End of function sub_1AECDC


; =============== S U B R O U T I N E =======================================

sub_1AED2E:
                
                move.w  #$20,d5 
                move.w  #0,d6
                move.w  #8,d7
                bsr.w   sub_1A8964
                bcc.s   loc_1AED84
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$32,d7 
                bcc.s   loc_1AED6A
loc_1AED50:
                
                move.b  #$23,$37(a5) 
                move.w  #$E,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1AED6A:
                
                move.b  #$24,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1AED84:
                
                tst.b   d0
                rts

    ; End of function sub_1AED2E


; START OF FUNCTION CHUNK FOR sub_1AEC58

loc_1AED88:
                
                andi.b  #$F,d0
                beq.s   loc_1AEDA2
                cmpi.b  #1,d0
                beq.s   loc_1AEDAE
                cmpi.b  #2,d0
                beq.s   loc_1AEDAE
                cmpi.b  #3,d0
                beq.s   loc_1AEDB4
                bra.s   loc_1AEDF0
loc_1AEDA2:
                
                move.b  $2D(a5),d0
                andi.b  #$30,d0 
                beq.w   sub_1AECAC
loc_1AEDAE:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AEDB4:
                
                bclr    #0,$38(a5)
                move.b  $2D(a5),d0
                andi.b  #$30,d0 
                beq.w   loc_1AEDD2
                bset    #0,$38(a5)
                bsr.w   sub_1A8ADA
                rts
loc_1AEDD2:
                
                addq.b  #1,$4D(a5)
                cmpi.b  #1,$4D(a5)
                bne.s   loc_1AEDEA
                sndCom  SFX_BOULDER_HIT
                move.w  #$400,$2C(a5)
                rts
loc_1AEDEA:
                
                bsr.s   sub_1AEE66
                bra.w   sub_1AECAC
loc_1AEDF0:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$4D(a5)
                cmpi.b  #$F,$4D(a5)
                bcs.w   return_1AEED6
                move.w  #$200,$2C(a5)
                addq.b  #1,$4D(a5)
                cmpi.b  #$1E,$4D(a5)
                bcs.w   return_1AEED6
                bne.s   loc_1AEE1E

; END OF FUNCTION CHUNK FOR sub_1AEC58

                sndCom  SFX_BOULDER_HIT

; START OF FUNCTION CHUNK FOR sub_1AEC58

loc_1AEE1E:
                
                move.w  #$19,d1
                move.w  #9,d2
                move.w  #9,d3
                bsr.w   sub_1A880C
                move.w  #$300,$2C(a5)
                cmpi.b  #$20,$4D(a5) 
                bne.w   loc_1AEEC4
                bsr.w   sub_1AEE66
                move.b  (word_FF5412+1).l,d0
                cmp.b   (byte_FF5439).l,d0
                bne.s   loc_1AEE62
                tst.b   (byte_FF1142).l
                bne.s   loc_1AEE62
                move.b  #8,d0
                jsr     sub_10318
loc_1AEE62:
                
                tst.b   d0
                rts

; END OF FUNCTION CHUNK FOR sub_1AEC58


; =============== S U B R O U T I N E =======================================

sub_1AEE66:
                
                moveq   #7,d7
                move.w  #9,d0
loc_1AEE6C:
                
                movem.w d7,-(sp)
                move.w  #7,d6
loc_1AEE74:
                
                movem.w d0/d6,-(sp)
                movem.w d0,-(sp)
                add.w   d0,(dword_FF0500).l
                add.w   d0,(dword_FF0500+2).l
                jsr     (sub_2DE).l
                jsr     (sub_2A8).l
                movem.w (sp)+,d0
                sub.w   d0,(dword_FF0500).l
                sub.w   d0,(dword_FF0500+2).l
                jsr     (sub_2DE).l
                jsr     (sub_2A8).l
                movem.w (sp)+,d0/d6
                dbf     d6,loc_1AEE74
                subq.w  #1,d0
                movem.w (sp)+,d7
                dbf     d7,loc_1AEE6C
                rts

    ; End of function sub_1AEE66


; START OF FUNCTION CHUNK FOR sub_1AEC58

loc_1AEEC4:
                
                cmpi.b  #$2D,$4D(a5) 
                bcs.s   return_1AEED6
                bra.w   sub_1AECAC
                ori     #1,ccr
                rts
return_1AEED6:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1AEC58


; =============== S U B R O U T I N E =======================================

sub_1AEED8:
                
                bra.s   loc_1AEEFE
loc_1AEEDA:
                
                move.b  #2,9(a5)
                btst    #1,$C(a5)
                bne.s   loc_1AEEF8
                move.b  $37(a5),d0
                beq.s   loc_1AEF4C
                cmpi.b  #$10,d0
                beq.s   loc_1AEF4C
                bra.w   loc_1AF1FC
loc_1AEEF8:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AEEFE:
                
                bsr.s   sub_1AEF04
                bra.w   loc_1AF1BA

    ; End of function sub_1AEED8


; =============== S U B R O U T I N E =======================================

sub_1AEF04:
                
                bclr    #6,$38(a5)
                bclr    #0,$38(a5)
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                move.b  #$10,$37(a5)
                bclr    #1,$C(a5)
                move.l  #$C0000000,(VDP_Control).l
                move.w  #0,(VDP_Data).l
                move.l  #$C01E0000,(VDP_Control).l
                move.w  #0,(VDP_Data).l
                rts

    ; End of function sub_1AEF04


; START OF FUNCTION CHUNK FOR sub_1AEED8

loc_1AEF4C:
                
                bsr.w   sub_1AEF72
                bcs.s   loc_1AEF6C
                bsr.w   sub_1AF01A
                bcs.s   loc_1AEF6C
                bsr.s   sub_1AEFAC
                bcs.s   loc_1AEF6C
                bsr.w   sub_1AF052
                bcs.s   loc_1AEF6C
                bsr.w   sub_1AF084
                bcs.s   return_1AEF70
                bsr.w   sub_1AF18A
loc_1AEF6C:
                
                bsr.w   sub_1A8ADA
return_1AEF70:
                
                rts

; END OF FUNCTION CHUNK FOR sub_1AEED8


; =============== S U B R O U T I N E =======================================

sub_1AEF72:
                
                cmpi.w  #$64,$12(a5) 
                bcc.w   loc_1AF0BA
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$32,d7 
                bcc.w   loc_1AF0BA
                move.b  #$27,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                sndCom  SFX_ENEMY_SLASH
                ori     #1,ccr
                rts

    ; End of function sub_1AEF72


; =============== S U B R O U T I N E =======================================

sub_1AEFAC:
                
                cmpi.w  #$F0,$12(a5) 
                bcs.s   loc_1AF016
                move.w  #2,d6
                jsr     (sub_362).l
                tst.b   d7
                beq.s   loc_1AEFE2
                move.b  (dword_FF5400).l,(a5)
                move.b  #$16,1(a5)
                andi.b  #$3F,4(a5) 
                ori.b   #$80,4(a5)
                bclr    #3,6(a5)
                bra.s   loc_1AF000
loc_1AEFE2:
                
                move.b  #$19,(a5)
                move.b  (dword_FF5400+1).l,1(a5)
                andi.b  #$3F,4(a5) 
                ori.b   #$40,4(a5) 
                bset    #3,6(a5)
loc_1AF000:
                
                bset    #7,$48(a5)
                clr.w   2(a5)
                movea.l a5,a1
                jsr     sub_1A8AE6
                bra.w   loc_1AF0BE
loc_1AF016:
                
                tst.b   d0
                rts

    ; End of function sub_1AEFAC


; =============== S U B R O U T I N E =======================================

sub_1AF01A:
                
                cmpi.w  #$94,$12(a5) 
                bcs.s   loc_1AF04E
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$1E,d7
                bhi.w   loc_1AF04E
                move.b  #$21,$37(a5) 
                move.w  #0,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1AF04E:
                
                tst.b   d0
                rts

    ; End of function sub_1AF01A


; =============== S U B R O U T I N E =======================================

sub_1AF052:
                
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$A,d7
                bhi.s   loc_1AF080
                move.w  #$383,$34(a5)
loc_1AF068:
                
                move.b  #$22,$37(a5) 
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                sndCom  SFX_SHLARF
                ori     #1,ccr
                rts
loc_1AF080:
                
                tst.b   d0
                rts

    ; End of function sub_1AF052


; =============== S U B R O U T I N E =======================================

sub_1AF084:
                
                cmpi.w  #$64,$12(a5) 
                bcc.s   loc_1AF0BA
                move.w  #$64,d6 
                jsr     (sub_362).l
                cmpi.w  #$55,d7 
                bcc.s   loc_1AF0BA
                move.b  #$23,$37(a5) 
                move.w  #$363,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                sndCom  SFX_ENEMY_SLASH
                ori     #1,ccr
                rts
loc_1AF0BA:
                
                tst.b   d0
                rts

    ; End of function sub_1AF084


; START OF FUNCTION CHUNK FOR sub_1AEFAC

loc_1AF0BE:
                
                move.b  #$24,$37(a5) 
                move.w  #$361,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts

; END OF FUNCTION CHUNK FOR sub_1AEFAC


; START OF FUNCTION CHUNK FOR sub_1AEED8

loc_1AF0D8:
                
                tst.w   (word_FF12DE).l
                beq.w   sub_1AEF04
                move.l  (a5),d0
                movem.l d0,-(sp)
                move.w  (dword_FF5414).l,d0
                move.w  (dword_FF5414+2).l,d1
                move.w  #2,d6
                jsr     (sub_362).l
                tst.b   d7
                beq.s   loc_1AF10C
                subi.w  #$38,d0 
                move.b  #$40,d2 
                bra.s   loc_1AF114
loc_1AF10C:
                
                subi.w  #$38,d1 
                move.b  #$80,d2
loc_1AF114:
                
                move.w  d0,d3
                andi.b  #$F0,d0
                lsr.w   #4,d0
                move.b  d0,(a5)
                andi.b  #$F,d3
                move.b  d3,2(a5)
                move.w  d1,d3
                andi.b  #$F0,d1
                lsr.w   #4,d1
                move.b  d1,1(a5)
                andi.b  #$F,d3
                move.b  d3,3(a5)
                andi.b  #$3F,4(a5) 
                or.b    d2,4(a5)
                bset    #7,$48(a5)
                bset    #7,$A(a5)
                movea.l a5,a1
                jsr     sub_1A8AE6
                movem.l (sp)+,d0
                bcs.s   loc_1AF184
                move.b  #$26,$37(a5) 
                move.w  #$361,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                subi.w  #$20,$12(a5) 
                subi.w  #$20,$54(a5) 
                ori     #1,ccr
                rts
loc_1AF184:
                
                move.l  d0,(a5)
                tst.b   d0
                rts

; END OF FUNCTION CHUNK FOR sub_1AEED8


; =============== S U B R O U T I N E =======================================

sub_1AF18A:
                
                cmpi.w  #$64,$12(a5) 
                bcc.s   loc_1AF1E6
                move.w  #$19,d6
                jsr     (sub_362).l
                move.b  (dword_FF5400).l,d6
                subi.b  #$18,d6
                add.b   (dword_FF5400+1).l,d6
                subi.b  #$15,d6
                move.b  #$18,d5
                sub.b   d6,d5
                cmp.b   d5,d7
                bcc.s   loc_1AF1E6
loc_1AF1BA:
                
                move.l  #$C0000000,(VDP_Control).l
                move.w  #0,(VDP_Data).l
                move.b  #$25,$37(a5) 
                move.w  #$362,$34(a5)
                bsr.w   sub_1A8AE0
                clr.b   $4D(a5)
                ori     #1,ccr
                rts
loc_1AF1E6:
                
                tst.b   d0
                rts

    ; End of function sub_1AF18A


; =============== S U B R O U T I N E =======================================

sub_1AF1EA:
                
                bsr.w   sub_1AC010
                move.b  d2,d1
                andi.b  #$3F,4(a5) 
                or.b    d2,4(a5)
                rts

    ; End of function sub_1AF1EA


; START OF FUNCTION CHUNK FOR sub_1AEED8

loc_1AF1FC:
                
                andi.b  #$F,d0
                beq.s   return_1AF234
                cmpi.b  #1,d0
                beq.s   loc_1AF236
                cmpi.b  #2,d0
                beq.w   loc_1AF29E
                cmpi.b  #3,d0
                beq.w   loc_1AF372
                cmpi.b  #4,d0
                beq.w   loc_1AF34E
                cmpi.b  #5,d0
                beq.w   loc_1AF34E
                cmpi.b  #6,d0
                beq.w   loc_1AF35C
                bra.w   loc_1AF4FE
return_1AF234:
                
                rts
loc_1AF236:
                
                addq.b  #1,$4D(a5)
                cmpi.b  #1,$4D(a5)
                beq.w   loc_1AF27A
                cmpi.b  #$10,$4D(a5)
                bne.w   loc_1AF292
                move.b  (word_FF5412+1).l,d0
                cmp.b   (byte_FF5439).l,d0
                bne.s   loc_1AF26E
                tst.b   (byte_FF1142).l
                bne.s   loc_1AF26E
                move.b  #8,d0
                jsr     sub_10318
loc_1AF26E:
                
                move.b  #$10,d0
                bsr.s   byte_1AF27E
                bsr.w   sub_1AEE66
                rts
loc_1AF27A:
                
                move.b  #8,d0
byte_1AF27E:
                
                sndCom  SFX_TRAP_HIT
                movem.l a5,-(sp)
                jsr     (sub_40A).l
                movem.l (sp)+,a5
                rts
loc_1AF292:
                
                cmpi.b  #$11,$4D(a5)
                beq.w   loc_1AF0D8
                rts
loc_1AF29E:
                
                move.w  #$200,$2C(a5)
                addq.b  #1,$4D(a5)
                cmpi.b  #1,$4D(a5)
                bne.s   loc_1AF2F4
                lea     (unk_9880).l,a2
                move.b  #1,d0
                jsr     (sub_488).l
                move.b  #1,d0
                bsr.w   sub_1AC3F4
                bsr.w   sub_1AF586
                move.l  #$C0000000,(VDP_Control).l
                move.w  #$E,(VDP_Data).l
                move.l  #$C01E0000,(VDP_Control).l
                move.w  #$E,(VDP_Data).l
                bra.w   loc_1AF348
loc_1AF2F4:
                
                cmpi.b  #2,$4D(a5)
                bne.w   loc_1AF332
                move.b  #1,d0
                bsr.w   sub_1AC3F4
                bsr.w   sub_1AF586
                move.l  #$C0000000,(VDP_Control).l
                move.w  #0,(VDP_Data).l
                move.l  #$C01E0000,(VDP_Control).l
                move.w  #0,(VDP_Data).l
                bra.w   loc_1AF348
loc_1AF332:
                
                cmpi.b  #3,$4D(a5)
                bne.w   loc_1AF348
                move.w  #$368,d6
                bsr.w   sub_1AF448
                clr.b   $4D(a5)
loc_1AF348:
                
                bsr.w   sub_1A8ADA
                rts
loc_1AF34E:
                
                bsr.w   sub_1A8ADA
                tst.b   $2B(a5)
                beq.w   sub_1AEF04
                rts
loc_1AF35C:
                
                bsr.w   sub_1A8ADA
                tst.b   $2B(a5)
                beq.s   loc_1AF368
                rts
loc_1AF368:
                
                move.w  #$384,$34(a5)
                bra.w   loc_1AF068
loc_1AF372:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$4D(a5)
                cmpi.b  #1,$4D(a5)
                bne.s   loc_1AF398
                lea     (unk_9880).l,a2
                move.b  #1,d0
                jsr     (sub_488).l
                bra.w   loc_1AF3E4
loc_1AF398:
                
                cmpi.b  #2,$4D(a5)
                bne.w   loc_1AF3B2
                move.b  #1,d0
                bsr.w   sub_1AC3F4
                bsr.w   sub_1AF586
                bra.w   loc_1AF3E4
loc_1AF3B2:
                
                cmpi.b  #$A,$4D(a5)
                bhi.w   loc_1AF3D4
                bcs.w   loc_1AF3E4
                move.w  #$200,$2C(a5)
                move.w  #$345,d6
                bsr.w   sub_1AF448
                bcs.w   loc_1AF43A
                bra.s   loc_1AF3E4
loc_1AF3D4:
                
                move.w  #$200,$2C(a5)
                cmpi.b  #$14,$4D(a5)
                beq.w   loc_1AF43A
loc_1AF3E4:
                
                move.b  4(a5),d0
                movem.w d0,-(sp)
                andi.b  #$C0,d0
                cmpi.b  #$80,d0
                beq.s   loc_1AF40E
                move.b  #0,d1
                move.b  1(a5),d0
                cmp.b   (dword_FF5400+1).l,d0
                beq.s   loc_1AF430
                bhi.s   loc_1AF422
                move.b  #$80,d1
                bra.s   loc_1AF422
loc_1AF40E:
                
                move.b  #$C0,d1
                move.b  (a5),d0
                cmp.b   (dword_FF5400).l,d0
                beq.s   loc_1AF430
                bhi.s   loc_1AF422
                move.b  #$40,d1 
loc_1AF422:
                
                andi.b  #$3F,4(a5) 
                or.b    d1,4(a5)
                bsr.w   sub_1A8ADA
loc_1AF430:
                
                movem.w (sp)+,d0
                move.b  d0,4(a5)
                rts
loc_1AF43A:
                
                bclr    #0,$C(a5)
                clr.b   $4D(a5)
                bra.w   sub_1AEF04

; END OF FUNCTION CHUNK FOR sub_1AEED8


; =============== S U B R O U T I N E =======================================

sub_1AF448:
                
                move.b  4(a5),d2
                movem.w d6,-(sp)
                movem.w d2,-(sp)
                jsr     sub_103B2
                movem.w (sp)+,d1
                movem.w (sp)+,d6
                bcs.w   loc_1AF4F8
                move.w  $14(a5),d2
                move.w  $16(a5),d3
                andi.b  #$C0,d1
                beq.s   loc_1AF482
                cmpi.b  #$80,d1
                bcs.s   loc_1AF488
                beq.s   loc_1AF48E
                subi.w  #$1A,d2
                bra.s   loc_1AF492
loc_1AF482:
                
                subi.w  #$1A,d3
                bra.s   loc_1AF492
loc_1AF488:
                
                addi.w  #$1A,d2
                bra.s   loc_1AF492
loc_1AF48E:
                
                addi.w  #$1A,d3
loc_1AF492:
                
                move.w  d2,d0
                andi.b  #$F,d0
                move.b  d0,2(a1)
                lsr.w   #4,d2
                move.b  d2,(a1)
                move.w  d3,d0
                andi.b  #$F,d0
                move.b  d0,3(a1)
                lsr.w   #4,d3
                move.b  d3,1(a1)
                move.b  d1,4(a1)
                move.b  #$AC,d2
                move.w  #$1400,$3C(a1)
                move.w  $12(a5),d3
                move.w  d3,$12(a1)
                move.w  #$64B4,6(a1)
                move.w  d6,$34(a1)
                move.b  #4,9(a1)
                move.b  #$80,$20(a1)
                jsr     sub_103B8
                bset    #0,$38(a1)
                bset    #7,$C(a1)
                bset    #7,$4C(a1)
                tst.b   d0
                rts
loc_1AF4F8:
                
                ori     #1,ccr
                rts

    ; End of function sub_1AF448


; START OF FUNCTION CHUNK FOR sub_1AEED8

loc_1AF4FE:
                
                move.w  #$100,$2C(a5)
                addq.b  #1,$4D(a5)
                cmpi.b  #1,$4D(a5)
                bne.s   loc_1AF520
                lea     (unk_9880).l,a2
                move.b  #1,d0
                jmp     (sub_488).l
loc_1AF520:
                
                cmpi.b  #2,$4D(a5)
                bne.w   loc_1AF536
                move.b  #1,d0
                bsr.w   sub_1AC3F4
                bra.w   sub_1AF586
loc_1AF536:
                
                cmpi.b  #$10,$4D(a5)
                bhi.w   loc_1AF56C
                bcs.w   return_1AF57C
                move.w  #$200,$2C(a5)
                move.w  #$345,d6
                bsr.w   sub_1AF448
                bcs.w   loc_1AF57E
                move.w  #$346,d6
                bsr.w   sub_1AF448
                bcs.w   loc_1AF57E
                move.w  #$347,d6
                bsr.w   sub_1AF448
                rts
loc_1AF56C:
                
                move.w  #$200,$2C(a5)
                cmpi.b  #$20,$4D(a5) 
                beq.w   loc_1AF57E
return_1AF57C:
                
                rts
loc_1AF57E:
                
                clr.b   $4D(a5)
                bra.w   sub_1AEF04

; END OF FUNCTION CHUNK FOR sub_1AEED8


; =============== S U B R O U T I N E =======================================

sub_1AF586:
                
                move.l  #$C0640000,(VDP_Control).l
                move.w     word_1AF5F2(pc), d1
                nop
                move.w  d1,(VDP_Data).l
                move.w  d1,(word_FF00E4).l
                move.w  d1,(word_FF0F34).l
                move.w     word_1AF5F4(pc), d1
                nop
                move.w  d1,(VDP_Data).l
                move.w  d1,(word_FF00E6).l
                move.w  d1,(word_FF0F36).l
                move.w     word_1AF5F6(pc), d1
                nop
                move.w  d1,(VDP_Data).l
                move.w  d1,(word_FF00E8).l
                move.w  d1,(word_FF0F38).l
                move.w     word_1AF5F8(pc), d1
                nop
                move.w  d1,(VDP_Data).l
                move.w  d1,(word_FF00EA).l
                move.w  d1,(word_FF0F3A).l
                rts

    ; End of function sub_1AF586

word_1AF5F2:    dc.w $CE
word_1AF5F4:    dc.w $8C
word_1AF5F6:    dc.w $4C
word_1AF5F8:    dc.w $C
                align $1AF800
