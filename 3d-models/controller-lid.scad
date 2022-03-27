include<BOSL2\std.scad>;

$fa = 6;
$fs = 0.5;

edges = 1.8;
width = 100 - edges * 2;
depth = 30 - edges * 2;
height = edges;

margin = 0.2;

sizeScrewCube = 6;
radiusScrew = 1.5;
radiusScreHead = 2;

heightSupport = 4.6;

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

translate([ width / 2 - 4 / 2 + 15, depth / 2 - 4 / 2, edges ]) {
  cube([ 4, 4, heightSupport ]);
}

translate([ width / 2 - 4 / 2 - 15, depth / 2 - 4 / 2, edges ]) {
  cube([ 4, 4, heightSupport ]);
}