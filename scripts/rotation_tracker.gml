originX = argument0;
originY = argument1;
angle = argument2;
endX = argument3;
endY = argument4;

A=degtorad(angle-90)

vectorX = originX - endX;
vectorY = originY - endY;

vectorLength = sqrt(sqr(vectorX) + sqr(vectorY));

ret[0] = (vectorLength * cos(A)) + originX;
ret[1] = (vectorLength * -sin(A)) + originY;

return ret;

//ret[0] = x coordinate of the new endpoint
//ret[1] = y coordinate of the new endpoint
