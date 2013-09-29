pin_base=.125*64;
pin_gap=pin_base*0.5;
pin_length=.4*64;
pin_below=.125*64;
pin_d=.045*64;
pin_taper=pin_d/2;

module pin(x,y) {
	translate([ps*x,ps*y,0]) {
        color("silver") {
            translate([0,0,-pin_below + pin_taper/2])
            cylinder(h=pin_length+pin_base+pin_below-pin_taper, r=pin_d/2);
            translate([0,0,-pin_below])
            cylinder(h=pin_taper/2,r2=pin_d/2,r1=pin_taper/2);
            translate([0,0,pin_length+pin_base-pin_taper/2])
            cylinder(h=pin_taper/2,r1=pin_d/2,r2=pin_taper/2);
        }

        color("white")
        linear_extrude(height=pin_base)
        square(size=ps,center=true);
    }
}

module pin_set() {
    translate([-ps*3,0,0]) {
        for(x=[1:3]) { pin(x,1); }
        for(x=[0:3]) { pin(x,0); }
        translate([SNES_gap,0,0])
        for(x=[3:5]) { pin(x,0); }
    }
}

module pin_cutout() {
    hull() {
        translate([-ps*3,0,0]) circle(r=pin_d,center=true);
        translate([SNES_gap+ps*2,0,0]) circle(r=pin_d,center=true);
    }
    hull() {
        translate([ps*-2,ps,0]) circle(r=pin_d,center=true);
        translate([0,ps,0]) circle(r=pin_d,center=true);
    }
}
