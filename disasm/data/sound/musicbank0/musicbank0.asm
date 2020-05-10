
   cpu z80
   listing off
   phase	0
   include "..\musicmacros.asm"
   include "..\musicenums.asm"
   org 08000h

		binclude "../yminst.bin"
		dw Music01
		dw Music02
		dw Music03
		dw Music04
		dw Music05
		dw Music06
		dw Music07
		dw Music08
		dw Music09
		dw Music10
		dw Music11
		dw Music12
		dw Music13
		dw Music14
		dw Music15
		dw Music16
		dw Music17
		dw Music18
		dw Music19
		dw Music20
		dw Music21
		dw Music22
		dw Music32
		dw Music32
		dw Music32
		dw Music32
		dw Music27
		dw Music32
		dw Music29
		dw Music32
		dw Music31
		dw Music32
		include "music01.asm"		; Music 01
		include "music02.asm"		; Music 02
		include "music10.asm"		; Music 10
		include "music18.asm"		; Music 18
		include "music19.asm"		; Music 19
		include "music20.asm"		; Music 20
		include "music21.asm"		; Music 21
		include "music22.asm"		; Music 22
		include "music29.asm"		; Music 29
		include "music17.asm"		; Music 17
		include "music03.asm"		; Music 03
		include "music31.asm"		; Music 31
		include "music04.asm"		; Music 04
		include "music05.asm"		; Music 05
		include "music06.asm"		; Music 06
		include "music07.asm"		; Music 07
		include "music08.asm"		; Music 08
		include "music09.asm"		; Music 09
		include "music12.asm"		; Music 12
		include "music11.asm"		; Music 11
		include "music13.asm"		; Music 13
		include "music14.asm"		; Music 14
		include "music15.asm"		; Music 15
		include "music16.asm"		; Music 16
		include "music27.asm"		; Music 27
		include "music32.asm"		; Music 32
