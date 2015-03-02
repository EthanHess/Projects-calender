//
//  DetailViewController.h
//  DayXRedone
//
//  Created by Ethan Hess on 2/12/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"
#import "EntryController.h"

@class Entry;

static NSString * const EntryKey = @"entry";

@interface DetailViewController : UIViewController

- (void)updateWithEntry:(Entry *)entry;

@end
