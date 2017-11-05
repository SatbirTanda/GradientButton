//
//  SSTViewController.m
//  GradientButton_Example
//
//  Created by Satbir Tanda on 11/5/17.
//  Copyright © 2017 satbirtanda. All rights reserved.
//

#import "SSTViewController.h"
#import "SSTGradientButton.h"

@implementation SSTViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    SSTGradientButton *button = [[SSTGradientButton alloc] initWithFrame:CGRectMake(100, 100, 100, 100) withColors:@[UIColor.redColor, UIColor.blueColor] andFadeOrientation:FadeOrientationDiagonalBottomLeft];
    [button setTitle:@"Click Me" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(didTapButton) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:button];
}

- (void)didTapButton
{
    NSLog(@"Tap");
}

@end
