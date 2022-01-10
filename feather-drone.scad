
$fn = 50;
difference(){
	import("micro105-bottom-v4-bottom-battery.stl");
	translate([8.89, -20, 0])
	cylinder(h = 3, r = 3);
	translate([-8.89, -20, 0])
	cylinder(h = 3, r = 3);
	translate([8.89, 25, 0])
	cylinder(h = 3, r = 3);
	translate([-8.89, 25, 0])
	cylinder(h = 3, r = 3);
}
translate([8.89, -20, 0])
difference() {
	cylinder(h = 3, r = 3);
	cylinder(h = 3, r = 1.5);
}
translate([-8.89, -20, 0])
difference() {
	cylinder(h = 3, r = 3);
	cylinder(h = 3, r = 1.5);
}
translate([8.89, 25, 0])
difference() {
	cylinder(h = 3, r = 3);
	cylinder(h = 3, r = 1.5);
}
translate([-8.89, 25, 0])
difference() {
	cylinder(h = 3, r = 3);
	cylinder(h = 3, r = 1.5);
}
