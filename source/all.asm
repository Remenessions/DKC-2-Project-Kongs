exhirom
optimize dp always
optimize address mirrors
;!version = 1
!override_pirate_panic = 0
!pirate_panic_replacement = $23


org $008000			;dummy org so functions work
	incsrc macros.asm
	incsrc constants.asm
	incsrc audio_constants.asm	;added for kong hack
	incsrc ram.asm
	incsrc sram.asm
	incsrc vram.asm
	incsrc structs.asm
	incsrc mmio.asm

check bankcross off
org $C00000
	incsrc bank_C0.asm
org $808000
	incsrc bank_80.asm
org $C10000
	incsrc bank_C1.asm
;org $C20000
	incsrc bank_C2.asm
;org $C30000
	incsrc bank_C3.asm
;org $C40000
	incsrc bank_C4.asm
;org $C50000
	incsrc bank_C5.asm
;org $C60000
	incsrc bank_C6.asm
;org $C70000
	incsrc bank_C7.asm
;org $C80000
	incsrc bank_C8.asm
;org $C90000
	incsrc bank_C9.asm
;org $CA0000
	incsrc bank_CA.asm
;org $CB0000
	incsrc bank_CB.asm
;org $CC0000
	incsrc bank_CC.asm
;org $CD0000
	incsrc bank_CD.asm
;org $CE0000
	incsrc bank_CE.asm
;org $CF0000
	incsrc bank_CF.asm
;org $D00000
	incsrc bank_D0.asm
;org $D10000
	incsrc bank_D1.asm
;org $D20000
	incsrc bank_D2.asm
;org $D30000
	incsrc bank_D3.asm
;org $D40000
	incsrc bank_D4.asm
;org $D50000
	incsrc bank_D5.asm
;org $D60000
	incsrc bank_D6.asm
;org $D70000
	incsrc bank_D7.asm
;org $D80000
	incsrc bank_D8.asm
;org $D90000
	incsrc bank_D9.asm
;org $DA0000
	incsrc bank_DA.asm
;org $DB0000
	incsrc bank_DB.asm
;org $DC0000
	incsrc bank_DC.asm
;org $DD0000
	incsrc bank_DD.asm
;org $DE0000
	incsrc bank_DE.asm

check bankcross full

;org $DEA932
	incsrc graphics_part_1.asm

org $EE0000
	incsrc sound.asm	;sound
org $F30000
	incsrc bank_F3.asm	;graphics_part_2
org $B38000
	incsrc bank_B3.asm
org $F40000
	incsrc bank_F4.asm	;graphics_part_3
org $B48000
	incsrc bank_B4.asm
org $F50000
	incsrc bank_F5.asm	;graphics_part_4
org $B58000
	incsrc bank_B5.asm
org $F60000
	incsrc bank_F6.asm	;graphics_part_5
org $B68000
	incsrc bank_B6.asm
org $F70000
	incsrc bank_F7.asm	;text
org $F80000
	incsrc bank_F8.asm	;graphics_part_6
org $B88000
	incsrc bank_B8.asm
org $F90000
	incsrc bank_F9.asm	;animation/secret ending layer 2
org $B9D000
	incsrc bank_B9.asm
org $FA0000
	incsrc bank_FA.asm	;graphics_part_7
org $BA8000
	incsrc bank_BA.asm
org $FB0000
	incsrc bank_FB.asm	;graphics_part_8
org $BB8000
	incsrc bank_BB.asm
org $FC0000
	incsrc bank_FC.asm
org $BC8000
	incsrc bank_BC.asm
org $FD0000
	incsrc bank_FD.asm
org $FE0000
	incsrc bank_FE.asm
org $BEB800
	incsrc bank_BE.asm
org $FF0000
	incsrc bank_FF.asm
org $FFFFFF
	db $00

;org $400000
;	incsrc "exhi/bank_40.asm"
;org $408000
;
org $410000
	incsrc "exhi/bank_41.asm"	;sprite graphics table
org $420000
	incsrc "exhi/bank_42.asm"	;relocated game data
org $430000
	incsrc "exhi/bank_43.asm"	;reserved for relocated/custom game data
org $440000
	incsrc "exhi/bank_44.asm"	;reserved for relocated/custom game data
org $450000
	incsrc "exhi/bank_45.asm"	;reserved for relocated/custom game data
org $460000
	incsrc "exhi/bank_46.asm"	;reserved for relocated/custom game data
org $470000
	incsrc "exhi/bank_47.asm"	;reserved for relocated/custom game data

;org $480000
;	incsrc "exhi/bank_48.asm"
;org $490000
;	incsrc "exhi/bank_49.asm"
;org $4A0000
;	incsrc "exhi/bank_4A.asm"
;org $4B0000
;	incsrc "exhi/bank_4B.asm"
;org $4C0000
;	incsrc "exhi/bank_4C.asm"
;org $4D0000
;	incsrc "exhi/bank_4D.asm"
;org $4E0000
;	incsrc "exhi/bank_4E.asm"
;org $4F0000
;	incsrc "exhi/bank_4F.asm"
;org $500000
;	incsrc "exhi/bank_50.asm"
;org $510000
;	incsrc "exhi/bank_51.asm"
;org $520000
;	incsrc "exhi/bank_52.asm"
;org $530000
;	incsrc "exhi/bank_53.asm"
;org $540000
;	incsrc "exhi/bank_54.asm"
;org $550000
;	incsrc "exhi/bank_55.asm"
;org $560000
;	incsrc "exhi/bank_56.asm"
;org $570000
;	incsrc "exhi/bank_57.asm"
;org $580000
;	incsrc "exhi/bank_58.asm"
;org $590000
;	incsrc "exhi/bank_59.asm"
;org $5A0000
;	incsrc "exhi/bank_5A.asm"
;org $5B0000
;	incsrc "exhi/bank_5B.asm"
;org $5C0000
;	incsrc "exhi/bank_5C.asm"
;org $5D0000
;	incsrc "exhi/bank_5D.asm"
;org $5E0000
;	incsrc "exhi/bank_5E.asm"
;org $5F0000
;	incsrc "exhi/bank_5F.asm"

check bankcross full
org $480000
	incsrc "kong_hack/objects/graphics/donkey_sprite_data.asm"
	incsrc "kong_hack/objects/graphics/kiddy_sprite_data.asm"
	incsrc "kong_hack/objects/graphics/kong_hack_sprite_data.asm"
	
	print "Exhi Graphics End Address: ",pc
org $5FFFFF
	db $00