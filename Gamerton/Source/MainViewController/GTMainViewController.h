//
//  GTMainViewController.h
//  Gamerton
//
//  Created by Miles Alden on 12/19/12.
//  Copyright (c) 2012 Miles Alden. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>
#import "GTObjectManager.h"



@interface GTMainViewController : UIViewController {
    
    GTObjectManager *objectManager;
    int counter;
}


@property (strong) CADisplayLink *displayLink;

- (id)initWithView:(UIView *)view_;


@end
