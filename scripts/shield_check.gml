controllerNum = argument_count;
if(controllerNum>0)
{   controllerNum = argument[0];
}
if(keyboard_check(ord('D')) or keyboard_check(ord('C')) or keyboard_check(ord('B')))
{
    return true;
}
else if(gamepad_button_check(controllerNum,gp_face2))
{
    return true;
}
else
{
    return false;
}
