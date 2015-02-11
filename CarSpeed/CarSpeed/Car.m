//
//  Car.m
//  CarSpeed
//
//  Created by Ethan Hess on 2/9/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "Car.h"

@interface Car ()

@property (nonatomic, assign)int topSpeed;

@end

@implementation Car {
    int _speed;
}

-(instancetype)init {
    self = [super init];
    
    if (self) {
        
        self.topSpeed = 120;
        _speed = 0;
}
    [self speedUpToTopSpeed];
    return self;

}


- (void) speedUpToTopSpeed {
    while (_speed < self.topSpeed)
}
    _speed++;
    NSLog(@"_Speed: %d", _speed);
}

@end






















