//
//  InformationFile.m
//  RecipeAppRedo
//
//  Created by Ethan Hess on 2/21/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "InformationFile.h"

@implementation InformationFile

+(NSInteger)count {
    
    return [[self countries]count];
}

+(NSDictionary *)countryAtIndex:(NSInteger)index {
    
    return [self countries][index];
}

+(NSString *)nameAtIndex:(NSInteger)index {
    
    return [self countries][index][CountryNameKey];
}

+(NSString *)factsAtIndex:(NSInteger)index {
    
    return [self countries][index][CountryFactsKey];
}

+(NSString *)cityAtIndex:(NSInteger)index {
    
    return [self countries][index][CityKey];
}

+(NSString *)imageAtIndex:(NSInteger)index {
    
    return [self countries][index][CountryImageKey];
}

+(NSString *)cityImageAtIndex:(NSInteger)index {
    
    return [self countries][index][CityImageKey];
}


+(NSArray *)countries {
    
    return @[
             @{
                 CountryNameKey: @"Spain",
                 CountryFactsKey: @"Spain is a country of 45 million inhabitants located on the Iberian Peninsula in SouthWestern Europe. The largest city is Madrid and the most common language is Spanish.",
                 CountryImageKey: @"",
                 CityKey: @"Madrid",
                 CityImageKey: @"",
                 },
            
             @{
                 CountryNameKey: @"United States",
                 CountryFactsKey: @"The United States is a country of 320 million inhabitants located in North America between Canada and Mexico. The largest city is New York and the most common language is English.",
                 CountryImageKey: @"",
                 CityKey: @"New York City",
                 CityImageKey: @"",
                 },
             
             @{
                 CountryNameKey: @"China",
                 CountryFactsKey: @"China is a country of 1.3 billion inhabitants located in East Asia. The largest city is Shanghai and the most spoken language is Mandarin.",
                 CountryImageKey: @"",
                 CityKey: @"Shanghai",
                 CityImageKey: @"",
                 
                 
                 }];
    
}

@end
