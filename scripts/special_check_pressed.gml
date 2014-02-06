if(keyboard_check(ord('D')) || keyboard_check(ord('C')))
{
    return true;
}
else if(gamepad_button_check(0,gp_shoulderr))
{
    return true;
}
else
{
    return false;
}
