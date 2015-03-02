//
//  ViewController.m
//  PageViewNSD
//
//  Created by Ethan Hess on 2/13/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"
#import "PageViewController.h"
#import "TableViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor darkGrayColor];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(40, 100, 100, 60)];
    
    button.backgroundColor = [UIColor blackColor];
    button.titleLabel.font = [UIFont systemFontOfSize:36];
    [button setTitle:@" Days of the Week " forState:(UIControlStateNormal)];
    [button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    [button sizeToFit];
    [button addTarget:self action:@selector(presentScreens:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:button];
    
    UIButton *tableViewButton = [[UIButton alloc]initWithFrame:CGRectMake(75, 180, 100, 60)];
    
    tableViewButton.backgroundColor = [UIColor blueColor];
    tableViewButton.titleLabel.font = [UIFont systemFontOfSize:36];
    [tableViewButton setTitle:@" Saved entries " forState:UIControlStateNormal];
    [tableViewButton setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [tableViewButton sizeToFit];
    [tableViewButton addTarget:self action:@selector(goToTableView:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:tableViewButton];
    
    
    NSString *imageC = @"chores_logo.png";
    UIImageView *imageChores = [[UIImageView alloc]initWithImage:[UIImage imageNamed:imageC]];
    imageChores.frame = CGRectMake(30, 260, self.view.frame.size.width - 60, self.view.frame.size.height / 2);
    imageChores.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:imageChores];
    
}

- (void)presentScreens:(id)sender {
    
    PageViewController *pageViewController = [PageViewController new];
    [self presentViewController:pageViewController animated:YES completion:nil];
    
}

- (void)goToTableView:(id)sender {
    
    TableViewController *tableViewController = [TableViewController new];
    [self presentViewController:tableViewController animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
