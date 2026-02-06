onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -label Q /updncntr_tb/CLK_sig
add wave -noupdate -label Load /updncntr_tb/LOAD_sig
add wave -noupdate -label nCTEN /updncntr_tb/CTEN_sig
add wave -noupdate -label UPDN /updncntr_tb/DI_U_sig
add wave -noupdate -label D -expand /updncntr_tb/D_sig
add wave -noupdate -label Q -expand /updncntr_tb/Q_sig
add wave -noupdate -label nRCO /updncntr_tb/RCO_sig
add wave -noupdate -label MAX/MIN /updncntr_tb/MAX_MIN_sig
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {2048 ns}
