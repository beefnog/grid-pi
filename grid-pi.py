#!/usr/bin/env python

acc_in_circle = 0
acc_out_circle = 0

radius = 4000

print 'Starting run, radius of %d' % radius

for x in xrange ((radius * -1), radius):
	for y in xrange ((radius * -1), radius):
		if ((abs(x) * abs(x)) + (abs(y) * abs(y)) >= (radius * radius)):
			acc_out_circle += 1
		else:
			acc_in_circle += 1

proportion = 4 * (float(acc_in_circle) / (acc_out_circle + acc_in_circle))

print 'Run completed'
print 'Total points: %d' % (acc_in_circle + acc_out_circle)
print 'Inside of circle: %d' % acc_in_circle
print 'Outside of circle: %d' % acc_out_circle
print 'Pi seems to be: %1.10f' % proportion

