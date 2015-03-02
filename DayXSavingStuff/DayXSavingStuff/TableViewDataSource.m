//
//  TableViewDataSource.m
//  DayXSavingStuff
//
//  Created by Ethan Hess on 2/24/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "TableViewDataSource.h"
#import "EntryController.h"
#import "TableViewController.h"

@implementation TableViewDataSource 

-(void)registerTableView:(UITableView *)tableView {
    
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:reuseIdentifier];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [EntryController sharedInstance].entries.count;
    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    Entry *entry = [EntryController sharedInstance].entries[indexPath.row];
    cell.textLabel.text = entry.title;
    
    return cell;
    
}

-(BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return YES;
    
}




@end
