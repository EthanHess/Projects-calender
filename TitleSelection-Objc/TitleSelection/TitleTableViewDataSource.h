//
//  TitleTableViewDataSource.h
//  TitleSelection
//
//  Created by Joshua Howland on 8/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TitleTableViewDataSource : NSObject <UITableViewDataSource>

- (NSString *)titleAtIndexPath:(NSIndexPath *)path;

@end
