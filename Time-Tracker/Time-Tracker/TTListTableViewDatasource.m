//
//  TTListTableViewDatasource.m
//  Time-Tracker
//
//  Created by Ethan Hess on 2/19/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TTListTableViewDatasource.h"
#import "TTProjectController.h"
#import "TTEntry.h"
#import "TTProject.h"


@implementation TTListTableViewDatasource


-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [TTProjectController sharedInstance].projects.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *tableViewCell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    if (tableViewCell == nil) {
        tableViewCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:reuseIdentifier];
    }
    
    TTProject *project = [TTProjectController sharedInstance].projects[indexPath.row];
    
    tableViewCell.textLabel.text = project.title;
    // cell.detailTextLabel.test = project.projectTime;
    
    
    return tableViewCell;
}



@end
