x_origin = argument0;
y_origin = argument1;
x_modifier = argument2;
y_modifier = argument3;
h_speed = argument4;
object = argument5;


if(instance_position(x_origin+h_speed+x_modifier,y_origin+y_modifier,object))
{
    for(i=h_speed;i>=0;i--)
    {
        if(!instance_position(x_origin+i+x_modifier,y_origin+y_modifier,object))
        {
            x = x+i;
            hspeed = 0;
            i = -1
            return true;
        }
    }
}
