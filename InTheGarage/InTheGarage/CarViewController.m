//
//  ViewController.m
//  InTheGarage
//
//  Created by Ethan Hess on 2/26/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "CarViewController.h"
#import "CarController.h"

@interface CarViewController ()

@property (weak, nonatomic) IBOutlet UITextField *makeField;

@property (weak, nonatomic) IBOutlet UITextField *modelField;

@property (weak, nonatomic) IBOutlet UITextField *yearField;


@end

@implementation CarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self updateWithCar:[[CarController sharedInstance].cars lastObject]];
    
}


- (IBAction)saveCarInfo:(id)sender {
    
    if (self.car) {
        self.car.make = self.makeField.text;
        self.car.model = self.modelField.text;
        self.car.year = self.yearField.text;
        [[CarController sharedInstance] save];
    }
    else {
        self.car = [[CarController sharedInstance] createWithMake:self.makeField.text model:self.modelField.text year:self.yearField.text];
        
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
