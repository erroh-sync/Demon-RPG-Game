/// @description Appended for move fx
ss_xloc += irandom_range(-128, 128);
ss_yloc += irandom_range(-128, 128);

event_inherited();

instance_create_layer(ss_xloc, ss_yloc, "gui_layer", o_ImpactMark);
instance_create_layer(ss_xloc, ss_yloc, "gui_layer", o_ImpactPulse);
instance_create_layer(ss_xloc, ss_yloc, "gui_layer", o_ImpactLines);

__sfx_play( a_FrLgPunch, 1.0);