//
//  TableViewDataSource.h
//  RecipeAppRedo
//
//  Created by Ethan Hess on 2/21/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TableViewDataSource : NSObject <UITableViewDataSource>

-(void)registerTableView:(UITableView *)tableView;

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section;

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath;

@end
