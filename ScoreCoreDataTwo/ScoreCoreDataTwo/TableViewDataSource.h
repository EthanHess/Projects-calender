//
//  TableViewDataSource.h
//  ScoreCoreDataTwo
//
//  Created by Ethan Hess on 2/28/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CellController.h"
#import "PlayerController.h"
@import UIKit;

static NSString * const reuseIdentifier = @"cell";

@interface TableViewDataSource : NSObject <UITableViewDataSource>

- (void)registerTableView:(UITableView *)tableView;

@end
