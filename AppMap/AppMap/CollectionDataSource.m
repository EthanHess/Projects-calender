//
//  CollectionDataSource.m
//  AppMap
//
//  Created by Ethan Hess on 2/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "CollectionDataSource.h"

static NSString *cellID = @"CellID";

@implementation CollectionDataSource


-(void)registerCollectionView:(UICollectionView *)collectionView {
    
    [collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:cellID];
    
}

-(UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:cellID forIndexPath:indexPath];
    
    NSArray *subviews = [cell.contentView subviews];
    
    for (UIView *view in subviews) {
        [view removeFromSuperview];
    }
    
    UIImage *image = [UIImage imageNamed:[self images][indexPath.row]];
    UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
    [cell.contentView addSubview:imageView];
    
    cell.backgroundColor = [UIColor grayColor];
    
    return cell;
}

-(NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    
    return [self images].count;
    
}

-(NSArray *)images {
    
    return
  @[@"basketball",@"CrazyBackground",@"GarlicPork",@"images-1",@"OtherGalaxy",@"Yosemite"];
}


@end
