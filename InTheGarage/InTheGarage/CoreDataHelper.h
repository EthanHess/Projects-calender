//
//  CoreDataHelper.h
//  InTheGarage
//
//  Created by Ethan Hess on 2/26/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
@import CoreData;

@interface CoreDataHelper : NSObject

+ (CoreDataHelper *)sharedInstance;

- (NSManagedObjectContext *)managedObectContext;

- (void)save;

@end
