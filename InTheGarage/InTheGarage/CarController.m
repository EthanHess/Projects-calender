//
//  CarController.m
//  InTheGarage
//
//  Created by Ethan Hess on 2/26/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "CarController.h"


@implementation CarController


+ (CarController *)sharedInstance {
    static CarController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [CarController new];
    });
    
    return sharedInstance;
    
}

- (NSArray *)cars {
    
    NSFetchRequest *fetchRequest = [NSFetchRequest fetchRequestWithEntityName:@"Car"];
    
    NSArray *cars = [[CoreDataHelper sharedInstance].managedObectContext executeFetchRequest:fetchRequest error:NULL];
    
    return cars;
    
}

- (Car *)createWithMake:(NSString *)make model:(NSString *)model year:(NSString *)year {
    
    Car *car = [NSEntityDescription insertNewObjectForEntityForName:@"Car" inManagedObjectContext:[CoreDataHelper sharedInstance].managedObectContext];
    
    car.make = make;
    car.model = model;
    car.year = year;
    
    [self save];
    
    return car;
    
    
}

- (void)removeCar:(Car *)car {
    
    if (!car) {
        return;
    }
    
    [car.managedObjectContext deleteObject:car];
    
    [self save];
    
    
}

- (void)save {
    
    [[CoreDataHelper sharedInstance] save];
    
}


@end
