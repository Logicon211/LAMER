if(keyboard_check_pressed(vk_left))
{
    return true;
}
else if(gamepad_axis_value(0,gp_axislh)<-0.9)
{
    return true;
}
else
{
    return false;
}
