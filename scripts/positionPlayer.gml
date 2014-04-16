if(hspeed=0)
{
    leg1.image_angle = angle_ease(leg1.image_angle, -5*image_xscale+image_angle/2, 8);
    leg2.image_angle = angle_ease(leg2.image_angle, 20*image_xscale+image_angle/2, 8);
    head.image_angle = angle_ease(head.image_angle, image_angle*1.2, 8);
}
else if(player.airborne || player.boosting)
{
    leg1.image_angle = angle_ease(leg1.image_angle, -10+image_angle, 12);
    leg2.image_angle = angle_ease(leg2.image_angle, 5+image_angle, 12);
    head.image_angle = angle_ease(head.image_angle, image_angle/2, 8);
}
else
{
    leg_var = 60*sin(degtorad(1.5*x));
    leg1.image_angle = angle_ease(leg1.image_angle, leg_var+image_angle/2, 4);
    leg2.image_angle = angle_ease(leg2.image_angle, -leg_var+image_angle/2, 4);
    head.image_angle = angle_ease(head.image_angle, image_angle*1.2, 8);
}
