//
//  ViewController.h
//  ScoreKeeper2
//
//  Created by Ethan Hess on 2/22/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property (nonatomic, strong) UIScrollView *scrollView;

@property (nonatomic, strong) NSMutableArray *scoreLabels;

@property (nonatomic, strong) UIView *cellView;

@property (nonatomic, strong) UILabel *score;

@property (nonatomic, strong) UITextField *name; 


@end

