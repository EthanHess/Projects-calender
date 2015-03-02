//
//  QueenViewController.m
//  FindTheQueen
//
//  Created by Ethan Hess on 2/18/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "QueenViewController.h"

@interface QueenViewController ()

@end

@implementation QueenViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor purpleColor];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(50, 150, self.view.frame.size.width, 60)];
    
    
    label.text = @"You found the queen!";
    label.backgroundColor = [UIColor greenColor];
    label.textColor = [UIColor blueColor];
    label.font = [UIFont systemFontOfSize:24];
    [label sizeToFit];
    
    
    [self.view addSubview:label];
    
    
    
    
    
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
