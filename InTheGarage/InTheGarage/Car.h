//
//  Car.h
//  InTheGarage
//
//  Created by Ethan Hess on 2/26/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Car : NSManagedObject

@property (nonatomic, retain) NSString * model;
@property (nonatomic, retain) NSString * make;
@property (nonatomic, retain) NSString * year;

@end
