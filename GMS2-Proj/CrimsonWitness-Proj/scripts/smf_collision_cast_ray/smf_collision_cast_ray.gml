/// @description smf_collision_cast_ray(collisionBuffer, x1, y1, z1, x2, y2, z2)
/// @param collisionBuffer
/// @param x1
/// @param y1
/// @param z1
/// @param x2
/// @param y2
/// @param z2
/*
Casts a ray from one point to another and returns the position of the first collision with geometry
Returns an array with the following format:
[x, y, z, normalX, normalY, normalZ]

Script made by TheSnidr
www.TheSnidr.com
*/
var colBuffer = argument0, regionSize = 65535, progress = -1, stack = ds_stack_create();
var a, b, i, j, k, l, t, tri, tris, modelPos, modelSize, trScale, lStart, lEnd, regionPos, bufferPos, halfSize, region, its, retN;
buffer_seek(colBuffer, buffer_seek_start, 0);
bufferPos = buffer_read(colBuffer, buffer_s32);
modelPos[0] = buffer_read(colBuffer, buffer_f32)
modelPos[1] = buffer_read(colBuffer, buffer_f32);
modelPos[2] = buffer_read(colBuffer, buffer_f32);
modelSize = buffer_read(colBuffer, buffer_f32);
trScale = regionSize / modelSize;
lStart = [trScale * (argument1 - modelPos[0]), trScale * (argument2 - modelPos[1]), trScale * (argument3 - modelPos[2])];
lEnd = [trScale * (argument4 - modelPos[0]), trScale * (argument5 - modelPos[1]), trScale * (argument6 - modelPos[2])];
regionPos = [0, 0, 0];
retN = [0, 0, 1];
while true
{
	if (bufferPos > 0)
	{   //Iterate through the octree
		halfSize = regionSize / 2;
		for (l = progress; l < 3; l ++)
		{
			if (l < 0)
			{   //Check either the starting region of the ray or the first region it intersects
				region = [lStart[0] > regionPos[0] + halfSize, lStart[1] > regionPos[1] + halfSize, lStart[2] > regionPos[2] + halfSize];
				for (i = 0; i < 3; i ++)
				{
					if (lEnd[i] == lStart[i]) continue;
					if (lStart[i] >= regionPos[i] and lStart[i] <= regionPos[i] + regionSize) continue;
					t = (regionPos[i] + region[i] * regionSize - lStart[i]) / (lEnd[i] - lStart[i]);
					if (t <= 0 or t >= 1) continue;
					j = (i + 1) mod 3; k = (i + 2) mod 3;
					its[j] = lerp(lStart[j], lEnd[j], t) - regionPos[j];
					its[k] = lerp(lStart[k], lEnd[k], t) - regionPos[k];
					if (its[j] < 0 or its[j] > regionSize or its[k] < 0 or its[k] > regionSize) continue;
					region[j] = (its[j] > halfSize);
					region[k] = (its[k] > halfSize);
					break;
				}
			}
			else
			{   //Check for intersections with the middle plane of each dimension
				if (lEnd[l] == lStart[l]) continue;
				t = (regionPos[l] + halfSize - lStart[l]) / (lEnd[l] - lStart[l]);
				if (t <= 0 or t >= 1) continue;
				j = (l + 1) mod 3; k = (l + 2) mod 3;
				its[j] = lerp(lStart[j], lEnd[j], t) - regionPos[j];
				its[k] = lerp(lStart[k], lEnd[k], t) - regionPos[k];
				if (its[j] < 0 or its[j] > regionSize or its[k] < 0 or its[k] > regionSize) continue;
				region[l] = (lStart[l] < regionPos[l] + halfSize);
				region[j] = (its[j] >= halfSize);
				region[k] = (its[k] >= halfSize);
			}
			//Push this region to stack and go to intersected child region
			ds_stack_push(stack, bufferPos, regionPos[0], regionPos[1], regionPos[2], l);
			if (region[0]){regionPos[0] += halfSize; bufferPos += 4;}
			if (region[1]){regionPos[1] += halfSize; bufferPos += 8;}
			if (region[2]){regionPos[2] += halfSize; bufferPos += 16;}
			bufferPos = buffer_peek(colBuffer, bufferPos, buffer_s32);
			regionSize /= 2;
			progress = -1;
			break;
		}
		if (l < 3) continue; //If we ended the for-loop prematurely, we should also restart the while-loop
	}
	else
	{   //If this is a leaf region, check for intersections with the triangles in this leaf
		l = 0;
		buffer_seek(colBuffer, buffer_seek_start, -bufferPos);
		repeat buffer_read(colBuffer, buffer_u16) tris[l++] = buffer_read(colBuffer, buffer_u16);
		repeat l
		{   //Find intersection with triangle plane
			tri = smf_collision_get_triangle(colBuffer, tris[--l]);
			t = dot_product_3d(tri[9], tri[10], tri[11], lEnd[0] - lStart[0], lEnd[1] - lStart[1], lEnd[2] - lStart[2]);
			if (t == 0) continue;
			t = dot_product_3d(tri[9], tri[10], tri[11], tri[0] - lStart[0], tri[1] - lStart[1], tri[2] - lStart[2]) / t;
			if (t <= 0 or t >= 1) continue;
			its = [lerp(lStart[0], lEnd[0], t), lerp(lStart[1], lEnd[1], t), lerp(lStart[2], lEnd[2], t)];
			//Check if the intersection is inside the triangle. If not, discard and continue.
			a = [its[0] - tri[0], its[1] - tri[1], its[2] - tri[2]];
			b = [tri[3] - tri[0], tri[4] - tri[1], tri[5] - tri[2]];
			if (dot_product_3d(tri[9], tri[10], tri[11], a[2] * b[1] - a[1] * b[2], a[0] * b[2] - a[2] * b[0], a[1] * b[0] - a[0] * b[1]) <= 0) continue;
			a = [its[0] - tri[3], its[1] - tri[4], its[2] - tri[5]];
			b = [tri[6] - tri[3], tri[7] - tri[4], tri[8] - tri[5]];
			if (dot_product_3d(tri[9], tri[10], tri[11], a[2] * b[1] - a[1] * b[2], a[0] * b[2] - a[2] * b[0], a[1] * b[0] - a[0] * b[1]) <= 0) continue;
			a = [its[0] - tri[6], its[1] - tri[7], its[2] - tri[8]];
			b = [tri[0] - tri[6], tri[1] - tri[7], tri[2] - tri[8]];
			if (dot_product_3d(tri[9], tri[10], tri[11], a[2] * b[1] - a[1] * b[2], a[0] * b[2] - a[2] * b[0], a[1] * b[0] - a[0] * b[1]) <= 0) continue;
			//The line intersects the triangle. Save the triangle normal and intersection.
			retN = [tri[9], tri[10], tri[11]];
			lEnd = [its[0], its[1], its[2]];
		}
	}
	if !(ds_stack_size(stack)) break; //If the stack is empty, break the loop
	//Pop the previous region from stack
	progress = ds_stack_pop(stack) + 1;
	regionPos[2] = ds_stack_pop(stack);
	regionPos[1] = ds_stack_pop(stack);
	regionPos[0] = ds_stack_pop(stack);
	bufferPos = ds_stack_pop(stack);
	regionSize *= 2;
}
ds_stack_destroy(stack);
return [modelPos[0] + lEnd[0] / trScale, modelPos[1] + lEnd[1] / trScale, modelPos[2] + lEnd[2] / trScale, retN[0], retN[1], retN[2]];
