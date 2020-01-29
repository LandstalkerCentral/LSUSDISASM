


	cpu z80
	listing off
	phase	0

STACK_START equ 1FF0h	
NEW_SAMPLE_TO_LOAD equ 1FF8h	
YM_TIMER_VALUE equ 1FF9h	
FADE_IN_PARAMETERS equ 1FFCh	
MUSIC_LEVEL equ 1FFDh
UNUSED_SFX_BYTE_1 equ 1FFEh
NEW_OPERATION equ 1FFFh	
YM1_REGISTER equ 4000h
YM1_DATA equ 4001h
YM2_REGISTER equ 4002h
YM2_DATA equ 4003h
BANK_REGISTER equ 6000h
PSG_PORT equ 7F11h

; =============== S U B	R O U T	I N E =======================================


Init:
		di
		ld	sp, STACK_START
		xor	a
		ld	(UNUSED_SFX_BYTE_1), a
		dec	a
		ld	(UNUSED_SFX_BYTE_2), a
		ld	a, 0Fh
		ld	(MUSIC_LEVEL), a
		ld	a, 0FFh
		ld	(YM_TIMER_VALUE), a
		ld	a, 0Fh
		ld	(FADE_IN_PARAMETERS), a
		ld	a, 20h ; ' '
		call	Main
		call	LoadBank
; End of function Init


; =============== S U B	R O U T	I N E =======================================


MainLoop:				; CODE XREF: MainLoop+21j MainLoop+37j ...
		ld	a, (YM1_REGISTER)
		and	2
		jr	z, DacLoop
		call	UpdateSound
		jp	loc_34
; ---------------------------------------------------------------------------

DacLoop:				; CODE XREF: MainLoop+5j
					; DATA XREF: LoadDacSound+19w
		ld	b, 5

loc_32:					; CODE XREF: MainLoop:loc_32j
		djnz	$

loc_34:					; CODE XREF: MainLoop+Aj
		ld	a, (NEW_OPERATION)
		or	a
		call	nz, Main
		ld	a, (NEW_SAMPLE_TO_LOAD)
		or	a
		call	nz, LoadDacSound
		ld	a, d
		or	e
		jr	z, MainLoop
		ld	b, 2Ah ; '*'
		ld	c, (hl)
		inc	hl

loc_4A:					; CODE XREF: MainLoop+2Cj
		ld	a, (YM1_REGISTER)
		and	80h ; 'Ä'
		jr	nz, loc_4A
		ld	a, b
		ld	(YM1_REGISTER),	a
		ld	a, c
		ld	(YM1_DATA), a
		dec	de
		jp	MainLoop
; End of function MainLoop


; =============== S U B	R O U T	I N E =======================================


MuteSound:				; CODE XREF: Main+8j
		push	hl
		push	de
		xor	a
		ld	(CURRENTLY_MANAGING_SFX_TYPE_2), a
		ld	(CALL_YM2_INSTEAD_OF_YM1), a
		ld	bc, 407Fh
		ld	d, 4

loc_6B:					; CODE XREF: MuteSound+1Cj
		call	YMInput
		inc	b
		call	YMInput
		inc	b
		call	YMInput
		inc	b
		inc	b
		dec	d
		jr	nz, loc_6B
		ld	a, 1
		ld	(CALL_YM2_INSTEAD_OF_YM1), a
		ld	bc, 407Fh
		ld	d, 4

loc_85:					; CODE XREF: MuteSound+36j
		call	YM2Input
		inc	b
		call	YM2Input
		inc	b
		call	YM2Input
		inc	b
		inc	b
		dec	d
		jr	nz, loc_85
		ld	hl, PSG_PORT
		ld	a, 9Fh ; 'ü'
		ld	(hl), a
		ld	a, 0BFh	; 'ø'
		ld	(hl), a
		ld	a, 0DFh	; 'ﬂ'
		ld	(hl), a
		ld	a, 0FFh
		ld	(hl), a

loc_A4:					; CODE XREF: MuteSound+4Bj
		ld	a, (NEW_OPERATION)
		or	a
		jr	z, loc_A4
		cp	0FFh
		jr	nz, UpdateYMInstruments
		xor	a
		ld	(NEW_OPERATION), a
; End of function MuteSound


; =============== S U B	R O U T	I N E =======================================


UpdateYMInstruments:			; CODE XREF: MuteSound+4Fj
					; UpdateYMLevel+9j
		call	YM_UpdateInstrumentLevels
		pop	de
		pop	hl
		pop	af
		jp	MainLoop
; End of function UpdateYMInstruments


; =============== S U B	R O U T	I N E =======================================


YM_UpdateInstrumentLevels:		; CODE XREF: UpdateYMInstrumentsp
					; UpdateSound+1Ep
		ld	iy, CURRENT_CHANNEL
		xor	a
		ld	(CALL_YM2_INSTEAD_OF_YM1), a
		ld	(iy+0),	a
		ld	ix, YM_CHANNEL_DATA_1
		ld	a, (ix+4)
		call	YM1_LoadInstrument
		inc	(iy+0)
		ld	ix, YM_CHANNEL_DATA_2
		ld	a, (ix+4)
		call	YM1_LoadInstrument
		inc	(iy+0)
		ld	ix, YM_CHANNEL_DATA_3
		ld	a, (ix+4)
		call	YM1_LoadInstrument
		xor	a
		ld	(iy+0),	a
		ld	a, 1
		ld	(CALL_YM2_INSTEAD_OF_YM1), a
		ld	ix, YM_CHANNEL_DATA_4
		ld	a, (ix+4)
		call	YM2_LoadInstrument
		inc	(iy+0)
		ld	ix, YM_CHANNEL_DATA_5
		ld	a, (ix+4)
		call	YM2_LoadInstrument
		xor	a
		ld	(iy+0),	a
		ld	a, 1
		ld	(CURRENTLY_MANAGING_SFX_TYPE_2), a
		ld	ix, SFX_TYPE_2_CHANNEL_DATA_1
		ld	a, (ix+3)
		or	a
		jr	nz, loc_123
		ld	a, (ix+4)
		call	YM2_LoadInstrument

loc_123:				; CODE XREF: YM_UpdateInstrumentLevels+60j
		inc	(iy+0)
		ld	ix, SFX_TYPE_2_CHANNEL_DATA_2
		ld	a, (ix+3)
		or	a
		jr	nz, return_136
		ld	a, (ix+4)
		call	YM2_LoadInstrument

return_136:				; CODE XREF: YM_UpdateInstrumentLevels+73j
		ret
; End of function YM_UpdateInstrumentLevels


; =============== S U B	R O U T	I N E =======================================


UpdateYMLevel:				; CODE XREF: Main+17j
		push	hl
		push	de
		ld	hl, 1FFDh
		ld	a, (hl)
		and	0Fh
		ld	(hl), a
		jp	UpdateYMInstruments
; End of function UpdateYMLevel


; =============== S U B	R O U T	I N E =======================================


LoadBank:				; CODE XREF: Init+20p LoadDacSound+2Ep ...
		ld	bc, 100h
		push	hl
		push	de
		ld	hl, BANK_TO_LOAD
		ld	a, (hl)
		and	1
		ld	d, (hl)
		srl	d
		ld	hl, BANK_REGISTER
		ld	(hl), a
		ld	(hl), d
		ld	(hl), b
		ld	(hl), b
		ld	(hl), b
		ld	(hl), b
		ld	(hl), c
		ld	(hl), c
		ld	(hl), c
		pop	de
		pop	hl
		ret
; End of function LoadBank


; =============== S U B	R O U T	I N E =======================================


LoadMusicBank:				; CODE XREF: Main+2Bp Main+39p ...
		push	bc
		push	hl
		ld	bc, 100h
		ld	hl, BANK_REGISTER
		ld	a, (MUSIC_BANK_TO_LOAD)
		ld	(hl), a
		ld	(hl), b
		ld	(hl), b
		ld	(hl), b
		ld	(hl), b
		ld	(hl), b
		ld	(hl), c
		ld	(hl), c
		ld	(hl), c
		pop	hl
		pop	bc
		ret
; End of function LoadMusicBank


; =============== S U B	R O U T	I N E =======================================


LoadInstrumentBank:			; CODE XREF: YM1_LoadInstrumentp
					; YM2_LoadInstrumentp
		push	bc
		push	hl
		ld	bc, 100h
		ld	hl, BANK_REGISTER
		ld	(hl), b
		ld	(hl), b
		ld	(hl), b
		ld	(hl), b
		ld	(hl), b
		ld	(hl), b
		ld	(hl), c
		ld	(hl), c
		ld	(hl), c
		pop	hl
		pop	bc
		ret
; End of function LoadInstrumentBank


; =============== S U B	R O U T	I N E =======================================


LoadDacSound:				; CODE XREF: MainLoop+1Cp
		cp	0FEh ; '˛'
		jr	nz, loc_196
		ld	hl, 0C000h
		ld	de, 0
		ret
; ---------------------------------------------------------------------------

loc_196:				; CODE XREF: LoadDacSound+2j
		dec	a
		ld	h, 0
		ld	l, a
		add	hl, hl
		add	hl, hl
		add	hl, hl
		ld	bc, t_SAMPLE_LOAD_DATA
		add	hl, bc
		ld	a, (hl)
		inc	hl
		inc	hl
		ld	(DacLoop+1), a
		ld	a, (hl)
		ld	(BANK_TO_LOAD),	a
		inc	hl
		inc	hl
		ld	e, (hl)
		inc	hl
		ld	d, (hl)
		inc	hl
		ld	a, (hl)
		inc	hl
		ld	h, (hl)
		ld	l, a
		xor	a
		ld	(NEW_SAMPLE_TO_LOAD), a
		call	LoadBank
		ret
; End of function LoadDacSound


; =============== S U B	R O U T	I N E =======================================


Main:					; CODE XREF: Init+1Dp MainLoop+15p
		push	af
		xor	a
		ld	(NEW_OPERATION), a
		pop	af
		cp	0FFh
		jp	z, MuteSound
		cp	0FEh ; '˛'
		jp	z, StopMusic
		cp	0FDh ; '˝'
		jp	z, FadeOut
		cp	0F0h ; ''
		jp	z, UpdateYMLevel
		cp	41h ; 'A'
		jp	nc, LoadSFX
		push	hl
		push	de
		push	af
		cp	21h ; '!'
		jr	nc, loc_1F2
		ld	a, 1
		ld	(MUSIC_BANK_TO_LOAD), a
		call	LoadMusicBank
		pop	af
		ld	de, 8910h	; Music	Bank 1 starting	offset,	right after YM instruments
		jp	LoadMusic
; ---------------------------------------------------------------------------

loc_1F2:				; CODE XREF: Main+24j
		xor	a
		ld	(MUSIC_BANK_TO_LOAD), a
		call	LoadMusicBank
		pop	af
		ld	de, 8000h	; Music	Bank 0 starting	offset
		sub	20h ; ' '

LoadMusic:				; CODE XREF: Main+32j
		dec	a
		add	a, a
		ld	h, 0
		ld	l, a
		add	hl, de
		ld	a, (hl)
		inc	hl
		ld	h, (hl)
		ld	l, a
		ld	a, (hl)
		or	a
		jp	nz, LoadSFX
		ld	a, (FADE_IN_PARAMETERS)
		and	0Fh
		ld	(MUSIC_LEVEL), a
		xor	a
		ld	(FADE_IN_TIMER), a
		ld	(UNUSED_BYTE), a
		call	StopMusic
		inc	hl
		ld	e, (hl)
		inc	hl
		ld	d, (hl)
		inc	hl
		ld	(word_14CA), de
		ld	bc, 2B80h
		call	YM1Input
		ld	b, 26h ; '&'
		ld	c, (hl)
		inc	c
		inc	c
		inc	c
		call	YM1Input
		xor	a
		ld	(CURRENTLY_FADING_OUT),	a
		ld	(FADE_OUT_COUNTER), a
		ld	a, 63h ; 'c'
		ld	(FADE_OUT_TIMER), a
		inc	hl
		ld	b, 0Ah
		ld	ix, YM_CHANNEL_DATA_1

loc_24B:				; CODE XREF: Main+D0j
		ld	e, (hl)
		inc	hl
		ld	d, (hl)
		inc	hl
		ld	(ix+0),	e
		ld	(ix+1),	d
		ld	a, 0C0h	; '¿'
		ld	(ix+1Eh), a
		xor	a
		ld	(ix+2),	a
		ld	(ix+3),	a
		ld	(ix+8),	a
		ld	(ix+13h), a
		ld	(ix+14h), a
		ld	(ix+1Ch), a
		ld	(ix+1Dh), a
		ld	(ix+1Fh), a
		ld	a, 1
		ld	(ix+1Eh), a
		ld	d, (ix+1)
		ld	e, (ix+0)
		ld	a, (de)
		cp	0FFh
		jr	nz, loc_288
		ld	a, 1
		ld	(ix+3),	a

loc_288:				; CODE XREF: Main+C4j
		ld	de, 20h	; ' '
		add	ix, de
		djnz	loc_24B
		ld	b, 2

loc_291:				; CODE XREF: Main+E9j
		push	bc
		ld	a, b
		dec	a
		ld	(CALL_YM2_INSTEAD_OF_YM1), a
		ld	bc, 0B4C0h
		call	YMInput
		inc	b
		call	YMInput
		inc	b
		call	YMInput
		pop	bc
		djnz	loc_291
		ld	a, 0C0h	; '¿'
		ld	(YM_CHANNEL_4_STEREO), a
		ld	(YM_CHANNEL_5_STEREO), a
		ld	a, 0FEh	; '˛'
		ld	(NEW_SAMPLE_TO_LOAD), a
		call	YM_LoadTimerB

loc_2B8:				; CODE XREF: Main+12Fj	Main+139j ...
		pop	de
		pop	hl
		jp	LoadBank
; ---------------------------------------------------------------------------

LoadSFX:				; CODE XREF: Main+1Cj Main+4Ej
		push	hl
		push	de
		sub	41h ; 'A'
		ld	h, 0
		ld	l, a
		add	hl, hl
		ld	de, pt_SFX
		add	hl, de
		ld	a, (hl)
		inc	hl
		ld	h, (hl)
		ld	l, a
		ld	a, (hl)
		inc	hl
		cp	1
		jr	nz, LoadSFXType2
		ld	b, 0Ah
		ld	ix, YM_CHANNEL_DATA_1

loc_2D9:				; CODE XREF: Main+12Dj
		ld	e, (hl)
		inc	hl
		ld	d, (hl)
		inc	hl
		ld	a, (de)
		cp	0FFh
		jr	z, loc_2E5
		call	InitChannelDataForSFX

loc_2E5:				; CODE XREF: Main+123j
		ld	de, 20h	; ' '
		add	ix, de
		djnz	loc_2D9
		jr	loc_2B8
; ---------------------------------------------------------------------------

LoadSFXType2:				; CODE XREF: Main+114j
		ld	a, (UNUSED_SFX_BYTE_1)
		ld	d, a
		ld	a, (UNUSED_SFX_BYTE_2)
		sub	d
		jp	c, loc_2B8
		ld	a, d
		ld	(UNUSED_SFX_BYTE_2), a
		ld	bc, 304h
		ld	ix, SFX_TYPE_2_CHANNEL_DATA_1

loc_304:				; CODE XREF: Main+169j
		push	bc
		ld	e, (hl)
		inc	hl
		ld	d, (hl)
		inc	hl
		ld	a, (de)
		cp	0FFh
		jr	z, loc_31F
		call	InitChannelDataForSFX
		ld	b, 28h ; '('
		call	YM1Input
		ld	c, a
		add	a, 0B0h	; '∞'
		ld	b, a
		ld	c, 0C0h	; '¿'
		call	YM2Input

loc_31F:				; CODE XREF: Main+14Fj
		ld	de, 20h	; ' '
		add	ix, de
		pop	bc
		inc	c
		djnz	loc_304
		jp	loc_2B8
; End of function Main


; =============== S U B	R O U T	I N E =======================================


InitChannelDataForSFX:			; CODE XREF: Main+125p	Main+151p
		ld	(ix+0),	e
		ld	(ix+1),	d
		ld	a, 0C0h	; '¿'
		ld	(ix+1Eh), a
		xor	a
		ld	(ix+2),	a
		ld	(ix+3),	a
		ld	(ix+8),	a
		ld	(ix+13h), a
		ld	(ix+14h), a
		ld	(ix+1Ch), a
		ld	(ix+1Dh), a
		ld	(ix+1Fh), a
		ld	a, 1
		ld	(ix+1Eh), a
		ret
; End of function InitChannelDataForSFX


; =============== S U B	R O U T	I N E =======================================


StopMusic:				; CODE XREF: Main+Dj Main+60p	...
		push	hl
		ld	iy, CURRENT_CHANNEL
		xor	a
		ld	(CALL_YM2_INSTEAD_OF_YM1), a
		ld	(iy+0),	a
		ld	ix, YM_CHANNEL_DATA_1
		call	YM1_LoadInstrument
		ld	bc, 2800h
		call	YM1Input
		inc	(iy+0)
		xor	a
		ld	ix, YM_CHANNEL_DATA_2
		call	YM1_LoadInstrument
		ld	bc, 2801h
		call	YM1Input
		inc	(iy+0)
		xor	a
		ld	ix, YM_CHANNEL_DATA_3
		call	YM1_LoadInstrument
		ld	bc, 2802h
		call	YM1Input
		ld	a, 1
		ld	(CALL_YM2_INSTEAD_OF_YM1), a
		xor	a
		ld	(iy+0),	a
		ld	a, (SFX_TYPE_2_CHANNEL_1_NOT_IN_USE)
		or	a
		jr	z, loc_3AD
		xor	a
		ld	ix, YM_CHANNEL_DATA_4
		call	YM2_LoadInstrument
		ld	bc, 2804h
		call	YM1Input

loc_3AD:				; CODE XREF: StopMusic+48j
		inc	(iy+0)
		ld	a, (SFX_TYPE_2_CHANNEL_2_NOT_IN_USE)
		or	a
		jr	z, loc_3C4
		xor	a
		ld	ix, YM_CHANNEL_DATA_5
		call	YM2_LoadInstrument
		ld	bc, 2805h
		call	YM1Input

loc_3C4:				; CODE XREF: StopMusic+5Fj
		ld	hl, PSG_PORT
		ld	a, 9Fh ; 'ü'
		ld	(hl), a
		ld	a, 0BFh	; 'ø'
		ld	(hl), a
		ld	a, 0DFh	; 'ﬂ'
		ld	(hl), a
		ld	a, 0FFh
		ld	(hl), a
		ld	hl, YM_CHANNEL_1_NOT_IN_USE
		ld	de, 20h	; ' '
		ld	b, 0Ah
		ld	a, 1

loc_3DD:				; CODE XREF: StopMusic+8Aj
		ld	(hl), a
		add	hl, de
		djnz	loc_3DD
		pop	hl
		ld	de, 0
		xor	a
		ld	(CURRENTLY_FADING_OUT),	a
		ld	(FADE_OUT_COUNTER), a
		ld	a, 63h ; 'c'
		ld	(FADE_OUT_TIMER), a
		ld	a, 0FFh
		ld	(UNUSED_SFX_BYTE_2), a
		ret
; End of function StopMusic


; =============== S U B	R O U T	I N E =======================================


UpdateSound:				; CODE XREF: MainLoop+7p
		push	bc
		push	de
		push	hl
		ld	hl, FADE_IN_TIMER
		inc	(hl)
		ld	a, (FADE_IN_PARAMETERS)
		rrca
		rrca
		and	3Ch ; '<'
		jr	z, loc_418
		cp	(hl)
		jr	nz, loc_418
		xor	a
		ld	(hl), a
		ld	hl, MUSIC_LEVEL
		ld	a, (hl)
		cp	0Fh
		jr	z, loc_418
		inc	(hl)
		call	YM_UpdateInstrumentLevels

loc_418:				; CODE XREF: UpdateSound+Ej
					; UpdateSound+11j ...
		call	LoadMusicBank
		ld	hl, (word_14CA)
		ld	a, h
		or	l
		jr	z, loc_42B
		dec	hl
		ld	(word_14CA), hl
		ld	a, h
		or	l
		call	z, FadeOut

loc_42B:				; CODE XREF: UpdateSound+29j
		ld	a, (CURRENTLY_FADING_OUT)
		or	a
		jr	z, loc_451
		ld	a, (FADE_OUT_TIMER)
		or	a
		jr	nz, loc_44D
		ld	a, (FADE_OUT_LENGTH)
		ld	(FADE_OUT_TIMER), a
		ld	a, (FADE_OUT_COUNTER)
		inc	a
		ld	(FADE_OUT_COUNTER), a
		cp	0Ch
		jr	nz, loc_451
		call	StopMusic
		jr	loc_4BA
; ---------------------------------------------------------------------------

loc_44D:				; CODE XREF: UpdateSound+3Ej
		dec	a
		ld	(FADE_OUT_TIMER), a

loc_451:				; CODE XREF: UpdateSound+38j
					; UpdateSound+4Fj
		call	YM_LoadTimerB
		ld	iy, CURRENT_CHANNEL
		xor	a
		ld	(CURRENTLY_MANAGING_SFX_TYPE_2), a
		ld	(CALL_YM2_INSTEAD_OF_YM1), a
		ld	(iy+0),	a
		call	YM1_ParseData
		inc	(iy+0)
		call	YM1_ParseData
		inc	(iy+0)
		call	YM1_ParseData
		ld	a, 1
		ld	(CALL_YM2_INSTEAD_OF_YM1), a
		xor	a
		ld	(iy+0),	a
		call	YM2_ParseData
		inc	(iy+0)
		call	YM2_ParseData
		inc	(iy+0)
		call	YM2_ParseChannel6Data
		xor	a
		ld	(iy+0),	a
		call	PSG_ParseToneData
		inc	(iy+0)
		call	PSG_ParseToneData
		inc	(iy+0)
		call	PSG_ParseToneData
		inc	(iy+0)
		call	PSG_ParseNoiseData
		ld	a, 1
		ld	(CURRENTLY_MANAGING_SFX_TYPE_2), a
		xor	a
		ld	(iy+0),	a
		call	YM2_ParseData
		inc	(iy+0)
		call	YM2_ParseData
		inc	(iy+0)
		call	YM2_ParseChannel6Data

loc_4BA:				; CODE XREF: UpdateSound+54j
		call	LoadBank
		pop	hl
		pop	de
		pop	bc
		ret
; End of function UpdateSound


; =============== S U B	R O U T	I N E =======================================


YM_LoadTimerB:				; CODE XREF: Main+F8p
					; UpdateSound:loc_451p
		ld	bc, 273Ah
		jr	YM1Input
; End of function YM_LoadTimerB


; =============== S U B	R O U T	I N E =======================================


YM1_ConditionalInput:			; CODE XREF: YM2_ParseData+45p
					; YM2_ParseData+154p
		ld	a, (CURRENTLY_MANAGING_SFX_TYPE_2)
		or	a
		jr	nz, YM1Input
		exx
		push	ix
		pop	hl
		ld	bc, 0E3h ; '„'
		add	hl, bc
		ld	a, (hl)
		exx
		or	a
		jr	nz, YM1Input
		ret
; End of function YM1_ConditionalInput


; =============== S U B	R O U T	I N E =======================================


YMInput:				; CODE XREF: MuteSound:loc_6Bp
					; MuteSound+12p ...
		ld	a, (CALL_YM2_INSTEAD_OF_YM1)
		or	a
		jr	nz, YM2ConditionalInput
; End of function YMInput


; =============== S U B	R O U T	I N E =======================================


YM1Input:				; CODE XREF: Main+6Fp Main+78p ...
		ld	a, (YM1_REGISTER)
		and	80h ; 'Ä'
		jr	nz, YM1Input
		ld	a, b
		ld	(YM1_REGISTER),	a
		ld	a, c
		ld	(YM1_DATA), a
		ret
; End of function YM1Input


; =============== S U B	R O U T	I N E =======================================


YM2ConditionalInput:			; CODE XREF: YMInput+4j
					; YM2_ParseData:loc_89Cp ...
		ld	a, (CURRENTLY_MANAGING_SFX_TYPE_2)
		or	a
		jr	nz, YM2Input
		exx
		push	ix
		pop	hl
		ld	bc, 0E3h ; '„'
		add	hl, bc
		ld	a, (hl)
		exx
		or	a
		ret	z
; End of function YM2ConditionalInput


; =============== S U B	R O U T	I N E =======================================


YM2Input:				; CODE XREF: MuteSound:loc_85p
					; MuteSound+2Cp ...
		ld	a, (YM2_REGISTER)
		and	80h ; 'Ä'
		jr	nz, YM2Input
		ld	a, b
		ld	(YM2_REGISTER),	a
		ld	a, c
		ld	(YM2_DATA), a
		ret
; End of function YM2Input

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR PSG_ParseToneData

PSG_SetChannelAttenuation:		; CODE XREF: PSG_ParseToneData+4Fj
					; PSG_ParseNoiseData+41j
		and	0Fh
		ld	h, a
		ld	a, (CURRENT_PSG_CHANNEL)
		or	h
		or	90h ; 'ê'
		ld	(PSG_PORT), a
		ret
; END OF FUNCTION CHUNK	FOR PSG_ParseToneData

; =============== S U B	R O U T	I N E =======================================


DAC_SetNewSample:			; CODE XREF: YM2_ParseChannel6Data+24p
					; YM2_ParseChannel6Data+85p
		ld	b, a
		ld	a, (CURRENTLY_MANAGING_SFX_TYPE_2)
		or	a
		jr	nz, loc_53E
		exx
		push	ix
		pop	hl
		ld	bc, 0E3h ; '„'
		add	hl, bc
		ld	a, (hl)
		exx
		or	a
		ret	z
		ld	a, (FADE_OUT_COUNTER)
		cp	3
		ret	nc
		ld	a, (MUSIC_LEVEL)
		cp	0Fh
		ret	nz

loc_53E:				; CODE XREF: DAC_SetNewSample+5j
		ld	a, b
		ld	(NEW_SAMPLE_TO_LOAD), a
		ret
; End of function DAC_SetNewSample


; =============== S U B	R O U T	I N E =======================================


YM1_ParseData:				; CODE XREF: UpdateSound+6Bp
					; UpdateSound+71p ...
		ld	a, (iy+0)
		ld	ix, YM_CHANNEL_DATA_1
		push	af
		add	a, a
		add	a, a
		add	a, a
		add	a, a
		add	a, a
		ld	d, 0
		ld	e, a
		add	ix, de
		pop	af
		ld	c, 0A0h	; '†'
		add	a, c
		ld	(loc_759+1), a
		ld	c, 4
		add	a, c
		ld	(loc_750+1), a

loc_562:				; CODE XREF: YM1_ParseData+140j
		ld	a, (ix+3)
		or	a
		ret	nz
		ld	a, (ix+6)
		cp	(ix+2)
		jr	nz, loc_57E
		ld	a, (ix+8)
		or	a
		jr	nz, loc_57E
		ld	b, 28h ; '('
		ld	a, (iy+0)
		ld	c, a
		call	YM1Input

loc_57E:				; CODE XREF: YM1_ParseData+2Aj
					; YM1_ParseData+30j
		ld	a, (ix+2)
		or	a
		jp	nz, loc_686
		ld	d, (ix+1)
		ld	e, (ix+0)

ParsingStart:				; CODE XREF: YM1_ParseData+7Aj
					; YM1_ParseData+86j ...
		xor	a
		ld	(ix+0Dh), a
		ld	a, (ix+9)
		ld	(ix+0Ah), a
		ld	a, (de)
		and	0F8h ; '¯'
		cp	0F8h ; '¯'
		jp	nz, loc_612
		ld	a, (de)
		cp	0FFh
		jp	nz, loc_5BF
		inc	de
		ld	a, (de)
		ld	l, a
		inc	de
		ld	a, (de)
		ld	h, a
		or	a
		jr	nz, loc_5BC
		ld	a, l
		or	a
		jr	z, loc_5B3
		ld	(NEW_OPERATION), a

loc_5B3:				; CODE XREF: YM1_ParseData+6Bj
		ld	a, 1
		ld	(ix+3),	a
		xor	a
		jp	YM1_LoadInstrument
; ---------------------------------------------------------------------------

loc_5BC:				; CODE XREF: YM1_ParseData+67j
		ex	de, hl
		jr	ParsingStart
; ---------------------------------------------------------------------------

loc_5BF:				; CODE XREF: YM1_ParseData+5Dj
		cp	0FEh ; '˛'
		jr	nz, loc_5CC
		inc	de
		ld	a, (de)
		call	sub_9CC
		inc	de
		jp	ParsingStart
; ---------------------------------------------------------------------------

loc_5CC:				; CODE XREF: YM1_ParseData+7Ej
		cp	0FDh ; '˝'
		jr	nz, loc_5DB
		inc	de
		ld	a, (de)
		and	0Fh
		call	YM1_LoadInstrument
		inc	de
		jp	ParsingStart
; ---------------------------------------------------------------------------

loc_5DB:				; CODE XREF: YM1_ParseData+8Bj
		cp	0FCh ; '¸'
		jr	nz, loc_5E5
		call	YM_SetSlideOrKeyRelease
		jp	ParsingStart
; ---------------------------------------------------------------------------

loc_5E5:				; CODE XREF: YM1_ParseData+9Aj
		cp	0FBh ; '˚'
		jr	nz, loc_5EF
		call	LoadVibrato
		jp	ParsingStart
; ---------------------------------------------------------------------------

loc_5EF:				; CODE XREF: YM1_ParseData+A4j
		cp	0FAh ; '˙'
		jr	nz, loc_5F9
		call	YM1_SetStereo
		jp	ParsingStart
; ---------------------------------------------------------------------------

loc_5F9:				; CODE XREF: YM1_ParseData+AEj
		cp	0F9h ; '˘'
		jr	nz, loc_603
		call	LoadNoteShift
		jp	ParsingStart
; ---------------------------------------------------------------------------

loc_603:				; CODE XREF: YM1_ParseData+B8j
		cp	0F8h ; '¯'
		jr	nz, loc_60D
		call	ParseLoopCommand
		jp	ParsingStart
; ---------------------------------------------------------------------------

loc_60D:				; CODE XREF: YM1_ParseData+C2j
		inc	de
		inc	de
		jp	ParsingStart
; ---------------------------------------------------------------------------

loc_612:				; CODE XREF: YM1_ParseData+57j
		ld	a, (de)
		and	7Fh ; ''
		cp	70h ; 'p'
		jp	z, loc_66A
		add	a, (ix+1Ch)
		ld	l, a
		ld	h, 0
		ld	bc, t_YM_FREQUENCIES
		add	hl, hl
		add	hl, bc
		ld	a, (hl)
		dec	hl
		ld	l, (hl)
		ld	h, a
		ld	b, 0
		ld	c, (ix+1Dh)
		add	hl, bc
		ld	a, (loc_750+1)
		ld	b, a
		ld	c, h
		ld	(ix+12h), c
		ld	a, (ix+1Fh)
		or	a
		jr	nz, loc_644
		ld	(ix+0Fh), c
		xor	a
		ld	(ix+12h), a

loc_644:				; CODE XREF: YM1_ParseData+F8j
		call	YM1Input
		ld	a, (loc_759+1)
		ld	b, a
		ld	c, l
		ld	(ix+11h), c
		ld	a, (ix+1Fh)
		or	a
		jr	nz, loc_65C
		ld	(ix+0Eh), c
		xor	a
		ld	(ix+11h), a

loc_65C:				; CODE XREF: YM1_ParseData+110j
		call	YM1Input
		ld	b, 28h ; '('
		ld	a, (iy+0)
		or	0F0h ; ''
		ld	c, a
		call	YM1Input

loc_66A:				; CODE XREF: YM1_ParseData+D4j
		ld	a, (de)
		bit	7, a
		jr	nz, loc_674
		ld	a, (ix+7)
		jr	loc_679
; ---------------------------------------------------------------------------

loc_674:				; CODE XREF: YM1_ParseData+12Aj
		inc	de
		ld	a, (de)
		ld	(ix+7),	a

loc_679:				; CODE XREF: YM1_ParseData+12Fj
		ld	(ix+2),	a
		inc	de
		ld	(ix+1),	d
		ld	(ix+0),	e
		jp	loc_562
; ---------------------------------------------------------------------------

loc_686:				; CODE XREF: YM1_ParseData+3Fj
		dec	(ix+2)
		ld	b, (ix+12h)
		ld	c, (ix+11h)
		ld	a, b
		or	c
		jr	z, loc_70A
		ld	a, (ix+0Fh)
		ld	h, a
		ld	a, (ix+0Eh)
		ld	l, a
		push	bc
		push	hl
		or	a
		sbc	hl, bc
		ld	a, h
		ld	(TEMP_FREQUENCY), a
		jr	nc, loc_6AE
		ld	b, 0
		ld	c, (ix+1Fh)
		jp	loc_6B6
; ---------------------------------------------------------------------------

loc_6AE:				; CODE XREF: YM1_ParseData+161j
		ld	b, 0FFh
		ld	a, (ix+1Fh)
		neg
		ld	c, a

loc_6B6:				; CODE XREF: YM1_ParseData+168j
		pop	hl
		add	hl, bc
		pop	bc
		push	hl
		or	a
		sbc	hl, bc
		ld	a, (TEMP_FREQUENCY)
		xor	h
		bit	7, a
		pop	hl
		jr	nz, loc_6FD
		push	hl
		ld	a, h
		and	7
		ld	h, a
		ld	(TEMP_FREQUENCY), hl
		ld	bc, 4D4h
		or	a
		sbc	hl, bc
		jr	c, loc_6DC
		ld	bc, 596h
		jp	loc_6F0
; ---------------------------------------------------------------------------

loc_6DC:				; CODE XREF: YM1_ParseData+191j
		ld	hl, (TEMP_FREQUENCY)
		ld	bc, 26Ah
		or	a
		sbc	hl, bc
		jr	nc, loc_6ED
		ld	bc, 0FA6Ah
		jp	loc_6F0
; ---------------------------------------------------------------------------

loc_6ED:				; CODE XREF: YM1_ParseData+1A2j
		ld	bc, 0

loc_6F0:				; CODE XREF: YM1_ParseData+196j
					; YM1_ParseData+1A7j
		pop	hl
		add	hl, bc
		ld	a, h
		ld	(ix+0Fh), a
		ld	a, l
		ld	(ix+0Eh), a
		jp	loc_70A
; ---------------------------------------------------------------------------

loc_6FD:				; CODE XREF: YM1_ParseData+181j
		ld	(ix+0Fh), b
		ld	(ix+0Eh), c
		xor	a
		ld	(ix+11h), a
		ld	(ix+12h), a

loc_70A:				; CODE XREF: YM1_ParseData+14Ej
					; YM1_ParseData+1B7j
		ld	a, (ix+0Ah)
		or	a
		jr	z, loc_716
		dec	(ix+0Ah)
		xor	a
		jr	loc_73F
; ---------------------------------------------------------------------------

loc_716:				; CODE XREF: YM1_ParseData+1CBj
					; YM1_ParseData+1F9j
		ld	a, (ix+0Ch)
		ld	h, a
		ld	a, (ix+0Bh)
		ld	l, a
		ld	a, (ix+0Dh)
		ld	b, 0
		ld	c, a
		inc	(ix+0Dh)
		add	hl, bc
		ld	a, (hl)
		cp	81h ; 'Å'
		jr	nz, loc_733
		dec	(ix+0Dh)
		xor	a
		jr	loc_73F
; ---------------------------------------------------------------------------

loc_733:				; CODE XREF: YM1_ParseData+1E8j
		cp	80h ; 'Ä'
		jp	nz, loc_73F
		xor	a
		ld	(ix+0Dh), a
		jp	loc_716
; ---------------------------------------------------------------------------

loc_73F:				; CODE XREF: YM1_ParseData+1D1j
					; YM1_ParseData+1EEj ...
		ld	c, a
		ld	a, (ix+0Eh)
		ld	l, a
		ld	a, (ix+0Fh)
		ld	h, a
		ld	b, 0
		bit	7, c
		jr	z, loc_74F
		dec	b

loc_74F:				; CODE XREF: YM1_ParseData+209j
		add	hl, bc

loc_750:				; DATA XREF: YM1_ParseData+1Cw
					; YM1_ParseData+ECr ...
		ld	b, 0
		ld	c, h
		ld	(ix+0Fh), c
		call	YM1Input

loc_759:				; DATA XREF: YM1_ParseData+16w
					; YM1_ParseData+104r ...
		ld	b, 0
		ld	c, l
		ld	(ix+0Eh), c
		call	YM1Input
		ld	a, (FADE_OUT_TIMER)
		or	a
		ret	nz
		ld	a, (ix+4)
		jp	YM1_LoadInstrument
; End of function YM1_ParseData


; =============== S U B	R O U T	I N E =======================================


YM2_ParseData:				; CODE XREF: UpdateSound+83p
					; UpdateSound+89p ...
		ld	a, (iy+0)
		ld	ix, YM_CHANNEL_DATA_4
		push	af
		add	a, a
		add	a, a
		add	a, a
		add	a, a
		add	a, a
		ld	d, 0
		ld	e, a
		add	ix, de
		ld	a, (CURRENTLY_MANAGING_SFX_TYPE_2)
		or	a
		jr	z, loc_78A
		ld	de, 0E0h ; '‡'
		add	ix, de

loc_78A:				; CODE XREF: YM2_ParseData+16j
		pop	af
		ld	c, 0A0h	; '†'
		add	a, c
		ld	(loc_9B3+1), a
		ld	c, 4
		add	a, c
		ld	(loc_9AA+1), a

loc_797:				; CODE XREF: YM2_ParseData+170j
		ld	a, (ix+3)
		or	a
		ret	nz
		ld	a, (ix+6)
		cp	(ix+2)
		jr	nz, loc_7B5
		ld	a, (ix+8)
		or	a
		jr	nz, loc_7B5
		ld	b, 28h ; '('
		ld	a, (iy+0)
		add	a, 4
		ld	c, a
		call	YM1_ConditionalInput

loc_7B5:				; CODE XREF: YM2_ParseData+35j
					; YM2_ParseData+3Bj
		ld	a, (ix+2)
		or	a
		jp	nz, loc_8E0
		ld	d, (ix+1)
		ld	e, (ix+0)

loc_7C2:				; CODE XREF: YM2_ParseData+A8j
					; YM2_ParseData+B4j ...
		xor	a
		ld	(ix+0Dh), a
		ld	a, (ix+9)
		ld	(ix+0Ah), a
		ld	a, (de)
		and	0F8h ; '¯'
		cp	0F8h ; '¯'
		jp	nz, loc_86A
		ld	a, (de)
		cp	0FFh
		jp	nz, loc_817
		inc	de
		ld	a, (de)
		ld	l, a
		inc	de
		ld	a, (de)
		ld	h, a
		or	l
		jr	nz, loc_814
		ld	a, 1
		ld	(ix+3),	a
		ld	a, 0FFh
		ld	(UNUSED_SFX_BYTE_2), a
		ld	a, (CURRENTLY_MANAGING_SFX_TYPE_2)
		or	a
		jr	z, loc_810
		ld	bc, 0FF20h
		add	ix, bc
		ld	a, 0B4h	; '¥'
		add	a, (iy+0)
		ld	b, a
		ld	c, (ix+1Eh)
		call	YM2Input
		ld	a, (ix+3)
		or	a
		jr	nz, loc_810
		ld	a, (ix+4)
		jp	YM2_LoadInstrument
; ---------------------------------------------------------------------------

loc_810:				; CODE XREF: YM2_ParseData+84j
					; YM2_ParseData+9Bj
		xor	a
		jp	YM2_LoadInstrument
; ---------------------------------------------------------------------------

loc_814:				; CODE XREF: YM2_ParseData+74j
		ex	de, hl
		jr	loc_7C2
; ---------------------------------------------------------------------------

loc_817:				; CODE XREF: YM2_ParseData+6Aj
		cp	0FEh ; '˛'
		jr	nz, loc_824
		inc	de
		ld	a, (de)
		call	YM2_SetChannelInstrument
		inc	de
		jp	loc_7C2
; ---------------------------------------------------------------------------

loc_824:				; CODE XREF: YM2_ParseData+ACj
		cp	0FDh ; '˝'
		jr	nz, loc_833
		inc	de
		ld	a, (de)
		and	0Fh
		call	YM2_LoadInstrument
		inc	de
		jp	loc_7C2
; ---------------------------------------------------------------------------

loc_833:				; CODE XREF: YM2_ParseData+B9j
		cp	0FCh ; '¸'
		jr	nz, loc_83D
		call	YM_SetSlideOrKeyRelease
		jp	loc_7C2
; ---------------------------------------------------------------------------

loc_83D:				; CODE XREF: YM2_ParseData+C8j
		cp	0FBh ; '˚'
		jr	nz, loc_847
		call	LoadVibrato
		jp	loc_7C2
; ---------------------------------------------------------------------------

loc_847:				; CODE XREF: YM2_ParseData+D2j
		cp	0FAh ; '˙'
		jr	nz, loc_851
		call	YM2_SetStereo
		jp	loc_7C2
; ---------------------------------------------------------------------------

loc_851:				; CODE XREF: YM2_ParseData+DCj
		cp	0F9h ; '˘'
		jr	nz, loc_85B
		call	LoadNoteShift
		jp	loc_7C2
; ---------------------------------------------------------------------------

loc_85B:				; CODE XREF: YM2_ParseData+E6j
		cp	0F8h ; '¯'
		jr	nz, loc_865
		call	ParseLoopCommand
		jp	loc_7C2
; ---------------------------------------------------------------------------

loc_865:				; CODE XREF: YM2_ParseData+F0j
		inc	de
		inc	de
		jp	loc_7C2
; ---------------------------------------------------------------------------

loc_86A:				; CODE XREF: YM2_ParseData+64j
		ld	a, (de)
		and	7Fh ; ''
		cp	70h ; 'p'
		jp	z, loc_8C4
		add	a, (ix+1Ch)
		ld	l, a
		ld	h, 0
		ld	bc, t_YM_FREQUENCIES
		add	hl, hl
		add	hl, bc
		ld	a, (hl)
		dec	hl
		ld	l, (hl)
		ld	h, a
		ld	b, 0
		ld	c, (ix+1Dh)
		add	hl, bc
		ld	a, (loc_750+1)
		ld	b, a
		ld	c, h
		ld	(ix+12h), c
		ld	a, (ix+1Fh)
		or	a
		jr	nz, loc_89C
		ld	(ix+0Fh), c
		xor	a
		ld	(ix+12h), a

loc_89C:				; CODE XREF: YM2_ParseData+126j
		call	YM2ConditionalInput
		ld	a, (loc_759+1)
		ld	b, a
		ld	c, l
		ld	(ix+11h), c
		ld	a, (ix+1Fh)
		or	a
		jr	nz, loc_8B4
		ld	(ix+0Eh), c
		xor	a
		ld	(ix+11h), a

loc_8B4:				; CODE XREF: YM2_ParseData+13Ej
		call	YM2ConditionalInput
		ld	b, 28h ; '('
		ld	a, (iy+0)
		add	a, 4
		or	0F0h ; ''
		ld	c, a
		call	YM1_ConditionalInput

loc_8C4:				; CODE XREF: YM2_ParseData+102j
		ld	a, (de)
		bit	7, a
		jr	nz, loc_8CE
		ld	a, (ix+7)
		jr	loc_8D3
; ---------------------------------------------------------------------------

loc_8CE:				; CODE XREF: YM2_ParseData+15Aj
		inc	de
		ld	a, (de)
		ld	(ix+7),	a

loc_8D3:				; CODE XREF: YM2_ParseData+15Fj
		ld	(ix+2),	a
		inc	de
		ld	(ix+1),	d
		ld	(ix+0),	e
		jp	loc_797
; ---------------------------------------------------------------------------

loc_8E0:				; CODE XREF: YM2_ParseData+4Cj
		dec	(ix+2)
		ld	b, (ix+12h)
		ld	c, (ix+11h)
		ld	a, b
		or	c
		jr	z, loc_964
		ld	a, (ix+0Fh)
		ld	h, a
		ld	a, (ix+0Eh)
		ld	l, a
		push	bc
		push	hl
		or	a
		sbc	hl, bc
		ld	a, h
		ld	(TEMP_FREQUENCY), a
		jr	nc, loc_908
		ld	b, 0
		ld	c, (ix+1Fh)
		jp	loc_910
; ---------------------------------------------------------------------------

loc_908:				; CODE XREF: YM2_ParseData+191j
		ld	b, 0FFh
		ld	a, (ix+1Fh)
		neg
		ld	c, a

loc_910:				; CODE XREF: YM2_ParseData+198j
		pop	hl
		add	hl, bc
		pop	bc
		push	hl
		or	a
		sbc	hl, bc
		ld	a, (TEMP_FREQUENCY)
		xor	h
		bit	7, a
		pop	hl
		jr	nz, loc_957
		push	hl
		ld	a, h
		and	7
		ld	h, a
		ld	(TEMP_FREQUENCY), hl
		ld	bc, 4D4h
		or	a
		sbc	hl, bc
		jr	c, loc_936
		ld	bc, 596h
		jp	loc_94A
; ---------------------------------------------------------------------------

loc_936:				; CODE XREF: YM2_ParseData+1C1j
		ld	hl, (TEMP_FREQUENCY)
		ld	bc, 26Ah
		or	a
		sbc	hl, bc
		jr	nc, loc_947
		ld	bc, 0FA6Ah
		jp	loc_94A
; ---------------------------------------------------------------------------

loc_947:				; CODE XREF: YM2_ParseData+1D2j
		ld	bc, 0

loc_94A:				; CODE XREF: YM2_ParseData+1C6j
					; YM2_ParseData+1D7j
		pop	hl
		add	hl, bc
		ld	a, h
		ld	(ix+0Fh), a
		ld	a, l
		ld	(ix+0Eh), a
		jp	loc_964
; ---------------------------------------------------------------------------

loc_957:				; CODE XREF: YM2_ParseData+1B1j
		ld	(ix+0Fh), b
		ld	(ix+0Eh), c
		xor	a
		ld	(ix+11h), a
		ld	(ix+12h), a

loc_964:				; CODE XREF: YM2_ParseData+17Ej
					; YM2_ParseData+1E7j
		ld	a, (ix+0Ah)
		or	a
		jr	z, loc_970
		dec	(ix+0Ah)
		xor	a
		jr	loc_999
; ---------------------------------------------------------------------------

loc_970:				; CODE XREF: YM2_ParseData+1FBj
					; YM2_ParseData+229j
		ld	a, (ix+0Ch)
		ld	h, a
		ld	a, (ix+0Bh)
		ld	l, a
		ld	a, (ix+0Dh)
		ld	b, 0
		ld	c, a
		inc	(ix+0Dh)
		add	hl, bc
		ld	a, (hl)
		cp	81h ; 'Å'
		jr	nz, loc_98D
		dec	(ix+0Dh)
		xor	a
		jr	loc_999
; ---------------------------------------------------------------------------

loc_98D:				; CODE XREF: YM2_ParseData+218j
		cp	80h ; 'Ä'
		jp	nz, loc_999
		xor	a
		ld	(ix+0Dh), a
		jp	loc_970
; ---------------------------------------------------------------------------

loc_999:				; CODE XREF: YM2_ParseData+201j
					; YM2_ParseData+21Ej ...
		ld	c, a
		ld	a, (ix+0Eh)
		ld	l, a
		ld	a, (ix+0Fh)
		ld	h, a
		ld	b, 0
		bit	7, c
		jr	z, loc_9A9
		dec	b

loc_9A9:				; CODE XREF: YM2_ParseData+239j
		add	hl, bc

loc_9AA:				; DATA XREF: YM2_ParseData+27w
		ld	b, 0
		ld	c, h
		ld	(ix+0Fh), c
		call	YM2ConditionalInput

loc_9B3:				; DATA XREF: YM2_ParseData+21w
		ld	b, 0
		ld	c, l
		ld	(ix+0Eh), c
		call	YM2ConditionalInput
		ld	a, (CURRENTLY_MANAGING_SFX_TYPE_2)
		or	a
		ret	nz
		ld	a, (FADE_OUT_TIMER)
		or	a
		ret	nz
		ld	a, (ix+4)
		jp	YM2_LoadInstrument
; End of function YM2_ParseData


; =============== S U B	R O U T	I N E =======================================


sub_9CC:				; CODE XREF: YM1_ParseData+82p
		ld	(ix+10h), a
		ret
; End of function sub_9CC


; =============== S U B	R O U T	I N E =======================================


YM1_LoadInstrument:			; CODE XREF: YM_UpdateInstrumentLevels+12p
					; YM_UpdateInstrumentLevels+1Fp ...
		call	LoadInstrumentBank
		ld	(ix+4),	a
		ld	a, (FADE_OUT_COUNTER)
		add	a, 0Fh
		ld	h, a
		ld	a, (MUSIC_LEVEL)
		add	a, (ix+4)
		sub	h
		jr	nc, loc_9E6
		xor	a

loc_9E6:				; CODE XREF: YM1_LoadInstrument+13j
		push	de
		push	af
		ld	a, (ix+10h)
		ld	l, a
		ld	h, 0
		ld	d, h
		ld	e, l
		add	hl, hl
		add	hl, hl
		push	hl
		add	hl, de
		ld	d, h
		ld	e, l
		add	hl, hl
		add	hl, hl
		add	hl, de
		pop	de
		add	hl, de
		ld	de, 8000h
		add	hl, de
		push	hl
		ld	de, 1Ch
		add	hl, de
		ld	a, (hl)
		and	7
		ld	(ix+5),	a
		pop	hl
		ld	a, (iy+0)
		add	a, 30h ; '0'
		ld	b, 4

loc_A12:				; CODE XREF: YM1_LoadInstrument+4Ej
		push	bc
		ld	b, a
		ld	c, (hl)
		push	af
		call	YM1Input
		pop	af
		inc	hl
		add	a, 4
		pop	bc
		djnz	loc_A12
		ld	(TEMP_REGISTER), a
		pop	af
		push	hl
		ld	d, 0
		ld	e, a
		ld	hl, t_YM_LEVELS
		ld	b, e
		add	hl, de
		ld	c, (hl)
		ld	e, (ix+5)
		ld	hl, t_SLOTS_PER_ALGO
		add	hl, de
		ld	d, (hl)
		ld	a, (TEMP_REGISTER)
		pop	hl
		ld	b, 4

loc_A3C:				; CODE XREF: YM1_LoadInstrument+8Aj
		push	bc
		ld	b, a
		push	af
		rr	d
		jr	nc, loc_A51
		ld	a, 7Fh ; ''
		sub	(hl)
		add	a, c
		ld	c, a
		cp	7Fh ; ''
		jr	c, loc_A4E
		ld	c, 7Fh ; ''

loc_A4E:				; CODE XREF: YM1_LoadInstrument+7Aj
		jp	loc_A52
; ---------------------------------------------------------------------------

loc_A51:				; CODE XREF: YM1_LoadInstrument+71j
		ld	c, (hl)

loc_A52:				; CODE XREF: YM1_LoadInstrument:loc_A4Ej
		call	YM1Input
		pop	af
		inc	hl
		add	a, 4
		pop	bc
		djnz	loc_A3C
		ld	b, 14h

loc_A5E:				; CODE XREF: YM1_LoadInstrument+9Aj
		push	bc
		ld	b, a
		ld	c, (hl)
		push	af
		call	YM1Input
		pop	af
		inc	hl
		add	a, 4
		pop	bc
		djnz	loc_A5E
		add	a, 10h
		ld	b, a
		ld	c, (hl)
		call	YM1Input
		pop	de
		jp	LoadMusicBank
; End of function YM1_LoadInstrument


; =============== S U B	R O U T	I N E =======================================


YM2_SetChannelInstrument:		; CODE XREF: YM2_ParseData+B0p
		ld	(ix+10h), a
		ret
; End of function YM2_SetChannelInstrument


; =============== S U B	R O U T	I N E =======================================


YM2_LoadInstrument:			; CODE XREF: YM_UpdateInstrumentLevels+3Fp
					; YM_UpdateInstrumentLevels+4Cp ...
		call	LoadInstrumentBank
		ld	(ix+4),	a
		ld	a, (CURRENTLY_MANAGING_SFX_TYPE_2)
		or	a
		jr	z, loc_A8C
		ld	a, (ix+4)
		jr	loc_A9C
; ---------------------------------------------------------------------------

loc_A8C:				; CODE XREF: YM2_LoadInstrument+Aj
		ld	a, (FADE_OUT_COUNTER)
		add	a, 0Fh
		ld	h, a
		ld	a, (MUSIC_LEVEL)
		add	a, (ix+4)
		sub	h
		jr	nc, loc_A9C
		xor	a

loc_A9C:				; CODE XREF: YM2_LoadInstrument+Fj
					; YM2_LoadInstrument+1Ej
		push	de
		push	af
		ld	a, (ix+10h)
		ld	l, a
		ld	h, 0
		ld	d, h
		ld	e, l
		add	hl, hl
		add	hl, hl
		push	hl
		add	hl, de
		ld	d, h
		ld	e, l
		add	hl, hl
		add	hl, hl
		add	hl, de
		pop	de
		add	hl, de
		ld	de, 8000h
		add	hl, de
		push	hl
		ld	de, 1Ch
		add	hl, de
		ld	a, (hl)
		and	7
		ld	(ix+5),	a
		pop	hl
		ld	a, (iy+0)
		add	a, 30h ; '0'
		ld	b, 4

loc_AC8:				; CODE XREF: YM2_LoadInstrument+59j
		push	bc
		ld	b, a
		ld	c, (hl)
		push	af
		call	YM2ConditionalInput
		pop	af
		inc	hl
		add	a, 4
		pop	bc
		djnz	loc_AC8
		ld	(TEMP_REGISTER), a
		pop	af
		push	hl
		ld	d, 0
		ld	e, a
		ld	hl, t_YM_LEVELS
		ld	b, e
		add	hl, de
		ld	c, (hl)
		ld	e, (ix+5)
		ld	hl, t_SLOTS_PER_ALGO
		add	hl, de
		ld	d, (hl)
		ld	a, (TEMP_REGISTER)
		pop	hl
		ld	b, 4

loc_AF2:				; CODE XREF: YM2_LoadInstrument+95j
		push	bc
		ld	b, a
		push	af
		rr	d
		jr	nc, loc_B07
		ld	a, 7Fh ; ''
		sub	(hl)
		add	a, c
		ld	c, a
		cp	7Fh ; ''
		jr	c, loc_B04
		ld	c, 7Fh ; ''

loc_B04:				; CODE XREF: YM2_LoadInstrument+85j
		jp	loc_B08
; ---------------------------------------------------------------------------

loc_B07:				; CODE XREF: YM2_LoadInstrument+7Cj
		ld	c, (hl)

loc_B08:				; CODE XREF: YM2_LoadInstrument:loc_B04j
		call	YM2ConditionalInput
		pop	af
		inc	hl
		add	a, 4
		pop	bc
		djnz	loc_AF2
		ld	b, 14h

loc_B14:				; CODE XREF: YM2_LoadInstrument+A5j
		push	bc
		ld	b, a
		ld	c, (hl)
		push	af
		call	YM2ConditionalInput
		pop	af
		inc	hl
		add	a, 4
		pop	bc
		djnz	loc_B14
		add	a, 10h
		ld	b, a
		ld	c, (hl)
		call	YM2ConditionalInput
		pop	de
		jp	LoadMusicBank
; End of function YM2_LoadInstrument


; =============== S U B	R O U T	I N E =======================================


YM2_ParseChannel6Data:			; CODE XREF: UpdateSound+8Fp
					; UpdateSound+C0p
		ld	ix, YM_CHANNEL_DATA_6
		ld	a, (CURRENTLY_MANAGING_SFX_TYPE_2)
		or	a
		jr	z, loc_B3C
		ld	de, 0E0h ; '‡'
		add	ix, de

loc_B3C:				; CODE XREF: YM2_ParseChannel6Data+8j
					; YM2_ParseChannel6Data+A1j
		ld	a, (ix+3)
		or	a
		ret	nz
		ld	a, (ix+6)
		cp	(ix+2)
		jr	nz, loc_B54
		ld	a, (ix+8)
		or	a
		jr	nz, loc_B54
		ld	a, 0FEh	; '˛'
		call	DAC_SetNewSample

loc_B54:				; CODE XREF: YM2_ParseChannel6Data+1Aj
					; YM2_ParseChannel6Data+20j
		ld	a, (ix+2)
		or	a
		jp	nz, loc_BD1
		ld	d, (ix+1)
		ld	e, (ix+0)

loc_B61:				; CODE XREF: YM2_ParseChannel6Data+57j
					; YM2_ParseChannel6Data+60j ...
		ld	a, (de)
		and	0F8h ; '¯'
		cp	0F8h ; '¯'
		jp	nz, loc_BA9
		ld	a, (de)
		cp	0FFh
		jp	nz, loc_B86
		inc	de
		ld	a, (de)
		ld	l, a
		inc	de
		ld	a, (de)
		ld	h, a
		or	l
		jr	nz, loc_B83
		ld	a, 1
		ld	(ix+3),	a
		ld	a, 0FFh
		ld	(UNUSED_SFX_BYTE_2), a
		ret
; ---------------------------------------------------------------------------

loc_B83:				; CODE XREF: YM2_ParseChannel6Data+49j
		ex	de, hl
		jr	loc_B61
; ---------------------------------------------------------------------------

loc_B86:				; CODE XREF: YM2_ParseChannel6Data+3Fj
		cp	0FCh ; '¸'
		jr	nz, loc_B90
		call	SetRelease
		jp	loc_B61
; ---------------------------------------------------------------------------

loc_B90:				; CODE XREF: YM2_ParseChannel6Data+5Bj
		cp	0FAh ; '˙'
		jr	nz, loc_B9A
		call	YM2_SetStereo
		jp	loc_B61
; ---------------------------------------------------------------------------

loc_B9A:				; CODE XREF: YM2_ParseChannel6Data+65j
		cp	0F8h ; '¯'
		jr	nz, loc_BA4
		call	ParseLoopCommand
		jp	loc_B61
; ---------------------------------------------------------------------------

loc_BA4:				; CODE XREF: YM2_ParseChannel6Data+6Fj
		inc	de
		inc	de
		jp	loc_B61
; ---------------------------------------------------------------------------

loc_BA9:				; CODE XREF: YM2_ParseChannel6Data+39j
		ld	a, (de)
		and	7Fh ; ''
		cp	70h ; 'p'
		jp	z, loc_BB5
		inc	a
		call	DAC_SetNewSample

loc_BB5:				; CODE XREF: YM2_ParseChannel6Data+81j
		ld	a, (de)
		bit	7, a
		jr	nz, loc_BBF
		ld	a, (ix+7)
		jr	loc_BC4
; ---------------------------------------------------------------------------

loc_BBF:				; CODE XREF: YM2_ParseChannel6Data+8Bj
		inc	de
		ld	a, (de)
		ld	(ix+7),	a

loc_BC4:				; CODE XREF: YM2_ParseChannel6Data+90j
		ld	(ix+2),	a
		inc	de
		ld	(ix+1),	d
		ld	(ix+0),	e
		jp	loc_B3C
; ---------------------------------------------------------------------------

loc_BD1:				; CODE XREF: YM2_ParseChannel6Data+2Bj
		dec	(ix+2)
		ld	a, (FADE_OUT_TIMER)
		or	a
		ret	nz
		ret
; End of function YM2_ParseChannel6Data


; =============== S U B	R O U T	I N E =======================================


PSG_ParseToneData:			; CODE XREF: UpdateSound+96p
					; UpdateSound+9Cp ...

; FUNCTION CHUNK AT 0512 SIZE 0000000D BYTES

		ld	a, (iy+0)
		ld	ix, PSG_CHANNEL_DATA_TONE_1
		ld	h, 0
		ld	l, a
		add	hl, hl
		add	hl, hl
		add	hl, hl
		add	hl, hl
		add	hl, hl
		ex	de, hl
		add	ix, de
		rrca
		rrca
		rrca
		and	60h ; '`'
		ld	(CURRENT_PSG_CHANNEL), a

loc_BF4:				; CODE XREF: PSG_ParseToneData+106j
		ld	a, (ix+3)
		or	a
		ret	nz
		ld	a, (ix+2)
		or	a
		jp	nz, loc_CE3
		ld	d, (ix+1)
		ld	e, (ix+0)

loc_C06:				; CODE XREF: PSG_ParseToneData+53j
					; PSG_ParseToneData+5Cj ...
		ld	a, (de)
		and	0F8h ; '¯'
		cp	0F8h ; '¯'
		jp	nz, loc_C76
		ld	a, (de)
		cp	0FFh
		jp	nz, loc_C2F
		inc	de
		ld	a, (de)
		ld	l, a
		inc	de
		ld	a, (de)
		ld	h, a
		or	l
		jr	nz, loc_C2C
		ld	a, 1
		ld	(ix+3),	a
		ld	a, 0FFh
		ld	(UNUSED_SFX_BYTE_2), a
		ld	a, 0Fh
		jp	PSG_SetChannelAttenuation
; ---------------------------------------------------------------------------

loc_C2C:				; CODE XREF: PSG_ParseToneData+41j
		ex	de, hl
		jr	loc_C06
; ---------------------------------------------------------------------------

loc_C2F:				; CODE XREF: PSG_ParseToneData+37j
		cp	0FDh ; '˝'
		jr	nz, loc_C39
		call	PSG_LoadInstrument
		jp	loc_C06
; ---------------------------------------------------------------------------

loc_C39:				; CODE XREF: PSG_ParseToneData+57j
		cp	0FCh ; '¸'
		jr	nz, loc_C43
		call	SetRelease
		jp	loc_C06
; ---------------------------------------------------------------------------

loc_C43:				; CODE XREF: PSG_ParseToneData+61j
		cp	0FBh ; '˚'
		jr	nz, loc_C4D
		call	LoadVibrato
		jp	loc_C06
; ---------------------------------------------------------------------------

loc_C4D:				; CODE XREF: PSG_ParseToneData+6Bj
		cp	0FAh ; '˙'
		jr	nz, loc_C5D
		inc	de
		ld	b, 26h ; '&'
		ld	a, (de)
		ld	c, a
		inc	de
		call	YM1Input
		jp	loc_C06
; ---------------------------------------------------------------------------

loc_C5D:				; CODE XREF: PSG_ParseToneData+75j
		cp	0F9h ; '˘'
		jr	nz, loc_C67
		call	LoadNoteShift
		jp	loc_C06
; ---------------------------------------------------------------------------

loc_C67:				; CODE XREF: PSG_ParseToneData+85j
		cp	0F8h ; '¯'
		jr	nz, loc_C71
		call	ParseLoopCommand
		jp	loc_C06
; ---------------------------------------------------------------------------

loc_C71:				; CODE XREF: PSG_ParseToneData+8Fj
		inc	de
		inc	de
		jp	loc_C06
; ---------------------------------------------------------------------------

loc_C76:				; CODE XREF: PSG_ParseToneData+31j
		ld	a, (de)
		and	7Fh ; ''
		cp	70h ; 'p'
		jp	z, loc_CBF
		push	af
		ld	a, (ix+1Eh)
		or	a
		jr	z, loc_C92
		xor	a
		ld	(ix+12h), a
		ld	(ix+1Eh), a
		ld	a, (ix+9)
		ld	(ix+0Ah), a

loc_C92:				; CODE XREF: PSG_ParseToneData+A9j
		xor	a
		ld	(ix+0Dh), a
		pop	af
		add	a, (ix+1Ch)
		sub	15h
		ld	l, a
		ld	h, 0
		ld	bc, t_PSG_FREQUENCIES
		add	hl, hl
		add	hl, bc
		ld	a, (hl)
		inc	hl
		ld	h, (hl)
		ld	l, a
		ld	b, 0
		ld	c, (ix+1Dh)
		srl	c
		add	hl, bc
		ld	c, l
		ld	(ix+0Eh), c
		ld	c, h
		ld	(ix+0Fh), c
		ld	a, (ix+8)
		and	80h ; 'Ä'
		jr	loc_CC4
; ---------------------------------------------------------------------------

loc_CBF:				; CODE XREF: PSG_ParseToneData+A1j
		ld	a, (ix+8)
		or	1

loc_CC4:				; CODE XREF: PSG_ParseToneData+E3j
		ld	(ix+8),	a
		ld	a, (de)
		bit	7, a
		jr	nz, loc_CD1
		ld	a, (ix+7)
		jr	loc_CD6
; ---------------------------------------------------------------------------

loc_CD1:				; CODE XREF: PSG_ParseToneData+F0j
		inc	de
		ld	a, (de)
		ld	(ix+7),	a

loc_CD6:				; CODE XREF: PSG_ParseToneData+F5j
		ld	(ix+2),	a
		inc	de
		ld	(ix+1),	d
		ld	(ix+0),	e
		jp	loc_BF4
; ---------------------------------------------------------------------------

loc_CE3:				; CODE XREF: PSG_ParseToneData+23j
		dec	(ix+2)
		ld	a, (ix+0Ah)
		or	a
		jr	z, loc_CF2
		dec	(ix+0Ah)
		xor	a
		jr	loc_D1A
; ---------------------------------------------------------------------------

loc_CF2:				; CODE XREF: PSG_ParseToneData+110j
					; PSG_ParseToneData+13Dj
		ld	a, (ix+0Ch)
		ld	h, a
		ld	a, (ix+0Bh)
		ld	l, a
		ld	a, (ix+0Dh)
		ld	b, 0
		ld	c, a
		inc	(ix+0Dh)
		add	hl, bc
		ld	a, (hl)
		cp	81h ; 'Å'
		jr	nz, loc_D0E
		dec	(ix+0Dh)
		jr	loc_D35
; ---------------------------------------------------------------------------

loc_D0E:				; CODE XREF: PSG_ParseToneData+12Dj
		cp	80h ; 'Ä'
		jp	nz, loc_D1A
		xor	a
		ld	(ix+0Dh), a
		jp	loc_CF2
; ---------------------------------------------------------------------------

loc_D1A:				; CODE XREF: PSG_ParseToneData+116j
					; PSG_ParseToneData+136j
		neg
		ld	c, a
		ld	a, (ix+0Eh)
		ld	l, a
		ld	a, (ix+0Fh)
		ld	h, a
		ld	b, 0
		bit	7, c
		jr	z, loc_D2C
		dec	b

loc_D2C:				; CODE XREF: PSG_ParseToneData+14Fj
		add	hl, bc
		ld	a, h
		ld	(ix+0Fh), a
		ld	a, l
		ld	(ix+0Eh), a

loc_D35:				; CODE XREF: PSG_ParseToneData+132j
		call	PSG_GetInstumentPointer
		ld	b, (hl)
		bit	7, b
		jr	nz, loc_D41
		inc	a
		ld	(ix+12h), a

loc_D41:				; CODE XREF: PSG_ParseToneData+161j
		res	7, b
		ld	a, 0Fh
		sub	b
		ld	b, a
		ld	a, (ix+4)
		sub	b
		jr	nc, loc_D4E
		xor	a

loc_D4E:				; CODE XREF: PSG_ParseToneData+171j
		ld	b, a
		ld	a, (iy+0)
		cp	2
		jr	nz, loc_D5A
		ld	a, 0Fh
		jr	loc_D5D
; ---------------------------------------------------------------------------

loc_D5A:				; CODE XREF: PSG_ParseToneData+17Aj
		ld	a, (MUSIC_LEVEL)

loc_D5D:				; CODE XREF: PSG_ParseToneData+17Ej
		add	a, b
		sub	0Fh
		jr	nc, loc_D63
		xor	a

loc_D63:				; CODE XREF: PSG_ParseToneData+186j
		ld	(ix+5),	a
		ld	b, (ix+8)
		ld	a, (ix+2)
		or	a
		jr	z, loc_D78
		bit	7, b
		jr	nz, loc_D96
		cp	(ix+6)
		jr	nz, loc_D96

loc_D78:				; CODE XREF: PSG_ParseToneData+193j
		ld	a, b
		or	a
		jr	nz, loc_D96
		ld	c, 1
		ld	(ix+1Eh), c
		or	2
		ld	(ix+8),	a

loc_D86:				; CODE XREF: PSG_ParseToneData+1B7j
		call	PSG_GetInstumentPointer
		ld	a, (hl)
		and	80h ; 'Ä'
		jr	nz, loc_D93
		inc	(ix+12h)
		jr	loc_D86
; ---------------------------------------------------------------------------

loc_D93:				; CODE XREF: PSG_ParseToneData+1B2j
		inc	(ix+12h)

loc_D96:				; CODE XREF: PSG_ParseToneData+197j
					; PSG_ParseToneData+19Cj ...
		ld	a, (FADE_OUT_TIMER)
		or	a
		jr	nz, loc_DAD
		ld	a, (iy+0)
		cp	2
		jr	z, loc_DAD
		ld	a, (ix+4)
		or	a
		jr	z, loc_DAD
		dec	a
		ld	(ix+4),	a

loc_DAD:				; CODE XREF: PSG_ParseToneData+1C0j
					; PSG_ParseToneData+1C7j ...
		ld	a, (ix+0Fh)
		ld	b, a
		ld	a, (ix+0Eh)
		ld	c, a
		and	0Fh
		ld	h, a
		ld	a, (CURRENT_PSG_CHANNEL)
		or	h
		or	80h ; 'Ä'
		ld	(PSG_PORT), a
		ld	a, c
		srl	b
		rra
		srl	b
		rra
		rra
		rra
		and	3Fh ; '?'
		ld	(PSG_PORT), a
		ld	a, 0Fh
		sub	(ix+5)
		ld	h, a
		ld	a, (CURRENT_PSG_CHANNEL)
		or	h
		or	90h ; 'ê'
		ld	(PSG_PORT), a
		ret
; End of function PSG_ParseToneData


; =============== S U B	R O U T	I N E =======================================


PSG_GetInstumentPointer:		; CODE XREF: PSG_ParseToneData:loc_D35p
					; PSG_ParseToneData:loc_D86p ...
		ld	a, (ix+11h)
		ld	h, a
		ld	a, (ix+10h)
		ld	l, a
		ld	b, 0
		ld	a, (ix+12h)
		ld	c, a
		add	hl, bc
		ret
; End of function PSG_GetInstumentPointer


; =============== S U B	R O U T	I N E =======================================


PSG_LoadInstrument:			; CODE XREF: PSG_ParseToneData+59p
					; PSG_ParseNoiseData+4Cp
		inc	de
		ld	a, (de)
		ld	c, a
		and	0Fh
		ld	b, a
		ld	a, (iy+0)
		cp	2
		jr	z, loc_E02
		ld	a, (CURRENTLY_FADING_OUT)
		or	a
		jr	nz, loc_E05

loc_E02:				; CODE XREF: PSG_LoadInstrument+Bj
		ld	(ix+4),	b

loc_E05:				; CODE XREF: PSG_LoadInstrument+11j
		ld	a, c
		rra
		rra
		rra
		rra
		and	0Fh
		inc	de
		ld	h, 0
		ld	l, a
		add	hl, hl
		ld	bc, pt_PSG_INSTRUMENTS
		add	hl, bc
		ld	c, (hl)
		inc	hl
		ld	b, (hl)
		ld	(ix+10h), c
		ld	(ix+11h), b
		ret
; End of function PSG_LoadInstrument


; =============== S U B	R O U T	I N E =======================================


PSG_ParseNoiseData:			; CODE XREF: UpdateSound+A8p
		ld	a, (iy+0)
		ld	ix, PSG_CHANNEL_DATA_NOISE
		ld	a, 60h ; '`'
		ld	(CURRENT_PSG_CHANNEL), a

loc_E2B:				; CODE XREF: PSG_ParseNoiseData+B1j
		ld	a, (ix+3)
		or	a
		ret	nz
		ld	a, (ix+2)
		or	a
		jp	nz, loc_ED3
		ld	d, (ix+1)
		ld	e, (ix+0)

loc_E3D:				; CODE XREF: PSG_ParseNoiseData+45j
					; PSG_ParseNoiseData+4Fj ...
		ld	a, (de)
		and	0F8h ; '¯'
		cp	0F8h ; '¯'
		jp	nz, loc_E8A
		ld	a, (de)
		cp	0FFh
		jp	nz, loc_E67
		inc	de
		ld	a, (de)
		ld	l, a
		inc	de
		ld	a, (de)
		ld	h, a
		or	l
		jr	nz, loc_E63
		ld	a, 1
		ld	(ix+3),	a
		ld	a, 0FFh
		ld	(UNUSED_SFX_BYTE_2), a
		ld	a, 0Fh
		jp	PSG_SetChannelAttenuation
; ---------------------------------------------------------------------------

loc_E63:				; CODE XREF: PSG_ParseNoiseData+33j
		ex	de, hl
		jp	loc_E3D
; ---------------------------------------------------------------------------

loc_E67:				; CODE XREF: PSG_ParseNoiseData+29j
		cp	0FDh ; '˝'
		jr	nz, loc_E71
		call	PSG_LoadInstrument
		jp	loc_E3D
; ---------------------------------------------------------------------------

loc_E71:				; CODE XREF: PSG_ParseNoiseData+4Aj
		cp	0FCh ; '¸'
		jr	nz, loc_E7B
		call	SetRelease
		jp	loc_E3D
; ---------------------------------------------------------------------------

loc_E7B:				; CODE XREF: PSG_ParseNoiseData+54j
		cp	0F8h ; '¯'
		jr	nz, loc_E85
		call	ParseLoopCommand
		jp	loc_E3D
; ---------------------------------------------------------------------------

loc_E85:				; CODE XREF: PSG_ParseNoiseData+5Ej
		inc	de
		inc	de
		jp	loc_E3D
; ---------------------------------------------------------------------------

loc_E8A:				; CODE XREF: PSG_ParseNoiseData+23j
		ld	a, (de)
		and	7Fh ; ''
		cp	70h ; 'p'
		jp	z, loc_EAF
		push	af
		ld	a, (ix+1Eh)
		or	a
		jr	z, loc_EA0
		xor	a
		ld	(ix+12h), a
		ld	(ix+1Eh), a

loc_EA0:				; CODE XREF: PSG_ParseNoiseData+78j
		pop	af
		and	7
		or	0E0h ; '‡'
		ld	(PSG_PORT), a
		ld	a, (ix+8)
		and	80h ; 'Ä'
		jr	loc_EB4
; ---------------------------------------------------------------------------

loc_EAF:				; CODE XREF: PSG_ParseNoiseData+70j
		ld	a, (ix+8)
		or	1

loc_EB4:				; CODE XREF: PSG_ParseNoiseData+8Ej
		ld	(ix+8),	a
		ld	a, (de)
		bit	7, a
		jr	nz, loc_EC1
		ld	a, (ix+7)
		jr	loc_EC6
; ---------------------------------------------------------------------------

loc_EC1:				; CODE XREF: PSG_ParseNoiseData+9Bj
		inc	de
		ld	a, (de)
		ld	(ix+7),	a

loc_EC6:				; CODE XREF: PSG_ParseNoiseData+A0j
		ld	(ix+2),	a
		inc	de
		ld	(ix+1),	d
		ld	(ix+0),	e
		jp	loc_E2B
; ---------------------------------------------------------------------------

loc_ED3:				; CODE XREF: PSG_ParseNoiseData+15j
		dec	(ix+2)
		call	PSG_GetInstumentPointer
		ld	b, (hl)
		bit	7, b
		jr	nz, loc_EE2
		inc	a
		ld	(ix+12h), a

loc_EE2:				; CODE XREF: PSG_ParseNoiseData+BDj
		res	7, b
		ld	a, 0Fh
		sub	b
		ld	b, a
		ld	a, (ix+4)
		sub	b
		jr	nc, loc_EEF
		xor	a

loc_EEF:				; CODE XREF: PSG_ParseNoiseData+CDj
		ld	b, a
		ld	a, (MUSIC_LEVEL)
		add	a, b
		sub	0Fh
		jr	nc, loc_EF9
		xor	a

loc_EF9:				; CODE XREF: PSG_ParseNoiseData+D7j
		ld	(ix+5),	a
		ld	b, (ix+8)
		ld	a, (ix+2)
		or	a
		jr	z, loc_F0E
		bit	7, b
		jr	nz, loc_F2C
		cp	(ix+6)
		jr	nz, loc_F2C

loc_F0E:				; CODE XREF: PSG_ParseNoiseData+E4j
		ld	a, b
		or	a
		jr	nz, loc_F2C
		ld	c, 1
		ld	(ix+1Eh), c
		or	2
		ld	(ix+8),	a

loc_F1C:				; CODE XREF: PSG_ParseNoiseData+108j
		call	PSG_GetInstumentPointer
		ld	a, (hl)
		and	80h ; 'Ä'
		jr	nz, loc_F29
		inc	(ix+12h)
		jr	loc_F1C
; ---------------------------------------------------------------------------

loc_F29:				; CODE XREF: PSG_ParseNoiseData+103j
		inc	(ix+12h)

loc_F2C:				; CODE XREF: PSG_ParseNoiseData+E8j
					; PSG_ParseNoiseData+EDj ...
		ld	a, (FADE_OUT_TIMER)
		or	a
		jr	nz, loc_F3C
		ld	a, (ix+4)
		or	a
		jr	z, loc_F3C
		dec	a
		ld	(ix+4),	a

loc_F3C:				; CODE XREF: PSG_ParseNoiseData+111j
					; PSG_ParseNoiseData+117j
		ld	a, 0Fh
		sub	(ix+5)
		or	0F0h ; ''
		ld	(PSG_PORT), a
		ret
; End of function PSG_ParseNoiseData


; =============== S U B	R O U T	I N E =======================================


YM_SetSlideOrKeyRelease:		; CODE XREF: YM1_ParseData+9Cp
					; YM2_ParseData+CAp
		inc	de
		ld	a, (de)
		cp	0FFh
		jr	nz, loc_F53
		xor	a
		ld	(ix+1Fh), a
		inc	de
		ret
; ---------------------------------------------------------------------------

loc_F53:				; CODE XREF: YM_SetSlideOrKeyRelease+4j
		cp	81h ; 'Å'
		jr	c, loc_F60
		and	7Fh ; ''
		ld	(ix+1Fh), a
		inc	de
		ret
; End of function YM_SetSlideOrKeyRelease


; =============== S U B	R O U T	I N E =======================================


SetRelease:				; CODE XREF: YM2_ParseChannel6Data+5Dp
					; PSG_ParseToneData+63p ...
		inc	de
		ld	a, (de)

loc_F60:				; CODE XREF: YM_SetSlideOrKeyRelease+Ej
		ld	c, a
		and	80h ; 'Ä'
		ld	(ix+8),	a
		ld	a, c
		and	7Fh ; ''
		ld	(ix+6),	a
		inc	de
		ret
; End of function SetRelease


; =============== S U B	R O U T	I N E =======================================


LoadVibrato:				; CODE XREF: YM1_ParseData+A6p
					; YM2_ParseData+D4p ...
		inc	de
		ld	a, (de)
		push	af
		rra
		rra
		rra
		and	1Eh
		ld	hl, pt_PITCH_EFFECTS
		ld	b, 0
		ld	c, a
		add	hl, bc
		ld	a, (hl)
		inc	hl
		ld	h, (hl)
		ld	(ix+0Bh), a
		ld	a, h
		ld	(ix+0Ch), a
		pop	af
		rla
		and	1Eh
		jr	z, loc_F8E
		dec	a

loc_F8E:				; CODE XREF: LoadVibrato+1Dj
		ld	(ix+9),	a
		inc	de
		ret
; End of function LoadVibrato


; =============== S U B	R O U T	I N E =======================================


YM1_SetStereo:				; CODE XREF: YM1_ParseData+B0p

; FUNCTION CHUNK AT 0FBA SIZE 00000009 BYTES

		inc	de
		ld	a, (de)
		bit	0, a
		jr	nz, loc_FBA
		and	0C0h ; '¿'
		ld	c, a
		ld	b, 0B4h	; '¥'
		ld	a, (iy+0)
		add	a, b
		ld	b, a
		inc	de
		jp	YM1Input
; End of function YM1_SetStereo


; =============== S U B	R O U T	I N E =======================================


YM2_SetStereo:				; CODE XREF: YM2_ParseData+DEp
					; YM2_ParseChannel6Data+67p
		inc	de
		ld	a, (de)
		and	0C0h ; '¿'
		ld	(ix+1Eh), a
		ld	c, a
		ld	b, 0B4h	; '¥'
		ld	a, (iy+0)
		add	a, b
		ld	b, a
		inc	de
		jp	YM2ConditionalInput
; End of function YM2_SetStereo

; ---------------------------------------------------------------------------
; START	OF FUNCTION CHUNK FOR YM1_SetStereo

loc_FBA:				; CODE XREF: YM1_SetStereo+4j
		ld	a, (UNUSED_BYTE)
		inc	a
		ld	(UNUSED_BYTE), a
		inc	de
		ret
; END OF FUNCTION CHUNK	FOR YM1_SetStereo

; =============== S U B	R O U T	I N E =======================================


LoadNoteShift:				; CODE XREF: YM1_ParseData+BAp
					; YM2_ParseData+E8p ...
		inc	de
		ld	a, (de)
		and	8Fh ; 'è'
		bit	7, a
		jr	z, loc_FCD
		or	0F0h ; ''

loc_FCD:				; CODE XREF: LoadNoteShift+6j
		ld	(ix+1Ch), a
		ld	a, (de)
		rrca
		rrca
		rrca
		and	0Eh
		ld	(ix+1Dh), a
		inc	de
		ret
; End of function LoadNoteShift


; =============== S U B	R O U T	I N E =======================================


ParseLoopCommand:			; CODE XREF: YM1_ParseData+C4p
					; YM2_ParseData+F2p ...
		inc	de
		ld	a, (de)
		ld	b, a
		inc	de
		rlca
		rlca
		rlca
		and	7
		jr	nz, loc_FED
		ld	(ix+13h), e
		ld	(ix+14h), d
		ret
; ---------------------------------------------------------------------------

loc_FED:				; CODE XREF: ParseLoopCommand+9j
		cp	1
		jr	nz, loc_FFF
		ld	(ix+15h), e
		ld	(ix+16h), d
		xor	a
		ld	(ix+1Ah), a
		ld	(ix+1Bh), a
		ret
; ---------------------------------------------------------------------------

loc_FFF:				; CODE XREF: ParseLoopCommand+14j
		cp	2
		jr	nz, loc_102D
		ld	a, (ix+1Ah)
		or	a
		jr	nz, loc_100F
		ld	a, 1
		ld	(ix+1Ah), a
		ret
; ---------------------------------------------------------------------------

loc_100F:				; CODE XREF: ParseLoopCommand+2Cj
					; ParseLoopCommand+45j	...
		ld	a, (de)
		ld	b, a
		inc	de
		ld	a, (de)
		ld	c, a
		inc	de
		ld	a, b
		cp	0FFh
		jr	z, loc_102A
		cp	0F8h ; '¯'
		jr	z, loc_1025
		and	80h ; 'Ä'
		jr	nz, loc_100F
		dec	de
		jr	loc_100F
; ---------------------------------------------------------------------------

loc_1025:				; CODE XREF: ParseLoopCommand+41j
		ld	a, c
		cp	60h ; '`'
		jr	nz, loc_100F

loc_102A:				; CODE XREF: ParseLoopCommand+3Dj
					; ParseLoopCommand+6Bj	...
		dec	de
		dec	de
		ret
; ---------------------------------------------------------------------------

loc_102D:				; CODE XREF: ParseLoopCommand+26j
		cp	3
		jr	nz, loc_105A
		ld	a, (ix+1Bh)
		or	a
		jr	nz, loc_103D
		ld	a, 1
		ld	(ix+1Bh), a
		ret
; ---------------------------------------------------------------------------

loc_103D:				; CODE XREF: ParseLoopCommand+5Aj
					; ParseLoopCommand+73j	...
		ld	a, (de)
		ld	b, a
		inc	de
		ld	a, (de)
		ld	c, a
		inc	de
		ld	a, b
		cp	0FFh
		jr	z, loc_102A
		cp	0F8h ; '¯'
		jr	z, loc_1053
		and	80h ; 'Ä'
		jr	nz, loc_103D
		dec	de
		jr	loc_103D
; ---------------------------------------------------------------------------

loc_1053:				; CODE XREF: ParseLoopCommand+6Fj
		ld	a, c
		cp	80h ; 'Ä'
		jr	nz, loc_103D
		jr	loc_102A
; ---------------------------------------------------------------------------

loc_105A:				; CODE XREF: ParseLoopCommand+54j
		cp	4
		jr	nz, loc_105F
		ret
; ---------------------------------------------------------------------------

loc_105F:				; CODE XREF: ParseLoopCommand+81j
		cp	5
		jr	nz, loc_1075
		bit	0, b
		jr	nz, loc_106E
		ld	e, (ix+15h)
		ld	d, (ix+16h)
		ret
; ---------------------------------------------------------------------------

loc_106E:				; CODE XREF: ParseLoopCommand+8Aj
		ld	e, (ix+13h)
		ld	d, (ix+14h)
		ret
; ---------------------------------------------------------------------------

loc_1075:				; CODE XREF: ParseLoopCommand+86j
		cp	6
		jr	nz, loc_1087
		ld	(ix+17h), e
		ld	(ix+18h), d
		ld	a, b
		and	1Fh
		inc	a
		ld	(ix+19h), a
		ret
; ---------------------------------------------------------------------------

loc_1087:				; CODE XREF: ParseLoopCommand+9Cj
		dec	(ix+19h)
		ret	z
		ld	e, (ix+17h)
		ld	d, (ix+18h)
		ret
; End of function ParseLoopCommand


; =============== S U B	R O U T	I N E =======================================


FadeOut:				; CODE XREF: Main+12j UpdateSound+31p
		ld	a, 12h
		ld	(FADE_OUT_LENGTH), a
		ld	a, 1
		ld	(CURRENTLY_FADING_OUT),	a
		ld	a, (FADE_OUT_LENGTH)
		ld	(FADE_OUT_TIMER), a
		ret
; End of function FadeOut

; ---------------------------------------------------------------------------
		db 8Ah
t_YM_FREQUENCIES:db 0Ah			; DATA XREF: YM1_ParseData+DDo
					; YM2_ParseData+10Bo
		dw 0AB1h
		dw 0ADAh
		dw 0B06h
		dw 0B33h
		dw 0B64h
		dw 0B98h
		dw 0BCEh
		dw 0C09h
		dw 0C46h
		dw 0C87h
		dw 1266h
		dw 128Ah
		dw 12B1h
		dw 12DAh
		dw 1306h
		dw 1333h
		dw 1364h
		dw 1398h
		dw 13CEh
		dw 1409h
		dw 1446h
		dw 1487h
		dw 1A66h
		dw 1A8Ah
		dw 1AB1h
		dw 1ADAh
		dw 1B06h
		dw 1B33h
		dw 1B64h
		dw 1B98h
		dw 1BCEh
		dw 1C09h
		dw 1C46h
		dw 1C87h
		dw 2266h
		dw 228Ah
		dw 22B1h
		dw 22DAh
		dw 2306h
		dw 2333h
		dw 2364h
		dw 2398h
		dw 23CEh
		dw 2409h
		dw 2446h
		dw 2487h
		dw 2A66h
		dw 2A8Ah
		dw 2AB1h
		dw 2ADAh
		dw 2B06h
		dw 2B33h
		dw 2B64h
		dw 2B98h
		dw 2BCEh
		dw 2C09h
		dw 2C46h
		dw 2C87h
		dw 3266h
		dw 328Ah
		dw 32B1h
		dw 32DAh
		dw 3306h
		dw 3333h
		dw 3364h
		dw 3398h
		dw 33CEh
		dw 3409h
		dw 3446h
		dw 3487h
		dw 3A66h
		dw 3A8Ah
		dw 3AB1h
		dw 3ADAh
		dw 3B06h
		dw 3B33h
		dw 3B64h
		dw 3B98h
		dw 3BCEh
		dw 3C09h
		dw 3C46h
		dw 3C87h
		dw 3CCBh
t_PSG_FREQUENCIES:dw 3EFh		; DATA XREF: PSG_ParseToneData+C5o
		dw 3B6h
		dw 381h
		dw 34Fh
		dw 320h
		dw 2F2h
		dw 2C8h
		dw 2A0h
		dw 27Ah
		dw 257h
		dw 235h
		dw 215h
		dw 1F7h
		dw 1DCh
		dw 1C1h
		dw 1A7h
		dw 18Fh
		dw 179h
		dw 164h
		dw 150h
		dw 13Dh
		dw 12Bh
		dw 11Ah
		dw 10Bh
		dw 0FCh
		dw 0EEh
		dw 0E1h
		dw 0D4h
		dw 0C8h
		dw 0BDh
		dw 0B2h
		dw 0A8h
		dw 9Fh
		dw 96h
		dw 8Dh
		dw 85h
		dw 7Eh
		dw 77h
		dw 70h
		dw 6Ah
		dw 64h
		dw 5Eh
		dw 59h
		dw 54h
		dw 4Fh
		dw 4Bh
		dw 47h
		dw 43h
		dw 3Fh
		dw 3Bh
		dw 38h
		dw 35h
		dw 32h
		dw 2Fh
		dw 2Ch
		dw 2Ah
		dw 28h
		dw 25h
		dw 23h
		dw 22h
		dw 1Fh
		dw 1Dh
		dw 1Ch
		dw 1Bh
t_YM_LEVELS:	db 70h			; DATA XREF: YM1_LoadInstrument+58o
					; YM2_LoadInstrument+63o
		db 60h
		db 50h
		db 40h
		db 38h
		db 30h
		db 2Ah
		db 26h
		db 20h
		db 1Ch
		db 18h
		db 14h
		db 10h
		db 0Bh
		db 8
		db 4
t_SLOTS_PER_ALGO:db 8			; DATA XREF: YM1_LoadInstrument+61o
					; YM2_LoadInstrument+6Co
		db 8
		db 8
		db 8
		db 0Ch
		db 0Eh
		db 0Eh
		db 0Fh
pt_PITCH_EFFECTS:dw byte_1203		; DATA XREF: LoadVibrato+8o
		dw byte_1205
		dw byte_120A
		dw byte_1215
		dw byte_1220
		dw byte_122B
		dw byte_1236
		dw byte_1238
		dw byte_123A
		dw byte_123C
		dw byte_123E
		dw byte_1240
		dw byte_1242
		dw byte_1244
		dw byte_1246
		dw byte_1248
byte_1203:	db 0			; DATA XREF: RAM:pt_PITCH_EFFECTSo
		db 80h
byte_1205:	db 0F0h			; DATA XREF: RAM:11E5o
		db 10h
		db 10h
		db 0F0h
		db 80h
byte_120A:	db 0FDh			; DATA XREF: RAM:11E7o
		db 0FDh
		db 0FFh
		db 1
		db 3
		db 3
		db 3
		db 1
		db 0FFh
		db 0FDh
		db 80h
byte_1215:	db 0FEh			; DATA XREF: RAM:11E9o
		db 0FEh
		db 0FFh
		db 1
		db 2
		db 2
		db 2
		db 1
		db 0FFh
		db 0FEh
		db 80h
byte_1220:	db 0FFh			; DATA XREF: RAM:11EBo
		db 0FFh
		db 0
		db 1
		db 1
		db 1
		db 1
		db 0
		db 0FFh
		db 0FFh
		db 80h
byte_122B:	db 0FFh			; DATA XREF: RAM:11EDo
		db 0
		db 0
		db 1
		db 0
		db 1
		db 0
		db 0
		db 0FFh
		db 0
		db 80h
byte_1236:	db 2			; DATA XREF: RAM:11EFo
		db 80h
byte_1238:	db 0FEh			; DATA XREF: RAM:11F1o
		db 80h
byte_123A:	db 4			; DATA XREF: RAM:11F3o
		db 80h
byte_123C:	db 0FCh			; DATA XREF: RAM:11F5o
		db 80h
byte_123E:	db 8			; DATA XREF: RAM:11F7o
		db 80h
byte_1240:	db 0F8h			; DATA XREF: RAM:11F9o
		db 80h
byte_1242:	db 10h			; DATA XREF: RAM:11FBo
		db 80h
byte_1244:	db 0F0h			; DATA XREF: RAM:11FDo
		db 80h
byte_1246:	db 20h			; DATA XREF: RAM:11FFo
		db 80h
byte_1248:	db 0E0h			; DATA XREF: RAM:1201o
		db 80h
pt_PSG_INSTRUMENTS:dw byte_126A		; DATA XREF: PSG_LoadInstrument+22o
		dw byte_126C
		dw byte_127E
		dw byte_128C
		dw byte_12A3
		dw byte_12AA
		dw byte_12B5
		dw byte_12BD
		dw byte_12C2
		dw byte_12D0
		dw byte_12D6
		dw byte_12E1
		dw byte_12E3
		dw byte_12E7
		dw byte_12ED
		dw byte_12F5
byte_126A:	db 8Fh			; DATA XREF: RAM:pt_PSG_INSTRUMENTSo
		db 8Bh
byte_126C:	db 0Fh			; DATA XREF: RAM:124Co
		db 0Fh
		db 0Eh
		db 0Dh
		db 0Ch
		db 0Bh
		db 0Ah
		db 9
		db 8
		db 7
		db 6
		db 5
		db 4
		db 3
		db 2
		db 1
		db 80h
		db 80h
byte_127E:	db 0Fh			; DATA XREF: RAM:124Eo
		db 0Eh
		db 0Eh
		db 0Dh
		db 0Dh
		db 0Dh
		db 0Ch
		db 0Ch
		db 0Ch
		db 0Ch
		db 8Bh
		db 0Ah
		db 0Ah
		db 89h
byte_128C:	db 0Fh			; DATA XREF: RAM:1250o
		db 0Fh
		db 0Fh
		db 0Fh
		db 0Fh
		db 0Fh
		db 0Eh
		db 0Eh
		db 0Eh
		db 0Eh
		db 0Eh
		db 0Eh
		db 0Eh
		db 0Eh
		db 0Eh
		db 0Eh
		db 0Eh
		db 0Eh
		db 8Dh
		db 0Bh
		db 0Bh
		db 0Bh
		db 8Ah
byte_12A3:	db 0Fh			; DATA XREF: RAM:1252o
		db 0Fh
		db 8Eh
		db 0Bh
		db 0Bh
		db 0Bh
		db 8Ah
byte_12AA:	db 0Fh			; DATA XREF: RAM:1254o
		db 0Eh
		db 8Dh
		db 0Bh
		db 9
		db 7
		db 5
		db 3
		db 2
		db 1
		db 80h
byte_12B5:	db 0Dh			; DATA XREF: RAM:1256o
		db 0Eh
		db 0Fh
		db 8Eh
		db 4
		db 2
		db 1
		db 80h
byte_12BD:	db 0Dh			; DATA XREF: RAM:1258o
		db 0Eh
		db 0Fh
		db 8Eh
		db 8Bh
byte_12C2:	db 0Fh			; DATA XREF: RAM:125Ao
		db 0Fh
		db 0Eh
		db 0Eh
		db 0Dh
		db 0Ch
		db 0Fh
		db 0Fh
		db 0Eh
		db 0Eh
		db 0Dh
		db 0Dh
		db 8Ch
		db 8Ah
byte_12D0:	db 0Bh			; DATA XREF: RAM:125Co
		db 0Ch
		db 0Dh
		db 0Eh
		db 8Fh
		db 88h
byte_12D6:	db 0Bh			; DATA XREF: RAM:125Eo
		db 0Dh
		db 0Fh
		db 0Eh
		db 0Dh
		db 8Ch
		db 0Ah
		db 0Ah
		db 9
		db 9
		db 88h
byte_12E1:	db 8Fh			; DATA XREF: RAM:1260o
		db 8Fh
byte_12E3:	db 0Fh			; DATA XREF: RAM:1262o
		db 0Ah
		db 86h
		db 83h
byte_12E7:	db 0Fh			; DATA XREF: RAM:1264o
		db 0Ch
		db 0Ah
		db 8
		db 86h
		db 83h
byte_12ED:	db 0Fh			; DATA XREF: RAM:1266o
		db 0Dh
		db 0Bh
		db 9
		db 8
		db 7
		db 86h
		db 83h
byte_12F5:	db 8Fh			; DATA XREF: RAM:1268o
		db 80h
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
		db 0
YM_CHANNEL_DATA_1:db	0		; DATA XREF: YM_UpdateInstrumentLevels+Bo
					; Main+8Ao ...
		db    0
		db    0
YM_CHANNEL_1_NOT_IN_USE:db    1		; DATA XREF: StopMusic+7Eo
		db  0Eh
		db    0
		db    1
		db  18h
		db    0
		db    0
		db    0
		db    3
		db  12h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
YM_CHANNEL_DATA_2:db	0		; DATA XREF: YM_UpdateInstrumentLevels+18o
					; StopMusic+1Do
		db    0
		db    0
		db    1
		db  0Eh
		db    0
		db    1
		db  18h
		db    0
		db    0
		db    0
		db    3
		db  12h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
YM_CHANNEL_DATA_3:db	0		; DATA XREF: YM_UpdateInstrumentLevels+25o
					; StopMusic+2Eo
		db    0
		db    0
		db    1
		db  0Eh
		db    0
		db    1
		db  18h
		db    0
		db    0
		db    0
		db    3
		db  12h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
YM_CHANNEL_DATA_4:db	0		; DATA XREF: YM_UpdateInstrumentLevels+38o
					; StopMusic+4Bo ...
		db    0
		db    0
		db    1
		db  0Eh
		db    0
		db    1
		db  18h
		db    0
		db    0
		db    0
		db    3
		db  12h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
YM_CHANNEL_4_STEREO:db 0		; DATA XREF: Main+EDw
		db    0
YM_CHANNEL_DATA_5:db	0		; DATA XREF: YM_UpdateInstrumentLevels+45o
					; StopMusic+62o
		db    0
		db    0
		db    1
		db  0Eh
		db    0
		db    1
		db  18h
		db    0
		db    0
		db    0
		db    3
		db  12h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
YM_CHANNEL_5_STEREO:db 0		; DATA XREF: Main+F0w
		db    0
YM_CHANNEL_DATA_6:db	0		; DATA XREF: YM2_ParseChannel6Datao
		db    0
		db    0
		db    1
		db  0Eh
		db    0
		db    0
		db  18h
		db    0
		db    0
		db    0
		db    3
		db  12h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
PSG_CHANNEL_DATA_TONE_1:db    0		; DATA XREF: PSG_ParseToneData+3o
		db    0
		db    0
		db    1
		db  0Eh
		db    0
		db    1
		db  18h
		db    0
		db    0
		db    0
		db    3
		db  12h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    1
		db  0Eh
		db    0
		db    1
		db  18h
		db    0
		db    0
		db    0
		db    3
		db  12h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    1
		db  0Eh
		db    0
		db    1
		db  18h
		db    0
		db    0
		db    0
		db    3
		db  12h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
PSG_CHANNEL_DATA_NOISE:db    0		; DATA XREF: PSG_ParseNoiseData+3o
		db    0
		db    0
		db    1
		db  0Eh
		db    0
		db    1
		db  18h
		db    0
		db    0
		db    0
		db    3
		db  12h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
SFX_TYPE_2_CHANNEL_DATA_1:db	0	; DATA XREF: YM_UpdateInstrumentLevels+58o
					; Main+143o
		db    0
		db    0
SFX_TYPE_2_CHANNEL_1_NOT_IN_USE:db 1	; DATA XREF: StopMusic+44r
		db  0Eh
		db    0
		db    1
		db  18h
		db    0
		db    0
		db    0
		db    3
		db  12h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
SFX_TYPE_2_CHANNEL_DATA_2:db	0	; DATA XREF: YM_UpdateInstrumentLevels+6Bo
		db    0
		db    0
SFX_TYPE_2_CHANNEL_2_NOT_IN_USE:db 1	; DATA XREF: StopMusic+5Br
		db  0Eh
		db    0
		db    1
		db  18h
		db    0
		db    0
		db    0
		db    3
		db  12h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    1
		db  0Eh
		db    0
		db    0
		db  18h
		db    0
		db    0
		db    0
		db    3
		db  12h
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
		db    0
UNUSED_BYTE:	db 0			; DATA XREF: Main+5Dw
					; YM1_SetStereo:loc_FBAr ...
CURRENT_PSG_CHANNEL:db 0		; DATA XREF: PSG_ParseToneData-6C5r
					; PSG_ParseToneData+17w ...
CURRENT_CHANNEL:db    0			; DATA XREF: YM_UpdateInstrumentLevelso
					; StopMusic+1o	...
CURRENTLY_FADING_OUT:db	0		; DATA XREF: Main+7Cw StopMusic+91w ...
		db    0
CALL_YM2_INSTEAD_OF_YM1:db 0		; DATA XREF: MuteSound+6w
					; MuteSound+20w ...
CURRENTLY_MANAGING_SFX_TYPE_2:db 0	; DATA XREF: MuteSound+3w
					; YM_UpdateInstrumentLevels+55w ...
FADE_OUT_LENGTH:db 1			; DATA XREF: UpdateSound+40r
					; FadeOut+2w ...
FADE_OUT_TIMER:	db 63h			; DATA XREF: Main+84w StopMusic+99w ...
FADE_OUT_COUNTER:db 0			; DATA XREF: Main+7Fw StopMusic+94w ...
word_14CA:	dw 0			; DATA XREF: Main+68w UpdateSound+24r	...
BANK_TO_LOAD:	db 0			; DATA XREF: LoadBank+5o
					; LoadDacSound+1Dw
MUSIC_BANK_TO_LOAD:db 0			; DATA XREF: LoadMusicBank+8r Main+28w ...
UNUSED_SFX_BYTE_2:db 0FFh		; DATA XREF: Init+9w Main+135r ...
		db    0
TEMP_FREQUENCY:	dw 0			; DATA XREF: YM1_ParseData+15Ew
					; YM1_ParseData+17Ar ...
TEMP_REGISTER:	db 0			; DATA XREF: YM1_LoadInstrument+50w
					; YM1_LoadInstrument+66r ...
FADE_IN_TIMER:	db 0			; DATA XREF: Main+5Aw UpdateSound+3o
t_SAMPLE_LOAD_DATA:db	 1,   0,   0,	0, 52h,	  9,   0, 80h ;	DATA XREF: LoadDacSound+12o
		db    1,   0,	0,   0,	76h, 10h, 52h, 89h ; Data layout of the	8-byte entries :
		db    1,   0,	0,   0,0AFh, 10h,0C8h, 99h ; byte 0 : PCM frame	period parameter
		db    5,   0,	0,   0,0AFh, 10h,0C8h, 99h ; byte 1 : always 0 (ignored	when data is parsed)
		db    9,   0,	0,   0,0AFh, 10h,0C8h, 99h ; byte 2 : bank to load
		db    3,   0,	0,   0,	  0, 19h, 77h,0AAh ; byte 3 : always 0 (ignored	when data is parsed)
		db    9,   0,	0,   0,	76h, 10h, 52h, 89h ; bytes 5-4 : sample	length
		db  14h,   0,	0,   0,	52h,   9,   0, 80h ; bytes 7-6 : pointer to sound PCM Data once	bank is	loaded
		db  14h,   0,	0,   0,0AFh, 10h,0C8h, 99h ;
		db    1,   0,	0,   0,0E5h, 10h, 77h,0C3h ; With this table, the same sound sample can	be played at different rates,
		db    1,   0,	0,   0,0E5h, 10h, 5Ch,0D4h ; resulting with quick high-pitched,	or slow	low-pitched sounds,
		db    1,   0,	1,   0,	4Eh, 0Bh,   0, 80h ; which is quite appropriate	for drums or attack hits or explosions !
		db    1,   0,	1,   0,0EAh, 0Bh,0E2h, 99h
		db    5,   0,	0,   0,	93h, 0Ah, 41h,0E5h
		db    1,   0,	0,   0,	93h, 0Ah, 41h,0E5h
		db    5,   0,	1,   0,0EAh, 0Bh,0E2h, 99h
		db    1,   0,	1,   0,0D2h, 31h,0CCh,0A5h
		db    9,   0,	0,   0,0F9h, 0Fh,0D4h,0EFh
		db    9,   0,	1,   0,	94h, 0Eh, 4Eh, 8Bh
		db  14h,   0,	0,   0,0F9h, 0Fh,0D4h,0EFh
		db  14h,   0,	1,   0,	94h, 0Eh, 4Eh, 8Bh
		db  0Ah,   0,	1,   0,	3Eh, 21h, 9Eh,0D7h
		db  14h,   0,	1,   0,	3Eh, 21h, 9Eh,0D7h
		db    1,   0,	1,   0,	0Fh,   7,0DCh,0F8h
pt_SFX:		dw byte_1608		; DATA XREF: Main+108o
		dw unk_1628
		dw unk_1650
		dw unk_1684
		dw unk_16A6
		dw unk_16BB
		dw unk_16D0
		dw unk_16E5
		dw unk_16FA
		dw unk_170F
		dw unk_1724
		dw unk_1739
		dw unk_17A6
		dw unk_17D1
		dw unk_17DD
		dw unk_17E9
		dw unk_1801
		dw unk_182A
		dw unk_1841
		dw unk_1864
		dw unk_187E
		dw unk_189E
		dw unk_18E9
		dw unk_1914
		dw unk_1977
		dw unk_1939
		dw unk_19A3
		dw unk_19E3
		dw unk_19CF
		dw unk_1A13
		dw unk_18C3
		dw unk_1A29
		dw unk_1DA2
		dw unk_1DAE
		dw unk_1DBA
		dw unk_1DC6
		dw unk_1DD2
		dw unk_1DDE
		dw unk_1DEA
		dw unk_1A4A
		dw unk_1A60
		dw unk_1A9C
		dw unk_1AD8
		dw unk_1B15
		dw unk_1B50
		dw unk_1B6B
		dw unk_1DF6
		dw unk_1E02
		dw unk_1E0E
		dw unk_1E1A
		dw unk_1B84
		dw unk_1BA5
		dw unk_1BF6
		dw unk_1BBD
		dw unk_1D21
		dw unk_1CED
		dw unk_1C5B
		dw unk_1D52
byte_1608:	db 2			; DATA XREF: RAM:pt_SFXo
		dw unk_1625
		dw unk_160F
		dw unk_1625
unk_160F:	db 0FEh	; ˛		; DATA XREF: RAM:160Bo
		db  40h	; @
		db 0FDh	; ˝
		db  0Eh
		db 0FBh	; ˚
		db    0
		db 0FCh	; ¸
		db    0
		db  9Dh	; ù
		db    1
		db 0FCh	; ¸
		db  80h	; Ä
		db 0FBh	; ˚
		db  10h
		db  2Ah	; *
		db  39h	; 9
		db 0FCh	; ¸
		db    1
		db 0FBh	; ˚
		db 0F0h	; 
		db 0D3h	; ”
		db  0Ch
unk_1625:	db 0FFh			; DATA XREF: RAM:1609o	RAM:160Do
		db    0
		db    0
unk_1628:	db    1			; DATA XREF: RAM:1596o
		dw unk_164D
		dw unk_164D
		dw unk_164D
		dw unk_164D
		dw unk_164D
		dw unk_164D
		dw unk_164D
		dw unk_164D
		dw unk_163D
		dw unk_164D
unk_163D:	db 0FDh	; ˝		; DATA XREF: RAM:1639o
		db  2Ch	; ,
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db    0
		db 0BBh	; ª
		db    2
		db 0C0h	; ¿
		db    6
		db 0FDh	; ˝
		db  28h	; (
		db 0BBh	; ª
		db    2
		db 0C0h	; ¿
		db    6
unk_164D:	db 0FFh			; DATA XREF: RAM:1629o	RAM:162Bo ...
		db    0
		db    0
unk_1650:	db    1			; DATA XREF: RAM:1598o
		dw unk_1681
		dw unk_1681
		dw unk_1681
		dw unk_1681
		dw unk_1681
		dw unk_1681
		dw unk_1681
		dw unk_1681
		dw unk_1665
		dw unk_1681
unk_1665:	db 0FDh	; ˝		; DATA XREF: RAM:1661o
		db  2Eh	; .
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db    0
		db 0C7h	; «
		db    2
		db 0CCh	; Ã
		db    6
		db 0FDh	; ˝
		db  2Ah	; *
		db 0C7h	; «
		db    2
		db 0CCh	; Ã
		db    6
		db 0FDh	; ˝
		db  27h	; '
		db 0C7h	; «
		db    2
		db 0CCh	; Ã
		db    6
		db 0FDh	; ˝
		db  24h	; $
		db 0C7h	; «
		db    2
		db 0CCh	; Ã
		db    6
unk_1681:	db 0FFh			; DATA XREF: RAM:1651o	RAM:1653o ...
		db    0
		db    0
unk_1684:	db    2			; DATA XREF: RAM:159Ao
		dw unk_16A3
		dw unk_168B
		dw unk_16A3
unk_168B:	db 0FEh	; ˛		; DATA XREF: RAM:1687o
		db  41h	; A
		db 0FDh	; ˝
		db  0Fh
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db    0
		db 0F8h	; ¯
		db 0C2h	; ¬
		db  82h	; Ç
		db    1
		db  70h	; p
		db 0F8h	; ¯
		db 0E0h	; ‡
		db 0F0h	; 
		db    4
		db 0F8h	; ¯
		db 0CAh	;  
		db  82h	; Ç
		db    1
		db  70h	; p
		db 0F8h	; ¯
		db 0E0h	; ‡
unk_16A3:	db 0FFh			; DATA XREF: RAM:1685o	RAM:1689o
		db    0
		db    0
unk_16A6:	db    1			; DATA XREF: RAM:159Co
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_174E
		dw unk_1756
unk_16BB:	db    1			; DATA XREF: RAM:159Eo
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1759
		dw unk_1756
unk_16D0:	db    1			; DATA XREF: RAM:15A0o
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1764
		dw unk_1756
unk_16E5:	db    1			; DATA XREF: RAM:15A2o
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_176F
		dw unk_1756
unk_16FA:	db    1			; DATA XREF: RAM:15A4o
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_177A
		dw unk_1756
unk_170F:	db    1			; DATA XREF: RAM:15A6o
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1785
		dw unk_1756
unk_1724:	db    1			; DATA XREF: RAM:15A8o
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1790
		dw unk_1756
unk_1739:	db    1			; DATA XREF: RAM:15AAo
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_1756
		dw unk_179B
		dw unk_1756
unk_174E:	db 0FDh	; ˝		; DATA XREF: RAM:16B7o
		db  0Fh
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db 0C1h	; ¡
		db 0C0h	; ¿
		db    4
unk_1756:	db 0FFh			; DATA XREF: RAM:16A7o	RAM:16A9o ...
		db    0
		db    0
unk_1759:	db 0FDh	; ˝		; DATA XREF: RAM:16CCo
		db  0Eh
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db 0C1h	; ¡
		db 0B8h	; ∏
		db    4
		db 0FFh
		db    0
		db    0
unk_1764:	db 0FDh	; ˝		; DATA XREF: RAM:16E1o
		db  0Eh
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db 0C1h	; ¡
		db 0ACh	; ¨
		db    4
		db 0FFh
		db    0
		db    0
unk_176F:	db 0FDh	; ˝		; DATA XREF: RAM:16F6o
		db  0Fh
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db 0E1h	; ·
		db 0A8h	; ®
		db    4
		db 0FFh
		db    0
		db    0
unk_177A:	db 0FDh	; ˝		; DATA XREF: RAM:170Bo
		db  0Fh
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db 0D1h	; —
		db 0A2h	; ¢
		db    4
		db 0FFh
		db    0
		db    0
unk_1785:	db 0FDh	; ˝		; DATA XREF: RAM:1720o
		db  0Fh
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db 0D1h	; —
		db  9Fh	; ü
		db    4
		db 0FFh
		db    0
		db    0
unk_1790:	db 0FDh	; ˝		; DATA XREF: RAM:1735o
		db  0Fh
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db 0D1h	; —
		db  9Ah	; ö
		db    4
		db 0FFh
		db    0
		db    0
unk_179B:	db 0FDh	; ˝		; DATA XREF: RAM:174Ao
		db  0Fh
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db 0D1h	; —
		db  97h	; ó
		db    4
		db 0FFh
		db    0
		db    0
unk_17A6:	db    2			; DATA XREF: RAM:15ACo
		dw unk_17AD
		dw unk_17CE
		dw unk_17CE
unk_17AD:	db 0FEh	; ˛		; DATA XREF: RAM:17A7o
		db  40h	; @
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db 0A0h	; †
		db 0FDh	; ˝
		db  0Ah
		db 0A9h	; ©
		db    3
		db 0FDh	; ˝
		db  0Bh
		db  29h	; )
		db 0FDh	; ˝
		db  0Ch
		db  2Ah	; *
		db 0FDh	; ˝
		db  0Dh
		db  2Dh	; -
		db 0FDh	; ˝
		db  0Eh
		db  2Eh	; .
		db 0FDh	; ˝
		db  0Fh
		db  2Fh	; /
		db  30h	; 0
		db  31h	; 1
		db  32h	; 2
		db  33h	; 3
		db  33h	; 3
		db  33h	; 3
		db 0B4h	; ¥
		db  30h	; 0
unk_17CE:	db 0FFh			; DATA XREF: RAM:17A9o	RAM:17ABo
		db    0
		db    0
unk_17D1:	db    2			; DATA XREF: RAM:15AEo
		dw unk_17DA
		dw unk_17DA
		dw unk_17D8
unk_17D8:	db  84h	; Ñ		; DATA XREF: RAM:17D6o
		db  3Ch	; <
unk_17DA:	db 0FFh			; DATA XREF: RAM:17D2o	RAM:17D4o
		db    0
		db    0
unk_17DD:	db    2			; DATA XREF: RAM:15B0o
		dw unk_17E6
		dw unk_17E6
		dw unk_17E4
unk_17E4:	db  85h	; Ö		; DATA XREF: RAM:17E2o
		db  3Ch	; <
unk_17E6:	db 0FFh			; DATA XREF: RAM:17DEo	RAM:17E0o
		db    0
		db    0
unk_17E9:	db    2			; DATA XREF: RAM:15B2o
		dw unk_17F2
		dw unk_17F2
		dw unk_17F0
unk_17F0:	db  86h	; Ü		; DATA XREF: RAM:17EEo
		db  46h	; F
unk_17F2:	db 0FFh			; DATA XREF: RAM:17EAo	RAM:17ECo
		db    0
		db    0
		db    2
		db 0FEh	; ˛
		db  17h
		db 0FEh	; ˛
		db  17h
		db 0FCh	; ¸
		db  17h
		db  87h	; á
		db  5Ah	; Z
		db 0FFh
		db    0
		db    0
unk_1801:	db    1			; DATA XREF: RAM:15B4o
		dw unk_1827
		dw unk_1827
		dw unk_1827
		dw unk_1827
		dw unk_1827
		dw unk_1827
		dw unk_1827
		dw unk_1827
		dw unk_1816
		dw unk_1821
unk_1816:	db 0FDh	; ˝		; DATA XREF: RAM:1812o
		db    0
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db  80h	; Ä
		db 0D3h	; ”
		db    6
		db 0FFh
		db    0
		db    0
unk_1821:	db 0FDh	; ˝		; DATA XREF: RAM:1814o
		db  7Fh	; 
		db 0FCh	; ¸
		db    1
		db  87h	; á
		db    4
unk_1827:	db 0FFh			; DATA XREF: RAM:1802o	RAM:1804o ...
		db    0
		db    0
unk_182A:	db    2			; DATA XREF: RAM:15B6o
		dw unk_183E
		dw unk_1831
		dw unk_183E
unk_1831:	db 0FEh	; ˛		; DATA XREF: RAM:182Do
		db  45h	; E
		db 0FDh	; ˝
		db  0Fh
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db  10h
		db 0D3h	; ”
		db    1
		db  53h	; S
		db 0D3h	; ”
		db  0Ah
unk_183E:	db 0FFh			; DATA XREF: RAM:182Bo	RAM:182Fo
		db    0
		db    0
unk_1841:	db    1			; DATA XREF: RAM:15B8o
		dw unk_1856
		dw unk_1856
		dw unk_1856
		dw unk_1856
		dw unk_1856
		dw unk_1856
		dw unk_1856
		dw unk_1856
		dw unk_1859
		dw unk_1861
unk_1856:	db 0FFh			; DATA XREF: RAM:1842o	RAM:1844o ...
		db    0
		db    0
unk_1859:	db 0FCh	; ¸		; DATA XREF: RAM:1852o
		db    0
		db 0FBh	; ˚
		db 0A2h	; ¢
		db 0FDh	; ˝
		db  7Eh	; ~
		db 0B0h	; ∞
		db  11h
unk_1861:	db 0FFh			; DATA XREF: RAM:1854o
		db    0
		db    0
unk_1864:	db    2			; DATA XREF: RAM:15BAo
		dw unk_186B
		dw unk_186E
		dw unk_187B
unk_186B:	db 0FFh			; DATA XREF: RAM:1865o
		db    0
		db    0
unk_186E:	db 0FEh	; ˛		; DATA XREF: RAM:1867o
		db  49h	; I
		db 0FDh	; ˝
		db  0Ch
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db 0B0h	; ∞
		db 0C5h	; ≈
		db  24h	; $
		db 0FFh
		db    0
		db    0
unk_187B:	db 0FFh			; DATA XREF: RAM:1869o
		db    0
		db    0
unk_187E:	db    1			; DATA XREF: RAM:15BCo
		dw unk_189B
		dw unk_189B
		dw unk_189B
		dw unk_189B
		dw unk_189B
		dw unk_189B
		dw unk_189B
		dw unk_189B
		dw unk_189B
		dw byte_1893
byte_1893:	db 0FDh			; DATA XREF: RAM:1891o
		db  1Eh
		db 0FCh	; ¸
		db  0Bh
		db  85h	; Ö
		db  0Dh
		db    5
		db    5
unk_189B:	db 0FFh			; DATA XREF: RAM:187Fo	RAM:1881o ...
		db    0
		db    0
unk_189E:	db    1			; DATA XREF: RAM:15BEo
		dw unk_18C0
		dw unk_18C0
		dw unk_18C0
		dw unk_18C0
		dw unk_18C0
		dw unk_18C0
		dw unk_18C0
		dw unk_18C0
		dw byte_18B3
		dw unk_18C0
byte_18B3:	db 0FDh			; DATA XREF: RAM:18AFo
		db  2Fh	; /
		db 0FCh	; ¸
		db    4
		db 0FBh	; ˚
		db    0
		db 0A9h	; ©
		db    1
		db  2Dh	; -
		db 0FDh	; ˝
		db  2Eh	; .
		db  2Fh	; /
		db  32h	; 2
unk_18C0:	db 0FFh			; DATA XREF: RAM:189Fo	RAM:18A1o ...
		db    0
		db    0
unk_18C3:	db    1			; DATA XREF: RAM:15D0o
		dw unk_18E6
		dw unk_18E6
		dw unk_18E6
		dw unk_18E6
		dw unk_18E6
		dw unk_18E6
		dw unk_18E6
		dw unk_18E6
		dw unk_18D8
		dw unk_18E6
unk_18D8:	db 0FDh	; ˝		; DATA XREF: RAM:18D4o
		db  2Fh	; /
		db 0FCh	; ¸
		db    4
		db 0FBh	; ˚
		db    0
		db 0A9h	; ©
		db    1
		db  2Dh	; -
		db 0FDh	; ˝
		db  2Eh	; .
		db  2Fh	; /
		db  32h	; 2
		db  35h	; 5
unk_18E6:	db 0FFh			; DATA XREF: RAM:18C4o	RAM:18C6o ...
		db    0
		db    0
unk_18E9:	db    1			; DATA XREF: RAM:15C0o
		dw unk_1911
		dw unk_1911
		dw unk_1911
		dw unk_1911
		dw unk_1911
		dw unk_1911
		dw unk_1911
		dw unk_1911
		dw unk_18FE
		dw unk_1909
unk_18FE:	db 0FDh	; ˝		; DATA XREF: RAM:18FAo
		db    0
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db  63h	; c
		db 0D1h	; —
		db  13h
		db 0FFh
		db    0
		db    0
unk_1909:	db 0FDh	; ˝		; DATA XREF: RAM:18FCo
		db  1Fh
		db 0FCh	; ¸
		db    0
		db  87h	; á
		db    6
		db  87h	; á
		db    9
unk_1911:	db 0FFh			; DATA XREF: RAM:18EAo	RAM:18ECo ...
		db    0
		db    0
unk_1914:	db    2			; DATA XREF: RAM:15C2o
		dw unk_191B
		dw unk_192A
		dw unk_1936
unk_191B:	db 0FEh	; ˛		; DATA XREF: RAM:1915o
		db  4Ah	; J
		db 0FDh	; ˝
		db  0Fh
		db 0FCh	; ¸
		db    1
		db 0FBh	; ˚
		db 0F0h	; 
		db  85h	; Ö
		db    4
		db  85h	; Ö
		db    6
		db 0FFh
		db    0
		db    0
unk_192A:	db 0FEh	; ˛		; DATA XREF: RAM:1917o
		db  46h	; F
		db 0FDh	; ˝
		db  0Dh
		db 0FCh	; ¸
		db    1
		db 0FBh	; ˚
		db 0F0h	; 
		db  82h	; Ç
		db    2
		db  82h	; Ç
		db    6
unk_1936:	db 0FFh			; DATA XREF: RAM:1919o
		db    0
		db    0
unk_1939:	db    1			; DATA XREF: RAM:15C6o
		dw unk_1974
		dw unk_1974
		dw unk_1974
		dw unk_1974
		dw unk_1974
		dw unk_1974
		dw unk_1974
		dw unk_1974
		dw unk_194E
		dw unk_1974
unk_194E:	db 0FBh	; ˚		; DATA XREF: RAM:194Ao
		db    0
		db 0FDh	; ˝
		db  0Eh
		db 0FCh	; ¸
		db    0
		db 0BFh	; ø
		db    3
		db  43h	; C
		db 0C6h	; ∆
		db    5
		db 0FDh	; ˝
		db  0Ch
		db 0BFh	; ø
		db    3
		db  43h	; C
		db 0C6h	; ∆
		db    5
		db 0FDh	; ˝
		db    9
		db 0BFh	; ø
		db    3
		db  43h	; C
		db 0C6h	; ∆
		db    5
		db 0FDh	; ˝
		db    7
		db 0BFh	; ø
		db    3
		db  43h	; C
		db 0C6h	; ∆
		db    5
		db 0FDh	; ˝
		db    5
		db 0BFh	; ø
		db    3
		db  43h	; C
		db  46h	; F
unk_1974:	db 0FFh			; DATA XREF: RAM:193Ao	RAM:193Co ...
		db    0
		db    0
unk_1977:	db    2			; DATA XREF: RAM:15C4o
		dw unk_197E
		dw unk_198F
		dw unk_19A0
unk_197E:	db 0FEh	; ˛		; DATA XREF: RAM:1978o
		db  43h	; C
		db 0FDh	; ˝
		db  0Fh
		db 0FCh	; ¸
		db    2
		db 0FBh	; ˚
		db    0
		db 0F8h	; ¯
		db 0D0h	; –
		db  83h	; É
		db    7
		db 0F8h	; ¯
		db 0E0h	; ‡
		db 0FFh
		db    0
		db    0
unk_198F:	db 0FEh	; ˛		; DATA XREF: RAM:197Ao
		db  43h	; C
		db 0FDh	; ˝
		db  0Fh
		db 0FCh	; ¸
		db    2
		db 0FBh	; ˚
		db    0
		db 0F8h	; ¯
		db 0CEh	; Œ
		db  84h	; Ñ
		db    8
		db 0F8h	; ¯
		db 0E0h	; ‡
		db 0FFh
		db    0
		db    0
unk_19A0:	db 0FFh			; DATA XREF: RAM:197Co
		db    0
		db    0
unk_19A3:	db    2			; DATA XREF: RAM:15C8o
		dw unk_19AA
		dw unk_19AD
		dw unk_19CC
unk_19AA:	db 0FFh			; DATA XREF: RAM:19A4o
		db    0
		db    0
unk_19AD:	db 0FEh	; ˛		; DATA XREF: RAM:19A6o
		db  47h	; G
		db 0FDh	; ˝
		db  0Fh
		db 0FBh	; ˚
		db    0
		db 0FCh	; ¸
		db    0
		db 0A9h	; ©
		db    2
		db 0FCh	; ¸
		db  80h	; Ä
		db 0FBh	; ˚
		db  10h
		db  36h	; 6
		db  45h	; E
		db 0FCh	; ¸
		db    1
		db 0FBh	; ˚
		db 0F0h	; 
		db  53h	; S
		db 0FCh	; ¸
		db  80h	; Ä
		db  29h	; )
		db 0FCh	; ¸
		db    1
		db 0D3h	; ”
		db  0Ch
		db 0FFh
		db    0
		db    0
unk_19CC:	db 0FFh			; DATA XREF: RAM:19A8o
		db    0
		db    0
unk_19CF:	db    2			; DATA XREF: RAM:15CCo
		dw unk_19E0
		dw unk_19D6
		dw unk_19E0
unk_19D6:	db 0FEh	; ˛		; DATA XREF: RAM:19D2o
		db  3Dh	; =
		db 0FDh	; ˝
		db  0Fh
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db    0
		db 0ADh	; ≠
		db    4
unk_19E0:	db 0FFh			; DATA XREF: RAM:19D0o	RAM:19D4o
		db    0
		db    0
unk_19E3:	db    1			; DATA XREF: RAM:15CAo
		dw unk_1A10
		dw unk_1A10
		dw unk_1A10
		dw unk_1A10
		dw unk_1A10
		dw unk_1A10
		dw unk_1A10
		dw unk_1A10
		dw unk_19F8
		dw unk_1A10
unk_19F8:	db 0FDh	; ˝		; DATA XREF: RAM:19F4o
		db  7Dh	; }
		db 0FCh	; ¸
		db    6
		db 0FBh	; ˚
		db  80h	; Ä
		db 0ABh	; ´
		db    9
		db 0FBh	; ˚
		db 0B0h	; ∞
		db 0FDh	; ˝
		db  2Dh	; -
		db 0FCh	; ¸
		db    2
		db 0AAh	; ™
		db    8
		db 0FDh	; ˝
		db  7Dh	; }
		db 0FBh	; ˚
		db  80h	; Ä
		db 0FCh	; ¸
		db    1
		db 0AFh	; Ø
		db    4
unk_1A10:	db 0FFh			; DATA XREF: RAM:19E4o	RAM:19E6o ...
		db    0
		db    0
unk_1A13:	db    2			; DATA XREF: RAM:15CEo
		dw unk_1A26
		dw unk_1A1A
		dw unk_1A26
unk_1A1A:	db 0FEh	; ˛		; DATA XREF: RAM:1A16o
		db  3Dh	; =
		db 0FDh	; ˝
		db  0Fh
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db    0
		db 0ADh	; ≠
		db    4
		db 0ADh	; ≠
		db    6
unk_1A26:	db 0FFh			; DATA XREF: RAM:1A14o	RAM:1A18o
		db    0
		db    0
unk_1A29:	db    1			; DATA XREF: RAM:15D2o
		dw unk_1A47
		dw unk_1A47
		dw unk_1A47
		dw unk_1A47
		dw unk_1A47
		dw unk_1A47
		dw unk_1A47
		dw unk_1A47
		dw unk_1A3E
		dw unk_1A47
unk_1A3E:	db 0FDh	; ˝		; DATA XREF: RAM:1A3Ao
		db  2Fh	; /
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db    0
		db  9Dh	; ù
		db    1
		db  21h	; !
unk_1A47:	db 0FFh			; DATA XREF: RAM:1A2Ao	RAM:1A2Co ...
		db    0
		db    0
unk_1A4A:	db    2			; DATA XREF: RAM:15E2o
		dw unk_1A5D
		dw unk_1A51
		dw unk_1A5D
unk_1A51:	db 0F0h	; 		; DATA XREF: RAM:1A4Do
		db    1
		db 0FEh	; ˛
		db  25h	; %
		db 0FDh	; ˝
		db  0Fh
		db 0FBh	; ˚
		db    0
		db 0FCh	; ¸
		db    0
		db 0B2h	; ≤
		db  30h	; 0
unk_1A5D:	db 0FFh			; DATA XREF: RAM:1A4Bo	RAM:1A4Fo
		db    0
		db    0
unk_1A60:	db    1			; DATA XREF: RAM:15E4o
		dw unk_1A99
		dw unk_1A99
		dw unk_1A99
		dw unk_1A99
		dw unk_1A99
		dw unk_1A99
		dw unk_1A99
		dw unk_1A99
		dw unk_1A75
		dw unk_1A99
unk_1A75:	db 0FDh	; ˝		; DATA XREF: RAM:1A71o
		db  1Eh
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db    0
		db 0BCh	; º
		db    2
		db 0C1h	; ¡
		db    3
		db 0C8h	; »
		db    6
		db 0FDh	; ˝
		db  1Bh
		db 0BCh	; º
		db    2
		db 0C1h	; ¡
		db    3
		db 0C8h	; »
		db    6
		db 0FDh	; ˝
		db  17h
		db 0BCh	; º
		db    2
		db 0C1h	; ¡
		db    3
		db 0C8h	; »
		db    6
		db 0FDh	; ˝
		db  12h
		db 0BCh	; º
		db    2
		db 0C1h	; ¡
		db    3
		db 0C8h	; »
		db    6
unk_1A99:	db 0FFh			; DATA XREF: RAM:1A61o	RAM:1A63o ...
		db    0
		db    0
unk_1A9C:	db    1			; DATA XREF: RAM:15E6o
		dw unk_1AD5
		dw unk_1AD5
		dw unk_1AD5
		dw unk_1AD5
		dw unk_1AD5
		dw unk_1AD5
		dw unk_1AD5
		dw unk_1AD5
		dw unk_1AB1
		dw unk_1AD5
unk_1AB1:	db 0FDh	; ˝		; DATA XREF: RAM:1AADo
		db  1Eh
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db    0
		db  9Ah	; ö
		db    2
		db  1Dh
		db  26h	; &
		db  29h	; )
		db  32h	; 2
		db 0B5h	; µ
		db    3
		db 0B7h	; ∑
		db    5
		db 0FDh	; ˝
		db  1Bh
		db 0A6h	; ¶
		db    2
		db  29h	; )
		db  32h	; 2
		db 0B5h	; µ
		db    3
		db 0B7h	; ∑
		db    5
		db 0FDh	; ˝
		db  17h
		db 0A6h	; ¶
		db    2
		db  29h	; )
		db  32h	; 2
		db 0B5h	; µ
		db    3
		db 0B7h	; ∑
		db    5
unk_1AD5:	db 0FFh			; DATA XREF: RAM:1A9Do	RAM:1A9Fo ...
		db    0
		db    0
unk_1AD8:	db    1			; DATA XREF: RAM:15E8o
		dw unk_1B12
		dw unk_1B12
		dw unk_1B12
		dw unk_1B12
		dw unk_1B12
		dw unk_1B12
		dw unk_1B12
		dw unk_1B12
		dw unk_1AED
		dw unk_1B12
unk_1AED:	db 0FDh	; ˝		; DATA XREF: RAM:1AE9o
		db  2Eh	; .
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db    0
		db  95h	; ï
		db    1
		db  21h	; !
		db  15h
		db  21h	; !
		db  2Ch	; ,
		db  2Ah	; *
		db  2Ch	; ,
		db  2Ah	; *
		db 0ACh	; ¨
		db    4
		db 0FDh	; ˝
		db  2Bh	; +
		db 0A1h	; °
		db    1
		db  2Ch	; ,
		db  2Ah	; *
		db  2Ch	; ,
		db  2Ah	; *
		db 0ACh	; ¨
		db    4
		db 0FDh	; ˝
		db  27h	; '
		db 0A1h	; °
		db    1
		db  2Ch	; ,
		db  2Ah	; *
		db  2Ch	; ,
		db  2Ah	; *
		db 0ACh	; ¨
		db    4
unk_1B12:	db 0FFh			; DATA XREF: RAM:1AD9o	RAM:1ADBo ...
		db    0
		db    0
unk_1B15:	db    1			; DATA XREF: RAM:15EAo
		dw unk_1B4D
		dw unk_1B4D
		dw unk_1B4D
		dw unk_1B4D
		dw unk_1B4D
		dw unk_1B4D
		dw unk_1B4D
		dw unk_1B4D
		dw unk_1B2A
		dw unk_1B4D
unk_1B2A:	db 0FDh	; ˝		; DATA XREF: RAM:1B26o
		db  2Eh	; .
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db 0B0h	; ∞
		db  95h	; ï
		db    1
		db  21h	; !
		db  15h
		db  21h	; !
		db  2Bh	; +
		db 0B0h	; ∞
		db    6
		db 0FDh	; ˝
		db  2Bh	; +
		db 0A1h	; °
		db    1
		db  2Bh	; +
		db 0B0h	; ∞
		db    6
		db 0FDh	; ˝
		db  29h	; )
		db 0A1h	; °
		db    1
		db  2Bh	; +
		db 0B0h	; ∞
		db    6
		db 0FDh	; ˝
		db  26h	; &
		db 0A1h	; °
		db    1
		db  2Bh	; +
		db 0B0h	; ∞
		db    6
unk_1B4D:	db 0FFh			; DATA XREF: RAM:1B16o	RAM:1B18o ...
		db    0
		db    0
unk_1B50:	db    2			; DATA XREF: RAM:15ECo
		dw unk_1B68
		dw byte_1B57
		dw unk_1B68
byte_1B57:	db 0FEh			; DATA XREF: RAM:1B53o
		db  46h	; F
		db 0FDh	; ˝
		db  0Ch
		db 0FCh	; ¸
		db    1
		db 0FBh	; ˚
		db    0
		db 0F8h	; ¯
		db 0CCh	; Ã
		db  80h	; Ä
		db    2
		db    0
		db 0F0h	; 
		db    3
		db 0F8h	; ¯
		db 0E0h	; ‡
unk_1B68:	db 0FFh			; DATA XREF: RAM:1B51o	RAM:1B55o
		db    0
		db    0
unk_1B6B:	db    2			; DATA XREF: RAM:15EEo
		dw unk_1B81
		dw byte_1B72
		dw unk_1B81
byte_1B72:	db 0FEh			; DATA XREF: RAM:1B6Eo
		db  4Ch	; L
		db 0FDh	; ˝
		db  0Eh
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db 0F0h	; 
		db  84h	; Ñ
		db    2
		db  70h	; p
		db    9
		db  0Fh
		db 0F0h	; 
		db    6
unk_1B81:	db 0FFh			; DATA XREF: RAM:1B6Co	RAM:1B70o
		db    0
		db    0
unk_1B84:	db    2			; DATA XREF: RAM:15F8o
		dw unk_1B8B
		dw unk_1B98
		dw unk_1BA2
unk_1B8B:	db 0FEh	; ˛		; DATA XREF: RAM:1B85o
		db  43h	; C
		db 0FDh	; ˝
		db  0Fh
		db 0FCh	; ¸
		db    2
		db 0FBh	; ˚
		db    0
		db  83h	; É
		db    7
		db 0FFh
		db    0
		db    0
unk_1B98:	db 0FEh	; ˛		; DATA XREF: RAM:1B87o
		db  43h	; C
		db 0FDh	; ˝
		db  0Fh
		db 0FCh	; ¸
		db    2
		db 0FBh	; ˚
		db    0
		db  84h	; Ñ
		db    8
unk_1BA2:	db 0FFh			; DATA XREF: RAM:1B89o
		db    0
		db    0
unk_1BA5:	db    2			; DATA XREF: RAM:15FAo
		dw unk_1BBA
		dw unk_1BAC
		dw unk_1BBA
unk_1BAC:	db 0FEh	; ˛		; DATA XREF: RAM:1BA8o
		db  25h	; %
		db 0FDh	; ˝
		db  0Fh
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db    0
		db 0C0h	; ¿
		db    6
		db  3Ch	; <
		db  40h	; @
		db 0BCh	; º
		db  18h
unk_1BBA:	db 0FFh			; DATA XREF: RAM:1BA6o	RAM:1BAAo
		db    0
		db    0
unk_1BBD:	db    2			; DATA XREF: RAM:15FEo
		dw unk_1BC4
		dw unk_1BDB
		dw unk_1BF3
unk_1BC4:	db 0FEh	; ˛		; DATA XREF: RAM:1BBEo
		db  37h	; 7
		db 0FDh	; ˝
		db  0Fh
		db 0FCh	; ¸
		db    1
		db 0FBh	; ˚
		db    0
		db 0B5h	; µ
		db    4
		db  37h	; 7
		db  39h	; 9
		db  3Bh	; ;
		db  3Ch	; <
		db  3Eh	; >
		db  40h	; @
		db 0C1h	; ¡
		db  0Ah
		db 0F0h	; 
		db  0Ch
		db 0FFh
		db    0
		db    0
unk_1BDB:	db 0F9h	; ˘		; DATA XREF: RAM:1BC0o
		db  20h
		db 0F0h	; 
		db    6
		db 0FEh	; ˛
		db  37h	; 7
		db 0FDh	; ˝
		db  0Dh
		db 0FCh	; ¸
		db    1
		db 0FBh	; ˚
		db    0
		db 0B5h	; µ
		db    4
		db  37h	; 7
		db  39h	; 9
		db  3Bh	; ;
		db  3Ch	; <
		db  3Eh	; >
		db  40h	; @
		db 0C1h	; ¡
		db  0Ah
		db 0F0h	; 
		db  0Ch
unk_1BF3:	db 0FFh			; DATA XREF: RAM:1BC2o
		db    0
		db    0
unk_1BF6:	db    2			; DATA XREF: RAM:15FCo
		dw unk_1C2C
		dw unk_1BFD
		dw unk_1C58
unk_1BFD:	db 0FEh	; ˛		; DATA XREF: RAM:1BF9o
		db  21h	; !
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db    0
		db 0FDh	; ˝
		db  0Fh
		db  80h	; Ä
		db    1
		db 0FDh	; ˝
		db  0Ch
		db  0Ch
		db 0FDh	; ˝
		db  0Fh
		db  0Ch
		db 0FDh	; ˝
		db  0Ch
		db  18h
		db 0FDh	; ˝
		db    8
		db  24h	; $
		db 0FDh	; ˝
		db  0Fh
		db    4
		db 0FDh	; ˝
		db  0Ch
		db  10h
		db 0FDh	; ˝
		db  0Fh
		db  10h
		db 0FDh	; ˝
		db  0Ch
		db  1Ch
		db 0FDh	; ˝
		db    8
		db  28h	; (
		db 0FDh	; ˝
		db    7
		db  34h	; 4
		db 0FDh	; ˝
		db    5
		db 0C0h	; ¿
		db    6
		db 0FFh
		db    0
		db    0
unk_1C2C:	db 0FEh	; ˛		; DATA XREF: RAM:1BF7o
		db  21h	; !
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db    0
		db 0FDh	; ˝
		db  0Fh
		db  81h	; Å
		db    1
		db 0FDh	; ˝
		db  0Ch
		db  0Dh
		db 0FDh	; ˝
		db  0Fh
		db  0Dh
		db 0FDh	; ˝
		db  0Ch
		db  19h
		db 0FDh	; ˝
		db    8
		db  25h	; %
		db 0FDh	; ˝
		db  0Fh
		db    5
		db 0FDh	; ˝
		db  0Ch
		db  11h
		db 0FDh	; ˝
		db  0Fh
		db  11h
		db 0FDh	; ˝
		db  0Ch
		db  1Dh
		db 0FDh	; ˝
		db    8
		db  29h	; )
		db 0FDh	; ˝
		db    7
		db  35h	; 5
		db 0FDh	; ˝
		db    5
		db 0C1h	; ¡
		db    6
unk_1C58:	db 0FFh			; DATA XREF: RAM:1BFBo
		db    0
		db    0
unk_1C5B:	db    2			; DATA XREF: RAM:1604o
		dw unk_1C62
		dw unk_1CA7
		dw unk_1CEA
unk_1C62:	db 0FAh	; ˙		; DATA XREF: RAM:1C5Co
		db  40h	; @
		db 0FEh	; ˛
		db  3Bh	; ;
		db 0FDh	; ˝
		db    7
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db    0
		db 0BAh	; ∫
		db    1
		db  3Ch	; <
		db  3Eh	; >
		db 0C0h	; ¿
		db    5
		db 0FDh	; ˝
		db    8
		db 0BAh	; ∫
		db    1
		db  3Ch	; <
		db  3Eh	; >
		db 0C0h	; ¿
		db    5
		db 0FDh	; ˝
		db    9
		db 0BAh	; ∫
		db    1
		db  3Ch	; <
		db  3Eh	; >
		db 0C0h	; ¿
		db    5
		db 0FDh	; ˝
		db  0Ah
		db 0BAh	; ∫
		db    1
		db  3Ch	; <
		db  3Eh	; >
		db 0C0h	; ¿
		db    5
		db 0FDh	; ˝
		db  0Bh
		db 0BAh	; ∫
		db    1
		db  3Ch	; <
		db  3Eh	; >
		db 0C0h	; ¿
		db    5
		db 0FDh	; ˝
		db  0Ch
		db 0BAh	; ∫
		db    1
		db  3Ch	; <
		db  3Eh	; >
		db 0C0h	; ¿
		db    5
		db 0FDh	; ˝
		db  0Dh
		db 0BAh	; ∫
		db    1
		db  3Ch	; <
		db  3Eh	; >
		db 0C0h	; ¿
		db    5
		db 0F0h	; 
		db    6
		db 0FFh
		db    0
		db    0
unk_1CA7:	db 0FAh	; ˙		; DATA XREF: RAM:1C5Eo
		db  80h	; Ä
		db 0F0h	; 
		db    4
		db 0FEh	; ˛
		db  3Bh	; ;
		db 0FDh	; ˝
		db    8
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db    0
		db 0BAh	; ∫
		db    1
		db  3Ch	; <
		db  3Eh	; >
		db 0C0h	; ¿
		db    5
		db 0FDh	; ˝
		db    9
		db 0BAh	; ∫
		db    1
		db  3Ch	; <
		db  3Eh	; >
		db 0C0h	; ¿
		db    5
		db 0FDh	; ˝
		db  0Ah
		db 0BAh	; ∫
		db    1
		db  3Ch	; <
		db  3Eh	; >
		db 0C0h	; ¿
		db    5
		db 0FDh	; ˝
		db  0Bh
		db 0BAh	; ∫
		db    1
		db  3Ch	; <
		db  3Eh	; >
		db 0C0h	; ¿
		db    5
		db 0FDh	; ˝
		db  0Ch
		db 0BAh	; ∫
		db    1
		db  3Ch	; <
		db  3Eh	; >
		db 0C0h	; ¿
		db    5
		db 0FDh	; ˝
		db  0Dh
		db 0BAh	; ∫
		db    1
		db  3Ch	; <
		db  3Eh	; >
		db 0C0h	; ¿
		db    5
		db 0FDh	; ˝
		db  0Eh
		db 0BAh	; ∫
		db    1
		db  3Ch	; <
		db  3Eh	; >
		db 0C0h	; ¿
		db    5
		db  70h	; p
unk_1CEA:	db 0FFh			; DATA XREF: RAM:1C60o
		db    0
		db    0
unk_1CED:	db    1			; DATA XREF: RAM:1602o
		dw unk_1D1E
		dw unk_1D1E
		dw unk_1D1E
		dw unk_1D1E
		dw unk_1D1E
		dw unk_1D1E
		dw unk_1D1E
		dw unk_1D1E
		dw unk_1D02
		dw unk_1D0D
unk_1D02:	db 0FDh	; ˝		; DATA XREF: RAM:1CFEo
		db    0
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db  63h	; c
		db 0D4h	; ‘
		db  13h
		db 0FFh
		db    0
		db    0
unk_1D0D:	db 0FCh	; ¸		; DATA XREF: RAM:1D00o
		db    0
		db 0FDh	; ˝
		db  7Bh	; {
		db  87h	; á
		db    4
		db 0FDh	; ˝
		db  7Dh	; }
		db  87h	; á
		db    4
		db 0FDh	; ˝
		db  7Fh	; 
		db  87h	; á
		db    5
		db 0FDh	; ˝
		db  1Fh
		db    7
unk_1D1E:	db 0FFh			; DATA XREF: RAM:1CEEo	RAM:1CF0o ...
		db    0
		db    0
unk_1D21:	db    1			; DATA XREF: RAM:1600o
		dw unk_1D4F
		dw unk_1D4F
		dw unk_1D4F
		dw unk_1D4F
		dw unk_1D4F
		dw unk_1D4F
		dw unk_1D4F
		dw unk_1D4F
		dw unk_1D36
		dw unk_1D43
unk_1D36:	db 0FDh	; ˝		; DATA XREF: RAM:1D32o
		db    0
		db 0FCh	; ¸
		db    0
		db 0FBh	; ˚
		db  60h	; `
		db 0D3h	; ”
		db    5
		db 0CFh	; œ
		db    5
		db 0FFh
		db    0
		db    0
unk_1D43:	db 0FDh	; ˝		; DATA XREF: RAM:1D34o
		db  7Fh	; 
		db 0FCh	; ¸
		db    3
		db  87h	; á
		db    6
		db 0FDh	; ˝
		db  1Fh
		db 0FCh	; ¸
		db    0
		db  87h	; á
		db    6
unk_1D4F:	db 0FFh			; DATA XREF: RAM:1D22o	RAM:1D24o ...
		db    0
		db    0
unk_1D52:	db    2			; DATA XREF: RAM:1606o
		dw unk_1D59
		dw unk_1D7C
		dw unk_1D9F
unk_1D59:	db 0FEh	; ˛		; DATA XREF: RAM:1D53o
		db    6
		db 0FDh	; ˝
		db  0Ch
		db 0FCh	; ¸
		db    1
		db 0FBh	; ˚
		db  2Ch	; ,
		db 0F8h	; ¯
		db 0C1h	; ¡
		db 0ACh	; ¨
		db    3
		db  31h	; 1
		db  32h	; 2
		db  34h	; 4
		db  38h	; 8
		db  3Ah	; :
		db  3Eh	; >
		db  31h	; 1
		db  38h	; 8
		db  39h	; 9
		db  3Bh	; ;
		db  3Fh	; ?
		db  43h	; C
		db  41h	; A
		db 0F8h	; ¯
		db 0E0h	; ‡
		db 0BDh	; Ω
		db    3
		db  3Ch	; <
		db 0F0h	; 
		db    5
		db 0FFh
		db    0
		db    0
unk_1D7C:	db 0FEh	; ˛		; DATA XREF: RAM:1D55o
		db    6
		db 0FDh	; ˝
		db  0Bh
		db 0FCh	; ¸
		db    1
		db 0FBh	; ˚
		db  2Ch	; ,
		db 0FAh	; ˙
		db  40h	; @
		db 0F0h	; 
		db    2
		db 0F8h	; ¯
		db 0C1h	; ¡
		db 0ACh	; ¨
		db    3
		db  31h	; 1
		db  32h	; 2
		db  34h	; 4
		db  38h	; 8
		db  3Ah	; :
		db  3Eh	; >
		db  31h	; 1
		db  38h	; 8
		db  39h	; 9
		db  3Bh	; ;
		db  3Fh	; ?
		db  43h	; C
		db  41h	; A
		db 0F8h	; ¯
		db 0E0h	; ‡
		db 0BDh	; Ω
		db    3
		db  3Ch	; <
		db  70h	; p
unk_1D9F:	db 0FFh			; DATA XREF: RAM:1D57o
		db    0
		db    0
unk_1DA2:	db    2			; DATA XREF: RAM:15D4o
		dw unk_1E4A
		dw unk_1E4A
		dw unk_1DA9
unk_1DA9:	db  8Ch	; å		; DATA XREF: RAM:1DA7o
		db  0Ch
		db 0FFh
		db    0
		db    0
unk_1DAE:	db    2			; DATA XREF: RAM:15D6o
		dw unk_1E4A
		dw unk_1E4A
		dw unk_1DB5
unk_1DB5:	db  8Dh	; ç		; DATA XREF: RAM:1DB3o
		db  0Bh
		db 0FFh
		db    0
		db    0
unk_1DBA:	db    2			; DATA XREF: RAM:15D8o
		dw unk_1E4A
		dw unk_1E4A
		dw unk_1DC1
unk_1DC1:	db  8Eh	; é		; DATA XREF: RAM:1DBFo
		db  0Dh
		db 0FFh
		db    0
		db    0
unk_1DC6:	db    2			; DATA XREF: RAM:15DAo
		dw unk_1E4A
		dw unk_1E4A
		dw unk_1DCD
unk_1DCD:	db  8Fh	; è		; DATA XREF: RAM:1DCBo
		db  0Fh
		db 0FFh
		db    0
		db    0
unk_1DD2:	db    2			; DATA XREF: RAM:15DCo
		dw unk_1E4A
		dw unk_1E4A
		dw unk_1DD9
unk_1DD9:	db  90h	; ê		; DATA XREF: RAM:1DD7o
		db  3Fh	; ?
		db 0FFh
		db    0
		db    0
unk_1DDE:	db    2			; DATA XREF: RAM:15DEo
		dw unk_1E4A
		dw unk_1E4A
		dw unk_1DE5
unk_1DE5:	db  91h	; ë		; DATA XREF: RAM:1DE3o
		db  28h	; (
		db 0FFh
		db    0
		db    0
unk_1DEA:	db    2			; DATA XREF: RAM:15E0o
		dw unk_1E4A
		dw unk_1E4A
		dw unk_1DF1
unk_1DF1:	db  92h	; í		; DATA XREF: RAM:1DEFo
		db  2Bh	; +
		db 0FFh
		db    0
		db    0
unk_1DF6:	db    2			; DATA XREF: RAM:15F0o
		dw unk_1E4A
		dw unk_1E4A
		dw unk_1DFD
unk_1DFD:	db  93h	; ì		; DATA XREF: RAM:1DFBo
		db  51h	; Q
		db 0FFh
		db    0
		db    0
unk_1E02:	db    2			; DATA XREF: RAM:15F2o
		dw unk_1E4A
		dw unk_1E4A
		dw unk_1E09
unk_1E09:	db  94h	; î		; DATA XREF: RAM:1E07o
		db  57h	; W
		db 0FFh
		db    0
		db    0
unk_1E0E:	db    2			; DATA XREF: RAM:15F4o
		dw unk_1E4A
		dw unk_1E4A
		dw unk_1E15
unk_1E15:	db  95h	; ï		; DATA XREF: RAM:1E13o
		db  3Fh	; ?
		db 0FFh
		db    0
		db    0
unk_1E1A:	db    2			; DATA XREF: RAM:15F6o
		dw unk_1E4A
		dw unk_1E4A
		dw unk_1E21
unk_1E21:	db  96h	; ñ		; DATA XREF: RAM:1E1Fo
		db  55h	; U
		db 0FFh
		db    0
		db    0
unk_1E26:	db 0F0h	; 		; DATA XREF: RAM:1E2Co	RAM:1E2Eo ...
		db    0
		db 0FFh
		db    0
		db    0
		db    2
		dw unk_1E26
		dw unk_1E26
		dw unk_1E26
		db    0
		db    0
		db    0
		db 0C8h	; »
		dw unk_1E4A
		dw unk_1E4A
		dw unk_1E4A
		dw unk_1E4A
		dw unk_1E4A
		dw unk_1E4A
		dw unk_1E4A
		dw unk_1E4A
		dw unk_1E4A
		dw unk_1E4A
unk_1E4A:	db 0FFh			; DATA XREF: RAM:1DA3o	RAM:1DA5o ...
		db    0
		db    0
END_OF_DRIVER:
	if MOMPASS==2
		if $ > 1F80h
			fatal "Driver too big to fit in Z80 Ram ; the last offset must be < 1F80h. It is currently \{END_OF_DRIVER}h"
		else
			message "Last offset: \{END_OF_DRIVER}h"
		endif
	endif

		end