/***************************************************
  This code tracks a point at x2,y2 rotating 
  at angle around x1,y1. Multiply the input
  angle by image_xscale to IGNORE the xscale 
  of the object calling the script.
 ***************************************************/

x1 = argument0;
y1 = argument1;
angle = argument2;
x2 = argument3;
y2 = argument4;

angle = degtorad(angle)*image_xscale;

a=y2-y1
b=x2-x1
r=sqrt(sqr(a)+sqr(b));
theta=arcsin(a/r);
angle += theta;
a = r*sin(angle);
b = r*-cos(angle)*image_xscale;

ret[0] = b+x1;
ret[1] = a+y1;
return ret;

//ret[0] = x coordinate of the new endpoint
//ret[1] = y coordinate of the new endpoint
