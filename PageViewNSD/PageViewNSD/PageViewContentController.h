//
//  PageViewContentController.h
//  PageViewNSD
//
//  Created by Ethan Hess on 2/13/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Entry.h"
#import "EntryController.h"


static NSString *const entryKey = @"entry";

@interface PageViewContentController : UIViewController

@property (nonatomic, strong) UITextView *textView;
@property (nonatomic, strong) Entry *entry;



@property (nonatomic, assign) NSInteger index;
@property (nonatomic, strong) NSString *name;

-(void)homeButtonPressed:(id)sender; 


@end
