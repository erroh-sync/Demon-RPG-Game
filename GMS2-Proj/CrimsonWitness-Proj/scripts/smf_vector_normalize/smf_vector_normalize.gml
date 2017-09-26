/// @description smf_normalize(v[3])
/// @param v[3]
//Returns the unit vector with the same direction
//Also returns the length of the original vector
gml_pragma("forceinline");
var v, l;
v = argument0;
l = point_distance_3d(0, 0, 0, v[0], v[1], v[2]);
if l != 0
    return [v[0] / l, v[1] / l, v[2] / l, l];
return [1, 0, 0, 0];
