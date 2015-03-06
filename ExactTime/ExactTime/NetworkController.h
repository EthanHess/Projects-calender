//
//  NetworkController.h
//  ExactTime
//
//  Created by Ethan Hess on 3/3/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NetworkController : NSObject

- (void)getExactTimeInfo:(void (^)(NSDictionary *exactTimeInfo, NSError *error))completion;

@end
