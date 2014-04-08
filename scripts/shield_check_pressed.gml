controllerNum = argument_count;
if(controllerNum>0)
{   controllerNum = argument[0];
}
if(keyboard_check_pressed(ord('D')) or keyboard_check_pressed(ord('C')) or keyboard_check_pressed(ord('B')))
{
audio_play_sound(ShieldLoop,2,false);
    if(controllerNum == 0)
    {
        return true;

    }
}
else if(gamepad_button_check_pressed(controllerNum,gp_shoulderrb) or gamepad_button_check_pressed(controllerNum,gp_shoulderlb))
{
    return true;

}
else
{
    return false;
    audio_stop_sound(ShieldLoop);
}
