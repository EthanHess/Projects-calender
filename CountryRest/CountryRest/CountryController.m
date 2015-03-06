//
//  CountryController.m
//  CountryRest
//
//  Created by Ethan Hess on 3/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "CountryController.h"
#import "NetworkController.h"
#import <AFNetworking/AFNetworking.h>
#import "Country.h"

@implementation CountryController

+ (instancetype)sharedInstance {
    static CountryController *sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc]init];
    });
    
    return sharedInstance;
    
}

- (void)getCountriesWithName:(NSString *)name completion:(void (^)(NSArray *countries))completion {
    
    NSString *path = [NSString stringWithFormat:@"name/%@", name];
                      
    [[NetworkController api] GET:path parameters:nil success:^(NSURLSessionDataTask *task, id responseObject) {
        NSArray *responseCountries = responseObject;
        
        NSMutableArray *countries = [NSMutableArray array];
        for (NSDictionary *dictionary in responseCountries) {
            Country *country = [[Country alloc] initWithDictionary:dictionary];
            [countries addObject:country];
        }
        completion(countries);
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        NSLog(@"error getting countries: %@", error);
        completion(nil);
    }];
    
    
}
@end
