//
//  Favorites.m
//  Favorites
//
//  Created by Ethan Hess on 2/11/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//


#import "Favorites.h"

static NSString * const numberKey = @"num";
static NSString * const colorKey = @"color";

@implementation Favorites


+ (Favorites *)sharedInstance {
    
    static Favorites *sharedInstance = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        
        sharedInstance = [Favorites new];
        
        sharedInstance.favoriteNumber = [[NSUserDefaults standardUserDefaults]objectForKey:numberKey];
        sharedInstance.favoriteColor = [[NSUserDefaults standardUserDefaults]objectForKey:colorKey];
    });
    
    return sharedInstance;
}

- (void)save {
    
    [[NSUserDefaults standardUserDefaults]setObject:self.favoriteNumber forKey:numberKey];
    [[NSUserDefaults standardUserDefaults]synchronize]; 
    
}

@end
