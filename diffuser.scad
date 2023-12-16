
$fn=50;

size=15.75;
sphere_translation=-4;

module constraint() {
    intersection(){
        union(){
            translate([0, 0, size/2])
                cube(size=[8, size*2, size], center=true);
            translate([-0.75, 0, size/2])
                rotate([0, -40, 0])
                    cube(size=[15, size*2, size], center=true);
        }
        translate([-4.5, 0, size/2])
            cube(size=[17, size*2, size], center=true);
    }
}

difference() {
	intersection(){
		constraint();
		translate([sphere_translation, 0, 0])
		scale([1,1,0.65]) 
		sphere(size-1.5);
	}
	translate([0.25,0,0.25])
	constraint();
	translate([0.5,8.5,0])
	cube([7,3,1],center=true);
}