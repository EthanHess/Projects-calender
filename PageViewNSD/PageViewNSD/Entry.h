//
//  Entry.h
//  PageViewNSD
//
//  Created by Ethan Hess on 2/16/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>

static NSString *const textKey = @"text";

@interface Entry : NSObject

@property (nonatomic, strong) NSString *text;

-(id)initWithDictionary:(NSDictionary *)dictionary;

-(NSDictionary *)entryDictionary;

@end
