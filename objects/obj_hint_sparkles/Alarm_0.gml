/// @description Create spark
part_particles_create(pt_sys,x+irandom_range(-(GRID/3),(GRID/3)), y+irandom_range(-(GRID/3),(GRID/3)),pt_type,1)
sparkle_count--

if (sparkle_count > 0) alarm[0] = 10
else {part_system_destroy(pt_sys); instance_destroy()}
