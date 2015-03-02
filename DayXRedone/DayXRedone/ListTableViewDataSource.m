//
//  ListTableViewDataSource.m
//  DayXRedone
//
//  Created by Ethan Hess on 2/12/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ListTableViewDataSource.h"
#import "EntryController.h"
#import "ListViewController.h"

@implementation ListTableViewDataSource

- (void)registerTableView:(UITableView *)tableView {
    
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:reuseIdentifier];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [EntryController sharedInstance].entries.count;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    Entry *entry = [EntryController sharedInstance].entries[indexPath.row];
    cell.textLabel.text = entry.title;
    
    return cell;
    
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    
    return YES;
    
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    
    if (UITableViewCellEditingStyleDelete) {
        
        EntryController *entryController = [EntryController new];
        
        Entry *entry = [EntryController sharedInstance].entries[indexPath.row];
        
    }
    
    ListViewController *list = [ListViewController new];
    
    [list.tableView reloadData];
}


@end
