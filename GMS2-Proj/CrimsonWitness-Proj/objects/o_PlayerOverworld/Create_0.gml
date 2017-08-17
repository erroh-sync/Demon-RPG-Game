enum dir {
    nulldir = -1,
    negdown = -90,
    left = 0,
    up = 90,
    right = 180,
    down = 270,
    negleft = 360
};

event_inherited();

x = global.p_saved_x;
y = global.p_saved_y;
facedir = global.p_saved_r;

while (facedir > 270){
	facedir -= 90;
}

while (facedir < 0)
{
	facedir += 90;
}

movedir = dir.nulldir;
relmovedir = movedir;

maxstepdist = 16;
stepdist = -1;
stepspeed = 1;

maxrotstep = 90;
rotstep = -1;
rotdir = 0;
rotspeed = 5;

glancex = 0;
glancey = 0;
glancemax = 35;