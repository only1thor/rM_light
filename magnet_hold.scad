// flex
$fn=50;

module magnet_hold(width){
//	width=8.2;
	thickness=1;
	radius=0.25;

	difference(){
		cube([width,width,thickness],center=true);

		translate([width/2,width/5,0])
		cylinder(h=1.1,r=radius,center=true);

		translate([-width/2,width/5,0])
		cylinder(h=1.1,r=radius,center=true);

		translate([width/2,-width/5,0])
		cylinder(h=1.1,r=radius,center=true);

		translate([-width/2,-width/5,0])
		cylinder(h=1.1,r=radius,center=true);
	}
}

//magnet_hold(8.2,1);
//cylinder(h=1,r=width/2);