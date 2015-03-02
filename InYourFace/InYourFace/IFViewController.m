//
//  IFViewController.m
//  InYourFace
//
//  Created by Ethan Hess on 2/18/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "IFViewController.h"

@interface IFViewController ()

@end

@implementation IFViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self presentActionViewController];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (NSString *)randomTitle {
    
    int index = arc4random_uniform([self lines].count);
    return [self lines][index];
    
}

- (NSArray *)lines {
    
    return @[@"If peeing is cool, consider me Miles Davis",
             @"We don't need no stinking badges",
             @"Thank you very little",
             @"You can't fight in here. This is a war room.",
             @"There's no crying in baseball",
             @"I have nipples, greg. Could you milk me?",
             @"You could be drinking whole, if you wanted to.",
             @"Fat guy in a little coat",
             @"How can we be expected to teach children how to read if they can't even fit inside the building?"];
    
}

-(void)presentActionViewController {

UIAlertController *alertController = [UIAlertController alertControllerWithTitle:[self randomTitle] message:@"You only have two options:" preferredStyle:UIAlertControllerStyleActionSheet];

[alertController addAction:[UIAlertAction actionWithTitle:@"Never again" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
    NSLog(@"The user never hit again!");}]];

[alertController addAction:[UIAlertAction actionWithTitle:@"Hit me baby!" style:UIAlertActionStyleCancel handler:^(UIAlertAction *action) {
    [self presentActionViewController];
}]];
    
    [self presentViewController:alertController animated:YES completion:nil];
    
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
