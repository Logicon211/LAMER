if(keyboard_check(vk_lshift)||keyboard_check(ord('F')))
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
