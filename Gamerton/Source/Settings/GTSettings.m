//
//  GTSettings.m
//  Gamerton
//
//  Created by Miles Alden on 12/20/12.
//  Copyright (c) 2012 Miles Alden. All rights reserved.
//

#import "GTSettings.h"

@implementation GTSettings


static GTSettings *settings;

+ (GTSettings *)settings
{
    if ( settings == nil ) {
        settings = [[GTSettings alloc] init];
        return settings;
    }
    
    return settings;
}

- (id)init {
    
    if ( self = [super init] ) {
        // Do stuff
    }
    
    return self;
}

+ (id)allocWithZone:(NSZone *)zone {
    @synchronized(self) {
        if (settings == nil) {
            settings = [super allocWithZone:zone];
            return settings;  // assignment and return on first allocation
        }
    }
    return nil; // on subsequent allocation attempts return nil
    
}

- (id)copyWithZone:(NSZone *)zone{
    return self;
}


- (float)speed {
    return speed;
}

- (void)setSpeed:(float)newSpeed {
    speed = newSpeed;
}


@end
