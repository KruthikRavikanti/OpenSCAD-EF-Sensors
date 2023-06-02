// Electrode cassette 
// v1.3, May 5th, 2021
// Pedersen Epilepsy and Systems Neuroscience Lab 
// (c) Nigel Pedersen, Brandon Harvey 2021

resolution = 100;
lugs_x_offset=.45;

translate([0,-0.41,8])cube([2.8,0.3,8.6], center=true);
difference(){

union () {
    difference () {
        union () { // positives
            cylinder (d = 1, h = 7, center = true, $fn = resolution); 
            translate ([0,0,11.5]) cylinder (d = 3, h = 18, center = true, $fn = resolution);            
            translate ([5,0,16]) cylinder (d = 3, h = 9, center = true, $fn = resolution);            
            translate ([0,0,23]) cylinder (d1 = 3, d2 = 1.5, h = 5, center = true, $fn = resolution);
            translate ([5,0,23]) cylinder (d1 = 3, d2 = 1.5, h = 5, center = true, $fn = resolution);
            translate ([-0.75,-2.8,5.5]) cube ([1.5,2.1,6]);
            
            
        //bracing poles    
            translate ([6.9,-.35,8.2]) cylinder (d = .75, h = 6.8, center = true, $fn = resolution);
            translate ([3.1,-.35,8.2]) cylinder (d = .75, h = 6.8, center = true, $fn = resolution);
        
        //tabs for bracing poles - bottom
            translate ([6.65,0,12]) cube ([1.3,1.5,1], center = true);
            translate ([3.35,0,12]) cube ([1.3,1.5,1], center = true);
            
        //tabs for support cylinders - top
            translate ([-1.65,.25,4.5]) cube ([1.5,1,1], center = true);
            translate ([1.65,.25,4.5]) cube ([1.5,1,1], center = true);
            
            
            }
        
        union () { // negatives
            // wire grooves
            translate ([0,0,23]) cylinder (d1 = 0.4, d2 = 0.16, h = 6, center = true, $fn = resolution);
            translate ([0,0,0.1]) cylinder (d = 0.4, h = 40, center = true, $fn = resolution);
            translate ([5,0,23]) cylinder (d1 = 0.4, d2 = 0.16, h = 6, center = true, $fn = resolution);
            translate ([5,0,0.1]) cylinder (d = 0.4, h = 40, center = true, $fn = resolution);

            // other
            rotate ([0,0,90]) translate ([0,-0.1,-10]) cube ([3,0.2,17.5]);
            translate ([2.5,2.55,15.5]) cube ([10,5,21], center = true);
            translate ([0,0,5.5]) cube ([3,.5,1], center = true);
            translate ([0,0,8.5]) cube ([0.85,5.1,5.1], center = true);

            //translate ([0,0,5.5]) cube ([3,1,1], center = true);
            
            // insertion box cutaway to aid washing
            translate ([0,-3,8.5]) cube ([3,3,4], center=true); 

            // lugs negatives
            //rotate ([90,0,0]) translate ([5+lugs_x_offset,24.5,-1]) cylinder (d=0.6,h=4,$fn=resolution);
            //rotate ([90,0,0]) translate ([5-lugs_x_offset,24.5,-1]) cylinder (d=0.6,h=4,$fn=resolution);
            //rotate ([90,0,0]) translate ([5+lugs_x_offset,12.5,-1]) cylinder (d=0.6,h=4,$fn=resolution);
            //rotate ([90,0,0]) translate ([5-lugs_x_offset,12.5,-1]) cylinder (d=0.6,h=4,$fn=resolution);
            
            translate([5+.4,0,18]) cube ([.3,3,11],center=true, $fn=resolution);
            translate([5-.4,0,18]) cube ([.3,3,11],center=true,$fn=resolution);
            
            
            //seats for brace poles
            translate ([1.9,.35,5]) cylinder (d = .75, h = .4, center = true, $fn = resolution);
            translate ([1.9,.5,5]) cube ([.75,.6,.35], center = true);
            translate ([-1.9,.35,5]) cylinder (d = .75, h = .4, center = true, $fn = resolution);
            translate ([-1.9,.5,5]) cube ([.75,.6,.35], center = true);
        }
        
            
        
    }
}

translate([0,0,8.5])cube([5,10,7.5],center=true);
}

translate([0,0,0])
union () { 
        //lugs
//        rotate ([90,0,0]) translate ([lugs_x_offset,24.5,-0.6]) cylinder (d=0.6,h=0.6,$fn=resolution);
//        rotate ([90,0,0]) translate ([-lugs_x_offset,24.5,-0.6]) cylinder (d=0.6,h=0.6,$fn=resolution);
//        rotate ([90,0,0]) translate ([lugs_x_offset,12.5,-1.5]) cylinder (d=0.6,h=1.5,$fn=resolution);
//        rotate ([90,0,0]) translate ([-lugs_x_offset,12.5,-1.5]) cylinder (d=0.6,h=1.5,$fn=resolution);
            // lug knobs
//        rotate ([90,0,0]) translate ([lugs_x_offset,24.5,-0.65]) sphere (d=0.7,$fn=resolution);
//        rotate ([90,0,0]) translate ([-lugs_x_offset,24.5,-0.65]) sphere (d=0.7,$fn=resolution);
//        rotate ([90,0,0]) translate ([lugs_x_offset,12.5,-1.55]) sphere (d=0.7,$fn=resolution);
//        rotate ([90,0,0]) translate ([-lugs_x_offset,12.5,-1.55]) sphere (d=0.7,$fn=resolution);
        //square lugs
  
    translate([.4,.25,18]) cube ([.29,2,11], center=true, $fn=resolution);
    
    translate([-.4,.25,18]) cube ([.29,2,11],center=true,$fn=resolution);



        
        // locating tabs
        translate ([0.4,-0.3,25.5]) cube ([0.3,0.7,0.3]);
        translate ([-0.7,-0.3,25.5]) cube ([0.3,0.7,0.3]);
}




module lug (diameter, length) {
    cylinder (d=diameter, h=length, $fn = resolution);
    translate ([0,0,length]) sphere (d=diameter+0.05, $fn = resolution);
}

module hinge (diameter, height) {
    difference () {
        cylinder (d=diameter+0.4, h=height, $fn =  resolution);
        union () {
            translate ([0,0,-0.05]) cylinder (d=diameter, h=height+0.1, $fn =  resolution);
            // negative for hinge opening to go here
        }
    }
}

module plate (width, thickness, height) {
    translate ([0,-thickness/2,0]) cube ([width, thickness, height]);
}    

module plate_w_holes (width, thickness, height) {
    difference () {
        translate ([0,-thickness/2,0]) cube ([width, thickness, height]);
        union () {
            //holesL
            rotate ([90,0,0]) translate ([1.25,0.5,-0.21]) cylinder (d=0.45,h=0.6, $fn = resolution);
            rotate ([90,0,0]) translate ([1.25,4.5,-0.21]) cylinder (d=0.45,h=0.6, $fn = resolution);
                //holesM
            rotate ([90,0,0]) translate ([2.5,0.5,-0.21]) cylinder (d=0.45,h=0.6, $fn = resolution);
            rotate ([90,0,0]) translate ([2.5,4.5,-0.21]) cylinder (d=0.45,h=0.6, $fn = resolution);
          //holesR
            rotate ([90,0,0]) translate ([3.75,0.5,-0.21]) cylinder (d=0.45,h=0.6, $fn = resolution);
            rotate ([90,0,0]) translate ([3.75,4.5,-0.21]) cylinder (d=0.45,h=0.6, $fn = resolution);
        }
    }
}    

translate([-3.2,0.12,6])
difference () {
    union () { // positives
        //lugL
        rotate ([270,0,0]) translate ([2.00,-0.5,-0.125]) lug (0.5,0.5);
        rotate ([270,0,0]) translate ([2.00,-4.5,-0.125]) lug (0.5,0.5);
        //lugM
        rotate ([270,0,0]) translate ([3.25,-0.5,-0.125]) lug (0.5,0.5);
        rotate ([270,0,0]) translate ([3.25,-4.5,-0.125]) lug (0.5,0.5);
        //lugR
        rotate ([270,0,0]) translate ([4.50,-0.5,-0.125]) lug (0.5,0.5);
        rotate ([270,0,0]) translate ([4.50,-4.5,-0.125]) lug (0.5,0.5);
        // hinge
        hinge (1.5,5);
        //plates
        translate ([0.75,-0.25,0]) plate (5,0.4,5);
        rotate ([0,0,20]) translate ([0.75,0.25,0]) plate_w_holes (5,0.4,5);
    }
    union () { // negatives
        //hinge gap
        translate ([0,-0.05,-0.1]) cube ([1.75,0.42,5.5]);
    }
}