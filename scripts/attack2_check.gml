if(keyboard_check(ord('S')) || keyboard_check(ord('X')))
{
    return true;
}
else if(gamepad_button_check(0,gp_face3))
{
    return true;
}
else
{
    return false;
}
