//
//  ViewController.m
//  SwitchScreens
//
//  Created by Ethan Hess on 2/9/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"
#import "YosemiteViewController.h"
#import "SpaceViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel* titleLabel = [[UILabel alloc]initWithFrame:CGRectMake(100, 100, 200, 90)];
    titleLabel.backgroundColor = [UIColor purpleColor];
    titleLabel.text = @" Travel to... ";
    [titleLabel setTextColor:[UIColor greenColor]];
    titleLabel.font = [UIFont systemFontOfSize:32];
    [titleLabel sizeToFit];
    [self.view addSubview:titleLabel];
    
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width / 2.6, self.view.frame.size.height / 2.2, self.view.frame.size.width / 2, 50)];
    button.backgroundColor = [UIColor lightGrayColor];
    [button setTitle:@" New York! " forState:(UIControlStateNormal)];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [button sizeToFit];
    [button addTarget:self action:@selector(NewYorkButtonTapped:)forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:button];
    
    UIButton *newButton = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width / 2.6, self.view.frame.size.height / 1.5, self.view.frame.size.width / 2, 50)];
    newButton.backgroundColor = [UIColor darkGrayColor];
    [newButton setTitle:@" Yosemite! " forState:(UIControlStateNormal)];
    [newButton setTitleColor:[UIColor yellowColor] forState:UIControlStateNormal];
    [newButton sizeToFit];
    [newButton addTarget:self action:@selector(YosemiteButtonTapped:)forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:newButton];
    
    UIButton *spaceButton = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width / 2.9, self.view.frame.size.height / 1.2, self.view.frame.size.width / 2, 50)];
    spaceButton.backgroundColor = [UIColor blackColor];
    [spaceButton setTitle:@" Outer Space! " forState:(UIControlStateNormal)];
    [spaceButton setTitleColor:[UIColor purpleColor] forState:UIControlStateNormal];
    [spaceButton sizeToFit];
    [spaceButton addTarget:self action:@selector(SpaceButtonTapped:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:spaceButton];
     
    
}

- (void)NewYorkButtonTapped:(id)sender {
    
    DetailViewController *detailViewController = [DetailViewController new];
    
    [self.navigationController pushViewController:detailViewController animated:YES];
    
    
}

- (void)YosemiteButtonTapped:(id)sender {
    
    YosemiteViewController *viewConTwo = [YosemiteViewController new];
    
    [self.navigationController pushViewController:viewConTwo animated:YES];
    
}

- (void)SpaceButtonTapped:(id)sender {
    
    SpaceViewController *spaceCon = [SpaceViewController new];
    
    [self.navigationController pushViewController:spaceCon animated:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
