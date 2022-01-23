// rotate([180, 0, 0])
// translate([0, 0, -35])
// import("feather-drone--780c1d6.stl");

$baseLength = 60;
$baseWidth = 30;
$baseTh = 5;

$armLength = 30;
$armWidth = 5;
$armTh = 3;

$clipHeight = 10;
$clipReach = 3;

$riserHeight = 30;
$riserLength = $armWidth;
$riserWidth = 15;
$riserSlope = 5;

// draw base
translate([0, 0, $baseTh / 2])
cube([$baseWidth, $baseLength, $baseTh], center = true);

// draw riser
translate([0, 0, $baseTh - ($clipHeight / 2) + ($riserHeight / 2)])
cube([$riserWidth, $riserLength, $riserHeight - $clipHeight / 2], center = true);

rotate([0, -90, 0])
translate([$baseTh + $riserSlope, -$riserLength / 2, -$riserWidth / 2])
linear_extrude($riserWidth)
rotate(180)
polygon(points = [[0, 0], [$riserSlope, 0], [$riserSlope, $riserSlope]]);

rotate([180, -90, 0])
translate([$baseTh + $riserSlope, -$riserLength / 2, -$riserWidth / 2])
linear_extrude($riserWidth)
rotate(180)
polygon(points = [[0, 0], [$riserSlope, 0], [$riserSlope, $riserSlope]]);

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







