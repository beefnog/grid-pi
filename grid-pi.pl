#!/usr/bin/env perl

use strict;
use warnings;

my $acc_in_circle = 0;
my $acc_out_circle = 0;

my $radius = 4000;

print("Starting run, radius of $radius\n");

for (my $x = ($radius * -1); $x != $radius; $x++) {
	for (my $y = ($radius * -1); $y != $radius; $y++) {
		if ((abs($x) * abs($x)) + (abs($y) * abs($y)) >= ($radius * $radius)) {
			$acc_out_circle++;
		} else {
			$acc_in_circle++;
		}
	}
}

my $proportion = 4.0 * ($acc_in_circle / ($acc_out_circle + $acc_in_circle));

print("Run completed.\n");
print("Total points: " . ($acc_in_circle + $acc_out_circle) . "\n");
print("Inside of circle: $acc_in_circle\n");
print("Outside of circle: $acc_out_circle\n");
print("Pi seems to be... $proportion\n");


