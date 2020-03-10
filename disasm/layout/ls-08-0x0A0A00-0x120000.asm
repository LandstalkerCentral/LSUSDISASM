
; GAME SECTION 08 :
; 0x0A0A00..0x120000 : Map data, region check
; FREE SPACE : 3308 bytes.


p_pt_Maps:      dc.l pt_Maps
p_MapPalettes:  dc.l MapPalette00       
p_MapWarps:     dc.l MapWarps           

; =============== S U B R O U T I N E =======================================

j_CheckRegion:
                
                jmp     CheckRegion

    ; End of function j_CheckRegion

                includeIfVanillaRom "data\maps\entries.asm"    ; Map entry list
                includeIfVanillaRom "data\graphics\maps\palettes\entries.asm"    ; Map palettes entry list
                includeIfVanillaRom "data\maps\global\mapwarps.asm"    ; Map warps
                include "code\common\tech\regioncheck.asm"    ; Region check code
                align $120000
