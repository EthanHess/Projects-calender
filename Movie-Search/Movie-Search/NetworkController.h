//
//  NetworkController.h
//  Movie-Search
//
//  Created by Ethan Hess on 3/3/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AFNetworking.h" 

@class AFHTTPSessionManager;
static NSString * const API_KEY = @"53066281dc0b2b7663262fa29b55d828";

@interface NetworkController : NSObject

+ (AFHTTPSessionManager *)api;

+ (NSDictionary *)requestApiKey:(NSDictionary *)parameters;

@end
