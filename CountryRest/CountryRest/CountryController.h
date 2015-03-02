//
//  CountryController.h
//  CountryRest
//
//  Created by Ethan Hess on 3/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Country;

@interface CountryController : NSObject

+ (instancetype)sharedInstance;

- (void)getCountriesWithName:(NSString *)name completion:(void (^)(NSArray *counties))completion;

@end
