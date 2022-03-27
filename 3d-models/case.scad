include<BOSL2\std.scad>;

$fa = 6;
$fs = 0.5;

sizeScrewCube = 6;

edges = 1.8;
width = 40 + edges * 2 + 1;
depth = 60 + sizeScrewCube * 2 + edges * 2 + 1;
height = 26;

widthWireHole = 20;
heightWireHole = 8;

radiusUsbHole = 5;

heightScrewCube = height - edges * 2 - 0.2;

radiusScrew = 1.1;
heightScrew = heightScrewCube;

difference() {
  cuboid([ width, depth, height ], anchor = [ -1, -1, -1 ], rounding = 1);
  translate([ edges, edges, edges ]) {
    cube([ width - edges * 2, depth - edges * 2, height ]);
  }

  translate(
      [ width / 2 - widthWireHole / 2, 0, height / 2 - heightWireHole / 2 ]) {
    cube([ widthWireHole, edges, heightWireHole ]);
  }

#translate([ width - 30, depth, 15 ])
  {
    rotate([ 90, 0, 0 ]) { cylinder(r = radiusUsbHole, h = edges); }
  }
}

// Screw cubes
translate([ edges, edges, edges ]) {
  difference() {
    cube([ sizeScrewCube, sizeScrewCube, heightScrewCube ]);
    translate([
      sizeScrewCube / 2, sizeScrewCube / 2, heightScrewCube - heightScrew
    ]) {
      cylinder(h = heightScrew, r = radiusScrew);
    }
  }
}
translate([ width - edges - sizeScrewCube, edges, edges ]) {
  difference() {
    cube([ sizeScrewCube, sizeScrewCube, heightScrewCube ]);
    translate([
      sizeScrewCube / 2, sizeScrewCube / 2, heightScrewCube - heightScrew
    ]) {
      cylinder(h = heightScrew, r = radiusScrew);
    }
  }
}
translate([ edges, depth - edges - sizeScrewCube, edges ]) {
  difference() {
    cube([ sizeScrewCube, sizeScrewCube, heightScrewCube ]);
    translate([
      sizeScrewCube / 2, sizeScrewCube / 2, heightScrewCube - heightScrew
    ]) {
      cylinder(h = heightScrew, r = radiusScrew);
    }
  }
}
translate(
    [ width - edges - sizeScrewCube, depth - edges - sizeScrewCube, edges ]) {
  difference() {
    cube([ sizeScrewCube, sizeScrewCube, heightScrewCube ]);
    translate([
      sizeScrewCube / 2, sizeScrewCube / 2, heightScrewCube - heightScrew
    ]) {
      cylinder(h = heightScrew, r = radiusScrew);
    }
  }
}