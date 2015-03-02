//
//  CarController.h
//  InTheGarage
//
//  Created by Ethan Hess on 2/26/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AppDelegate.h"
#import "Car.h"
#import "CoreDataHelper.h"
@import CoreData;

@interface CarController : NSObject

@property (nonatomic, strong, readonly) NSArray *cars;

+ (CarController *)sharedInstance;

- (Car *)createWithMake:(NSString *)make model:(NSString *)model year:(NSString *)year;

- (void)removeCar:(Car *)car;

- (void)save; 


@end
