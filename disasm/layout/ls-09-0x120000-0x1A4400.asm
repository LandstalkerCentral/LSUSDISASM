
; GAME SECTION 09 :
; 0x120000..0x1A4400 : Sprite data
; FREE SPACE : 290 bytes.


p_pt_Sprites:   dc.l pt_Sprites
                include "data\graphics\sprites\entries.asm"    ; Sprite entry tables
                align $1A4400
