//
//  Entry.m
//  PageViewNSD
//
//  Created by Ethan Hess on 2/16/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "Entry.h"

@implementation Entry

-(id)initWithDictionary:(NSDictionary *)dictionary {
    
    self = [super init];
    if (self) {
        self.text = dictionary[textKey];
    }
    
    return self;
}

-(NSDictionary *)entryDictionary {

    NSMutableDictionary *entryDictionary = [NSMutableDictionary new];
    
    if (self.text) {
        [entryDictionary setObject:self.text forKey:textKey];
    }
    
    return entryDictionary;
}

@end
