//
//  Teacher.m
//  Bells
//
//  Created by Ethan Hess on 2/16/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "Teacher.h"
#import "ViewController.h"

@implementation Teacher

+ (Teacher *)sharedInstance {
    static Teacher *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [Teacher new];
        [sharedInstance registerForNotifications];
    });
    
    return sharedInstance;
    
}

-(void)registerForNotifications {
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(firstBell) name:@"firstBellRang" object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(lastBell) name:@"lastBellRang" object:nil];
    
}

-(void)firstBell {
    
    NSLog(@"Get ready to take roll");
    
}

-(void)lastBell {
    
    NSLog(@"Enter grades for the day");
}

-(void)deregisterForNotifications {
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
}

-(void)dealloc {
    
    [self deregisterForNotifications];
    
}



@end
