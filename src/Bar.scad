counterBarX=280;
counterBarY=8;
counterBarZ=8;

holeX=15;
holeDiameter=2.5;

//uncomment next line to create model
//counterBarWithHole();

module counterBarWithHole(){
    difference()
    {
        counterBar();
        holes();
    }
}

module counterBar(){
    minkowskiRadius=0.2;
    
    color("blue")
    minkowski() {
        cube([counterBarX-minkowskiRadius*2,counterBarY-minkowskiRadius*2,counterBarZ-minkowskiRadius*2],center=true);
        sphere(r=minkowskiRadius, $fn=30);
    }    
}

module counterBarHole(gap=0.3){
    color("red")
    cube([counterBarX,counterBarY+gap*2,counterBarZ+gap*2],center=true);
}

module holes(){
    overlap=0.001;
    translate([-counterBarX/2+holeX/2-overlap,0,0])
    rotate([0,90,0])
    cylinder(h=holeX, d=holeDiameter, center=true);
    
    translate([counterBarX/2-holeX/2+overlap,0,0])
    rotate([0,90,0])
    cylinder(h=holeX, d=holeDiameter, center=true);
}
