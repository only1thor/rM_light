use <led.scad>;
module hood(){
    radius = 17;
    side_latch=radius-8;
    difference() {
        sphere(radius);
        sphere(radius-2);
        translate([side_latch, 0, 0])
        rotate([0, -35, 0])
        translate([-radius, 0, radius/2])
        cube(size=[radius*2, radius*2, radius*2], center=true);
        translate([0, 0, -radius])
        cube(size=[radius*2, radius*2, radius*2], center=true);
    }
}

 hood();
// led(9,6);
