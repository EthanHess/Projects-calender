//
//  ContentController.h
//  PageViewNSD
//
//  Created by Ethan Hess on 2/13/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ContentController : NSObject

+ (ContentController *)sharedInstance;

@property (nonatomic, strong) NSArray *content;
@property (nonatomic, strong) NSArray *entryDictionary; 

@end
