$fn=20;

module torus(r1,r2){
	rotate_extrude() translate([r1, 0]) circle(r=r2);
}

module curve(){
	scale([1.75,1])
	intersection(){
			
		difference(){
			cylinder(h=20,r=30,center=true);
			cylinder(h=20.1,r=27,center=true);
			intersection(){
				torus(24.4,5);
				translate([-0.1,-10,-5]) cube([35,40,15]);
			}
		}
			translate([0,-15,-10]) cube([40,60,20]);
	}
}

module led(height,width){
	cylinder_h=height-width/2;
	translate([0,0,0])
	sphere(width/2);
	translate([-cylinder_h/2,0,0])
	rotate([0,90,0])
	cylinder(h=cylinder_h,r=width/2,center=true);
}

difference() {
	curve();
	color("red") translate([48,-2,0]) 
	rotate([0,0,-90])
	led(10,7);
}