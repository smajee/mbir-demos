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

The *run* folder contains a script *runDemo.sh* that sets the command line
arguments and executes the reconstruction. 
This script assigns variables for file names and locations of the 
various input arguments, including the location of the MBIR executable,
so these can be be modified to suit your directory organization.

In the current context, if the projects *sv-mbirct* and *mbir-demos*,
are located in the same base directory,
the run scripts will find the proper locations of the executable
and input files.

To run the script from a terminal, *cd* into the *run* folder and type one of the following:
```
./runDemo.sh ../shepp
./runDemo.sh ../xradia
```
The script will first read the image and sinogram parameter files
and determine if the system matrix file has already been computed
and saved to a file.
If not, the matrix is computed and placed in the relative folder *sysmatrix*.
Then the reconstruction is called.
After the process completes,
the output images are written in the *recon* folder in the associated data folder.

There's a basic Matlab script included that will display the output reconstructions. 
If Matlab is not available, the 
[OpenMBIR](https://github.com/cabouman/OpenMBIR)
project includes a Python utility for displaying these images as well.


