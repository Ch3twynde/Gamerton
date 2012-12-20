//
//  GTTouchOverlay.m
//  Gamerton
//
//  Created by Miles Alden on 12/20/12.
//  Copyright (c) 2012 Miles Alden. All rights reserved.
//

#import "GTTouchOverlay.h"
#import "CGVector.h"
#import "GTSettings.h"

@implementation GTTouchOverlay

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        alpha = CGPointZero;
        delta = CGPointZero;
    }
    return self;
}


- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    beginningTouch = [touches anyObject];
}
- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    endingTouch = [touches anyObject];
    [[GTSettings settings] setSpeed:delta.y];

}
- (void)touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    
}
- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    UITouch *currentTouch = [touches anyObject];
    CGPoint currentPoint = [currentTouch locationInView:self];
    delta = CGPointSubtractPoints(alpha, currentPoint);
    alpha = currentPoint;
//    NSLog(@"%@", NSStringFromCGPoint(delta));

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
