//
//  ViewController.m
//  InTheGarageTwo
//
//  Created by Ethan Hess on 2/28/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"
#import "CarController.h"

@interface ViewController ()

@property (nonatomic, strong) UITextField *makeField;
@property (nonatomic, strong) UITextField *modelField;
@property (nonatomic, strong) UITextField *yearField;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateWithCar:[[CarController sharedInstance].cars lastObject]];
    
    
    self.view.backgroundColor = [UIColor darkGrayColor];
    
    self.makeField = [[UITextField alloc] initWithFrame:CGRectMake(75, 100, 120, 45)];
    self.makeField.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.makeField];
    
    self.modelField = [[UITextField alloc] initWithFrame:CGRectMake(75, 200, 120, 45)];
    self.modelField.backgroundColor = [UIColor lightGrayColor];
    [self.view addSubview:self.modelField];
    
    self.yearField = [[UITextField alloc]initWithFrame:CGRectMake(75, 300, 120, 45)];
    self.yearField.backgroundColor = [UIColor lightGrayColor]; 
    [self.view addSubview:self.yearField];
    
    UIButton *save = [[UIButton alloc]initWithFrame:CGRectMake(75, 400, 60, 45)];
    save.backgroundColor = [UIColor lightGrayColor];
    [save setTitle:@" Save " forState:(UIControlStateNormal)];
    [save setTitleColor:[UIColor greenColor] forState:(UIControlStateNormal)];
    [save addTarget:self action:@selector(saveCarInfo:) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:save];
    
    
}


- (void)saveCarInfo:(id)sender {
    
    if (self.car) {
        self.car.make = self.makeField.text;
        self.car.model = self.modelField.text;
        self.car.year = self.yearField.text;
        [[CarController sharedInstance]save];
    }
    else
    {
        self.car = [[CarController sharedInstance]createWithMake:self.makeField.text model:self.modelField.text year:self.yearField.text];
    }
    
    
}

- (void)updateWithCar:(Car *)car {
    
    self.car = car;
    self.makeField.text = car.make;
    self.modelField.text = car.model;
    self.yearField.text = car.year;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
