# FastLoop-DLL
This repository contains a very simple C++ DLL program called "FastLoop" that serves as an example of performing calculations on all elements of a large array very quickly.

Check out my YouTube video demonstration:
https://www.youtube.com/watch?v=yOON-PfReoQ

As an example, engineers that need to perform computationally expensive calculations (such as matrix transformations, or iterations) may find it useful to develop UI/UX programms with interpreted code (Python, Excel vba, etc.) but desire For Loops to be more efficient.

To use the DLL, the first parameter to FastLoop() should be a pointer to an array of doubles. The second parameter should be the upper bound of that array.

FastLoop( someArray( LBound( someArray ), UBound( someArray ) )


Here is an example FEMAP BASIC code snippet you can use to run FastLoop-DLL. Please ensure the DLL is in the same directory as this script:

Declare Function FastLoop Lib _
MacroDir + "FastLoop.dll" _
(XYZ As Double, ub As Long) As Variant

Sub Main
    Dim App as femap.model
    Set App = feFemap()

	Dim n As femap.Node
	Set n = App.feNode

	n.GetAllArray2( 0, num&, vNodes, vExist, vXYZ, vLay, _
							vColor, vType, vDCSys, vOCSys, vPerm )

    start = Timer

	For i = 0 To UBound( vXYZ )
		vXYZ( i ) = vXYZ( i ) * 1.2
	Next

	'FastLoop( vXYZ( LBound ( vXYZ ) ), UBound( vXYZ ) )


	endT = Timer - start

    App.feAppMessage(0, Str( endT ) )


End Sub
