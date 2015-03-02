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
    
    [tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:cellIndentifier];
   
}
    
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    return [InformationFile count];
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    
}


@end
