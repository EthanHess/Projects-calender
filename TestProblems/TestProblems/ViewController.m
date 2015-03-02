//
//  ViewController.m
//  TestProblems
//
//  Created by Ethan Hess on 2/12/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"
#import "UIColor+RandomColors.h"

@interface ViewController (RandomColorsCategory)

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    [self.view setBackgroundColor:[UIColor rancomColor]];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
