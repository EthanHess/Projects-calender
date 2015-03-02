//
//  TitleTableViewDataSource.m
//  TitleSelection
//
//  Created by Joshua Howland on 8/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "TitleTableViewDataSource.h"

@implementation TitleTableViewDataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [self titles].count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [UITableViewCell new];
    }
    cell.textLabel.text = [self titles][indexPath.row];
    return cell;
}

- (NSArray *)titles {
    return @[@"The Constant Gardener", @"How the West Was Fun", @"Every Which Way But Loose", @"Riding In Cars With Boys", @"It Happened One Night", @"Firday After Next", @"Herbie: Fully Loaded", @"The Owls of GaHoole", @"Surfer Dude", @"The Day After Tomorrow", @"John Carter", @"Octopussy", @"Face Off", @"I Still Know What You Did Last Summer", @"Gigli"];
}

- (NSString *)titleAtIndexPath:(NSIndexPath *)path {
    if (path.row < [self titles].count) {
        return [self titles][path.row];
    } else {
        return nil;
    }
}

@end
