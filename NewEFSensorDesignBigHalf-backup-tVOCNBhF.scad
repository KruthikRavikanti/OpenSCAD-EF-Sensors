dring=184.62;
//58cm as circumference
resolution=300;

difference(){
    cylinder(d=dring+4,h=30, $fn=resolution);
    cylinder(d=dring,h=40, $fn=resolution);
    translate([-7.5,dring/2-0.31,0])cube([1.5*10,1*10,5*10]);
    rotate([0,0,45])translate([-7.5,dring/2-0.31,0])cube([1.5*10,1*10,5*10]);
    rotate([0,0,-45])translate([-7.5,dring/2-0.31,0])cube([1.5*10,1*10,5*10]);
    translate([-100,-105,0])cube([200,80,60]);
    
    union(){
        difference(){
        union(){
            cylinder(d=dring+1.25,h=40, $fn=resolution);
        }
        translate([-200,0,0])cube([400,300,300]);
    }
    }
    
    union(){
        difference(){
        union(){
            difference(){
            cylinder(d=dring+4,h=40, $fn=resolution);
            cylinder(d=dring+2.75,h=40, $fn=resolution);
            }
        }
        translate([-200,0,0])cube([400,300,300]);
    }
    }
    
    translate([-100,-25,0])cube([300,25,4.2]);
    translate([-100,-25,25.8])cube([300,25,4.2]);
    
    /*
    translate([7.5,dring/2,0])cube([10,10,100],center=true);
    translate([-7.5,dring/2,0])cube([10,10,100],center=true);
    translate([0,-10,0])cube([100,90,100],center=true);
    translate([-23,dring/2,0])cube([30,40,100],center=true);
    translate([23,dring/2,0])cube([30,40,100],center=true);
    */
       
    }
    
 
translate([-7.5,dring/2-0.31,0])scale([10,10,10]){    
 difference(){
    cube([1.5,0.9+0.35,3+1]);
     //used to be 0.092
    translate([.135+0.092-0.036,0,2])cube([1.03,.7+0.35,2+1]);
    translate([.375-0.2375,0,0.5])cube([1.225,.7+0.35,1.5+1]);
}
}

rotate([0,0,45])translate([-7.5,dring/2-0.31,0])scale([10,10,10]){    
 difference(){
    cube([1.5,0.9+0.35,3+1]);
    translate([.135+0.092-0.036,0,2])cube([1.03,.7+0.35,2+1]);
    translate([.375-0.2375,0,0.5])cube([1.225,.7+0.35,1.5+1]);
}
}

rotate([0,0,-45])translate([-7.5,dring/2-0.31,0])scale([10,10,10]){    
 difference(){
    cube([1.5,0.9+0.35,3+1]);
    translate([.135+0.092-0.036,0,2])cube([1.03,.7+0.35,2+1]);
    translate([.375-0.2375,0,0.5])cube([1.225,.7+0.35,1.5+1]);
}
}