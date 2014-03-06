controllerNum = argument_count;
if(controllerNum>0)
{   controllerNum = argument[0];
}
if(keyboard_check_pressed(vk_up))
{
    return true;
}
else if(gamepad_axis_value(controllerNum,gp_axislv)<-0.3)
{
    if(controllerDirection[controllerNum,1] > -0.25)
    {
        return true;
    }
}
else
{
    return false;
}
