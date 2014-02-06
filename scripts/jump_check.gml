if(keyboard_check(vk_space))
{
    return true;
}
else if(gamepad_button_check(0,gp_face4))
{
    return true;
}
else
{
    return false;
}
