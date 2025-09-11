# This script segment is generated automatically by AutoPilot

set axilite_register_dict [dict create]
set port_CTRL {
InVideoFormat { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 16
	offset_end 23
}
OutVideoFormat { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 24
	offset_end 31
}
width { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 32
	offset_end 39
}
height { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 40
	offset_end 47
}
K11 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 80
	offset_end 87
}
K12 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 88
	offset_end 95
}
K13 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 96
	offset_end 103
}
K21 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 104
	offset_end 111
}
K22 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 112
	offset_end 119
}
K23 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 120
	offset_end 127
}
K31 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 128
	offset_end 135
}
K32 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 136
	offset_end 143
}
K33 { 
	dir I
	width 16
	depth 1
	mode ap_none
	offset 144
	offset_end 151
}
ROffset { 
	dir I
	width 10
	depth 1
	mode ap_none
	offset 152
	offset_end 159
}
GOffset { 
	dir I
	width 10
	depth 1
	mode ap_none
	offset 160
	offset_end 167
}
BOffset { 
	dir I
	width 10
	depth 1
	mode ap_none
	offset 168
	offset_end 175
}
ClampMin { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 176
	offset_end 183
}
ClipMax { 
	dir I
	width 8
	depth 1
	mode ap_none
	offset 184
	offset_end 191
}
ap_start { }
ap_done { }
ap_ready { }
ap_idle { }
interrupt {
}
}
dict set axilite_register_dict CTRL $port_CTRL


