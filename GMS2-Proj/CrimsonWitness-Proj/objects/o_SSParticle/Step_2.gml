if(!init){
	xs = image_xscale;
	ys = image_yscale;
	kt = killtimer;
	init = true
}

if(usekilltimer){
	killtimer -= 1;
	if(killtimer<=0)
		instance_destroy();
}

var alph = 0;

if(usekilltimer)
	alph = clamp(1 - killtimer/kt, 0, 1);
else
	alph = clamp(image_index/image_number, 0, 1);

if(fadeoverlife){		
	image_alpha = lerp(1.0,0.0,alph);
}

if(scaleoverlife){		
	image_xscale = lerp(xs,max_xscale,alph);
	image_yscale = lerp(ys,max_yscale,alph);
}

if(usemenucol)
	image_blend = global.menucol;

image_angle += image_rotrate;