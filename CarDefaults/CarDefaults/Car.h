//
//  Car.h
//  CarDefaults
//
//  Created by Ethan Hess on 2/10/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Car : NSObject

@property (strong, nonatomic) NSString *make;
@property (strong, nonatomic) NSString *model;
@property (strong, nonatomic) NSString *year;
@property (strong, nonatomic) NSString *color;

-(id)initWithDictionary:(NSMutableDictionary *)dictionary;

-(void)saveToDefaults;

+(NSMutableArray *)allOfTheCars;

@end
