//
//  EntryController.h
//  PageViewNSD
//
//  Created by Ethan Hess on 2/16/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Entry.h"

@interface EntryController : NSObject

+ (EntryController *)sharedInstance;

- (void)addEntry:(Entry *)entry;
- (void)replaceEntry:(Entry *)oldEntry withEntry:(Entry *)newEntry;


@end
