//
//  PageViewControllerDataSource.h
//  PageViewNSD
//
//  Created by Ethan Hess on 2/13/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PageViewControllerDataSource : NSObject <UIPageViewControllerDataSource>

- (UIViewController *)viewControllerAtIndex:(NSInteger)index;

@end
