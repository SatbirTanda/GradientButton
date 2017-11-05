//
//  SSTAppDelegate.m
//  GradientButton
//
//  Created by satbirtanda on 11/03/2017.
//  Copyright (c) 2017 satbirtanda. All rights reserved.
//

#import "SSTAppDelegate.h"
#import "SSTViewController.h"

@implementation SSTAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    SSTViewController *mainViewController = [[SSTViewController alloc] initWithNibName:@"SSTViewController" bundle:nil];
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    self.window.rootViewController = mainViewController;
    [self.window makeKeyAndVisible];
    return YES;
}

@end
