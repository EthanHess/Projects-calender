//
//  ViewController.m
//  FindTheQueen
//
//  Created by Ethan Hess on 2/18/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"
#import "QueenViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
   
    [self presentOptions];
}


- (void)presentOptions {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Queen Game!" message:@"Find The Queen!" preferredStyle:UIAlertControllerStyleActionSheet];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"Choice 1" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self theQueen];
        
    }]];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"Choice 2" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self notTheQueen];
        
    }]];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"Choice 3" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        [self notTheQueen];
        
    }]];
    
    [self presentViewController:alertController animated:YES completion:nil]; 
    
}
- (void)theQueen {
    
    QueenViewController *queenViewControllerNew = [QueenViewController new];
    
    [self.navigationController pushViewController:queenViewControllerNew animated:YES]; 
    
}

- (void)notTheQueen {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@"Not here!" message:@"Check somewhere else" preferredStyle:UIAlertControllerStyleActionSheet];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@"Go back" style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        [self presentOptions];
        
    }]];
        
    [self presentViewController:alertController animated:YES completion:nil];
    
}

                                    


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
