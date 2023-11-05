overlap=0.006;

plateX=40+2;
plateY=20+2;
plateZ=4.5;

gripDiameter=11;
gripHeight=40-10;

gripCutX=plateX;
gripCutY=1.4;
gripCutZ=5;

holeDiameter=4.5;
holeHeight=gripHeight;
holeZ=gripDiameter/2+plateZ/2-1;

barHolder();

module barHolder(){
    difference()
    {
        union()
        {
            translate([0,0,plateZ/2])
            cube([plateX,plateY,plateZ],center=true);

            translate([0,0,holeZ])
            rotate([0,90,0])
            cylinder(h=gripHeight,d=gripDiameter,center=true, $fn=45);
        }
        union()
        {
            translate([0,0,plateZ/2-2])
            cube([plateX-2,plateY-2,plateZ],center=true);

            color("red")
            translate([0,5,holeDiameter/2+plateZ])
            rotate([0,90,0])
            cylinder(h=holeHeight+overlap,d=holeDiameter,center=true, $fn=45);
            
            color("red")
            translate([0,-5,holeDiameter/2+plateZ])
            rotate([0,90,0])
            cylinder(h=holeHeight+overlap,d=holeDiameter,center=true, $fn=45);
        
            translate([-gripCutX/2,-gripCutY/2+gripDiameter/2,holeZ])
            cube([gripCutX,gripCutY,gripCutZ]);
        
            translate([-gripCutX/2,-gripCutY/2-gripDiameter/2,holeZ])
            cube([gripCutX,gripCutY,gripCutZ]);
        }
    }
}

