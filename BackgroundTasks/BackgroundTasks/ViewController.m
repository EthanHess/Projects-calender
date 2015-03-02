//
//  ViewController.m
//  BackgroundTasks
//
//  Created by Ethan Hess on 2/27/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self performSelectorInBackground:@selector(randomNumberGenerator:) withObject:nil];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 100, 100, 50)];
    button.backgroundColor = [UIColor redColor];
    [button addTarget:self action:@selector(randomNumberGenerator:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, 200, 100, 50)];
    label.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:label];
    
    
    
    
    
}

- (void)randomNumberGenerator:(id)sender {
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
