//
//  ViewController.h
//  InTheGarageTwo
//
//  Created by Ethan Hess on 2/28/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CarController.h"

@interface ViewController : UIViewController

@property (nonatomic, strong) Car *car;

- (void)updateWithCar:(Car *)car; 


@end

