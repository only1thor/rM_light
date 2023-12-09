use <led.scad>;
use <magnet_hold.scad>;
use <reed_hold.scad>;

$fn=50;

radius = 17;
side_latch=radius-8;
/* difference() {
	sphere(radius);
	sphere(radius-2);
	translate([side_latch, 0, 0])
	rotate([0, -35, 0])
	translate([-radius, 0, radius/2])
	cube(size=[radius*2, radius*2, radius*2], center=true);
	translate([0, 0, -radius])
	cube(size=[radius*2, radius*2, radius*2], center=true);
} */

rotate([0,180,0])
difference(){
	hull() {
		translate([0,-10,0])
		cylinder(r=4, h=6, center=true);
		translate([0,10,0])
		cylinder(r=4, h=6, center=true);
	}

	// LIR1632
	translate([0,0,1]){
		cylinder(r=16.1/2, h=3.25, center=true);
		cube([20,15.75,3.25], center=true);
	}
	translate([-2,0.2,-1.96])
		rotate([0, 0, 90])
			reed_hold();
	translate([1.5,-10.5,-3.01])
		rotate([180, 0, 0])
			magnet_hold(4.25,1.9);
	translate([1.5,10.5,-3.01])
		rotate([180, 0, 0])
			magnet_hold(4.25,1.9);
	translate([0,8,0])
		cylinder(r=0.3, h=10, center=true);
	translate([-2,8.2,0])
		cylinder(r=0.3, h=10, center=true);
	translate([-2,-8.1,-2])
		cylinder(r=0.3, h=5, center=true);
	translate([-2,-6,-0.5])
		rotate([90, 0, 0])
		cylinder(r=0.3, h=5, center=true);
}
