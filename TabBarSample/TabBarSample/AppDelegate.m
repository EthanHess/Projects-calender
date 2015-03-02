//
//  AppDelegate.m
//  TabBarSample
//
//  Created by Ethan Hess on 2/16/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    ViewController *viewControllerBlue = [ViewController new];
    viewControllerBlue.view.backgroundColor = [UIColor blueColor];
    viewControllerBlue.tabBarItem.title = @"Blue";
    viewControllerBlue.tabBarItem.image = [UIImage imageNamed:@"GarlicPork"];
    
    ViewController *viewControllerRed = [ViewController new];
    viewControllerRed.view.backgroundColor = [UIColor redColor];
    viewControllerRed.tabBarItem.title = @"Red";
    viewControllerRed.tabBarItem.image = [UIImage imageNamed:@"GarlicPork"];
    
    ViewController *viewControllerGreen = [ViewController new];
    viewControllerGreen.view.backgroundColor = [UIColor greenColor];
    viewControllerGreen.tabBarItem.title = @"Green";
    viewControllerGreen.tabBarItem.image = [UIImage imageNamed:@"GarlicPork"];
    
    ViewController *viewControllerBlack = [ViewController new];
    viewControllerBlack.view.backgroundColor = [UIColor blueColor];
    viewControllerBlack.tabBarItem.title = @"Black";
    viewControllerBlack.tabBarItem.image = [UIImage imageNamed:@"GarlicPork"];
    
    UITabBarController *tabBarController = [UITabBarController new];
    tabBarController.viewControllers = @[viewControllerBlue,viewControllerRed,viewControllerGreen,viewControllerBlack];
    
    self.window.rootViewController = tabBarController;
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
