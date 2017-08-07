enum dir {
    nulldir = -1,
    negdown = -90,
    left = 0,
    up = 90,
    right = 180,
    down = 270,
    negleft = 360
};
/*
x = global.p_saved_x;
y = global.p_saved_y;
facedir = global.p_saved_r;
*/
facedir = dir.left;
movedir = dir.nulldir;
relmovedir = movedir;

maxstepdist = 16;
stepdist = -1;
stepspeed = 1;

maxrotstep = 90;
rotstep = -1;
rotdir = 0;
rotspeed = 5;