//
//  Settings.m
//  WhoWantsToKnow
//
//  Created by Ethan Hess on 2/16/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "Settings.h"
#import "ViewController.h"

@implementation Settings

+ (Settings *)sharedInstance {
    static Settings *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [Settings new];
        [sharedInstance registerForNotifications];
    });
    
    return sharedInstance;
    
}

-(void)registerForNotifications {
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(respondToViewLoadedNotification) name:@"viewLoaded" object:nil];
    
    
}

-(void)respondToViewLoadedNotification:(NSNotification *)notification {
    
    NSLog(@"Hey, guess what? The view loaded.");
    
}

-(void)deregisterForNotifications {
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

-(void)dealloc {
    
    [self deregisterForNotifications];
}


@end
