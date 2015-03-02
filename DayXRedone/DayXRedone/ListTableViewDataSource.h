//
//  ListTableViewDataSource.h
//  DayXRedone
//
//  Created by Ethan Hess on 2/12/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Entry.h"

static NSString *reuseIdentifier = @"cell";

@interface ListTableViewDataSource : NSObject <UITableViewDataSource, UITableViewDelegate>

- (void)registerTableView:(UITableView *)tableView;

@end
