//
//  PageViewControllerDataSource.m
//  PageViewNSD
//
//  Created by Ethan Hess on 2/13/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "PageViewControllerDataSource.h"
#import "PageViewContentController.h"
#import "ContentController.h"

@implementation PageViewControllerDataSource

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
    NSInteger beforeIndex = ((PageViewContentController *)viewController).index - 1;
    return [self viewControllerAtIndex:beforeIndex];
    
}

    
- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    
    NSInteger afterIndex = ((PageViewContentController *)viewController).index + 1;
    return [self viewControllerAtIndex:afterIndex];
    
}

- (UIViewController *)viewControllerAtIndex:(NSInteger)index {
    
    if (index < 0 || index >= [[ContentController sharedInstance].content count]) {
        return nil;
    }
    
    PageViewContentController *pageViewContentController = [PageViewContentController new];
    
    pageViewContentController.index = index;
    pageViewContentController.name = [ContentController sharedInstance].content[index];
    
    return pageViewContentController;
    
    
}



@end
