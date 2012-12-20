//
//  CGVector.h
//  Gamerton
//
//  Created by Miles Alden on 12/19/12.
//  Copyright (c) 2012 Miles Alden. All rights reserved.
//

#ifndef Gamerton_CGVector_h
#define Gamerton_CGVector_h

#include <CoreGraphics/CoreGraphics.h>

typedef struct CGVector3D {
    double x;
    double y;
    double z;
} CGVector3D;

CGPoint CGPointSubtractPoints(CGPoint a, CGPoint b);
CGVector3D CGVector3DCreate(double X, double Y, double Z);
CGPoint CGPerspectiveCoords( CGVector3D vect, int scale );


#endif
