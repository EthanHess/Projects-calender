//
//  CollectionDataSource.h
//  AppMap
//
//  Created by Ethan Hess on 2/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;


@interface CollectionDataSource : NSObject <UICollectionViewDataSource>

- (void)registerCollectionView:(UICollectionView *)collectionView;

@end
