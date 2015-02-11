//
//  AppDelegate.m
//  FirstStretchProblem
//
//  Created by Ethan Hess on 2/3/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (NSDictionary *) dictionaryForMe {


NSString *firstName = @"Ethan";
NSString *lastName= @"Hess";
NSString *phoneNumber = @"610 715 4335";
    
    
NSLog; @("%@,%@, %@", firstName, lastName, phoneNumber);


}

- (NSMutableDictionary)HeydictionaryForMe {
    
    return @[@{value: @"Ethan", key:@"Name"}
             @{value: @"Hess", key:@"Last Name"}
             
    
}

- (NSDictionary *)AnotherDictionaryForMe {
    NSDictionary *dictionary = @{@"firstName" : @"Ethan", @"lastName" : @"Hess", @"phoneNumber" : @"6107154335", @"age" : @26
                 
             }
    
    - (NSDictionary *)dictionaryForMe {
        NSMutableDictionary *dictionaryToReturn = [NSMutableDictionary new];
        
        dictionaryToReturn[@"firstName"] = @"Ethan";
        dictionaryToReturn[@"lastName"] = @"Hess";
        
        return dictionaryToReturn;
}

    - (NSDictionary *)anotherDictionary {
        
    }
    
    



@end
