originX = argument0;
originY = argument1;
angle = argument2;
angle_modifier = argument3;
endX = argument4;
endY = argument5;

A=degtorad(angle-90+angle_modifier*image_xscale)

vectorX = originX - endX;
vectorY = originY - endY;

vectorLength = sqrt(sqr(vectorX) + sqr(vectorY));

ret[0] = (vectorLength * cos(A)) + originX;
ret[1] = (vectorLength * -sin(A)) + originY;

return ret;

//ret[0] = x coordinate of the new endpoint
//ret[1] = y coordinate of the new endpoint
