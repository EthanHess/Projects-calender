//
//  ViewController.m
//  SwitchScreens
//
//  Created by Ethan Hess on 2/9/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width / 2.6, self.view.frame.size.height / 2.2, self.view.frame.size.width / 2, 50)];
    button.backgroundColor = [UIColor lightGrayColor];
    [button setTitle:@" New York! " forState:(UIControlStateNormal)];
    [button setTintColor:[UIColor blueColor]];
    [button sizeToFit];
    [button addTarget:self action:@selector(buttonTapped:)forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:button];
    
//    UIButton *newButton = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width / 2.6, self.view.frame.size.height / 3, self.view.frame.size.width / 2, 50)];
//    newButton.backgroundColor = [UIColor darkGrayColor];
//    [newButton setTitle:@" Yosemite " forState:(UIControlStateNormal)];
//    [newButton setTintColor: [UIColor greenColor]];
//    [newButton sizeToFit];
    
     
    
}

- (void)buttonTapped:(id)sender {
    
    DetailViewController *detailViewController = [DetailViewController new];
    
[self.navigationController pushViewController:detailViewController animated:YES];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
