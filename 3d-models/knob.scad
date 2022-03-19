include<BOSL2\std.scad>;

width = 10;
depth = 10;
height = 12;
widthHole = 4.5;
depthHole = 1.4;
heightHole = 10;
difference()
{
    cuboid([ width, depth, height], anchor = [ -1, -1, -1 ], rounding = 1);
    translate([ width/2-widthHole/2, depth/2-depthHole/2, height - heightHole ])
    {
        cube([widthHole, depthHole, heightHole]);
    }
}
  