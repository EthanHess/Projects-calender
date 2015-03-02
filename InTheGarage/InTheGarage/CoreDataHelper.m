//
//  CoreDataHelper.m
//  InTheGarage
//
//  Created by Ethan Hess on 2/26/15.
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

- (NSManagedObjectContext *)managedObectContext {
    
    AppDelegate *appDelegate = [UIApplication sharedApplication].delegate;
    
    NSManagedObjectContext *managedObjectContext = appDelegate.managedObjectContext;
    
    return managedObjectContext;
    
}

- (void)save {
    
    [[self managedObectContext]save:NULL];
    
}

@end
