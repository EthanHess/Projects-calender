//
//  UIColor+RandomColors.m
//  TestProblems
//
//  Created by Ethan Hess on 2/19/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "UIColor+RandomColors.h"

@implementation UIColor (RandomColors)

+(UIColor *)rancomColor {
    
    return [UIColor colorWithRed:arc4random_uniform(255)/255.0 green:arc4random_uniform(255)/255.0 blue:arc4random_uniform(255)/255.0 alpha:1];
    
}

@end
