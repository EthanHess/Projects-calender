//
//  TableViewControllerData.h
//  ScoreCoreData
//
//  Created by Ethan Hess on 2/25/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CustomCell.h"
@import UIKit;

static NSString * const reuseIdentifier = @"cell"; 

@interface TableViewControllerData : NSObject <UITableViewDataSource>

- (void)registerTableView:(UITableView *)tableView; 

@end
