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
