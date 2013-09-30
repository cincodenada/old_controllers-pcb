$fa=1;
$fs=1;
fudge=.1;


include <controller_sockets.scad>;
include <teensy.scad>;
include <pins.scad>;

csy=ps*5.5/2;
csx=ps*14/2;

//Center to handle
//N64 and NES-first
ctoh_N64=1.2*64;
ctoh_NES=1.1*64;
ctoh_bot=(0.2625)*64+ps;
ctoh_top=(0.3125)*64+ps;

top_to_teensy=0.05*64;
bottom_to_teensy=0.075*64;

board_length=3.65*64;
board_width=1.325*64;
board_thick=4;
board_offset=10;
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

teensy_trans=(bottom_to_teensy-top_to_teensy)/2;

cutout_offset=box_thick
    +board_offset
    +board_thick
    +header_height;

cutout_size=[
    connector_size[0]*2,
    bottom_to_teensy+box_thick,
    box_height-box_thick-cutout_offset,
];
cutout_pos=[-cutout_size[0]/2,-box_width/2,cutout_offset];

holder_offset=box_thick+board_offset+board_thick;
holder_height=box_height-(socket_depth+box_thick+holder_offset);

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

module timesfour() {
    translate([-ctoh_N64,-ctoh_bot,0]) child(0);
    translate([ctoh_NES,-ctoh_bot,0]) child(0);
    translate([-ctoh_NES,ctoh_top,0]) rotate([0,0,180]) child(0);
    translate([ctoh_N64,ctoh_top,0]) rotate([0,0,180]) child(0);
}

module connector_cap() {
    translate([
        box_thick,
        cutout_size[1] - connector_overhang,
        connector_size[2]+
        (cutout_size[2]-connector_size[2])/2
    ])
    cube(size=[
        cutout_size[0]-box_thick*2,
        connector_overhang,
        (cutout_size[2]-connector_size[2])/2
    ]);
}

module grab_top() {
    translate([0,0,holder_offset]) {
        difference() {
            cube([ledge_width,ledge_width,holder_height]);
            cube([ledge_width/2,ledge_width/2,holder_height]);
            translate([ledge_width/2,ledge_width/4,holder_height/2])
            sphere(r=ledge_width/4);
        }
    }
}

module grab_bottom() {
    translate([0,0,holder_offset]) {
        cube([ledge_width*.5,ledge_width*.5,holder_height]);
        translate([ledge_width/2,ledge_width/4,holder_height/2])
        sphere(r=ledge_width/4);
    }     
}

module box_top() {
    //Box top
    color("slateblue",0.5) {
        difference() {
            union() {
                translate([0,0,box_height/2])
                difference() {
                    translate([0,0,box_thick/2])
                    cube(size=[
                        box_length,
                        box_width-box_thick*2,
                        box_height-box_thick
                    ],center=true);
                    translate([0,0,-fudge])
                    cube(size=[
                        box_length-box_thick*2,
                        box_width-box_thick*2+fudge*2,
                        box_height-box_thick*2+fudge*2
                    ],center=true);
                }
                //Add chunks for the sockets to carve out of
                translate([0,0,box_height-socket_depth])
                minkowski() {
                    linear_extrude(height=socket_depth-box_thick)
                    timesfour() lump();
                    cube(size=[box_thick*2,box_thick*2,box_thick*2],center=true);
                }
                translate(cutout_pos)
                connector_cap();
            }
            translate([0,0,box_height-socket_depth])
            linear_extrude(height=socket_depth+fudge)
            timesfour() lump();
            translate([0,0,box_height-socket_depth-box_thick-fudge])
            linear_extrude(height=box_thick+fudge*2)
            timesfour() pin_cutout();
        }

        bothends() {
            bothsides() union() {
                grab_top();
            }
        }
    }
}

module box_bottom() {
    color("darkblue",0.5) {
        //Base outline
        translate([0,0,box_height/2])
        difference() {
            translate([0,0,-fudge])
            cube(size=[box_length-fudge,box_width,box_height-fudge*2],center=true);
            translate([0,0,box_thick])
            cube(size=[box_length+fudge,box_width-box_thick*2,box_height],center=true);
            translate(cutout_pos-[0,0,box_height/2])
            cube(size=cutout_size);
        }

        translate(cutout_pos)
        difference() {
            union() {
                cube(size=cutout_size);
                translate([0,box_thick,0])
                rotate([0,90,0])
                linear_extrude(height=cutout_size[0])
                polygon(points=[[0,0],[bottom_to_teensy,0],[0,bottom_to_teensy]]);
            }
            translate([box_thick,-fudge,box_thick])
            cube(size=cutout_size-[box_thick*2,connector_overhang,box_thick]);
            translate([
                (cutout_size[0]-connector_size[0])/2,
                bottom_to_teensy+box_thick-connector_overhang,
                (cutout_size[2]-connector_size[2])/2
            ])
            cube(size=connector_size);
            connector_cap();
        }

        //Board holders
        translate([0,0,box_thick+board_offset])
        bothsides() union() {
            rotate([0,90,0])
            linear_extrude(height=box_length-box_thick*2-ledge_width*2,center=true) {
                polygon(points=[[0,0],[ledge_width,0],[0,ledge_width]]);
                translate([-(ledge_width/2+board_thick),0,0])
                polygon(points=[[0,0],[ledge_width/2,0],[0,ledge_width/2]]);
            }
        }

        //Top holder
        bothends() {
            bothsides() union() {
                grab_bottom();
            }
        }
    }

}

module bothsides() {
    translate([0,-(box_width/2-box_thick),0])
    child(0); 
    translate([0,box_width/2-box_thick,0])
    mirror([0,1,0])
    child(0); 
}

module bothends() {
    translate([-(box_length/2-box_thick),0,0])
    child(0);
    translate([box_length/2-box_thick,0,0])
    mirror([1,0,0])
    child(0);
}

module box() {
    //translate([0,0,50])
    box_top();
    box_bottom();
}

//Socket mockups
*color("dimgray")
translate([0,0,box_height])
linear_extrude(height=socket_depth)
timesfour() lump_top();

//Board
*color("darkgreen")
translate([0,0,board_offset+box_thick+board_thick/2])
cube(size=[
    board_length,
    board_width,
    board_thick
], center=true);

//Pins
translate([0,0,box_thick+board_offset+board_thick]) 
timesfour() pin_set();

//Teensy
translate([0,teensy_trans,board_offset+box_thick+board_thick])
teensy();

box();
*difference() {
    box();
    translate([-box_length/2,0,0])
    cube([box_length,box_width,box_height]);
}
