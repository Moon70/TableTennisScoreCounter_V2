include <Bar.scad>

plateZ=40;
plateY=20;
plateX=1;

holderDiameter=20;
holderHight=10;

holeDiameter=3.0;

//uncomment next line to create model
//barHolderWithHoles();
    
module barHolder(){
    hull()
    {
        cylinder(h=holderHight,d=holderDiameter,center=true, $fn=45);
        translate([holderDiameter/4,0,0])
        cube([holderDiameter/2,holderDiameter,holderHight],center=true);
        translate([holderDiameter/2,0,-plateZ/2+holderHight/2])
        cube([plateX,plateY,plateZ],center=true);
    }
}

module barHolderWithHoles(){
    rotate([0,90,0])
    difference()
    {
        barHolder();
        union()
        {
            translate([0,0,counterBarX/2])
            rotate([0,90,0])
            counterBarHole(0.2);
            
            cylinder(h=100, d=holeDiameter, center=true, $fn=15);

            translate([00,0,-50-holderHight/2])
            cylinder(h=100, d=10, center=true, $fn=15);
        }
    }        
}
