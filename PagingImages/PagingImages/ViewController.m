//
//  ViewController.m
//  PagingImages
//
//  Created by Ethan Hess on 2/12/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"
#import "PresentationViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)presentScreens:(id)sender {
    
    PresentationViewController *pageViewController = [PresentationViewController new];
    [self presentViewController:pageViewController animated:YES completion:nil];
    
}










@end
