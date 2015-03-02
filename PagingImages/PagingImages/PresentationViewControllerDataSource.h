//
//  PresentationViewControllerDataSource.h
//  PagingImages
//
//  Created by Ethan Hess on 2/12/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface PresentationViewControllerDataSource : NSObject <UIPageViewControllerDataSource>

- (UIViewController *)viewControllerAtIndex:(NSInteger)index;

@end
