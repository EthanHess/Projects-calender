//
//  SpaceViewController.m
//  SwitchScreens
//
//  Created by Ethan Hess on 2/12/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "SpaceViewController.h"

@interface SpaceViewController ()

@end

@implementation SpaceViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *spaceImage = @"Space.jpeg";
    UIImageView *space = [[UIImageView alloc]initWithImage:[UIImage imageNamed:spaceImage]];
    space.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height / 2);
    space.contentMode = UIViewContentModeScaleAspectFit;
    [self.view addSubview:space];
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(100, space.frame.size.height, self.view.frame.size.width, 200)];
    label.backgroundColor = [UIColor blueColor];
    label.text = @" This is Outer Space! ";
    label.textColor = [UIColor yellowColor];
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
