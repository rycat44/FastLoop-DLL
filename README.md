# FastLoop-DLL
This repository contains a very simple C++ DLL program called "FastLoop" that serves as an example of performing calculations on all elements of a large array very quickly.

As an example, engineers that need to perform computationally expensive calculations (such as matrix transformations, or iterations) may find it useful to develop UI/UX programms with interpreted code (Python, Excel vba, etc.) but desire For Loops to be more efficient.

To use the DLL, the first parameter to FastLoop() should be a pointer to an array of doubles. The second parameter should be the upper bound of that array.

FastLoop( someArray( LBound( someArray ), UBound( someArray ) )
