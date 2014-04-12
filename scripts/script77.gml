/*
Argument0 = X pos to draw at
Argument1 = Y pos to draw at
Argument2 = String to draw
Argument3 = Color to draw Text
Argument4 = Color to draw Glow
*/

ds=1;
a=1;
draw_set_color(argument4);
xx=argument0;
yy=argument1;
for (i=0; i<3; i+=1)
{
    a-=0.3;
    draw_set_alpha(a);
    draw_text(xx,yy-i,argument2);
    draw_text(xx,yy+i,argument2);
    draw_text(xx-i,yy,argument2);
    draw_text(xx+i,yy,argument2);
    draw_text(xx-i,yy-i,argument2);
    draw_text(xx+1,yy+i,argument2);
    draw_text(xx-i,yy+i,argument2);
    draw_text(xx+i,yy-i,argument2);
}
draw_set_alpha(1);
draw_set_color(argument3);
draw_text(xx,yy,argument2);
