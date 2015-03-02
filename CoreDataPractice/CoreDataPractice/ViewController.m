//
//  ViewController.m
//  CoreDataPractice
//
//  Created by Ethan Hess on 2/27/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UITextView *textEntry;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateTextView:[[TextController sharedInstance].textEntries lastObject]];
    
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    self.textEntry = [[UITextView alloc]initWithFrame:CGRectMake(100, 200, 250, 250)];
    self.textEntry.backgroundColor = [UIColor darkGrayColor];
    self.textEntry.textColor = [UIColor greenColor];
    self.textEntry.font = [UIFont systemFontOfSize:18];
    [self.view addSubview:self.textEntry];
    
    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(100, 500, 75, 50)];
    [button setTitle:@" Save " forState:(UIControlStateNormal)];
    button.backgroundColor = [UIColor darkGrayColor];
    [button setTitleColor:[UIColor greenColor] forState:(UIControlStateNormal)];
    [button addTarget:self action:@selector(save:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    
    
}


- (void)save:(id)sender {
    
    if (self.textView) {
        
        self.textView.text = self.textEntry.text;
        
        [[TextController sharedInstance]save];
    }
    else
    {
        self.textView = [[TextController sharedInstance]createTextView:self.textEntry.text];
    }
    
}

- (void)updateTextView:(TextView *)textView {
    
    self.textView = textView;
    self.textEntry.text = textView.text;
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
