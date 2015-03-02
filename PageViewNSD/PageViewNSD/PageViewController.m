//
//  PageViewController.m
//  PageViewNSD
//
//  Created by Ethan Hess on 2/13/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "PageViewController.h"
#import "PageViewControllerDataSource.h"

@interface PageViewController ()

@property (nonatomic, strong) UIPageViewController *pageViewController;
@property (nonatomic, strong) PageViewControllerDataSource *dataSource;

@end

@implementation PageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.pageViewController = [[UIPageViewController alloc]initWithTransitionStyle: UIPageViewControllerTransitionStylePageCurl navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    self.dataSource = [PageViewControllerDataSource new];
    
    self.pageViewController.dataSource = self.dataSource;
    
    [self.pageViewController setViewControllers:@[[self.dataSource viewControllerAtIndex:0]] direction:UIPageViewControllerNavigationDirectionForward animated:YES completion:nil];
    
    
    [self addChildViewController:self.pageViewController];
    [self.view addSubview:self.pageViewController.view];
    [self.pageViewController didMoveToParentViewController:self];

    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
