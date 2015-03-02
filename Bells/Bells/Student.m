//
//  Student.m
//  Bells
//
//  Created by Ethan Hess on 2/16/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "Student.h"


@implementation Student

+ (Student *)sharedInstance {
    static Student *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [Student new];
        [sharedInstance registerForNotifications];
    });
    
    return sharedInstance;
    
}

-(void)registerForNotifications {
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(firstBell) name:@"firstBellRang" object:nil];
    
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(lastBell) name:@"lastBellRang" object:nil];
    
}

-(void)firstBell {
    
    NSLog(@"Hurry to first period");
    
}

-(void)lastBell {
    
    NSLog(@"Get on bus");
}

-(void)deregisterForNotifications {
    
    [[NSNotificationCenter defaultCenter] removeObserver:self];
    
}

-(void)dealloc {
    
    [self deregisterForNotifications];
    
}

@end
