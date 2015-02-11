//
//  Car.m
//  CarDefaults
//
//  Created by Ethan Hess on 2/10/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "Car.h"

static NSString * const makeKey = @"make";
static NSString * const modelKey= @"model";
static NSString * const carKey = @"car";

@implementation Car

- (id)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    if (self) {
        self.make = dictionary[makeKey];
        self.model = dictionary[modelKey];
    }
    return self;
}

- (void)saveToDefaults {
    NSMutableDictionary *carDictionary = [NSMutableDictionary new];
    
    carDictionary[@"make"] = self.make;
    carDictionary[@"model"] = self.model;
    
    
    [[NSUserDefaults standardUserDefaults]setObject:carDictionary forKey:carKey];
    [[NSUserDefaults standardUserDefaults] synchronize];
}


+(NSMutableArray *)allOfTheCars {

    NSDictionary *carDictionary = [[NSUserDefaults standardUserDefaults] objectForKey:carKey];
    
    Car *car = [[self alloc] initWithDictionary:carDictionary];
    NSMutableArray *allCars = [NSMutableArray arrayWithObject:car];
    return allCars;
    
}

@end



