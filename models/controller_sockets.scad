
NES_width=51;
NES_height=29.5;

SNES_width=88;
SNES_height=21.5;
SNES_gap=.25*64;

N64_width=40;
N64_height=29;
N64_gap=15;
N64_button=6;

wall_thick=2;
wall_gap=4;
socket_thick=2;
socket_width=8;
socket_depth=29;

ps=.156*64;
//Total pin width
tpw=ps*5+SNES_gap;
//Center-to-handle adjust
ctoh=SNES_gap/2;

module socket(x,y) {
	translate([ps*x,ps*y,0])
	difference() {
        circle(r=socket_width/2, center=true);
        circle(r=socket_width/2-socket_thick, center=true);
	}
}

module NES(solid=false) {
    difference() {
        hull() {
            circle(r=socket_width/2 + wall_gap + wall_thick, center=true);
            translate([ps*3,0,0])
            circle(r=socket_width/2 + wall_gap + wall_thick, center=true);
            translate([ps*3,ps,0])
            circle(r=socket_width/2 + wall_gap + wall_thick, center=true);
            translate([ps,ps,0])
            circle(r=socket_width/2 + wall_gap + wall_thick, center=true);
        }
        if(!solid) {
            hull() {
                circle(r=socket_width/2 + wall_gap, center=true);
                translate([ps*3,0,0])
                circle(r=socket_width/2 + wall_gap, center=true);
                translate([ps*3,ps,0])
                circle(r=socket_width/2 + wall_gap, center=true);
                translate([ps,ps,0])
                circle(r=socket_width/2 + wall_gap, center=true);
            }
        }
    }

    for(x=[1:3]) { socket(x,1); }
    for(x=[0:3]) { socket(x,0); }
}
module NES_top() {
    square(size=[60,40],center=true);
}

module SNES(solid=false) {
    difference() {
        hull() {
            translate([ps*5+SNES_gap,0,0])
            circle(r=socket_width/2 + wall_gap + wall_thick, center=true);
            square(size=socket_width + (wall_gap + wall_thick)*2,center=true);
        }
        if(!solid) {
            hull() {
                translate([ps*5+SNES_gap,0,0])
                circle(r=socket_width/2 + wall_gap, center=true);
                square(size=socket_width + wall_gap*2,center=true);
            }
        }
    }

    for(x=[0:3]) { socket(x,0); }
    translate([SNES_gap,0,0])
    for(x=[3:5]) { socket(x,0); }

    translate([ps*3+SNES_gap/2,0,0])
    square(size=[wall_thick,socket_width + wall_gap*2],center=true);
}
module SNES_top() {
    square(size=[108,38],center=true);
}

module N64(solid=false) {
	difference() {
        difference() {
            circle(r=N64_width/2,center=true);
            translate([0,-N64_height,0])
            square(size=N64_width,center=true);
        }
        if(!solid) {
            difference() {
                circle(r=N64_width/2-wall_thick,center=true);
                translate([0,-N64_height,0])
                square(size=N64_width+wall_thick*2,center=true);
            }
        }
	}

	for(x=[-1:1]) { socket(x,0); }
}
module N64_top() {
    circle(r=N64_width/2+6.5,center=true);
}
