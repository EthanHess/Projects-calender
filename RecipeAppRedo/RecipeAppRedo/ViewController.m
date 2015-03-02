//
//  ViewController.m
//  RecipeAppRedo
//
//  Created by Ethan Hess on 2/21/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"
#import "TableViewDataSource.h"
#import "DetailViewController.h"

static NSString *title;

@interface ViewController () <UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) TableViewDataSource *dataSource;


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor lightGrayColor];
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds];
    self.title = @" Travel the world! ";
    
    self.dataSource = [TableViewDataSource new];
    self.tableView.dataSource = self.dataSource;
    self.tableView.delegate = self;
    
    [self.dataSource registerTableView:self.tableView];
    [self.view addSubview:self.tableView];
    
    
}

-(void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    DetailViewController *detailViewController = [DetailViewController new];
    
    detailViewController.countryInfoIndex = indexPath.row;
    [self.navigationController pushViewController:detailViewController animated:YES];
    
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
