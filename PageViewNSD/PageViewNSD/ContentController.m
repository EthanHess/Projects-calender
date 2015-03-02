//
//  ContentController.m
//  PageViewNSD
//
//  Created by Ethan Hess on 2/13/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ContentController.h"

@interface ContentController ()

//@property (nonatomic, strong) NSArray *content;

@end

@implementation ContentController


+ (ContentController *)sharedInstance {
    static ContentController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[ContentController alloc] init];
        
        // We'll fill the contentController with days of the week for now.
        
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        sharedInstance.content = [[dateFormatter weekdaySymbols] copy];
        
    });
    return sharedInstance;
}



@end
