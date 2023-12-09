// flex
$fn=50;

module magnet_hold(width,thickness){
	rotate([180,0,0])
	difference(){

		cylinder(h=thickness,r=width/2);

		translate([-width/1.8,0,0.02])
		sphere(r=0.5);
		translate([width/1.8,0,0.02])
		sphere(r=0.5);
	}
}

// tested, and working values:
//magnet_hold(4.25,1.9);