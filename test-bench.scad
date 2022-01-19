rotate([180, 0, 0])
translate([0, 0, -35])
import("feather-drone--780c1d6.stl");

$riserHeight = 30;
$riserWidth = 15;
$baseLength = 60;
$baseWidth = 30;
$baseTh = 5;

$armLength = 30;
$armWidth = 5;
$armTh = 3;

// draw base
translate([0, 0, $baseTh / 2])
cube([$baseWidth, $baseLength, $baseTh], center = true);

// draw riser
difference() {
	translate([0, 0, $riserHeight / 2])
	cube([$riserWidth, $baseLength, $riserHeight], center = true);
}

// draw arms
translate([$armLength / 2, 0, $riserHeight - ($armTh / 2)])
cube([$armLength, $armWidth, $armTh], center = true);
rotate([0, 0, 180])
translate([$armLength / 2, 0, $riserHeight - ($armTh / 2)])
cube([$armLength, $armWidth, $armTh], center = true);
