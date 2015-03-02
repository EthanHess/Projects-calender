//
//  InformationFile.h
//  RecipeAppRedo
//
//  Created by Ethan Hess on 2/21/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString * const CountryNameKey = @"CountryName";
static NSString * const CountryFactsKey = @"CountryFacts";
static NSString * const CountryImageKey = @"CountryImage";
static NSString * const CityKey = @"CityKey";
static NSString * const CityImageKey = @"CityImageKey";

@interface InformationFile : NSObject

+(NSInteger)count;

+(NSDictionary *)countryAtIndex:(NSInteger)index;

+(NSString *)nameAtIndex:(NSInteger)index;

+(NSString *)factsAtIndex:(NSInteger)index;

+(NSString *)cityAtIndex:(NSInteger)index;

+(NSString *)imageAtIndex:(NSInteger)index;

+(NSString *)cityImageAtIndex:(NSInteger)index;

+(NSArray *)countries; 

@end
