if(keyboard_check(vk_f5))
{
    return true;
}
else if(gamepad_button_check(0,gp_select))
{
    return true;
}
else
{
    return false;
}
