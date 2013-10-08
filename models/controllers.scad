function in(in) = in*25.4;
$fa=1;
$fs=1;
fudge=.1;
tolerance=.1;
foot_thick=.2;
foot_radius=5;


include <controller_sockets.scad>;
include <teensy.scad>;
include <pins.scad>;

csy=ps*5.5/2;
csx=ps*14/2;

//Center to handle
//N64 and NES-first
ctoh_N64=in(1.2);
ctoh_NES=in(1.1);
ctoh_bot=in(0.2625)+ps-in(0.01);
ctoh_top=in(0.3125)+ps-in(0.01);

top_to_teensy=in(0.05);
bottom_to_teensy=in(0.075);

board_length=in(3.65);
board_width=in(1.325);
board_thick=in(.063);
board_offset=5;
ledge_width=2.5;

multisocket_thick=1.5;
box_thick=2.5;
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
holder_height=box_height-(socket_depth+multisocket_thick+holder_offset);

module lump(solid=true) {
    translate([-ps*3,0,0]) {
        translate([0,0,0]) NES(solid);
        translate([0,0,0]) SNES(solid);
        translate([ps*4+SNES_gap,0,0]) N64(solid);
    }
}
module lump_top() {
    translate([-ps*3,0,0]) {
        %translate([ps*1.5,ps*(.5),0]) NES_top();
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
            cube([ledge_width*1.25,ledge_width,holder_height]);
            cube([ledge_width/2,ledge_width/2,holder_height]);
            translate([ledge_width/2,ledge_width/4,holder_height/2])
            sphere(r=ledge_width/4,$fs=30);
        }
    }
}

module grab_bottom() {
    translate([0,0,holder_offset]) {
        cube([ledge_width*.5,ledge_width*.5,holder_height]);
        translate([ledge_width/2,ledge_width/4,holder_height/2])
        sphere(r=ledge_width/4,$fs=30);

        translate([0,0,0])
        rotate(90,[0,1,0])
        linear_extrude(height=ledge_width*.5) {
            polygon(points=[[0,0],[ledge_width*.5,0],[0,ledge_width*.5]]);
        }
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
                    linear_extrude(height=socket_depth-multisocket_thick)
                    timesfour() lump();
                    cube(size=[multisocket_thick*2,multisocket_thick*2,multisocket_thick*2],center=true);
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

        difference() {
            bothends() bothsides()
            translate([0,0,box_height-foot_thick])
            cylinder(r=foot_radius,h=foot_thick);
            translate([0,0,box_height-socket_depth])
            linear_extrude(height=socket_depth+fudge)
            timesfour() lump();
        }

        bothends() {
            bothsides() union() {
                grab_top();
            }
        }
    }
}

module box_bottom() {
    color("darkblue") {
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
    union() { box_top(); }
    *union() { box_bottom(); }
}

//Socket mockups
*color("dimgray")
translate([0,0,box_height])
linear_extrude(height=socket_depth)
timesfour() lump_top();

union() {
//Board
color("darkgreen")
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
translate([
    -teensy_width/2,
    teensy_trans-teensy_length/2,
    board_offset+box_thick+board_thick
])
teensy_headers();
}

box();
*difference() {
    box();
    translate([-box_length/2,0,0])
    cube([box_length,box_width,box_height]);
}
