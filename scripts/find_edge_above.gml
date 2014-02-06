x_origin = argument0;
y_origin = argument1;
x_modifier = argument2;
y_modifier = argument3;
v_speed = argument4;
object = argument5;


if(instance_position(x_origin+x_modifier,y_origin+v_speed+y_modifier,object))
{
    for(i=v_speed;i<=0;i++)
    {
        if(!instance_position(x_origin+x_modifier,y_origin+i+y_modifier,object))
        {
            y = y+i;
            vspeed = 0;
            i = -1
            return true;
        }
    }
}
