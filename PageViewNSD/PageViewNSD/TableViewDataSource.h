//
//  TableViewDataSource.h
//  PageViewNSD
//
//  Created by Ethan Hess on 2/19/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

static NSString *const reuseIdentifier = @"cell";

@interface TableViewDataSource : NSObject <UITableViewDataSource, UITableViewDelegate>

-(void)registerTableView:(UITableView *)tableView;

@end
