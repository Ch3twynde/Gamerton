//
//  GTView.m
//  Gamerton
//
//  Created by Miles Alden on 12/19/12.
//  Copyright (c) 2012 Miles Alden. All rights reserved.
//

#import "GTView.h"
#import "GTSettings.h"

@implementation GTView

- (id)initWithFrame:(CGRect)frame andVectors:(CGVector3D[])vects
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        
        int rand;
        float randFloat;
        
        float rgb[3];
        for ( int j = 0; j < 3; j++ ) {
            rand = arc4random()%100;
            randFloat = (float)rand;
            randFloat *= 0.01;
            rgb[j] = randFloat;
        }
        
        
        self.backgroundColor = [UIColor colorWithRed:rgb[0] green:rgb[1] blue:rgb[2] alpha:1];

        if ( NULL == vects ) {
            [self setVectDefaults];
        } else {
            int numVects = sizeof(vects);
            for ( int i = 0; i < numVects; i++ ) {
                fourPoints[i] = vects[i];
            }
        }

    }
    
    return self;
}

- (void)setVectDefaults {
    
    fourPoints[0] = CGVector3DCreate(-50, -50, -50);
    fourPoints[1] = CGVector3DCreate(-50, 50, -50);
    fourPoints[2] = CGVector3DCreate(50, 50, -50);
    fourPoints[3] = CGVector3DCreate(50, -50, -50);

}


- (void)update:(id)sender {
 
    
    CGPoint screenOrig = CGPerspectiveCoords(fourPoints[0], 500);
    CGPoint pointSize = CGPerspectiveCoords(fourPoints[2], 500);
    CGPoint size_ = CGPerspectiveCoords(fourPoints[3], 500);
    pointSize.y = size_.y - pointSize.y;
    size_.x = screenOrig.x - size_.x;
    size_.y = screenOrig.y - size_.y;
    
    self.frame = CGRectMake(screenOrig.x, screenOrig.y, size_.x, pointSize.y);
    
    
    float speed = [[GTSettings settings] speed];
    
    fourPoints[0].z += speed;
    fourPoints[2].z += speed;
    fourPoints[3].z += speed;
    
//    printf("\r(%0.2f, %0.2f)\t"
//             "(%0.2f, %0.2f)",
//           self.frame.origin.x,
//           self.frame.origin.y,
//           self.frame.size.width,
//           self.frame.size.height);
    
//    CATransform3D t;
    
    //   m11, m12, m13, m14;
    //   m21, m22, m23, m24;
    //   m31, m32, m33, m34;
    //   m41, m42, m43, m44;

    //
    //
    //
    //
    //
    //
    
    
    
//    self.layer.transform = t;
    
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
