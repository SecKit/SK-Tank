; homeall.g
; called to home all axes
;

G91                     ; relative positioning
G1 H2 Z10 F900          ; lift Z relative to current position

;--------------------------------------------------------
; Home X
;--------------------------------------------------------
G1 H1 X-350 F6000       ; move quickly to X axis endstop and stop there (first pass)
G1 X5 F3600             ; go back a few mm
G1 H1 X-350 F600        ; move slowly to X axis endstop once more (second pass)

;--------------------------------------------------------
; Home Y
;--------------------------------------------------------
G1 H1 Y-350 F6000       ; move quickly to Y axis endstop and stop there (first pass)
G1 Y5 F3600             ; go back a few mm
G1 H1 Y-350 F600        ; move slowly to Y axis endstop once more (second pass)

;--------------------------------------------------------
; Home Z
;--------------------------------------------------------

;========================================================
; Z endstop device
; Choose your preferred configuration and uncomment according commands.
; Related choice are in config.g, homez.g and homeall.g.
;========================================================
; <A> Use inductive sensor as Z endstop (z min endstop slot)
;
G90                     ; absolute positioning
G1 X150 Y150 F6000
G30                     ; home Z by probing the bed
;--------------------------------------------------------
; <B> Use Z optical endstop (z min endstop slot) and 
;     inductive sensor (z max endstop slot)
;
;G1 H1 Z-450
;========================================================

M400					; wait for current movement to finish
G90                     ; absolute positioning
