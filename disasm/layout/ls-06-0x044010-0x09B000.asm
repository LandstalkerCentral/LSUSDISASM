
; GAME SECTION 06 :
; 0x044010..0x09B000 : Map Tilesets, Intro Font
; FREE SPACE : 916 bytes.


p_pt_MapTilesets:
                dc.l pt_MapTilesets
                include "data\graphics\maps\tilesets\animated\entries.asm"    ; Animated Map Tileset Pointer Table
p_IntroFont:    dc.l IntroFont          
                include "data\graphics\maps\tilesets\entries.asm"    ; Map Tileset Entries
                include "data\graphics\maps\tilesets\animated\storage.asm"    ; Map Tileset Entries
IntroFont:      incbin "data/graphics/tech/fonts/introfont.bin" ; uncompressed 4bpp graphics
                align $09B000
