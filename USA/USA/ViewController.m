//
//  ViewController.m
//  USA
//
//  Created by Ethan Hess on 2/11/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self usaFactsDictionary];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)usaFactsDictionary {
    
    NSDictionary *usaFacts = @{@"name": @"United States of America",
                                 @"continent": @"North America",
                                 @"population": @"320 million",
                                 @"majorExport": @"Electronics",
                                 @"largestStateByLand": @"Alaska",
                                 @"largestStateByPopulation": @"California"};
    
    NSArray *usaFactsKeys = [usaFacts allKeys];
    NSUInteger *numberOfKeys = usaFactsKeys.count;
    
    int randomNumber = arc4random_uniform(numberOfKeys);
    
        NSString *randomKey = usaFactsKeys[randomNumber];
        
        NSLog(@"%@", usaFacts[randomKey]);
    }
    
@end
