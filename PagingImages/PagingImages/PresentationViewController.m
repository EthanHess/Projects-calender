//
//  PresentationViewController.m
//  PagingImages
//
//  Created by Ethan Hess on 2/12/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "PresentationViewController.h"
#import "PresentationViewControllerDataSource.h"
#import "ViewController.h"

@interface PresentationViewController ()

@property (nonatomic, strong) UIPageViewController *pageViewController;
@property (nonatomic, strong) PresentationViewControllerDataSource *dataSource;

@end

@implementation PresentationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.pageViewController = [[UIPageViewController alloc] initWithTransitionStyle:UIPageViewControllerTransitionStylePageCurl navigationOrientation:UIPageViewControllerNavigationOrientationHorizontal options:nil];
    
    self.dataSource = [PresentationViewControllerDataSource new];
    
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
