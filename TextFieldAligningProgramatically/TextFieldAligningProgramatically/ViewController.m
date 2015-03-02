//
//  ViewController.m
//  TextFieldAligningProgramatically
//
//  Created by Ethan Hess on 2/24/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UITextField *textFieldLeft;
@property (nonatomic, strong) UITextField *textFieldRight;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    self.textFieldLeft = [[UITextField alloc]initWithFrame:CGRectMake(25, 75, 100, 45)];
    self.textFieldLeft.borderStyle = UITextBorderStyleRoundedRect;
    self.textFieldLeft.placeholder = @"Text here!";
    [self.view addSubview:self.textFieldLeft];
    
    
    self.textFieldRight = [[UITextField alloc]initWithFrame:CGRectMake(150, 75, 100, 45)];
    self.textFieldRight.borderStyle = UITextBorderStyleRoundedRect;
    self.textFieldRight.placeholder = @"Text here!";
    [self.view addSubview:self.textFieldRight];
    
    [self.textFieldLeft setTranslatesAutoresizingMaskIntoConstraints:NO];
    [self.textFieldRight setTranslatesAutoresizingMaskIntoConstraints:NO];
    
    NSDictionary *viewsDictionary = NSDictionaryOfVariableBindings(_textFieldLeft,_textFieldRight);
    
    NSArray *constraints = [NSLayoutConstraint constraintsWithVisualFormat:@"H:|-[_textFieldLeft]-[_textFieldRight]-|" options:NSLayoutFormatAlignAllCenterY metrics:nil views:viewsDictionary];
                            
    [self.view addConstraints:constraints];
    
    NSLayoutConstraint *leadingConstraint =
    [NSLayoutConstraint constraintWithItem:_textFieldLeft
                                 attribute:NSLayoutAttributeLeading
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeLeading
                                multiplier:1.0
                                  constant:35];
    [self.view addConstraint:leadingConstraint];
    
    NSLayoutConstraint *trailingConstraint =
    [NSLayoutConstraint constraintWithItem:_textFieldRight
                                 attribute:NSLayoutAttributeTrailing
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeTrailing
                                multiplier:1.0
                                  constant:-10];
    [self.view addConstraint:trailingConstraint];
    
    NSLayoutConstraint *top1Constraint =
    [NSLayoutConstraint constraintWithItem:_textFieldLeft
                                 attribute:NSLayoutAttributeTop
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeTop
                                multiplier:1.0
                                  constant:35];
    [self.view addConstraint:top1Constraint];
    
    NSLayoutConstraint *top2Constraint =
    [NSLayoutConstraint constraintWithItem:_textFieldRight
                                 attribute:NSLayoutAttributeTop
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:self.view
                                 attribute:NSLayoutAttributeTop
                                multiplier:1.0
                                  constant:35];
    [self.view addConstraint:top2Constraint];
    
    NSLayoutConstraint *equalWidthConstraint =
    [NSLayoutConstraint constraintWithItem:_textFieldLeft
                                 attribute:NSLayoutAttributeWidth
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:_textFieldRight
                                 attribute:NSLayoutAttributeWidth
                                multiplier:1.0
                                  constant:0];
    [self.view addConstraint:equalWidthConstraint];
    
    NSLayoutConstraint *spacingConstraint =
    [NSLayoutConstraint constraintWithItem:_textFieldRight
                                 attribute:NSLayoutAttributeLeading
                                 relatedBy:NSLayoutRelationEqual
                                    toItem:_textFieldLeft
                                 attribute:NSLayoutAttributeTrailing
                                multiplier:1.0
                                  constant:-10];
    [self.view addConstraint:spacingConstraint];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
