include<BOSL2\std.scad>;

$fa = 6;
$fs = 0.5;

width = 100;
depth = 30;
height = 20;
edges = 1.8;

widthPothole = 73.6 + edges * 2;
depthPothole = 12.6 + edges * 2;
heightPothole = 8;

widthKnobHole = 54;
depthKnobHole = 2;
heightKnobHole = 14;

heightScrewCube = height - edges * 2 - 0.2;
sizeScrewCube = 6;
radiusScrew = 1;
heightScrew = heightScrewCube;

radiusWireHole = 3;

// Whole chasis
difference() {
  cuboid([ width, depth, height ], anchor = [ -1, -1, -1 ], rounding = 1);
  translate([ edges, edges, edges ]) {
    cube([ width - edges * 2, depth - edges * 2, height ]);
  }
  // Hole for knob
  translate(
      [ width / 2 - widthKnobHole / 2, depth / 2 - depthKnobHole / 2, 0 ]) {
    cube([ widthKnobHole, depthKnobHole, edges ]);
  }

  // Hole for wire
  translate(
      [ width / 2 - radiusWireHole, 0, height - radiusWireHole - edges ]) {
    cube([ radiusWireHole * 2, edges, radiusWireHole + edges ]);
  }
}

// Edges to fit potentiometer
translate(
    [ width / 2 - widthPothole / 2, depth / 2 - depthPothole / 2, edges ]) {
  difference() {
    cube([ widthPothole, depthPothole, heightPothole ]);
    translate([ edges, edges, 0 ]) {
      cube([
        widthPothole - edges * 2, depthPothole - edges * 2,
        heightPothole
      ]);
    }
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
