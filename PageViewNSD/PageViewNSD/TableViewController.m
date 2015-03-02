//
//  TableViewController.m
//  PageViewNSD
//
//  Created by Ethan Hess on 2/19/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewDataSource.h"
#import "ViewController.h" 

@interface TableViewController () <UITableViewDelegate>

@property (nonatomic, strong) TableViewDataSource *dataSource;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataSource = [TableViewDataSource new];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.view.backgroundColor = [UIColor colorWithRed:233.0/255 green:33.0/255 blue:47.0/255 alpha:1];
    [self.view addSubview:self.tableView];
    
    self.tableView.dataSource = self.dataSource;
    self.tableView.delegate = self;
    [self.dataSource registerTableView:self.tableView];
    
    UIButton *homeButtonTwo = [[UIButton alloc]initWithFrame:CGRectMake(260, 550, 80, 40)];
    [homeButtonTwo setTitle:@" Home " forState:(UIControlStateNormal)];
    homeButtonTwo.backgroundColor = [UIColor purpleColor];
    [homeButtonTwo setTitleColor:[UIColor yellowColor] forState:(UIControlStateNormal)];
    homeButtonTwo.titleLabel.font = [UIFont systemFontOfSize:24];
    [homeButtonTwo sizeToFit];
    [homeButtonTwo addTarget:self action:@selector(homeButtonPressed:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:homeButtonTwo];
    
}

-(void)homeButtonPressed:(id)sender {
    
    ViewController *viewController = [ViewController new];
    [self presentViewController:viewController animated:YES completion:nil];
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
