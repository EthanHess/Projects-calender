//
//  DetailViewController.m
//  SwitchScreens
//
//  Created by Ethan Hess on 2/9/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "DetailViewController.h"
#import "ViewController.h"
#import "AppDelegate.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *image = @"TimesSquare.jpg";
    UIImageView *timesSquare = [[UIImageView alloc]initWithImage:[UIImage imageNamed:image]];
    timesSquare.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height / 2);
    timesSquare.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:timesSquare];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(60, timesSquare.frame.size.height, self.view.frame.size.width/1.5, 200)];
    label.backgroundColor = [UIColor blueColor];
    label.text = @" Times Square from a mile above! ";
    label.textColor = [UIColor greenColor];
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
