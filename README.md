# mbir-demos

### Demo scripts and sample data

This package contains demo shell scripts and sample data to 
accompany the *sv-mbirct* project found here:  
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
https://github.com/sjkisner/sv-mbirct

Please refer to that site for the source code, compiling instructions, 
command line usage and data format descriptions.

### Sample Data

This package contains two sample data sets,
1. *shepp* which is a single slice of a generated Shepp-Logan phantom
2. *xradia* which is a 4-slice sequence out of a volume scan taken 
from a Zeiss Xradia microCT scanner.

### Scripts

The *run* folder contains a script *runDemo.sh* that sets the proper command line
and executes the reconstruction. 
This script assigns variables for names and locations of the various files 
needed for the input arguments, including the location of the MBIR executable,
so these may need to be modified to suit your directory organization.

Currently if *sv-mbirct* and *mbir-demos* are located in the same base directory,
the run script will find the proper location of the executable.

To run the script from a terminal, *cd* into the *run* folder and type one of the following:
```
./runDemo.sh ../shepp
./runDemo.sh ../xradia
```


