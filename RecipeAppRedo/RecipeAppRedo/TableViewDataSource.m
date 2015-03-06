//
//  TableViewDataSource.m
//  RecipeAppRedo
//
//  Created by Ethan Hess on 2/21/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "TableViewDataSource.h"
#import "InformationFile.h"

@implementation TableViewDataSource

static NSString * const cellIdentifier = @"cell";

- (void)registerTableView:(UITableView *)tableView {
    
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellIdentifier];
   
}
    
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [InformationFile count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
    cell.textLabel.text = [InformationFile nameAtIndex:indexPath.row];
    
    cell.imageView.image = [UIImage imageNamed:[InformationFile imageAtIndex:indexPath.row]];
    
    return cell;

}


@end
