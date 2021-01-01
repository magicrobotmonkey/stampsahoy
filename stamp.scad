message = "Jim's Kraut Crock";
font = "JMH Typewriter dry";
font_size = 10;
depth = 2.5;

message_length = len(message);
stamp_width = font_size * message_length * 0.9;
stamp_height = font_size * 1.5;

module base() {
    linear_extrude(.4) {
        square([stamp_width, stamp_height], center = true);
    }
}

module content() {
    linear_extrude(depth) {
        text(message, size = font_size, font = font, halign = "center", valign = "center", $fn = 64);
    }
}

rotate([-180, 0, 0])
union() {   
    content();
    translate([0, 0, depth])  base();
}
