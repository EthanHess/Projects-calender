//
//  PresentationViewControllerDataSource.m
//  PagingImages
//
//  Created by Ethan Hess on 2/12/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "PresentationViewControllerDataSource.h"
#import "PresentationViewController.h"
#import "ViewController.h"
#import "ContentController.h"

@implementation PresentationViewControllerDataSource


- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerAfterViewController:(UIViewController *)viewController {
    
    NSInteger *beforeIndex = ((ContentController *)viewController).index + 1;
    
    return [self.viewControllerAtIndex:beforeIndex];
    
}

- (UIViewController *)pageViewController:(UIPageViewController *)pageViewController viewControllerBeforeViewController:(UIViewController *)viewController {
    
}

- (UIViewController *)viewControllerAtIndex:(NSInteger)index {

    if(index < 0 || index >= [[ContentController sharedInstance].content count]) {
        return nil;
    }
    
}


@end
