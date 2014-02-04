//start point of the line
var originX;
var originY;
//angle to move the end point
var angle;

//end point of the line
var endX;
var endY;

var ret;

originX = argument0;
originY = argument1;
angle = argument2;
endX = argument3;
endY = argument4;

b = endY-originY;

B = (180-angle)/2;
A = angle;
a = (b*sin(A))/sin(B);
d = a*sin(180-90-B)
e = a*sin(90-B);

ret[0] = x+d;
ret[1] = y+e;

return ret[0,1];

//ret[0] = x coordinate of the new endpoint
//ret[1] = y coordinate of the new endpoint
