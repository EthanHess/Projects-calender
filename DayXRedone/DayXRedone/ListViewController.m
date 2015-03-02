//
//  ViewController.m
//  DayXRedone
//
//  Created by Ethan Hess on 2/12/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ListViewController.h"
#import "ListTableViewDataSource.h"
#import "DetailViewController.h"
#import "EntryController.h"

@interface ListViewController () <UITableViewDelegate>

@property (nonatomic, strong) ListTableViewDataSource *dataSource;


@end

@implementation ListViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    [self.tableView reloadData];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(add:)];
    
    self.navigationItem.rightBarButtonItem = addButton;
    
    self.dataSource = [ListTableViewDataSource new];
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

@end
