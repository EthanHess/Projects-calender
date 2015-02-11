//
//  Favorites.h
//  Favorites
//
//  Created by Ethan Hess on 2/11/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <Foundation/Foundation.h>
@import UIKit;


@interface Favorites : NSObject

+ (Favorites *)sharedInstance;

@property (strong, nonatomic) UIColor *favoriteColor;
@property (strong, nonatomic) NSNumber *favoriteNumber;

@end
