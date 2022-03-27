include<BOSL2\std.scad>;

$fa = 6;
$fs = 0.5;

sizeScrewCube = 6;

edges = 1.8;
width = 40 + 1;
depth = 60 + sizeScrewCube * 2 + 1;
height = edges;

margin = 0.2;

radiusScrew = 1.2;
radiusScreHead = 1.8;

// Whole chasis
difference() {
  translate([ margin, margin, 0 ]) {
    cube([ width - margin * 2, depth - margin * 2, height ]);
  }

  // Screw holes
  translate([ sizeScrewCube / 2, sizeScrewCube / 2, 0 ]) {
    cylinder(h = edges, r1 = radiusScreHead, r2 = radiusScrew);
  }
  translate([ width - sizeScrewCube, 0, 0 ]) {
    translate([ sizeScrewCube / 2, sizeScrewCube / 2, 0 ]) {
      cylinder(h = edges, r1 = radiusScreHead, r2 = radiusScrew);
    }
  }
  translate([ 0, depth - sizeScrewCube, 0 ]) {
    translate([ sizeScrewCube / 2, sizeScrewCube / 2, 0 ]) {
      cylinder(h = edges, r1 = radiusScreHead, r2 = radiusScrew);
    }
  }
  translate([ width - sizeScrewCube, depth - sizeScrewCube, 0 ]) {
    translate([ sizeScrewCube / 2, sizeScrewCube / 2, 0 ]) {
      cylinder(h = edges, r1 = radiusScreHead, r2 = radiusScrew);
    }
  }
}
