header_height=.340*64;
header_thick=0.1*64;
header_hole_size=.03*64;
header_hole_depth=.236*64;
teensy_width=0.7*64;
teensy_length=1.2*64;
teensy_thick=.063*64;

pin_plastic=0.1*64;

connector_overhang=2;
connector_size=[20,23,10];

eh_plastic=0.1*64;
eh_plastic_width=0.2*64;
eh_to_bend=0.02*64;
eh_to_pin_v=0.062*64;
eh_pin_spacing=0.1*64;
eh_pin_d=.025*64;
eh_numpins=5;
eh_p_to_pin=0.295*64;

extrude_r=eh_to_pin_v-eh_to_bend; 
eh_to_pin=eh_p_to_pin + (eh_plastic_width/2-extrude_r);

module teensy_connector() {
    color("silver")
    translate([
        teensy_width/2,
        connector_size[1]/2 - connector_overhang,
        header_height + connector_size[2]/2 + teensy_thick
    ])
    cube(connector_size,center=true);
}

module teensy() {
    color("green")
    translate([0,0,header_height])
    cube(size=[teensy_width,teensy_length,teensy_thick]);

    teensy_headers();
    teensy_connector();
    translate([eh_pin_spacing*1.5,teensy_length-eh_pin_spacing*0.5,header_height+teensy_thick])
    mirror([0,1,0])
    teensy_extra_header();
}

module teensy_headers() {
    color("darkgray") {
        difference() {
            union() {
                cube(size=[header_thick,teensy_length,header_height]);
                translate([teensy_width-header_thick,0,0])
                cube(size=[header_thick,teensy_length,header_height]);
            }
            for(offset=[0:11]) {
                teensy_header_hole(offset);
                translate([teensy_width-header_thick,0,0])
                teensy_header_hole(offset);
            }
        }
    }
}

module teensy_extra_header() {
    color("white")
    translate([-eh_pin_spacing/2,-eh_plastic_width/2,0])
    cube([eh_pin_spacing*eh_numpins,eh_plastic_width,eh_plastic]);

    int_box=extrude_r+eh_pin_d/2;
    color("silver")
    for(offset=[0:(eh_numpins-1)]) {
        translate([offset*eh_pin_spacing,0,0])
        union() {
            translate([0,0,(eh_plastic+eh_to_bend)/2])
            cube([eh_pin_d,eh_pin_d,eh_plastic+eh_to_bend],center=true);

            translate([0,extrude_r,eh_plastic+eh_to_bend])
            intersection() {
                translate([-int_box/2,-int_box,0])
                cube(int_box);
                rotate(90,[0,1,0])
                rotate_extrude()
                translate([extrude_r,0,0])
                square(eh_pin_d,center=true);
            }

            translate([0,extrude_r+eh_to_pin/2,eh_plastic+eh_to_pin_v])
            cube([eh_pin_d,eh_to_pin,eh_pin_d],center=true);
        }
    }
}

module teensy_header_hole(offset=0) {
    translate([0,offset*header_thick])
    translate([
        (header_thick-header_hole_size)/2,
        (header_thick-header_hole_size)/2,
        header_height - header_hole_depth
    ])
    cube(size=[
        header_hole_size,
        header_hole_size,
        header_hole_depth
    ]);
}
