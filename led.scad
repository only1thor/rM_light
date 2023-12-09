
module led(height,width){
	cylinder_h=height-width/2;
	translate([0,0,0])
	sphere(width/2);
	translate([-cylinder_h/2,0,0])
	rotate([0,90,0])
	cylinder(h=cylinder_h,r=width/2,center=true);
}