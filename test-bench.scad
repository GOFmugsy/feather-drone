// rotate([180, 0, 0])
// translate([0, 0, -35])
// import("feather-drone--780c1d6.stl");

$riserHeight = 30;
$riserWidth = 15;
$baseLength = 60;
$baseWidth = 30;
$baseTh = 5;

$armLength = 30;
$armWidth = 5;
$armTh = 3;

$clipHeight = 10;
$clipReach = 3;

// draw base
translate([0, 0, $baseTh / 2])
cube([$baseWidth, $baseLength, $baseTh], center = true);

// draw riser
difference() {
	translate([0, 0, $riserHeight / 2])
	cube([$riserWidth, $baseLength, $riserHeight], center = true);
	translate([0, ($armWidth / 2) + (($baseLength / 2) - ($armWidth / 2)) / 2, $riserHeight - ($armTh / 2)])
	cube([$riserWidth, ($baseLength / 2) - ($armWidth / 2), $armTh], center = true);
	translate([0, -1 * (($armWidth / 2) + (($baseLength / 2) - ($armWidth / 2)) / 2), $riserHeight - ($armTh / 2)])
	cube([$riserWidth, ($baseLength / 2) - ($armWidth / 2), $armTh], center = true);
	// cut a corner
	translate([-$riserWidth / 2, 0, -$baseTh / 2])
	rotate([90, 0, 90])
	linear_extrude(height = $riserWidth)
	polygon(points = [	[$baseLength / 2, $baseTh],
				[$armWidth / 2, $riserHeight],
				[$baseLength / 2, $riserHeight]]);
	// cut the other corner
	translate([$riserWidth / 2, 0, -$baseTh / 2])
	rotate([90, 0, -90])
	linear_extrude(height = $riserWidth)
	polygon(points = [	[$baseLength / 2, $baseTh],
				[$armWidth / 2, $riserHeight],
				[$baseLength / 2, $riserHeight]]);

	// cut hole in riser
	translate([$riserWidth / 2, 0, 0])
	rotate([0, -90, 0])
	linear_extrude(height = $riserWidth)
	polygon(points = [	[$riserHeight * 0.8, 0],
				[$baseTh * 0.8, (-$baseLength / 2) * 0.8],
				[$baseTh * 0.8, ($baseLength / 2) * 0.8]]);

}

// draw arms
translate([$armLength / 2, 0, $riserHeight - ($armTh / 2)])
cube([$armLength, $armWidth, $armTh], center = true);
rotate([0, 0, 180])
translate([$armLength / 2, 0, $riserHeight - ($armTh / 2)])
cube([$armLength, $armWidth, $armTh], center = true);

// draw arm clips
translate([$armLength, 0, ($clipHeight / 2) + $riserHeight - $armTh])
rotate([0, 0, 180])
union() {
	cube([$armTh, $armWidth, $clipHeight], center = true);
	translate([($clipReach / 2) + ($armTh / 2), 0, ($clipHeight / 2) - ($armTh / 2)])
	cube([$clipReach, $armWidth, $armTh], center = true);
}
translate([-$armLength, 0, ($clipHeight / 2) + $riserHeight - $armTh])
rotate([0, 0, 0])
union() {
	cube([$armTh, $armWidth, $clipHeight], center = true);
	translate([($clipReach / 2) + ($armTh / 2), 0, ($clipHeight / 2) - ($armTh / 2)])
	cube([$clipReach, $armWidth, $armTh], center = true);
}







