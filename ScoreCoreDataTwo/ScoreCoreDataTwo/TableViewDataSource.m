//
//  TableViewDataSource.m
//  ScoreCoreDataTwo
//
//  Created by Ethan Hess on 2/28/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "TableViewDataSource.h"

@implementation TableViewDataSource

- (void)registerTableView:(UITableView *)tableView {
    
    [tableView registerClass:[CellController class] forCellReuseIdentifier:reuseIdentifier];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 5;
    
    
    //    return [GameController sharedInstance].players.count;
    
    
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CellController *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    
    
    return cell;
    
    
    
}

@end
