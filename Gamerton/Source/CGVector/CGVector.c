//
//  CGVector.c
//  Gamerton
//
//  Created by Miles Alden on 12/19/12.
//  Copyright (c) 2012 Miles Alden. All rights reserved.
//

#include <stdio.h>
#include "CGVector.h"

CGPoint CGPointSubtractPoints(CGPoint a, CGPoint b) {
    return (CGPoint){a.x-b.x, a.y-b.y};
}

CGVector3D CGVector3DCreate(double X, double Y, double Z) {
    return (CGVector3D){X,Y,Z};
}

CGPoint CGPerspectiveCoords( CGVector3D vect, int scale ) {
    
    float xp = vect.x * scale / (vect.z + scale);
    float yp = vect.y * scale / (vect.z + scale);
    return (CGPoint){xp+320,yp+240};
}
