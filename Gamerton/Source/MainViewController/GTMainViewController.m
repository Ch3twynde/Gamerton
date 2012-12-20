//
//  GTMainViewController.m
//  Gamerton
//
//  Created by Miles Alden on 12/19/12.
//  Copyright (c) 2012 Miles Alden. All rights reserved.
//

#import "GTMainViewController.h"
#import <QuartzCore/QuartzCore.h>
#import "GTView.h"
#import "GTSettings.h"

@interface GTMainViewController ()

@end

@implementation GTMainViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        counter = 0;
    }
    return self;
}

- (id)initWithView:(UIView *)view_ {
    
    if ( self = [super init] ) {
        // Stuff
        self.view = view_;
        objectManager = [[GTObjectManager alloc] init];
        [objectManager setViewController:self];
        [objectManager setNumObjects:16];
        if ( ![self buildDisplayLink] ) {
            NSLog(@"**FAIL**");
        }
    }
    
    return self;
}

- (int)buildDisplayLink {
    
    self.displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(iterate:)];
    [self.displayLink addToRunLoop:[NSRunLoop mainRunLoop] forMode:NSDefaultRunLoopMode];

    return (self.displayLink != nil);
}


- (void)iterate:(id)sender {
    
    counter++;
    if ( counter == 20 ) {
        [[GTSettings settings] setSpeed:[[GTSettings settings] speed]+1];
        counter = 0;
    }
    
    for ( id obj in objectManager.objects ) {
        if ( nil != obj ) {
            [(GTView *)obj update:sender];
        }
    }
    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
