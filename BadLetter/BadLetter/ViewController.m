//
//  ViewController.m
//  BadLetter
//
//  Created by Ethan Hess on 2/9/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UITextFieldDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor blueColor]];
    
    UITextField *textField = [[UITextField alloc]initWithFrame:CGRectMake(50, 50, 60, 120)];

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

@end
