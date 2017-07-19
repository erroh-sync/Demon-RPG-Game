// Convert_3d(targetx,targety,targetz,xfrom,from,zfrom)

var pX, pY, pZ, mm;
pX = argument0 - argument3;
pY = argument1 - argument4;
pZ = argument2 - argument5;
mm = pX*dX + pY*dY + pZ*dZ;
     
if mm > 0
begin
    pX /= mm;
    pY /= mm;
    pZ /= mm;
end;
else 
begin
    x_2d = 0;
    y_2d = -100;
    return 0;
end;

mm = (pX*vX + pY*vY + pZ*vZ) / sqr((Obj_RenderPipeline.ScreenWidth/Obj_RenderPipeline.ScreenHeight)*tan(40*pi/360));
x_2d = (mm+1)/2*Obj_RenderPipeline.ScreenWidth;
mm = (pX*uX + pY*uY + pZ*uZ) / sqr(tan(Obj_RenderPipeline.FOV*pi/360));
y_2d = (1-mm)/2*Obj_RenderPipeline.ScreenHeight;
return 1;
