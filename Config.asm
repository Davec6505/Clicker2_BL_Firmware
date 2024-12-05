_BootResetVector:
;Config.c,107 :: 		void BootResetVector() {
;Config.c,108 :: 		R30 = BOOTLOADER_START; // Load R30 with bootloader main address.
LUI	R30, 48415
ORI	R30, R30, 16384
;Config.c,110 :: 		JR R30              // Perform indirect jump to bootloader application,
JR	R30
;Config.c,111 :: 		NOP                 // thus changing the kseg as well.
NOP	
;Config.c,113 :: 		}
L_end_BootResetVector:
JR	RA
NOP	
; end of _BootResetVector
_Config:
;Config.c,168 :: 		void Config() {
;Config.c,171 :: 		}
L_end_Config:
JR	RA
NOP	
; end of _Config
