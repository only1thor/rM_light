
$fn=50;

size=15.75;
sphere_translation=-4;
difference() {
	intersection(){
		translate([-0.25,0,5])
		cube([6.5,30,10],center=true);
		translate([sphere_translation, 0, 0])
		scale([1,1,0.65]) 
		sphere(size-1.5);
	}
	translate([0.25,0,5.25])
	cube([7,30,10],center=true);
	translate([0.5,9,0])
	cube([7,5,1],center=true);
}