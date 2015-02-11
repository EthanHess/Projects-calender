//
//  ViewController.m
//  FramedArrangement
//
//  Created by Ethan Hess on 2/2/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, strong) UIView *redView;
@property (nonatomic, strong) UIView *blueView;
@property (nonatomic, strong) UIView *greenView;
@property (nonatomic, strong) UIView *yellowView;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:self.view.bounds];
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height + 10);
    
    self.redView = [UIView new];
    self.redView.backgroundColor = [UIColor redColor];
    [scrollView addSubview:self.redView];
    
    self.blueView = [UIView new];
    self.blueView.backgroundColor = [UIColor blueColor];
    [scrollView addSubview:self.blueView];
    
    self.greenView = [UIView new];
    self.greenView.backgroundColor = [UIColor greenColor];
    [scrollView addSubview:self.greenView];
    
    self.yellowView = [UIView new];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    [scrollView addSubview:self.yellowView];
}
    - (void)layoutSquares {
        
        CGFloat squareWidth = self.view.frame.size.width / 2.0;
        CGFloat squareHiehgt = self.view.frame.size.height / 2.0;
        
        CGFloat topLeftY = 64;
        CGFloat secondRowY = self.view.frame.origin.y + squareWidth + topLeftY;
        CGFloat topLeftX = 0;
        CGFloat secondColomnX = squareWidth;
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
