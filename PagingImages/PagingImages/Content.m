//
//  Content.m
//  PagingImages
//
//  Created by Ethan Hess on 2/12/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "Content.h"
#import <UIKit/UIKit.h>


@interface Content ()

@property (nonatomic, strong) NSArray *content;

@end

@implementation Content

+ (Content *)sharedInstance {
    static Content *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[Content alloc] init];
        
       
        sharedInstance.content = @[[UIImage imageNamed:@"image"], [UIImage imageNamed:@"image-1"], [UIImage imageNamed: @"image-2"]];
    });
        
    return sharedInstance;
}


@end
