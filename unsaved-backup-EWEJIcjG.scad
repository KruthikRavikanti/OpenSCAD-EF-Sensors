scale([10,10,10]){    
 difference(){
    cube([1.5,0.9+0.35,3]);
    translate([.135+0.092,0,2])cube([1.066,.7+0.35,2]);
    translate([.375-0.2375,0,0.5])cube([1.225,.7+0.35,1.5]);
}
}

translate([-9.5,0,0])cube([9.5,.5,30]);
translate([15,0,0])cube([9.5,.5,30]);

translate([-9.5,0,0])cube([0.5,2.25,30]);
translate([24.5,0,0])cube([0.5,2.25,30]);

translate([-9.5,2.25,0])cube([3,.5,30]);
translate([22,2.25,0])cube([3,.5,30]);

