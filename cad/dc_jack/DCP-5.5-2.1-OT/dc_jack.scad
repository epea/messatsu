/*
 * DCP-5.5-2.1-OT
 *
 * 取付ボルトはM3
 */

module base(){
    difference(){
        union(){
            cube([16.5,19.2,2]);
            translate([-10,5,0]) cube([35,10,2]);
        }
        
        translate([2,2,0]) cube([12.5,15.2,2]);
        translate([-5,10,0]) cylinder(h=2,d=3,$fn=10);
        translate([20.5,10,0]) cylinder(h=2,d=3,$fn=10);
    }
}

difference(){
    union(){
        base();
        cube([5,19.2,24]);
    }
    
    translate([2,2,0]) cube([5,15.2,22]);
}