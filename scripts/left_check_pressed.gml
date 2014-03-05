controllerNum = argument_count;
if(controllerNum>0)
{   controllerNum = argument[0];
}
if(keyboard_check_pressed(vk_left))
{
    return true;
}
else if(gamepad_axis_value(controllerNum,gp_axislh)<-0.9)
{
    return true;
}
else
{
    return false;
}
