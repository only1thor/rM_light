
width=8.2;
thickness=1;

$fn=50;

use <magnet_hold.scad>

//cylinder(h=thickness,r=width/2);

rotate([90,0,0])
difference(){
	cube([width*2.5,width,thickness+1],center=true);
	translate([-width*0.6,0,0])
	magnet_hold(width,thickness);
	translate([width*0.6,0,0])
	magnet_hold(width,thickness);
}