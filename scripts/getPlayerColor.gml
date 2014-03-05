//takes 2 number inputs a and b

//returns playerColors[in1,in2]

in1 = argument0;
in2 = argument1;
in2 = in2*3;

return make_color_hsv
(
    playerColors[in1,in2],
    playerColors[in1,in2+1],
    playerColors[in1,in2+2]
)
