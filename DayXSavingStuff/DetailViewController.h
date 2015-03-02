//
//  DetailViewController.h
//  DayXSavingStuff
//
//  Created by Ethan Hess on 2/24/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"
#import "EntryController.h"

@class Entry;

static NSString * const entryKey = @"entry";

@interface DetailViewController : UIViewController

-(void)updateWithEntry:(Entry *)entry;

@end
