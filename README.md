# grid-pi
Random exploration of calculating pi in various languages.

## Brief description of the method
One of the simplest methods of calculating pi is to simply plot all of the points for a given grid. Comparing the proprtion of points within a given radius versus outside of a given radius will give a value of pi. It's not efficient, and it doesn't produce terribly precise values without immense grid sizes. However, it is memory efficient and a reasonable approximation of real world tight loop integer workloads.

## Sample runtimes
As a reference value, math.pi is defined by python to be 3.141592653589793


### The C version, compiled with clang and no additional parameters or tuning
```
time ./grid-pi
Starting run, radius of 40000
Run completed.
Total points: 6400000000
Inside of circle: 5026547493
Outside of circle: 1373452507
Pi seems to be... 3.1415921831

real	1m2.571s
user	1m2.496s
sys	0m0.045s

time ./grid-pi
Starting run, radius of 4000
Run completed.
Total points: 64000000
Inside of circle: 50265301
Outside of circle: 13734699
Pi seems to be... 3.1415813125

real	0m0.666s
user	0m0.657s
sys	0m0.004s
```
### The perl version, running on the same machine
```
time ./grid-pi.pl
Starting run, radius of 4000
Run completed.
Total points: 64000000
Inside of circle: 50265301
Outside of circle: 13734699
Pi seems to be... 3.1415813125

real	0m22.461s
user	0m22.353s
sys	0m0.056s
```

### The python version, running on the same machine
```
time ./grid-pi.py
Starting run, radius of 4000
Run completed
Total points: 64000000
Inside of circle: 50265301
Outside of circle: 13734699
Pi seems to be: 3.1415813125

real	0m31.589s
user	0m31.541s
sys	0m0.028s
```

