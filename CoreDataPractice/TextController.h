//
//  TextController.h
//  CoreDataPractice
//
//  Created by Ethan Hess on 2/27/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "CoreDataHelper.h"
#import "TextView.h"
@import CoreData;

@interface TextController : NSObject

@property (nonatomic, strong, readonly) NSArray *textEntries;

+ (TextController *)sharedInstance;

- (TextView *)createTextView:(NSString *)text;

- (void)save; 

@end
