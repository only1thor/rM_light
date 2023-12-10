use <led.scad>;

//$fn=100;
module hood(){
scale([1,1,0.7]){
    sphere_translation=-4;
    size=15.75;
    intersection() {
        translate([sphere_translation, 0, 0])
            difference(){
                sphere(size);
                sphere(size-1.5);
            }
        translate([0, 0, size/2])
            cube(size=[8, size*2, size], center=true);
    }
    intersection() {
        translate([sphere_translation, 0, 0])
                sphere(size);
        translate([3.5, 0, size/2])
            cube(size=[1, size*2, size], center=true);
    }
}
}

// hood();

/* 
translate([-1.2, 15.7, 0])
cylinder(h=3, r=1, center=true);
translate([-1.2, -15.7, 0])
cylinder(h=3, r=1, center=true);
// hood();
translate([0, 3, 3])
rotate([0, 0, -90])
 led(9,6);

translate([0, 0, -3.2/2])
cylinder(h=3.2, r=8, center=true); */