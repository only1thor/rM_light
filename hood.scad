use <led.scad>;

//$fn=100;
module constraint() {
    intersection(){
        size=15.75;
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
            scale([1,1,1.7])
            constraint();
    }
    intersection() {
        translate([sphere_translation, 0, 0])
                sphere(size);
        translate([3.5, 0, size/2])
            cube(size=[1, size*2, size], center=true);
    }
}
}

hood();