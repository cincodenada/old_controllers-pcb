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
wall_gap=4;
socket_thick=2;
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
ctoh_N64=1.2*64;
ctoh_NES=1.1*64;
ctoh_bot=0.3875*64+ps;
ctoh_top=0.3375*64+ps;

top_to_teensy=0.1*64;
bottom_to_teensy=0.175*64;

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

module lump(solid=true) {
    translate([-ps*3,0,0]) {
        translate([0,0,0]) NES(solid);
        translate([0,0,0]) SNES(solid);
        translate([ps*4+SNES_gap,0,0]) N64(solid);
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

board_length=3.65*64;
board_width=1.475*64;
board_thick=4;
board_offset=10;
pin_base=.125*64;
pin_gap=pin_base*0.5;
pin_length=.4*64;
pin_below=.125*64;
pin_d=.045*64;
pin_taper=pin_d/2;
ledge_width=5;

box_thick=3;
box_height=
    box_thick+
    board_offset+
    board_thick+
    pin_base+
    pin_gap+
    box_thick+
    socket_depth;

box_length=board_length+box_thick*2;
box_width=board_width+box_thick*2;

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

module controller_holes() {
    translate([-ctoh_N64,-ctoh_bot,0]) lump();
    translate([ctoh_NES,-ctoh_bot,0]) lump();
    translate([-ctoh_NES,ctoh_top,0]) rotate([0,0,180]) lump();
    translate([ctoh_N64,ctoh_top,0]) rotate([0,0,180]) lump();
}

module pin_cutouts() {
    translate([-ctoh_N64,-ctoh_bot,0]) pin_cutout();
    translate([ctoh_NES,-ctoh_bot,0]) pin_cutout();
    translate([-ctoh_NES,ctoh_top,0]) rotate([0,0,180]) pin_cutout();
    translate([ctoh_N64,ctoh_top,0]) rotate([0,0,180]) pin_cutout();
}

module all_pins() {
    translate([-ctoh_N64,-ctoh_bot,0]) pin_set();
    translate([ctoh_NES,-ctoh_bot,0]) pin_set();
    translate([-ctoh_NES,ctoh_top,0]) rotate([0,0,180]) pin_set();
    translate([ctoh_N64,ctoh_top,0]) rotate([0,0,180]) pin_set();
}

fudge=.1;

color("darkgreen")
translate([0,0,board_offset+box_thick+board_thick/2])
cube(size=[
    board_length,
    board_width,
    board_thick
], center=true);

teensy_trans=(bottom_to_teensy-top_to_teensy)/2;
translate([0,teensy_trans,board_offset+box_thick+board_thick])
teensy();

translate([0,0,box_thick+board_offset+board_thick]) all_pins();

//Box top
//translate([0,0,50])
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
    translate([0,0,box_height-socket_depth+fudge])
    linear_extrude(height=socket_depth+fudge) controller_holes();
    translate([0,0,box_height-socket_depth-box_thick])
    linear_extrude(height=box_thick) pin_cutouts();
}

//Box bottom
color("darkblue",0.5)
translate([0,0,box_height/2])
difference() {
    cube(size=[box_length-fudge,box_width,box_height-fudge],center=true);
    translate([0,0,box_thick])
    cube(size=[box_length+fudge,box_width-box_thick*2,box_height-box_thick],center=true);
}

*color("dimgray")
translate([0,0,box_height])
linear_extrude(height=socket_depth) {
    translate([-ctoh_N64,-ctoh_bot,0]) lump_top();
    translate([ctoh_NES,-ctoh_bot,0]) lump_top();
    translate([-ctoh_NES,ctoh_top,0]) rotate([0,0,180]) lump_top();
    translate([ctoh_N64,ctoh_top,0]) rotate([0,0,180]) lump_top();
}
