use <magnet_hold.scad>

width=8.3;
thickness=1;

$fn=50;

reed_length=15;

//cylinder(h=thickness,r=width/2);
translate([-0.7,25.6,-8])
rotate([90,90,90])
difference(){
	cube([width*2.5+reed_length,width,thickness+1],center=true);
	translate([-(width*0.5+reed_length/2),0,0])
	magnet_hold(width);
	translate([width*0.5+reed_length/2,0,0])
	magnet_hold(width);
	cube([15,2.5,2.5],center=true);
}

include <curve.scad>