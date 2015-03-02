//
//  NetworkController.h
//  CountryRest
//
//  Created by Ethan Hess on 3/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AFHTTPSessionManager;

@interface NetworkController : NSObject

+ (AFHTTPSessionManager *)api;

@end
