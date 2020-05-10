
   cpu z80
   listing off
   phase	0
   include "..\musicmacros.asm"
   include "..\musicenums.asm"
   org 08000h

		dw Music33
		dw Music34
		dw Music35
		dw Music36
		dw Music37
		dw Music38
		dw Music39
		dw Music40
		dw Music41
		dw Music42
		dw Music43
		dw Music44
		dw Music45
		dw Music46
		dw Music47
		dw Music64
		dw Music64
		dw Music64
		dw Music64
		dw Music64
		dw Music64
		dw Music64
		dw Music64
		dw Music64
		dw Music64
		dw Music64
		dw Music64
		dw Music64
		dw Music64
		dw Music64
		dw Music64
		dw Music64
		include "music33.asm"		; Music 33
		include "music34.asm"		; Music 34
		include "music35.asm"		; Music 35
		include "music36.asm"		; Music 36
		include "music37.asm"		; Music 37
		include "music38.asm"		; Music 38
		include "music39.asm"		; Music 39
		include "music40.asm"		; Music 40
		include "music41.asm"		; Music 41
		include "music43.asm"		; Music 43
		include "music44.asm"		; Music 44
		include "music45.asm"		; Music 45
		include "music46.asm"		; Music 46
		include "music42.asm"		; Music 42
		include "music47.asm"		; Music 47
		include "music64.asm"		; Music 64
		org 0E000h
		binclude "../sounddriver.bin"
