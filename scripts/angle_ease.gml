cangle = argument0;  //current image_angle
dangle = argument1;  //desired image_angle
ease = argument2;
dist = dangle-cangle;
ret=0;  //return value
ret = cangle+dist/ease;

return ret;
