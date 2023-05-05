// base
bx = 54;
by = 20;
bz = 2;

// upright
uz = 25 + 2;
ux = 3;
uy = by;

// pcb board
px = 50.62+ 0.2;
py = 1.54 + 0.2+0.2;
pz = 24.9;

difference()
{
    union()
    {
        difference()
        {
            cube([bx, by, bz]);
            translate([5/2, 5/2, -0.25]) 
                cube([bx-5, by/2.5-5, bz+0.5]);
            translate([5/2, by - 5/2 - 5/2, -0.25]) 
                cube([bx-5, by/2.5-5, bz+0.5]);
        }
        translate([0.1, 0.1, 0.1 ])
            cube([ux, uy-0.2, uz]);
        translate([bx-ux-0.1, 0.1, 0.1 ])
            cube([ux, uy-0.2, uz]);
        translate([0.15, by - 1.15 - 0.2, uz/2])
            cube([ bx-0.3, 1.1, uz/2]);
        translate([bx/2-1, by - 1.1 - 0.2, 1.5])
            cube([ 2, 1.05, uz/2+2]);
    }
    translate([ 1.4 , 12.27, bz+0.1])
        cube([px, py, pz+0.5]);
}