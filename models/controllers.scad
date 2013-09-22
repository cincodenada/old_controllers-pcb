$fa=1;
$fs=1;


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
wall_gap=3;
socket_thick=1.5;
socket_width=8;
socket_depth=29;

ps=.156*64;
csy=ps*5.5/2;
csx=ps*14/2;
//Total pin width
tpw=ps*5+SNES_gap;
//Center-to-handle adjust
ctoh=SNES_gap/2;

//Center to handle
//N64 and NES-first
ctoh_N64=1.025*64;
ctoh_NES=0.925*64;
ctoh_bot=0.3875*64+ps;
ctoh_top=0.3375*64+ps;

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

    for(x=[1:3]) { pin(x,1); }
    for(x=[0:3]) { pin(x,0); }
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

    for(x=[0:3]) { pin(x,0); }
    translate([SNES_gap,0,0])
    for(x=[3:5]) { pin(x,0); }

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
    translate([-ps*3,0,0]) {
        translate([0,0,0]) NES(true);
        translate([0,0,0]) SNES(true);
        translate([ps*4+SNES_gap,0,0]) N64(true);
    }
}
module lump_top() {
    translate([-ps*3,0,0]) {
        translate([ps*1.5,ps*(.5),0]) NES_top();
        translate([tpw/2,0,0]) SNES_top();
        translate([ps*4+SNES_gap,0,0]) N64_top();
    }
}

*color("steelblue")
linear_extrude(height=socket_depth)
difference() {
    minkowski() {
        hull() {
            union() {
                translate([-ctoh_N64,-ctoh_bot,0]) lump();
                translate([ctoh_NES,-ctoh_bot,0]) lump();
                translate([-ctoh_NES,ctoh_top,0]) rotate([0,0,180]) lump();
                translate([ctoh_N64,ctoh_top,0]) rotate([0,0,180]) lump();
            }
        }
        circle(r=10);
    }

    translate([-ctoh_N64,-ctoh_bot,0]) lump();
    translate([ctoh_NES,-ctoh_bot,0]) lump();
    translate([-ctoh_NES,ctoh_top,0]) rotate([0,0,180]) lump();
    translate([ctoh_N64,ctoh_top,0]) rotate([0,0,180]) lump();
}

*color("dimgray")
translate([0,0,socket_depth])
linear_extrude(height=socket_depth) {
    translate([-csx,-csy,0]) lump_top();
    translate([csx,-csy,0]) lump_top();
    translate([-csx,csy,0]) rotate([0,0,180]) lump_top();
    translate([csx,csy,0]) rotate([0,0,180]) lump_top();
}

board_length=3.325*64;
board_width=1.475*64;
board_thick=4;
board_offset=10;
pin_base=.125*64;
pin_length=.4*64;
pin_d=.045*64;
ledge_width=5;

box_thick=3;
box_height=
    box_thick+
    board_offset+
    board_thick+
    box_thick+
    socket_depth;

box_length=board_length+box_thick*2;
box_width=board_width+box_thick*2;

color("green")
translate([0,0,board_offset+box_thick])
cube(size=[
    board_length,
    board_width,
    board_thick
], center=true);

translate([0,0,board_offset+box_thick+board_thick])
teensy();

module pin_cutout() {
    hull() {
        translate([-tpw/2,0,0]) circle(r=pin_d,center=true);
        translate([tpw/2,0,0]) circle(r=pin_d,center=true);
    }
    hull() {
        translate([ps*-2.25,ps,0]) circle(r=pin_d,center=true);
        translate([ps*-.25,ps,0]) circle(r=pin_d,center=true);
    }
}

module controller_holes() {
    translate([-csx,-csy,0]) lump();
    translate([csx,-csy,0]) lump();
    translate([-csx,csy,0]) rotate([0,0,180]) lump();
    translate([csx,csy,0]) rotate([0,0,180]) lump();
}

module pin_cutouts() {
    translate([-csx,-csy,0]) pin_cutout();
    translate([csx,-csy,0]) pin_cutout();
    translate([-csx,csy,0]) rotate([0,0,180]) pin_cutout();
    translate([csx,csy,0]) rotate([0,0,180]) pin_cutout();
}

fudge=.1;

//Box top
translate([0,0,50])
color("slateblue",0.5)
difference() {
    union() {
        translate([0,0,box_height/2])
        difference() {
            translate([0,0,box_thick/2])
            cube(size=[box_length,box_width-box_thick*2,box_height-box_thick],center=true);
            translate([0,0,-fudge])
            cube(size=[box_length-box_thick*2,box_width-box_thick*2+fudge,box_height-box_thick*2+fudge],center=true);
        }
        translate([0,0,box_height-socket_depth])
        minkowski() {
            linear_extrude(height=socket_depth-box_thick) controller_holes();
            cube(size=[box_thick*2,box_thick*2,box_thick*2],center=true);
        }
    }
    translate([0,0,box_height-socket_depth])
    linear_extrude(height=socket_depth+fudge) controller_holes();
    translate([0,0,box_height-socket_depth-box_thick])
    linear_extrude(height=box_thick) pin_cutouts();
}

//Box bottom
color("darkblue",0.5)
translate([0,0,box_height/2])
difference() {
    cube(size=[box_length,box_width,box_height],center=true);
    translate([0,0,box_thick])
    cube(size=[box_length+fudge,box_width-box_thick*2,box_height-box_thick],center=true);
}
