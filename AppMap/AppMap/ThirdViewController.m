//
//  ThirdViewController.m
//  AppMap
//
//  Created by Ethan Hess on 2/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ThirdViewController.h"
#import "ThirdOptionsViewController.h"

@interface ThirdViewController ()

@end

@implementation ThirdViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
//    UINavigationController *navBar = [segue destinationViewController];
//    ThirdOptionsViewController *thirdOptionsViewController = (thirdOptionsViewController *)[navBar viewControllers][0];
    ThirdOptionsViewController *thirdOptionsViewController = [segue destinationViewController];
    if ([[segue identifier] isEqualToString:@"Eeny"]) {
        thirdOptionsViewController.textLabel = segue.identifier;
    }if ([[segue identifier] isEqualToString:@"Meeny"]) {
        thirdOptionsViewController.textLabel = segue.identifier;
    }
    if ([[segue identifier] isEqualToString:@"Miney"]) {
        thirdOptionsViewController.textLabel = segue.identifier;
    }

    
    
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
