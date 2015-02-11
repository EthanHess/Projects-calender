//
//  ViewController.m
//  test
//
//  Created by Ethan Hess on 2/5/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"

CGFloat topMargin = 30;
UIScrollView *scrollView;

@interface ViewController ()

@property (nonatomic, strong) UILabel *label;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIScrollView *scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:scrollView];
    self.label = [[UILabel alloc]initWithFrame:CGRectMake(80, 100, 200, 300)];
    self.label.textColor = [UIColor redColor];
    self.label.textAlignment = NSTextAlignmentCenter;
    self.label.text = @"Ethan's App";
    self.label.backgroundColor = [UIColor yellowColor];
    
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width, 700);

    
    [scrollView addSubview:self.label];
    
    
    
    UILabel *pressMeButton = [[UILabel alloc]initWithFrame:CGRectMake(60, 380, 90, 90)];
    pressMeButton.text = @"Press me!";
    pressMeButton.backgroundColor = [UIColor blueColor];
    [pressMeButton sizeToFit];
    [self.label addSubview:pressMeButton];
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
