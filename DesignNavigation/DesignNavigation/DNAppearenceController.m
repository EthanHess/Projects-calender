//
//  DNAppearenceController.m
//  DesignNavigation
//
//  Created by Ethan Hess on 2/17/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "DNAppearenceController.h"
#import "DNPlaygroundViewController.h"

@implementation DNAppearenceController

+ (void)setUpDefaultAppearence {
    
    [[UINavigationBar appearance] setTintColor:[UIColor redColor]];
    
    [[UINavigationBar appearanceWhenContainedIn:[DNPlaygroundViewController class], nil] setBarTintColor:[UIColor blackColor]];
    
    [[UINavigationBar appearance] setTitleTextAttributes:@{
        NSForegroundColorAttributeName: [UIColor whiteColor] }];
    
    [[UINavigationBar appearanceWhenContainedIn:[DNPlaygroundViewController class], nil] setTitleTextAttributes:@{
        NSForegroundColorAttributeName: [UIColor yellowColor] }];
    
                                                                                                                 
}

@end