//
//  TableViewController.m
//  ScoreKeeper2
//
//  Created by Ethan Hess on 2/22/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "TableViewController.h"

@interface TableViewController () <UITableViewDelegate>

@property (nonatomic, strong) TableViewDataSource *dataSource;

@end

@implementation TableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataSource = [TableViewDataSource new];
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    [self.view addSubview:self.tableView];
    
    self.dataSource = [TableViewDataSource new];
    self.tableView.dataSource = self.dataSource;
    self.tableView.delegate = self;
    [self.dataSource registerTableView:self.tableView];

    
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
