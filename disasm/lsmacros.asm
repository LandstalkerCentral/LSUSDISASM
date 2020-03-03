; ---------------------------------------------------------------------------
; Align and pad
; input: length to align to, value to use as padding (default is $FF)
; ---------------------------------------------------------------------------

  ; sf2 examples of more specific macro files
	;include "sf2cutscenemacros.asm"
	;include "sf2mapmacros.asm"
	;include "sf2mapsetupmacros.asm"

align:	macro
	if (narg=1)
	dcb.b \1-(*%\1),$FF
	else
	dcb.b \1-(*%\1),\2
	endc
	endm
	
wordAlign:	macro
	dcb.b *%2,$FF
	endm
	
headerRegion:	macro
	if (EXPANDED_ROM=0)
	dc.b 'U               '
	else
	dc.b 'JUE             '
	endc
	endm
	
regionCheck:	macro
	if (EXPANDED_ROM=0)
	bsr.w   CheckRegion
	else
	nop
	nop
	endc
	endm
	
declareRomEnd:	macro
	if (EXPANDED_ROM=0)
	dc.l $1FFFFF
	else
	dc.l $3FFFFF
	endc
	endm	

enableSram:	macro
	if (EXPANDED_ROM=1)
	move.b #$03,($a130f1).l
	endc
	endm
	
disableSram:	macro
	if (EXPANDED_ROM=1)
	move.b #$00,($a130f1).l
	endc
	endm
	
debugModeActivation:	macro
	if (DEBUG_MODE_ACTIVATION=1)
	dc.w 0
	else
	dc.w $FFFF
	endc
	endm	

conditionalRomExpand:	macro
	if (EXPANDED_ROM=1)
	include "layout\ls-expanded-13-0x200000-0x400000.asm"
	endc
	endm
	
conditionalPc:	macro
	if (EXPANDED_ROM=0)
	\1 \2(pc),\3
	else
	\1 \2,\3
	endc
	endm
	
conditionalShortBsr:	macro
	if (EXPANDED_ROM=0)
	bsr.s \1
	else
	jsr \1
	endc
	endm
	
conditionalBsr:	macro
	if (EXPANDED_ROM=0)
	bsr.w \1
	else
	jsr \1
	endc
	endm
	
conditionalWordAddr:	macro
	if (EXPANDED_ROM=0)
	\1 (\2).w,\3
	else
	\1 (\2).l,\3
	endc
	endm	
	
alignIfVanillaRom:	macro
	if (EXPANDED_ROM=0)
	align \1
	endc
	endm
	
alignIfExpandedRom:	macro
	if (EXPANDED_ROM=1)
	align \1
	endc
	endm
	
wordAlignIfExpandedRom:	macro
	if (EXPANDED_ROM=1)
	wordAlign
	endc
	endm
	
bsrIfVanillaRom:	macro
	if (EXPANDED_ROM=0)
	bsr.\0 \1
	endc
	endm
	
equIfVanillaRom:	macro
	if (EXPANDED_ROM=0)
\1: equ \2
	endc
	endm
	
equIfExpandedRom:	macro
	if (EXPANDED_ROM=1)
\1: equ \2
	endc
	endm
	
includeIfVanillaRom:	macro
	if (EXPANDED_ROM=0)
	include \1
	endc
	endm
	
incbinIfVanillaRom:	macro
	if (EXPANDED_ROM=0)
	incbin \1
	endc
	endm
	
includeIfExpandedRom:	macro
	if (EXPANDED_ROM=1)
	include \1
	endc
	endm
	
incbinIfExpandedRom:	macro
	if (EXPANDED_ROM=1)
	incbin \1
	endc
	endm
	
sndCom:	macro
	trap #SOUND_COMMAND
	dc.w \1
	endm
	

	
mapWarp:	macro
	dc.w \1
	dc.w \2
	dc.w \3
	dc.w \4
	endm
	
spritePalette:	macro
	dc.b \1
	dc.b \2
	endm
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
