# grid-pi
Random exploration of calculating pi in various languages.

## Brief description of the method
One of the simplest methods for calculating pi is to plot all of the points for a given grid. Comparing the proportion of points within a given radius versus outside of a given radius will give a value of pi. It's not efficient, and it doesn't produce terribly precise values without immense grid sizes. However, it is memory efficient and a reasonable approximation of real world tight loop integer workloads.

## Sample runtimes
As a reference value, math.pi is defined by python to be 3.141592653589793


### The C version, compiled with clang and no additional parameters or tuning
```
# radius = 4000
time ./grid-pi
Starting run, radius of 4000
Run completed.
Total points: 64016001
Inside of circle: 50265329
Outside of circle: 13750672
Pi seems to be... 3.1407978140

real    0m0.384s
user    0m0.128s
sys     0m0.005s

# radius = 40000
time ./grid-pi
Starting run, radius of 40000
Run completed.
Total points: 6400160001
Inside of circle: 5026547529
Outside of circle: 1373612472
Pi seems to be... 3.1415136673

real    0m10.536s
user    0m10.047s
sys     0m0.172s

```

### The Perl version
```
time ./grid-pi.pl
Starting run, radius of 4000
Run completed
Total points: 64016001
Inside of circle: 50265329
Outside of circle: 13750672
Pi seems to be: 3.14079781397154

real    0m5.018s
user    0m4.676s
sys     0m0.097s
```

### The Python version
```
time ./grid-pi.py
Starting run, radius of 4000
Run completed
Total points: 64016001
Inside of circle: 50265329
Outside of circle: 13750672
Pi seems to be: 3.1407978140

real    0m9.195s
user    0m8.846s
sys     0m0.161s
```

### The Swift version, swiftc with no additional optimizations
```
time ./grid-pi
Starting run, radius of 4000
Run completed.
Total points: 64016001
Inside of circle: 50265329
Outside of circle: 13750672
Pi seems to be... 3.1407978139715413

real    0m10.394s
user    0m10.016s
sys     0m0.158s
```
