//
//  DetailViewController.m
//  StoryBoardWelcome!
//
//  Created by Ethan Hess on 2/23/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "DetailViewController.h"


@interface DetailViewController ()

@property (weak, nonatomic) IBOutlet UILabel *welcomeLabel;

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.welcomeLabel.text = self.textEntry; 
    
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
