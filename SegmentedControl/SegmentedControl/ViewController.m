//
//  ViewController.m
//  SegmentedControl
//
//  Created by Ethan Hess on 3/4/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"
#import <math.h>

static inline double radians (double degrees) {return degrees * M_PI/180;}

@interface ViewController ()

@property (nonatomic, strong) UIView *rectangleView;
@property (weak, nonatomic) IBOutlet UISegmentedControl *segController;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.segController addTarget:self action:@selector(changeColor:) forControlEvents:UIControlEventValueChanged];
    
    
    
    
}

- (void)changeColor:(UISegmentedControl *)segment {
    
    switch (segment.selectedSegmentIndex) {
        case 0: {
            
            self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Mountain.jpeg"]];
            
            self.rectangleView = [[UIView alloc]initWithFrame:CGRectMake(100, 300, 50, 50)];
            self.rectangleView.backgroundColor = [UIColor redColor];
            [self.view addSubview:self.rectangleView];
            
            CGAffineTransform scaleTransform = CGAffineTransformMakeScale(2, 2);
            
            CGAffineTransform rotationTransform = CGAffineTransformMakeRotation(radians(-90.));
            
            [UIView animateWithDuration:5.0 animations:^{
                self.rectangleView.alpha = 0.0;
                self.rectangleView.center = CGPointMake(self.rectangleView.center.x, self.rectangleView.center.y + 360);
                self.rectangleView.transform = CGAffineTransformConcat(scaleTransform, rotationTransform);
            } completion:^(BOOL finished) {
                self.rectangleView.alpha = 1.0;
            }];
            
            break; }
        case 1: {
            self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"EarthMoon.jpeg"]];
            
            self.rectangleView = [[UIView alloc]initWithFrame:CGRectMake(100, 300, 100, 100)];
            self.rectangleView.backgroundColor = [UIColor greenColor];
            [self.view addSubview:self.rectangleView];
            
            CGAffineTransform scaleTransform = CGAffineTransformMakeScale(0.5, 0.5);
            
            CGAffineTransform rotationTransform = CGAffineTransformMakeRotation(radians(-90.));
            
            [UIView animateWithDuration:5.0 animations:^{
                self.rectangleView.alpha = 0.0;
                self.rectangleView.center = CGPointMake(self.rectangleView.center.x, self.rectangleView.center.y - 360);
                self.rectangleView.transform = CGAffineTransformConcat(scaleTransform, rotationTransform);
            } completion:^(BOOL finished) {
                self.rectangleView.alpha = 1.0;
            }];
            
            break; }
        case 2: {
            self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"ChemImage1.jpg"]];
            
            self.rectangleView = [[UIView alloc]initWithFrame:CGRectMake(100, 300, 150, 150)];
            self.rectangleView.backgroundColor = [UIColor yellowColor];
            [self.view addSubview:self.rectangleView];
            
            CGAffineTransform scaleTransform = CGAffineTransformMakeScale(2.5, 2.5);
            
            CGAffineTransform rotationTransform = CGAffineTransformMakeRotation(radians(-90.));
            
            [UIView animateWithDuration:5.0 animations:^{
                self.rectangleView.alpha = 0.0;
                self.rectangleView.center = CGPointMake(self.rectangleView.center.x, self.rectangleView.center.y + 360);
                self.rectangleView.transform = CGAffineTransformConcat(scaleTransform, rotationTransform);
            } completion:^(BOOL finished) {
                self.rectangleView.alpha = 1.0;
            }];
            
            break; }
        case 3: {
            self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"ChemImage2.jpg"]];
            
            self.rectangleView = [[UIView alloc]initWithFrame:CGRectMake(100, 300, 200, 200)];
            self.rectangleView.backgroundColor = [UIColor orangeColor];
            [self.view addSubview:self.rectangleView];
            
            CGAffineTransform scaleTransform = CGAffineTransformMakeScale(1.5, 1.5);
            
            CGAffineTransform rotationTransform = CGAffineTransformMakeRotation(radians(-90.));
            
            [UIView animateWithDuration:5.0 animations:^{
                self.rectangleView.alpha = 0.0;
                self.rectangleView.center = CGPointMake(self.rectangleView.center.x, self.rectangleView.center.y - 360);
                self.rectangleView.transform = CGAffineTransformConcat(scaleTransform, rotationTransform);
            } completion:^(BOOL finished) {
                self.rectangleView.alpha = 1.0;
            }];
            
            break; }
            
            default:
            break;
    }
    
    
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
