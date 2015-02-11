//
//  NewViewController.m
//  BadLetter
//
//  Created by Ethan Hess on 2/9/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "NewViewController.h"

@interface NewViewController () <UITextFieldDelegate>

@end

@implementation NewViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor blueColor]];
    
    UITextField *textField = [[UITextField alloc]initWithFrame:CGRectMake(70, 200, 60, 120)];
    
    textField.backgroundColor = [UIColor blueColor];
    textField.text = @"No T's";
    [self.view addSubview:textField];
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    
    if ([string containsString:@"t"] || [string containsString:@"T"])
    {
        return NO;
    }
    else {
        return YES;
    }
    
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
