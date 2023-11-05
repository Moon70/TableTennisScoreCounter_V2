include <Bar.scad>
include <Holder.scad>
include <Tile.scad>

color("#4488ff")
translate([0,0,0])
counterBarWithHole();

color("#4488ff")
translate([140,0,0])
rotate([0,0,180])
barHolderWithHoles();

color("#4488ff")
translate([-140,0,0])
barHolderWithHoles();

$vpt=[0,0,0];
$vpr = [$t * 360*2,0,$t * 360];
    
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
    
    color(colors[i-1])
    translate([posX,0,0])
    rotate([0,90,0])
    tileWithHole();
}
