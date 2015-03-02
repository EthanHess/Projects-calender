//
//  ViewController.m
//  Bells
//
//  Created by Ethan Hess on 2/16/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"
#import "Teacher.h"
#import "Student.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [Student sharedInstance];
    [Teacher sharedInstance];
    
    
    
    
    [[NSNotificationCenter defaultCenter]postNotificationName:@"firstBellRang"object:nil];
    
    [[NSNotificationCenter defaultCenter]postNotificationName:@"lastBellRang"object:nil];
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
