cx = argument0; //current x
dx = argument1; //desination x
ease = argument2;
dist = dx-cx;
ret = 0;        //return value
ret = cx+dist/ease;
return ret;
