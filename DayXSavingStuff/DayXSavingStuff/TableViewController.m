//
//  TableViewController.m
//  DayXSavingStuff
//
//  Created by Ethan Hess on 2/23/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewDataSource.h"
#import "DetailViewController.h"
#import "EntryController.h"



@interface TableViewController () <UITableViewDelegate>

@property (strong, nonatomic) TableViewDataSource *dataSource;

@end

@implementation TableViewController


- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    [self.tableView reloadData];
    
}




- (void)viewDidLoad {
    [super viewDidLoad];

    UIBarButtonItem *addButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(add:)];
    
    self.navigationItem.rightBarButtonItem = addButton;
    
    self.dataSource = [TableViewDataSource new];
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    
    [self.view addSubview:self.tableView];
    
    self.tableView.dataSource = self.dataSource;
    self.tableView.delegate = self;
    [self.dataSource registerTableView:self.tableView];
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DetailViewController *detailViewController = [DetailViewController new];
    [detailViewController updateWithEntry:[EntryController sharedInstance].entries[indexPath.row]];
    [self.navigationController pushViewController:detailViewController animated:YES];
    
    
}


- (void)add:(id)sender {
    
    DetailViewController *detailViewController = [DetailViewController new];
    [self.navigationController pushViewController:detailViewController animated:YES];
    
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
