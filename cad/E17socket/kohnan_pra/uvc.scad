/*
 * コーナン販売E17ソケット用取付部品
 *
 * HS-L17KPS/W
 */

module base(){
    difference(){
        cube([40,40,1]);
        translate([20,20,0]) cylinder(h=1,d=25);
    }
}

module fook(){
    union(){
        cube([2,2,5]);
        translate([0,0,5]) cube([3.5,2,1]);
    }
    
}

union(){
    base();
    translate([4.5,19,1]) fook();
    translate([35.5,19,1]) rotate([0,0,180]) fook();
}