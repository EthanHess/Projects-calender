//
//  Content.h
//  PagingImages
//
//  Created by Ethan Hess on 2/12/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Content : NSObject

+ (Content *)sharedInstance;

@property (nonatomic, strong, readonly) NSArray *count;

@end
