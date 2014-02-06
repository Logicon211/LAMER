if(keyboard_check(vk_lshift))
{
    return true;
}
else if(gamepad_button_check(0,gp_shoulderl))
{
    return true;
}
else
{
    return false;
}
