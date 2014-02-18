//sword
arm1.image_angle = angle_ease(arm1.image_angle, -80*image_xscale, 4);
arm2.image_angle = angle_ease(arm2.image_angle, 70*image_xscale, 4);
head.image_angle = angle_ease(head.image_angle, -20*image_xscale, 4);
leg1.image_angle = angle_ease(leg1.image_angle, -20*image_xscale, 4);
leg2.image_angle = angle_ease(leg2.image_angle, 80*image_xscale, 4);
gunCount += 3;
arm2.lower_angle = image_xscale*gunCount mod 45
