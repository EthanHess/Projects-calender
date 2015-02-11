//
//  CMViewCon.m
//  ClearMe
//
//  Created by Ethan Hess on 2/9/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "CMViewCon.h"

@interface CMViewCon () <UITextFieldDelegate>
@property (weak, nonatomic) IBOutlet UITextField *textField;

@end

@implementation CMViewCon

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (IBAction)ClearButtonTapped:(id)sender {
    self.textField.text = @"";
}


- (BOOL) textfieldShouldReturn:(UITextField *)textField {
    
    [textField resignFirstResponder];
    
    return YES;
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
