
; ASM FILE music32.asm :
; 0xDD2D..0xDD48 : Music 32
Music_32:       db 0
		db 0
		db 0
		db 0C8h
		dw Music_32_Channel_9
		dw Music_32_Channel_9
		dw Music_32_Channel_9
		dw Music_32_Channel_9
		dw Music_32_Channel_9
		dw Music_32_Channel_9
		dw Music_32_Channel_9
		dw Music_32_Channel_9
		dw Music_32_Channel_9
		dw Music_32_Channel_9
Music_32_Channel_9:
		channel_end
