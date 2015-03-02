//
//  TableViewDataSource.h
//  ScoreKeeper2
//
//  Created by Ethan Hess on 2/22/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;

static NSString *reuseIdentifier = @"cell";

@interface TableViewDataSource : NSObject <UITableViewDataSource>

-(void)registerTableView:(UITableView *)tableView;


@end
