if(keyboard_check(vk_down))
{
    return true;
}
else if(gamepad_axis_value(0,gp_axislv)>0.3)
{
    return true;
}
else
{
    return false;
}