use <led.scad>;
use <magnet_hold.scad>;
use <reed_hold.scad>;
use <hood.scad>;

$fn=150;

rotate([0,90,0]){
	difference(){
		hull() {
			translate([0,-15.75,1])
			cylinder(r=4, h=8, center=true);
			translate([0,15.75,1])
			cylinder(r=4, h=8, center=true);
		}

		// LIR1632
		translate([0,0,2]){
			cylinder(r=16.1/2, h=3.25, center=true);
			cube([20,15.75,3.25], center=true);
		}
		reed_hold_displacement_x=2.;
		translate([reed_hold_displacement_x,0.2,-2.])
			rotate([0, 0, 90])
				reed_hold();
		translate([1.4,-16.25,-3.01]){
			rotate([180, 0, 0])
				magnet_hold(4.25,1.9);
		//cylinder(r=1, h=80, center=true);
		}
		translate([1.4,16.25,-3.01]){
			rotate([180, 0, 0])
				magnet_hold(4.25,1.9);
		//cylinder(r=1, h=80, center=true);
		}
		translate([0,8,0]) // Anode
			cylinder(r=0.65, h=10, center=true);
		translate([-2,9,0]) // Cathode
			cylinder(r=0.6, h=10, center=true);
		translate([-2,9,-2.]) // Cathode connection
			cylinder(r=0.9, h=2, center=true);
		translate([reed_hold_displacement_x,-2.1,-0.5])
			rotate([50, 0, 0])
			cylinder(r=0.8, h=6, center=true);
		translate([reed_hold_displacement_x,-0.3,0.5])
			rotate([90, 0, 0])
			cylinder(r=0.5, h=15, center=true);
		translate([reed_hold_displacement_x,-10,-1])
			cube([2,7,6], center=true);
		translate([-2,1.4,-2.9])
			rotate([90, 0, 0])
				cylinder(r=.9, h=15, center=true);
		translate([0,9.5,-2.6])
			cube([5,0.8,1.5], center=true);
	}
	translate([0,0,5])
	hood(); 
}