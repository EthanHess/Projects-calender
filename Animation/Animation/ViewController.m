//
//  ViewController.m
//  Animation
//
//  Created by Ethan Hess on 2/27/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"
#import <math.h>

static inline double radians (double degrees) {return degrees * M_PI/180;}

@interface ViewController ()

@property (nonatomic, strong) UIView *rectangleView;
@property (nonatomic, strong) UIView *yellowView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"wood.jpg"]];

    self.rectangleView = [[UIView alloc] initWithFrame:CGRectMake(100, 160, 100, 100)];
//    self.rectangleView.backgroundColor = [UIColor purpleColor];
    self.rectangleView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Unknown.jpeg"]];
    [self.view addSubview:self.rectangleView];
    
    CGAffineTransform scaleTransform = CGAffineTransformMakeScale(2, 2);
    
    CGAffineTransform rotationTransform = CGAffineTransformMakeRotation(radians(-90.));
    
    CGAffineTransform yellowScale = CGAffineTransformMakeScale(.5, .5);
    
    
    [UIView animateWithDuration:3.0 animations:^{
        self.rectangleView.alpha = 0.0;
        self.rectangleView.center = CGPointMake(self.rectangleView.center.x, self.rectangleView.center.y + 360);
        self.rectangleView.transform = CGAffineTransformConcat(scaleTransform, rotationTransform);
    } completion:^(BOOL finished) {
        self.rectangleView.alpha = 1.0;
    }];
    
    self.yellowView = [[UIView alloc] initWithFrame:CGRectMake(125, 185, 100, 100)];
//    self.yellowView.backgroundColor = [UIColor yellowColor];
    self.yellowView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"images-1.jpeg"]];
    [self.view addSubview:self.yellowView];
    
    [UIView animateWithDuration:3.0 animations:^{
        self.yellowView.alpha = 0.0;
        self.yellowView.center = CGPointMake(self.yellowView.center.x, self.yellowView.center.y - 100);
        self.yellowView.transform = CGAffineTransformConcat(yellowScale, rotationTransform);
    } completion:^(BOOL finished) {
        self.yellowView.alpha = 1.0;
    }];
    
    
    UIView *blueView = [UIView new];
    blueView.frame = CGRectMake(0, 0, 60, 60);
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animation];
    animation.keyPath = @"positionTwo";
    animation.path = CFAutorelease(CGPathCreateWithRect(CGRectMake(0, 0, self.view.frame.size.width - 16, self.view.frame.size.height - 16), NULL));
    
    animation.duration = 3;
    animation.additive = YES;
    animation.repeatCount = HUGE_VALF;
    
    [blueView.layer addAnimation:animation forKey:@"positionTwo"];
    
    
    
    
    
    
    CGRect animatedRect = CGRectMake(-100, -100, 200, 200);
    
    CAKeyframeAnimation *orbit = [CAKeyframeAnimation animation];
    orbit.keyPath = @"position";
    orbit.path = CFAutorelease(CGPathCreateWithEllipseInRect(animatedRect, NULL));
    orbit.duration = 10;
    orbit.additive = YES;
    orbit.repeatCount = HUGE_VALF;
    orbit.calculationMode = kCAAnimationPaced;
    orbit.rotationMode = kCAAnimationRotateAuto;
    
    [self.yellowView.layer addAnimation:orbit forKey:@"orbit"];
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
