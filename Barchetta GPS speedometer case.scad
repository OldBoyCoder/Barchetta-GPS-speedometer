// Create a speedometer housing for the Barchetta
// replaces light fitting which is 
// 29.9mm wide 119.25 mm long with curved ends  with radius of 7mm?
base_corner_radius = 7;
base_total_length = 119.25;
base_total_width = 29.9;
base_height = 1;
module draw_base()
{
    // Use hull to create the base
    hull()
    {
        translate([(base_total_length/2)-base_corner_radius, (base_total_width/2)-base_corner_radius, 0])
            cylinder(h=base_height, r = base_corner_radius, center=true);
        translate([-1*(base_total_length/2)-base_corner_radius, (base_total_width/2)-base_corner_radius, 0])
            cylinder(h=base_height, r = base_corner_radius, center=true);
        translate([(base_total_length/2)-base_corner_radius, -1*(base_total_width/2)-base_corner_radius, 0])
            cylinder(h=base_height, r = base_corner_radius, center=true);
        translate([-1*(base_total_length/2)-base_corner_radius, -1*(base_total_width/2)-base_corner_radius, 0])
            cylinder(h=base_height, r = base_corner_radius, center=true);
    }
}
$fn=100;
draw_base();
