header_height=in(.340);
header_thick=in(0.1);
header_hole_size=in(.03);
header_hole_depth=in(.236);
header_ps=in(0.1);
teensy_width=in(0.7);
teensy_length=in(1.2);
teensy_thick=in(.063);

pin_plastic=in(0.1);
teensy_height = header_height + pin_plastic;

connector_overhang=0.55;
connector_size=[7.75,9.08,3.9];

eh_plastic=in(0.1);
eh_plastic_width=in(0.2);
eh_to_bend=in(0.02);
eh_to_pin_v=in(0.062);
eh_pin_spacing=in(0.1);
eh_pin_d=in(.025);
eh_numpins=5;
eh_p_to_pin=in(0.295);

extrude_r=eh_to_pin_v-eh_to_bend; 
eh_to_pin=eh_p_to_pin + (eh_plastic_width/2-extrude_r);

module teensy_connector() {
    color("silver")
    translate([
        teensy_width/2,
        connector_size[1]/2 - connector_overhang,
        teensy_height + connector_size[2]/2 + teensy_thick
    ])
    cube(connector_size,center=true);
}

module teensy() {
    color("green")
    translate([0,0,teensy_height])
    cube(size=[teensy_width,teensy_length,teensy_thick]);

    teensy_headers();
    teensy_connector();
    translate([eh_pin_spacing*1.5,teensy_length-eh_pin_spacing*0.5,teensy_height+teensy_thick])
    mirror([0,1,0])
    teensy_extra_header();

    for(offset=[0:11]) {
        teensy_pin_plastic(offset);
        translate([teensy_width-header_thick,0,0])
        teensy_pin_plastic(offset);
    }
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
    translate([0,offset*header_ps])
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

module teensy_pin_plastic(offset=0) {
    color("dimgray")
    translate([header_thick/2,header_thick/2,pin_plastic/2])
    translate([0,offset*header_ps,header_height])
    intersection() {
        cube(size=[header_thick,header_thick,pin_plastic],center=true);
        rotate([0,0,45])
        cube(size=header_thick,center=true);
    }
}
