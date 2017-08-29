if(isin)
	anim = lerp(anim, 0.0, 0.05);
else
	anim = lerp(anim, 1.0, 0.1);

image_angle = anim*360;
image_alpha = 1.0 - (anim);

image_xscale = 1 + (anim * 1.5);
image_yscale = 1 + (anim * 1.5); 

image_blend = global.menucol;