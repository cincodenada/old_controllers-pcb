header_height=.340*64;
teensy_width=0.7*64;
teensy_length=1.2*64;
teensy_thick=5;

connector_overhang=2;
connector_size=[20,23,10];

module teensy_connector() {
    color("silver")
    translate([
        0,
        -(teensy_length/2 - connector_size[1]/2 + connector_overhang),
        header_height + connector_size[2]/2 + teensy_thick
    ])
    cube(connector_size,center=true);
}

module teensy() {
    translate([0,0,header_height/2]) {
        color("green")
        translate([0,0,(header_height+teensy_thick)/2])
        cube(size=[teensy_width,teensy_length,teensy_thick],center=true);

        color("darkgray") {
            translate([-(teensy_width-teensy_thick)/2,0,0])
            cube(size=[teensy_thick,teensy_length,header_height],center=true);
            translate([(teensy_width-teensy_thick)/2,0,0])
            cube(size=[teensy_thick,teensy_length,header_height],center=true);
        }
    }

    teensy_connector();
}

