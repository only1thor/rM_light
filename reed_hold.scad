
module reed_hold(){
	translate([4, 0, -2.5])
	cube(size=[25, 0.6, 6], center=true);
	difference()
	{
		cube(size=[14, 2.1, 2.1], center=true);
		translate([0, -1.2, -1.2]) 
		sphere(r=0.5);
		translate([0, 1.2, -1.2]) 
		sphere(r=0.5);
	}
}