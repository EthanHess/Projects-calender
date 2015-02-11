//
//  ViewController.m
//  CarDefaults
//
//  Created by Ethan Hess on 2/10/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"
#import "Car.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UITextField *makeTextField;
@property (weak, nonatomic) IBOutlet UITextField *modelTextField;
@property (strong, nonatomic) Car *car;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.car = [[Car allOfTheCars] firstObject];
    
    [self updateWithCar:self.car];
}

- (void)updateWithCar:(Car *)car {
    
    self.makeTextField.text = car.make;
    self.modelTextField.text = car.model;
    
}



- (IBAction)save:(id)sender {
    
    Car *car = [[Car alloc] init];
    
    car.make = self.makeTextField.text;
    car.model = self.modelTextField.text;
    
    [car saveToDefaults];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
