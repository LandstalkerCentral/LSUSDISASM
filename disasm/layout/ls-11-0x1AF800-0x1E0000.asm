
; GAME SECTION 11 :
; 0x1AF800..0x1E0000 : Map Blocks
; FREE SPACE : 1544 bytes.


p_pt_MapBlocks: dc.l pt_MapBlocks
                include "data\graphics\maps\blocks\entries.asm"    ; Map Block Entries
                align $1E0000
