difference(){
    cube([110,160, 3]);
    translate([40,100,0])cube([48,50,6]);
    translate([40,40,0])cube([30,60,6]);
    translate([30.5,30,0])cylinder(d=5,h=8);
    translate([30.5,79,0])cylinder(d=5,h=8);
    
    translate([26,121,0])cylinder(d=5,h=8);
    translate([26,139,0])cylinder(d=5,h=8);
    
    translate([10,130,0])cylinder(d=5,h=8);
    
    translate([79.5,30,0])cylinder(d=5,h=8);
    translate([79.5,79,0])cylinder(d=5,h=8);
    
    translate([99,121,0])cylinder(d=5,h=8);
    translate([100,130,0])cylinder(d=5,h=8);
    translate([99,139,0])cylinder(d=5,h=8);
}