/* calculate Pi by computing whether every point in a grid is within the radius of a circle. */
#include <stdio.h>
#include <stdint.h>
#include <math.h>
#include <stdlib.h>

int main (int argc, char **argv) {
	
	/* accumulators, final ratio is Pi */
	uint64_t acc_in_circle = 0;
	uint64_t acc_out_circle = 0;

	/* radius, such that 0,0 is origin and grid extents are +/- radius in x,y */
	uint64_t radius = 40000;
	
	printf("Starting run, radius of %lu\n", radius);
	
	for (int64_t x = (radius * -1); x != radius; x++) {
		for (int64_t y = (radius * -1); y != radius; y++) {
			if ((abs(x) * abs(x)) + (abs(y) * abs(y)) >= (radius * radius)) {
				acc_out_circle++;
			} else {
				acc_in_circle++;
			}
		}
	}
	
	long double proportion = 4 * ((long double) acc_in_circle / (acc_out_circle + acc_in_circle));
	
	printf("Run completed.\n");
	printf("Total points: %lu\n", (acc_in_circle + acc_out_circle));
	printf("Inside of circle: %lu\n", acc_in_circle);
	printf("Outside of circle: %lu\n", acc_out_circle);
	printf("Pi seems to be... %1.10Lf\n", proportion);
	
	return 0;
}
