//
//  ViewController.m
//  ScoreKeeper2
//
//  Created by Ethan Hess on 2/22/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"
#import "TableViewController.h"
#import "AppDelegate.h"
#import "TableViewDataSource.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 64, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:scrollView];
    self.scrollView = scrollView;
    self.title = @"Score Keeper";
    self.scoreLabels = [NSMutableArray new];
    
    for (int i = 0; i < 4; i++) {
        
        [self addScoreView:i];
         
    }
    
    
    
}

- (void)addScoreView:(NSInteger)index {
    
    CGFloat heightOfScoreBlock = 100;
    
    self.cellView = [[UIView alloc] initWithFrame:CGRectMake(0, (index + 1) * heightOfScoreBlock, self.view.frame.size.width, heightOfScoreBlock)];
    
    self.cellView.backgroundColor = [UIColor colorWithRed:135.0/255 green:215.0/255 blue:36.0/255 alpha:1];
                  
    self.name = [[UITextField alloc] initWithFrame:CGRectMake(32, 8, 128, 64)];
    self.name.placeholder = @"name";
    self.name.backgroundColor = [UIColor colorWithRed:36.0/255 green:135.0/255 blue:215.0/255 alpha:1];
    self.name.textAlignment = NSTextAlignmentCenter;
    self.name.textColor = [UIColor greenColor];
    self.name.borderStyle = UITextBorderStyleRoundedRect;
    
    self.score = [[UILabel alloc]initWithFrame:CGRectMake(175, 16, 50, 50)];
    [self.scoreLabels addObject:self.score];
    self.score.text = @"";
    self.score.backgroundColor = [UIColor colorWithRed:215.0/255 green:26.0/255 blue:135.0/255 alpha:1];
    self.score.textColor = [UIColor yellowColor];
    self.score.textAlignment = NSTextAlignmentCenter;
    self.score.font = [UIFont systemFontOfSize:18];

    
    UIStepper *stepper = [[UIStepper alloc]initWithFrame:CGRectMake(235, 24, 0, 0)];
    stepper.minimumValue = 0;
    stepper.maximumValue = 20;
    stepper.tag = index;
    [stepper addTarget:self action:@selector(scoreStepperChanged:) forControlEvents:UIControlEventTouchUpInside];
    
    
    [self.cellView addSubview:self.name];
    [self.cellView addSubview:self.score];
    [self.cellView addSubview:stepper];

    UIButton *button = [[UIButton alloc]initWithFrame:CGRectMake(85, 575, 200, 50)];
    [button setTitle:@" Save Scores " forState:UIControlStateNormal];
    [button setTitleColor:[UIColor orangeColor] forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:24];
    button.backgroundColor = [UIColor purpleColor];
    button.tintColor = [UIColor orangeColor];
    [button addTarget:self action:@selector(saveEntry:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    [self.view addSubview:self.cellView];
    
}

-(void)scoreStepperChanged:(id)sender {
    
    UIStepper *stepper = sender;
    NSInteger index = stepper.tag;
    double value = stepper.value;
    UILabel *scoreLabel = self.scoreLabels[index];

    scoreLabel.text = [NSString stringWithFormat:@"%d", (int)value];
    
    if ((int)stepper.value >= 20) {
        
        [self winTheGame];
        
    }
    
}

-(void)saveEntry:(NSMutableArray *)scoreLabels {
    
    TableViewController *tableViewController = [TableViewController new];
    
    [self presentViewController:tableViewController animated:YES completion:nil];
    
}

-(void)winTheGame {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@" Game Over! " message:@"Congratulations!" preferredStyle:UIAlertControllerStyleActionSheet];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@" Play again! " style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        [self viewDidLoad];
        
    }]];
    
    [self presentViewController:alertController animated:YES completion:nil];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
