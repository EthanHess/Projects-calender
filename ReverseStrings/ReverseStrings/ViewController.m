//
//  ViewController.m
//  ReverseStrings
//
//  Created by Ethan Hess on 2/10/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

NSArray *array = @[@"Hello,",@"this",@"will",@"be",@"backwards"];
    
    NSLog(@"%@", [self reversedArray:array]);

}

- (NSArray *)reversedArray:(NSArray *)startingArray {
    
    NSMutableArray *reversedArray = [NSMutableArray new];
    
    for(int i = (int)startingArray.count - 1; i >= 0; i--)
    {
        [reversedArray addObject:startingArray[i]];
    }
    
    return [reversedArray copy];
}
        


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.

}
@end
