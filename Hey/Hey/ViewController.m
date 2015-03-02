//
//  ViewController.m
//  Hey
//
//  Created by Ethan Hess on 2/19/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIToolbar *blueButton;
@property (weak, nonatomic) IBOutlet UIToolbar *greenButon;
@property (weak, nonatomic) IBOutlet UIToolbar *purpleButton;
@property (weak, nonatomic) IBOutlet UIToolbar *GButton;
@property (weak, nonatomic) IBOutlet UIToolbar *OtherGButton;
@property (weak, nonatomic) IBOutlet UIToolbar *GbuttonAgain;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (IBAction)makeBlue:(id)sender {


self.view.backgroundColor = [UIColor blueColor];
}

- (IBAction)makeGreen:(id)sender {


self.view.backgroundColor = [UIColor greenColor];
}
- (IBAction)makePurple:(id)sender {


self.view.backgroundColor = [UIColor purpleColor];

}

- (IBAction)makePic1:(id)sender {
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Galaxy1.jpeg"]];
}

- (IBAction)makePic2:(id)sender {
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"CrazyBackground.jpg"]];
}

- (IBAction)makePic3:(id)sender {
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"OtherGalaxy.jpeg"]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
