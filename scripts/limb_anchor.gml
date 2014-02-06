/***************************************************
  This script puts an object (obj) in to 
  position x,y (obj_x,obj_y) with an x/y speed of
  obj_hspeed and obj_vspeed and with a given 
  xscale (obj_xscale)
  
  This code was made to place legs arms and heads
  more effectively and consistantly.
  
  This code has no return value
 ***************************************************/

//input
obj = argument0;
obj_x = argument1;
obj_y = argument2;
obj_hspeed = argument3;
obj_vspeed = argument4;
obj_xscale = argument5;
//END input

//output
obj.x = obj_x;
obj.y = obj_y;
obj.hspeed = obj_hspeed;
obj.vspeed = obj_vspeed;
obj.image_xscale = obj_xscale;
//END output
