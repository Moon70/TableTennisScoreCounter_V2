use <Bar.scad>

markerZ=10;
markerY=16;
markerX=16;
diameter=17.5;

holeDelta=0.4;
holeX=7+holeDelta;
holeY=50;
holeZ=7+holeDelta;

textOffsetX=3.2;
textOffsetY=1;
textZ=1;

//uncomment next line to create model
//tileWithHole();

module tile(){
    intersection()
    {
        cube([markerX,markerY,markerZ],center=true);
        sphere(d=diameter, $fn=30);
    }
}

module tileWithHole(){
    difference()
    {
        tile();
        color("red")
        rotate([0,90,0])
        counterBarHole(gap=0.4);
    }
}