
$fn = 50;
difference(){
	import("micro105-bottom-v4-bottom-battery.stl");
	translate([8.89, -20, 0])
	filledScrewHole();
	translate([-8.89, -20, 0])
	filledScrewHole();
	translate([8.89, 25, 0])
	filledScrewHole();
	translate([-8.89, 25, 0])
	filledScrewHole();
}
translate([8.89, -20, 0])
screwHole();
translate([-8.89, -20, 0])
screwHole();
translate([8.89, 25, 0])
screwHole();
translate([-8.89, 25, 0])
screwHole();

module filledScrewHole() {
	cylinder(h = 3, r = 3);
}

module screwHole() {
	difference() {
		cylinder(h = 3, r = 3);
		cylinder(h = 3, r = 1.5);
	}
}
