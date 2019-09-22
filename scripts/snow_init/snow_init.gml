global.pt_snow = part_type_create();
var pt = global.pt_snow;

part_type_shape(pt, pt_shape_snow);
part_type_size(pt, .01, .1, 0, 0);
part_type_color1(pt, c_white);
part_type_speed(pt, 2, 3, 0, 0);
part_type_direction(pt, 270, 270, 0, 10);
part_type_life(pt, 300, 300);

