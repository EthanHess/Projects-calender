//
//  ViewController.m
//  ViewControllerTest
//
//  Created by Ethan Hess on 2/5/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"


@interface ViewController ()

@property (nonatomic, strong) UIButton *myButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.title = @"Hey";
    self.view.backgroundColor = [UIColor greenColor];
    
    self.myButton = [[UIButton alloc]initWithFrame:CGRectMake(40,90,300,300)];
    self.myButton.backgroundColor = [UIColor redColor];
    [self.myButton setTitle: @"Press me!" forState:UIControlStateNormal];
    [self.myButton addTarget:self action:@selector(popView) forControlEvents: UIControlEventTouchUpInside];
    [self.view addSubview:self.myButton];
    
}

- (void)popView {
    
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
