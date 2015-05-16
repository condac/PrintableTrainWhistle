t_z = 14;
t_out_d = 16;
t_in_d = 10;

tune1 = 80;
tune2 = 90;

wall = 2;

tube_distance = wall+t_in_d;

module tube(tune = tune1) {
    rotate([0, 0, (360/8)/2]) difference() {
        translate([0,0,0]) cylinder(d=t_in_d+wall*2, h = tune+wall*2, $fn= 8);
        translate([0,0,wall]) cylinder(d=t_in_d, h = tune, $fn= 8);
    }
}


translate([tube_distance/2,0,0]) tube(tune1);
translate([-tube_distance/2,0,0]) tube(tune2);

//mouth piece
difference() {
hull() {
    translate([tube_distance/2,0,-15]) rotate([0, 0, (360/8)/2]) cylinder(d=t_in_d+wall*2, h = 15, $fn= 8);
    translate([-tube_distance/2,0,-15]) rotate([0, 0, (360/8)/2]) cylinder(d=t_in_d+wall*2, h = 15, $fn= 8);
}


}