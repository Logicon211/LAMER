if(keyboard_check(vk_right))
{
    return true;
}
else if(gamepad_axis_value(0,gp_axislh)>0.9)
{
    return true;
}
else
{
    return false;
}
