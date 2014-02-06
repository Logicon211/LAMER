if(keyboard_check(vk_left))
{
    return true;
}
else if(gamepad_axis_value(0,gp_axislh)<-0.3)
{
    return true;
}
else
{
    return false;
}
