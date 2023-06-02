// fan hose adaptor ring 
// Nigel P. Pedersen
// Emory University, Atlanta, GA
// Version 0.2
// April 29th - May 12, 2021

// PARTS
// Tubing:  uxcell PVC Clear Vinyl Tubing, Plastic Flexible Water Pipe 22mm ID x 25mm OD, 1m (Amazon)
//          note that the dimensions above are not correct, likely ~22 mm ID x ~23.2 mm OD
// Barrel:     Oggi 8" D x 8" H

//dims for EF sensors: l/w/t 10x10x2

// GLOBALS

resolution = 300;

wall_thickness = 4;  // 3 mm seems too thick, uses too much filament
main_housing_height = 60;

real_barrel_od = 195;
real_barrel_wall_thickness = 4.5;
real_barrel_id = real_barrel_od-real_barrel_wall_thickness*2;
outer_wall_d=real_barrel_od+real_barrel_wall_thickness;

hose_id = 22;// fan_diameter/2; // or enter exact value - should be close to this number
hose_wall_thickness = 1.2;
hose_od = hose_id + hose_wall_thickness * 2;
hose_housing_h = 15;
grill_vane_h = 5;
grill_h = 20;
grill_vane_thickness = 0.5;

// vent_grill_variables?

// MAIN
difference(){
difference(){
translate([0,0,5])cylinder(d=outer_wall_d+6.5, h=main_housing_height/2, center=true, $fn=resolution);
difference () {
    
    smaller_ring ();
    // change -150 v 150 to separate halves for printing
    union(){
        
    translate([outer_wall_d/2-1,0,-10]) color("red") EF_slot();
        
    //translate([real_barrel_od/3,0,20]) rotate([0,-90,180])  color("blue") EF_slot();
    translate([97,0,15]) rotate([0,-90,180])  color("blue") EF_slot();
        
}
}
}
cylinder(d=193,h=50,center=true,$fn=resolution);
translate([14,-150,-50])cube(300);
translate([-314,-150,-50])cube(300);
translate([-75,75,-50])cube(300);
#translate([0,-80,-18.7])cube(50, center=true);
translate([0,-80,42])cube(50, center=true);
}

//translate([outer_wall_d/2-0.5,0,0]) color("red") EF_slot();

//EF_slot();
//translate([real_barrel_od/3,0,11]) rotate([0,-90,180])  color("blue") EF_slot();

module smaller_ring(){

difference(){
    cylinder (d=outer_wall_d+4, h=main_housing_height/2, center=true, $fn=resolution);
    cylinder (d=real_barrel_od, h=main_housing_height/2+1, center=true, $fn=resolution);
                
}

}

module main_ring () {
    difference () {
        union () { // POSITIVES
        // main housing
            // smaller ring
                //translate ([0,0,0]) cylinder (d=outer_wall_d+1, h=main_housing_height/2, center=true, $fn=resolution);
                translate([0,0,main_housing_height/4])linear_extrude(4) circle(d=outer_wall_d+10, $fn=resolution);

        }
        
        
        union () { // NEGATIVES
            // smaller ring
                
            difference(){
                translate([0,0,3])
                smaller_ring();
            
                
                
                }
            
            // larger ring
                //translate ([0,0,main_housing_height/2+0.5]) cylinder (d=real_barrel_od-1-wall_thickness*2, h=main_housing_height/2, center=true, $fn=resolution);
            // hose conduit
                //rotate ([0,90,0]) translate ([-main_housing_height/2,0,real_barrel_od/2-4.9]) cylinder (d1 = hose_od+5, d2 = hose_od, h = hose_housing_h+10, center = true, $fn = resolution);
            // inlet
                //rotate ([0,270,0]) translate ([main_housing_height/2,0,real_barrel_od/2]) cylinder (d = hose_od+5, h = hose_housing_h+10, center = true, $fn = resolution);
            // lip
                //translate ([0,0,main_housing_height]) cylinder (d=172, h=wall_thickness+0.5, center = true, $fn = resolution);
            
        }
    }

    //translate ([real_barrel_id/2+wall_thickness/2,0,main_housing_height/2-grill_h/2]) rotate ([0,0,270]) grill ();
    //translate ([-real_barrel_id/2-wall_thickness,0,main_housing_height/2-grill_h/2]) rotate ([0,0,270]) grill ();
}

// PROCEDURES
// grill

module EF_slot() {
    union(){
    translate([-1,0,-8]) cube([2,10,32], center=true);
    translate([1,0,0]) cube([2,16,32], center=true);
        
        
        translate([2,0,0]) cube([2,7,32], center=true);
        
       translate([2,0,10]) cube([2,16,6], center=true); 
        
        
        }  
    };

module grill () {
    for(i = [-2 : grill_vane_h : grill_h+grill_vane_h]) {
        translate ([0,0,i]) rotate ([45,0,0]) cube ([hose_od+5,grill_vane_h*1.3,grill_vane_thickness], center=true);
    }
}
