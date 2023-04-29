// var acc_in_circle, acc_out_circle: Double;
var acc_in_circle, acc_out_circle: UInt;
acc_in_circle = 0;
acc_out_circle = 0;

let radius = 4000;

print("Starting run, radius of \(radius)");

for x in -radius...radius {
    for y in -radius...radius {
        if ((x * x) + (y * y)) > (radius * radius) {
            acc_out_circle += 1;
        } else {
            acc_in_circle += 1;
        }
    }
}

var proportion: Double;
proportion = 4 * (Double(acc_in_circle) / Double((acc_out_circle + acc_in_circle)));

print("Run completed.");
print("Total points: \(acc_in_circle + acc_out_circle)")
print("Inside of circle: \(acc_in_circle)")
print("Outside of circle: \(acc_out_circle)")
print("Pi seems to be... \(proportion)")


/*
# vim: tabstop=4 expandtab shiftwidth=4 softtabstop=4
*/
