//
//  GTSettings.h
//  Gamerton
//
//  Created by Miles Alden on 12/20/12.
//  Copyright (c) 2012 Miles Alden. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GTSettings : NSObject {
    
    float speed;
    
    
}


+ (GTSettings *)settings;

- (float)speed;
- (void)setSpeed:(float)newSpeed;

@end
