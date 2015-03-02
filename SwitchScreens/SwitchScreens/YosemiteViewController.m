//
//  YosemiteViewController.m
//  SwitchScreens
//
//  Created by Ethan Hess on 2/12/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "YosemiteViewController.h"

@interface YosemiteViewController ()

@end

@implementation YosemiteViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *image = @"Yosemite.jpg";
    UIImageView *yosemite = [[UIImageView alloc]initWithImage:[UIImage imageNamed:image]];
    yosemite.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height / 2);
    yosemite.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:yosemite];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, yosemite.frame.size.height, self.view.frame.size.width, 200)];
    label.backgroundColor = [UIColor greenColor];
    label.text = @" Yosemite is beautiful! ";
    label.textColor = [UIColor redColor];
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
