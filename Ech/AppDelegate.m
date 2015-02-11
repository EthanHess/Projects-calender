//
//  AppDelegate.m
//  Ech
//
//  Created by Ethan Hess on 2/2/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    ViewController *viewController = [ViewController new];
    self.window.rootViewController = viewController;
    
    return YES;
}


@end
