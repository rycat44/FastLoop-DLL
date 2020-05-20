// dllmain.cpp : Defines the entry point for the DLL application.
#include "pch.h"
#include "atlsafe.h"

CComVariant _stdcall FastLoop(double *nodeXYZArray, int* UBound)
{
	int localUB = *UBound;
	CComSafeArray<double> sa_XYZ(localUB+1);

	
	for (int i = 0; i <= localUB; i++)
	{
		sa_XYZ.SetAt(i, nodeXYZArray[i] * 1.2);
	}

	CComVariant out = sa_XYZ.Detach();

	return out;
}
