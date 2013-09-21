$fa=1;
$fs=1;


NES_width=51;
NES_height=29.5;
NES_tall=29;

SNES_width=88;
SNES_height=21.5;
SNES_tall=29;
SNES_gap=4;

N64_width=40;
N64_height=29;
N64_gap=15;
N64_button=6;
N64_tall=29;

wall_thick=2;
wall_gap=3;
socket_thick=1.5;
socket_width=8;

ps=10;
csy=ps*5.5;
csx=ps*14;

module pin(x,y) {
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
            translate([ps*2,ps,0])
            circle(r=socket_width/2 + wall_gap + wall_thick, center=true);
            translate([0,ps,0])
            circle(r=socket_width/2 + wall_gap + wall_thick, center=true);
        }
        if(!solid) {
            hull() {
                circle(r=socket_width/2 + wall_gap, center=true);
                translate([ps*2,0,0])
                circle(r=socket_width/2 + wall_gap, center=true);
                translate([ps*3,ps,0])
                circle(r=socket_width/2 + wall_gap, center=true);
                translate([0,ps,0])
                circle(r=socket_width/2 + wall_gap, center=true);
            }
        }
    }

    for(x=[0:2]) { pin(x,1); }
    for(x=[0:3]) { pin(x,0); }
}
module NES_top() {
    square(size=[60,40],center=true);
}

module SNES(solid=false) {
    difference() {
        hull() {
            translate([ps*6.5,0,0])
            circle(r=socket_width/2 + wall_gap + wall_thick, center=true);
            square(size=socket_width + (wall_gap + wall_thick)*2,center=true);
        }
        if(!solid) {
            hull() {
                translate([ps*6.5,0,0])
                circle(r=socket_width/2 + wall_gap, center=true);
                square(size=socket_width + wall_gap*2,center=true);
            }
        }
    }

    for(x=[0:3]) { pin(x,0); }
    for(x=[4:6]) { pin(x+0.5,0); }

    translate([ps*3.75,0,0])
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
                translate([0,N64_height,0])
                square(size=N64_width+wall_thick*2,center=true);
            }
        }
	}

	for(x=[-1:1]) { pin(x,0); }
}
module N64_top() {
    circle(r=N64_width/2+6.5,center=true);
}

module teensy() {
    header_height=.340*64;
    teensy_width=0.7*64;
    teensy_length=1.2*64;
    thick=5;

    translate([0,0,header_height/2]) {
        color("green")
        translate([0,0,(header_height+thick)/2])
        cube(size=[teensy_width,teensy_length,thick],center=true);

        color("darkgray") {
            translate([-(teensy_width-thick)/2,0,0])
            cube(size=[thick,teensy_length,header_height],center=true);
            translate([(teensy_width-thick)/2,0,0])
            cube(size=[thick,teensy_length,header_height],center=true);
        }
    }
}

module lump() {
    translate([-ps*3.25,0,0]) {
        translate([0,0,0]) NES(false);
        translate([0,0,0]) SNES(false);
        translate([ps*5.5,0,0]) N64(false);
    }
}
module lump_top() {
    translate([-ps*3.25,0,0]) {
        translate([ps*1.5,ps*(.5),0]) NES_top();
        translate([ps*3.25,0,0]) SNES_top();
        translate([ps*5.5,0,0]) N64_top();
    }
}

fudge=ps*0;
color("steelblue")
%linear_extrude(height=NES_height)
difference() {
    minkowski() {
        hull() {
            union() {
                lump();
                translate([csx,fudge,0]) lump();
                translate([0,csy,0]) lump();
                translate([csx,csy,0]) rotate([0,0,180]) lump();
            }
        }
        circle(r=10);
    }

    lump();
    translate([csx,fudge,0]) lump();
    translate([0,csy,0]) lump();
    translate([csx,csy,0]) rotate([0,0,180]) lump();
}

color("dimgray")
translate([0,0,N64_height])
%linear_extrude(height=N64_height) {
    lump_top();
    translate([csx,fudge,0]) lump_top();
    translate([0,csy,0]) lump_top();
    translate([csx,csy,0]) rotate([0,0,180]) lump_top();
}

translate([csx/2,csy/2,0]) teensy();
