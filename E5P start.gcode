G90 ;absolute position mode
M201 X2000.00 Y2000.00 Z100.00 E5000.00 ;Setup machine max acceleration
M203 X750.00 Y750.00 Z10.00 E80.00 ;Setup machine max feedrate
M204 P750.00 R1000.00 T300.00 ;Setup Print/Retract/Travel acceleration
M205 B20000.00 S0.00 T0.00 J0.06 ;Setup Junction Deviation
M220 S100 ;Reset Feedrate
M221 S100 ;Reset Flowrate

G28 ;Home
G29 A
G29 L1
G29 J
M420 S1 Z2 ;Enable ABL using saved Mesh and Fade Height

G92 E0 ;Reset Extruder
G1 X0.0 Y0.0 F5000.0 ;Move to start position
G1 Z0.2 F3000 ;Move Z Axis up
G1 X0.0 Y350.0 Z0.2 F1500.0 E15 ;Draw the first line
G1 X0.3 Y350.0 Z0.2 F5000.0 ;Move to side a little
G1 X0.3 Y0 Z0.2 F1500.0 E30 ;Draw the second line
G92 E0 ;Reset Extruder
G1 Z2.0 F3000 ;Move Z Axis up