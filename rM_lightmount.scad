use <led.scad>;
use <magnet_hold.scad>;
use <reed_hold.scad>;
use <hood.scad>;

$fn=50;

rotate([0,0,0])
difference(){
	hull() {
		translate([0,-10,1])
		cylinder(r=4, h=8, center=true);
		translate([0,10,1])
		cylinder(r=4, h=8, center=true);
	}

	// LIR1632
	translate([0,0,2]){
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
	translate([0,8.2,0]) // Anode
		cylinder(r=0.6, h=10, center=true);
	translate([-2,8.5,0]) // Cathode
		cylinder(r=0.6, h=10, center=true);
	translate([-2,-8.1,-0.5])
		cylinder(r=0.6, h=6, center=true);
	translate([-2,-0.3,0.5])
		rotate([90, 0, 0])
		cylinder(r=0.5, h=15, center=true);
}
/* 

translate([-1,8.2,9.5])
	rotate([0,-90,0])
		led(9,6);

translate([-9,5,4])
rotate([0, 0, 15])
scale([0.8,0.5,0.9])
hood(); */