cy = argument0; //current y
dy = argument1; //desination y
ease = argument2;
dist = dy-cy;
ret = 0;        //return value
ret = cy + dist/ease;
return ret;
