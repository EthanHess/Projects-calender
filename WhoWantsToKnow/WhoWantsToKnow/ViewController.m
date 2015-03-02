//
//  ViewController.m
//  WhoWantsToKnow
//
//  Created by Ethan Hess on 2/16/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ViewController.h"
#import "Settings.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [Settings sharedInstance];
    
    NSMutableDictionary *dictionary = [NSMutableDictionary new];
    dictionary[@"firstName"] = @"Ethan";
    dictionary[@"lastName"] = @"Hess";
    
    
    [[NSNotificationCenter defaultCenter]postNotificationName:@"viewLoaded" object:nil userInfo:dictionary];
    
    
    
    
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
