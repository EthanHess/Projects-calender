//
//  ViewController.m
//  Ech
//
//  Created by Ethan Hess on 2/2/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

UIButton *button = [[UIButton alloc] initWithFrame:self.view.frame];
[button setTitle:@"Regular Button" forState:UIControlStateNormal];

    [button addTarget:self action:@selector(logThatTheButtonTapped:) forControlEvents:
     UIControlEventTouchUpInside];
     
    
    
    [self.view addSubview:button];
}
- (void) logThatTheButtonTapped:(id)sender {
    
    UIButton *buttonFromSender = sender;
    
    NSLog(@"Button with title: %@ was pushed!", buttonFromSender);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
