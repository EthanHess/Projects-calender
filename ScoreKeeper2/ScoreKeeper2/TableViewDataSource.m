//
//  TableViewDataSource.m
//  ScoreKeeper2
//
//  Created by Ethan Hess on 2/22/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "TableViewDataSource.h"
#import "TableViewController.h"
#import "ViewController.h"

@implementation TableViewDataSource

-(void)registerTableView:(id)tableView {
    
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:reuseIdentifier];
    
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    
    return 4;

  
    
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseIdentifier];
    
    ViewController *viewController = [ViewController new];
    
    cell.textLabel.text = viewController.scoreLabels[indexPath.row];
    
    cell.imageView.image = [UIImage imageNamed:[self imageNames][indexPath.row]];

    
    
    return cell;
    
}

- (NSArray *)imageNames

{
    return @[@"futbol",@"basketball",@"lacrosse",@"baseball"];
}

@end
