include <Bar.scad>
include <Holder.scad>
include <Tile.scad>

color("#4488ff")
translate([0,0,0])
counterBarWithHole();

color("#4488ff")
translate([140,0,0])
rotate([90,0,180])
barHolderWithHoles();

color("#4488ff")
rotate([270,0,0])
translate([-140,0,0])
barHolderWithHoles();

colors=[
"#555555",
"#555555",
"#555555",
"#555555",
"#555555",
"#555555",
"#555555",
"#555555",
"#555555",
"#555555",
"#ff3333",
"#555555",
"#555555",
"#555555",
"#555555",
"#555555",
"#555555",
"#555555",
"#555555",
"#555555",
"#ff3333"
];
    
for(i=[1:1:21]){
    posX=-140+(markerZ+0.4)*(22-i);
    
    if((i==1)&&($t>0.1)&&$t<=0.2)
        color(colors[i-1])
        translate([posX+510*($t-0.1),0,0])
        rotate([0,90,0])
        tileWithHole();
    else if((i==1)&&($t>0.2))
        color(colors[i-1])
        translate([posX+51,0,0])
        rotate([0,90,0])
        tileWithHole();
    else if((i==2)&&($t>0.2)&&$t<=0.3)
        color(colors[i-1])
        translate([posX+510*($t-0.2),0,0])
        rotate([0,90,0])
        tileWithHole();
    else if((i==2)&&($t>0.3))
        color(colors[i-1])
        translate([posX+51,0,0])
        rotate([0,90,0])
        tileWithHole();
    else if((i==3)&&($t>0.3)&&$t<=0.4)
        color(colors[i-1])
        translate([posX+510*($t-0.3),0,0])
        rotate([0,90,0])
        tileWithHole();
    else if((i==3)&&($t>0.4))
        color(colors[i-1])
        translate([posX+51,0,0])
        rotate([0,90,0])
        tileWithHole();
    else if((i==4)&&($t>0.4)&&$t<=0.5)
        color(colors[i-1])
        translate([posX+510*($t-0.4),0,0])
        rotate([0,90,0])
        tileWithHole();
    else if((i==4)&&($t>0.5))
        color(colors[i-1])
        translate([posX+51,0,0])
        rotate([0,90,0])
        tileWithHole();
    else if((i==5)&&($t>0.5)&&$t<=0.6)
        color(colors[i-1])
        translate([posX+510*($t-0.5),0,0])
        rotate([0,90,0])
        tileWithHole();
    else if((i==5)&&($t>0.6))
        color(colors[i-1])
        translate([posX+51,0,0])
        rotate([0,90,0])
        tileWithHole();
    else
        color(colors[i-1])
        translate([posX,0,0])
        rotate([0,90,0])
        tileWithHole();
}
