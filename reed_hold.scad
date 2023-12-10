
module reed_hold(){
	translate([4, 0, -2.0])
	cube(size=[10, 0.8, 6], center=true);
	difference()
	{
		cube(size=[14, 2.8, 2.2], center=true);
/* 		translate([0, -1.2, -1.2]) 
		sphere(r=0.5);
		translate([0, 1.2, -1.2]) 
		sphere(r=0.5); */
	}
}