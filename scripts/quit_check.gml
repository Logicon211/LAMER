if(keyboard_check(vk_escape))
{
    return true;
}
else if(gamepad_button_check(0,gp_stickr))
{
    return true;
}
else
{
    return false;
}
