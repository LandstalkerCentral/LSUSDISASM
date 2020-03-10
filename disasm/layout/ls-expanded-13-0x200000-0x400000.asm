
; GAME SECTION 13 : ROM EXPANSION.

                align $204000
                include "data\maps\entries.asm"    ; Map entry list
                include "data\graphics\maps\palettes\entries.asm"    ; Map palettes entry list
                include "data\maps\global\mapwarps.asm"    ; Map warps
                align $400000
						
