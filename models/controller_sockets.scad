
NES_width=20.3;
NES_height=12.21;
NES_top_size=[26.75,15.95];

SNES_width=35.11;
SNES_height=8.71;
SNES_clip_offset=1.7;
SNES_gap=(4.7+8.18)/2;
SNES_top_size=[43.55,16.8];

N64_width=16.24;
N64_height=12.35;
N64_clip_offset=6.22;
N64_clip_height=2.11;
N64_clip_outset=(17.05-N64_width)/2;
N64_top_size=21.90;

wall_thick=1.55+tolerance;
wall_gap=1.66;
socket_thick=1;
socket_width=3.23;
socket_depth=12.45+tolerance;

ps=in(.156);
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
    square(size=NES_top_size,center=true);
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
    square(size=SNES_top_size,center=true);
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
    circle(r=N64_top_size/2,center=true);
}
