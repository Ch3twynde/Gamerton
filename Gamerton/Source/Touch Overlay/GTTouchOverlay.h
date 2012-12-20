//
//  GTTouchOverlay.h
//  Gamerton
//
//  Created by Miles Alden on 12/20/12.
//  Copyright (c) 2012 Miles Alden. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GTTouchOverlay : UIView {
    
    UITouch *beginningTouch;
    UITouch *endingTouch;
    CGPoint delta, alpha;
}



@end
