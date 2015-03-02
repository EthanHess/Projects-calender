//
//  TableViewControllerData.m
//  ScoreCoreData
//
//  Created by Ethan Hess on 2/25/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "DetailViewController.h"
#import "TableViewControllerData.h"
#import "GameController.h"


@implementation TableViewControllerData

- (void)registerTableView:(UITableView *)tableView {
    
    [tableView registerClass:[CustomCell class] forCellReuseIdentifier:reuseIdentifier];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return 5;
    
    
//    return [GameController sharedInstance].players.count;
   
 
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    
    
    return cell;
    
    
    
}

@end
