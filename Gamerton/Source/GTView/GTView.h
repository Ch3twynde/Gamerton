//
//  GTView.h
//  Gamerton
//
//  Created by Miles Alden on 12/19/12.
//  Copyright (c) 2012 Miles Alden. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "CGVector.h"


@interface GTView : UIView {
    int globalScale;
    CGVector3D fourPoints[10];
}

- (id)initWithFrame:(CGRect)frame andVectors:(CGVector3D[])vects;
- (void)update:(id)sender;

@end
