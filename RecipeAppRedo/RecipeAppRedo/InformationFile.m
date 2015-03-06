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
                 
                 
                 CountryNameKey: @"China",
                 CountryFactsKey: @"China is a country of 1.3 billion inhabitants located in East Asia. The largest city is Shanghai and the most spoken language is Mandarin.",
                 CountryImageKey: @"ChinaPic.jpeg",
                 CityKey: @"Shanghai",
                 CityImageKey: @"ChinaCity.jpeg",
                 
                 },
            
             @{
                 CountryNameKey: @"United States",
                 CountryFactsKey: @"The United States is a country of 320 million inhabitants located in North America between Canada and Mexico. The largest city is New York and the most common language is English.",
                 CountryImageKey: @"USApic.jpeg",
                 CityKey: @"New York City",
                 CityImageKey: @"USAcity.jpeg",
                 },
             
             @{
                 CountryNameKey: @"Russia",
                 CountryFactsKey: @"Russia is a huge country which spans both Northeastern Europe and Asia. It has 146 million inhabitants and the largest city is Moscow and the most common language is Russian.",
                 CountryImageKey: @"RussiaPic.jpeg",
                 CityKey: @"Moscow",
                 CityImageKey: @"RussiaCity.jpeg",
                 },
             @{
                 
                 CountryNameKey: @"Spain",
                 CountryFactsKey: @"Spain is a country of 45 million inhabitants located on the Iberian Peninsula in SouthWestern Europe. The largest city is Madrid and the most common language is Spanish.",
                 CountryImageKey: @"SpainPic.jpeg",
                 CityKey: @"Madrid",
                 CityImageKey: @"SpainCity.jpeg",
                 },
             @{
                     
                 CountryNameKey: @"Thailand",
                 CountryFactsKey: @"Thailand is a country in Southeast Asia with 70 million inhabitants. The most spoken language is Thai and the largest city is Bangkok.",
                 CountryImageKey: @"ThaiPic.jpeg",
                 CityKey: @"Bangkok",
                 CityImageKey: @"ThaiCity.jpeg",
                 
                 
                 }];
    
}

@end
