/// @description Particle System
rain_system = part_system_create_layer("Background_Weather", 10);
part_system = part_system_create_layer("Background_Weather", 10);
rain_emit = part_emitter_create(part_system)

part_rain = part_type_create();
part_type_sprite(part_rain, sRainParticle, 0, 0, 0);
part_type_size(part_rain, 1, 1, 0, 0);
part_type_gravity(part_rain, 0.1, 270)
part_type_life(part_rain, 400, 400)

/*
part_type_alpha1(part_rain, 0.2);
part_type_direction(part_rain, 270, 270, 0, 0);
part_type_orientation(part_rain, 270, 270, 0, 0, 0);
part_type_speed(part_rain, 2.5, 3, 0, 0);
*/

emitter_rain = part_emitter_create(rain_system)
part_emitter_region(rain_system, emitter_rain, 0, room_width, -25, -25, ps_shape_rectangle, ps_distr_linear);
alarm[0] = 5;