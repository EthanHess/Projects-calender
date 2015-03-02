//
//  TableViewController.m
//  ScoreCoreData
//
//  Created by Ethan Hess on 2/25/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "TableViewController.h"
#import "TableViewControllerData.h"
#import "CustomCell.h"
#import "GameController.h"
#import "Game.h"


@interface TableViewController () <UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) TableViewControllerData *dataSource;

@end

@implementation TableViewController

- (void)viewWillAppear:(BOOL)animated {
    
    [super viewWillAppear:animated];
    
    [self.tableView reloadData];
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self registerForNotifications];
    self.title = @"Score Keeper";
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    [self.view addSubview:self.tableView];
    
    
    self.dataSource = [TableViewControllerData new];
    self.tableView.dataSource = self.dataSource;
    self.tableView.delegate = self;
    [self.dataSource registerTableView:self.tableView];
    
    
    UIBarButtonItem *addButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAdd target:self action:@selector(addCell:)];
    
    UIBarButtonItem *saveButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(saveGame:)];
    
    self.navigationItem.leftBarButtonItem = saveButton;
    self.navigationItem.rightBarButtonItem = addButton;
    
    self.tableView.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"Mountains.jpg"]];
    

    UIToolbar *toolbar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 600, self.view.frame.size.width, 64)];
    toolbar.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"wood.jpg"]];
    [self.view addSubview:toolbar];
    

    
}

-(void)registerForNotifications {
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(winTheGame) name:@"GameWonNotification" object:nil];
    
}


- (void)winTheGame {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@" Game Over! " message:@" Well Played! " preferredStyle:UIAlertControllerStyleActionSheet];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@" Play Again " style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        CustomCell *customCell = [CustomCell new];
        [customCell clearFields];
        [customCell reloadInputViews];
        
    }]];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@" Save Game " style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        [self saveGame];
        
    }]];
    
    
    [self presentViewController:alertController animated:YES completion:nil];
    
}

- (void)addCell:(id)sender {
    
    
    
    
}

- (void)saveGame:(id)sender {
    
    
}

- (void)saveGame {
    
    
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
