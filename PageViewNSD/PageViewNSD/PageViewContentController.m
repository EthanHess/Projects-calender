//
//  PageViewContentController.m
//  PageViewNSD
//
//  Created by Ethan Hess on 2/13/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "PageViewContentController.h"
#import "ContentController.h"
#import "ViewController.h"

@interface PageViewContentController () <UITextViewDelegate>


@end

@implementation PageViewContentController

- (void)updateWithEntry:(Entry *)entry {
    
    self.entry = entry;
    
    self.textView.text = entry.text;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.view.backgroundColor = [UIColor grayColor];
    
    UILabel *dayLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.width / 5)];
    dayLabel.backgroundColor = [UIColor blackColor];
    dayLabel.textAlignment = NSTextAlignmentCenter;
    dayLabel.font = [UIFont systemFontOfSize:36];
    dayLabel.textColor = [UIColor greenColor];
    dayLabel.text = self.name;
    [self.view addSubview:dayLabel];
    
    UILabel *introLabel = [[UILabel alloc]initWithFrame:CGRectMake(30, 120, 200, 60)];
    introLabel.backgroundColor = [UIColor colorWithRed:230.0/255 green:25.0/255 blue:45.0/255 alpha:1];
    introLabel.text = @" To do list ";
    introLabel.font = [UIFont systemFontOfSize:36];
    introLabel.textColor = [UIColor yellowColor];
    [introLabel sizeToFit];
    [self.view addSubview:introLabel];
    
    self.textView = [[UITextView alloc]initWithFrame:CGRectMake(30, 180, self.view.frame.size.width / 1.5, self.view.frame.size.height / 2)];
    self.textView.backgroundColor = [UIColor colorWithRed:154.0/255 green:255.0/255 blue:50.0/255 alpha:1];
    self.textView.font = [UIFont systemFontOfSize:18];
    
    [self.view addSubview:self.textView];
    
    UIButton *saveButton = [[UIButton alloc]initWithFrame:CGRectMake(30, 550, 80, 40)];
    [saveButton setTitle:@" Save " forState:(UIControlStateNormal)];
    saveButton.backgroundColor = [UIColor greenColor];
    [saveButton setTitleColor:[UIColor redColor] forState:(UIControlStateNormal)];
    saveButton.titleLabel.font = [UIFont systemFontOfSize:24];
    [saveButton sizeToFit];
    [saveButton addTarget:self action:@selector(saveEntries:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:saveButton];
    
    UIButton *clearButton = [[UIButton alloc]initWithFrame:CGRectMake(145, 550, 80, 40)];
    [clearButton setTitle:@ " Clear " forState:(UIControlStateNormal)];
    clearButton.backgroundColor = [UIColor redColor];
    [clearButton setTitleColor:[UIColor greenColor] forState:(UIControlStateNormal)];
    clearButton.titleLabel.font = [UIFont systemFontOfSize:24];
    [clearButton sizeToFit];
    [clearButton addTarget:self action:@selector(clearButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:clearButton];
    
    UIButton *homeButton = [[UIButton alloc]initWithFrame:CGRectMake(260, 550, 80, 40)];
    [homeButton setTitle:@ " Home " forState:(UIControlStateNormal)];
    homeButton.backgroundColor = [UIColor purpleColor];
    [homeButton setTitleColor:[UIColor yellowColor] forState:(UIControlStateNormal)];
    homeButton.titleLabel.font = [UIFont systemFontOfSize:24];
    [homeButton sizeToFit];
    [homeButton addTarget:self action:@selector(homeButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:homeButton];
    
    
    self.textView.delegate = self;
    self.textView.text = self.entry.text;
    
    self.view.backgroundColor = [[UIColor alloc] initWithPatternImage:[UIImage imageNamed:@"CrazyBackground.jpg"]];
    
    
    
    
}

-(void)clearButtonPressed:(id)sender {
    
    self.textView.text = @"";
    
}

-(void)homeButtonPressed:(id)sender {
    
    ViewController *viewController = [ViewController new];
    [self presentViewController:viewController animated:YES completion:nil];
}

-(void)saveEntries:(id)sender {
    
//    Entry *entry = [[Entry alloc]initWithDictionary:@{textKey: self.textView.text}];
//    
//    if (self.entry) {
//        [[EntryController sharedInstance] replaceEntry:self.entry withEntry:entry];
//    }
//    else {
//        [[EntryController sharedInstance] addEntry:entry];
//    }
    
    [self.textView resignFirstResponder];
    
    NSUserDefaults *defaults = [NSUserDefaults standardUserDefaults];
    
    [defaults setObject:entryKey forKey:textKey];
    
    [defaults synchronize];
    
    NSLog(@"Data Saved!");
    
    
    
    
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
