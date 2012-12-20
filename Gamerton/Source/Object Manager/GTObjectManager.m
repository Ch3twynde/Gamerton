//
//  GTObjectManager.m
//  Gamerton
//
//  Created by Miles Alden on 12/19/12.
//  Copyright (c) 2012 Miles Alden. All rights reserved.
//

#import "GTObjectManager.h"
#import "GTView.h"


@implementation GTObjectManager


- (id)init {
    
    if ( self = [super init] ) {
        // Doooo stuffffff
        if ( nil == self.objects ) {
            self.objects = [[NSMutableArray alloc] init];
        }
    }
    
    return self;
}



- (void)setNumObjects:(int)num {
    
    int cnt = self.objects.count;
    
    if ( cnt > num ) {
        
        for ( int i = 0; i < num - cnt; i++ ) {
            [self.objects removeLastObject];
        }
        
    } else if ( cnt < num ) {
        
        CGVector3D fourPoints[4];
        
        fourPoints[0] = CGVector3DCreate(-50, -50, -50);
        fourPoints[1] = CGVector3DCreate(-50, 50, -50);
        fourPoints[2] = CGVector3DCreate(50, 50, -50);
        fourPoints[3] = CGVector3DCreate(50, -50, -50);

        float inc = 1.25;
        
        
        int half = (num - cnt)/2;
        
        for ( int i = 0; i < half; i++ ) {

            

            GTView *v = [[GTView alloc] initWithFrame:CGRectZero andVectors:fourPoints];
            if ( self.viewController ) {
                [self.viewController.view addSubview:v];
            }
            [self.objects addObject:v];
            
            fourPoints[0].x *= inc; fourPoints[0].y *= inc; fourPoints[0].z *= inc;
            fourPoints[1].x *= inc; fourPoints[1].y *= inc; fourPoints[1].z *= inc;
            fourPoints[2].x *= inc; fourPoints[2].y *= inc; fourPoints[2].z *= inc;
            fourPoints[3].x *= inc; fourPoints[3].y *= inc; fourPoints[3].z *= inc;
            inc += 0.1;

            
        }
        
        inc = -1.25;
        
        for ( int i = half; i < half*2; i++ ) {
            
            
            
            GTView *v = [[GTView alloc] initWithFrame:CGRectZero andVectors:fourPoints];
            if ( self.viewController ) {
                [self.viewController.view addSubview:v];
            }
            [self.objects addObject:v];
            
                        
            fourPoints[0].x *= inc; fourPoints[0].y *= inc; fourPoints[0].z *= inc;
            fourPoints[1].x *= inc; fourPoints[1].y *= inc; fourPoints[1].z *= inc;
            fourPoints[2].x *= inc; fourPoints[2].y *= inc; fourPoints[2].z *= inc;
            fourPoints[3].x *= inc; fourPoints[3].y *= inc; fourPoints[3].z *= inc;
            inc -= 0.1;
            
            
        }
    }
    
}



@end
