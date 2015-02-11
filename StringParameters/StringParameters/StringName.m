//
//  StringName.m
//  StringParameters
//
//  Created by Ethan Hess on 2/4/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "StringName.h"

@implementation StringName


- (NSString *) fullNameFromFirstName:(NSString *)firstName andLastName:(NSString*)lastName
{
    return [NSString stringWithFormat:@"%@ %@", firstName, lastName];
}

@end
