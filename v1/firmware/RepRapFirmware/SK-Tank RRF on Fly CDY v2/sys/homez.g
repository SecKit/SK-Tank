; homez.g
; called to home the Z axis
;

;========================================================
; Z endstop device
; Choose your preferred configuration and uncomment according commands.
; Related choice are in config.g, homez.g and homeall.g.
;========================================================
; <A> Use inductive sensor as Z endstop (z min endstop slot)
;
G91                   ; relative positioning
G1 H2 Z10 F6000       ; lift Z relative to current position
G90                   ; absolute positioning
G1 X150 Y150 F6000    ; move extruder to the center
G30                   ; home Z by probing the bed
;--------------------------------------------------------
; <B> Use Z optical endstop (z min endstop slot) and 
;     inductive sensor (z max endstop slot)
;G91                   ; relative positioning
;G1 H1 Z-400 F600      ; move Z down until the endstop is triggered
;G90                   ; absolute positioning
;========================================================
