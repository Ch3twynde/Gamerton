//
//  GTObjectManager.h
//  Gamerton
//
//  Created by Miles Alden on 12/19/12.
//  Copyright (c) 2012 Miles Alden. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CGVector.h"

@interface GTObjectManager : NSObject

@property UIViewController *viewController;
@property (strong) NSMutableArray *objects;

- (void)setNumObjects:(int)num;


@end
