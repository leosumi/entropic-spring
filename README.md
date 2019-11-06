# Simulation of an entropic spring

This repository contains a homework for the *computational cell biology* course given at EPFL.

## Generating output files

```
git clone https://github.com/leosumi/entropic-spring.git
cd entropic-spring/data
../dpd-linux <ID-1> <ID-2> ... <ID-n>
cd ..
./script.sh
```

The <ID-i> are the name of the files without the *dmpci.* prefix. dpd-linux will execute each simulation sequentially.  To save some time, you should launch multiple instance of dpd-linux.

