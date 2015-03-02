//
//  TableViewDataSource.m
//  PageViewNSD
//
//  Created by Ethan Hess on 2/19/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "TableViewDataSource.h"
#import "ContentController.h"
#import "Entry.h"

@implementation TableViewDataSource

- (void)registerTableView:(UITableView *)tableView {
    
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:reuseIdentifier];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    return [[ContentController sharedInstance].content count];

    
}


-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    
    
    ContentController *contentController = [ContentController sharedInstance].content[indexPath.row];
    cell.textLabel.text =[NSString stringWithFormat:@"%@",contentController];
    
    
    return cell;
}


@end
