//
//  CoreDataHelper.m
//  CoreDataPractice
//
//  Created by Ethan Hess on 2/27/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "CoreDataHelper.h"

@implementation CoreDataHelper

+ (CoreDataHelper *)sharedInstance {
    static CoreDataHelper *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [CoreDataHelper new];
    });
    
    return sharedInstance;
    
}

- (NSManagedObjectContext *)managedObjectContext {
    
    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    
    NSManagedObjectContext *managedObjectContext = appDelegate.managedObjectContext;
    
    return managedObjectContext;
}

- (void)save {
    
    [[self managedObjectContext]save:NULL]; 
    
}

@end
