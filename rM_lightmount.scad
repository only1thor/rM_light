use <led.scad>;
use <magnet_hold.scad>;
use <reed_hold.scad>;

$fn=50;

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

difference() {
	base_thickness=4;
	scale([1,1,1])
	intersection() {	
		translate([4+side_latch, 0, -base_thickness/2])
		cube(size=[8, radius*2, base_thickness], center=true);
		cylinder(h=20, r=radius, center=true);
	}

	led(9,6);
	translate([10,0,0])
	cylinder(h=3.2, r=16/2, center=true); // LIR1632
	translate([11,11,-base_thickness+0.01])
	magnet_hold(4.25,1.9);
	translate([11,-11,-base_thickness+0.01])
	magnet_hold(4.25,1.9);
	translate([11,0,-base_thickness+1.049])
	rotate([0,0,90])
	reed_hold();
	translate([11,8,-2])
	cylinder(h=5,r=0.3, center=true);
}
	translate([11,-8.2,-2])
	cylinder(h=5,r=0.3, center=true);