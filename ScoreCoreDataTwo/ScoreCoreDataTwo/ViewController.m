//
//  ViewController.m
//  ScoreCoreDataTwo
//
//  Created by Ethan Hess on 2/28/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"
#import "TableViewDataSource.h"
#import "CellController.h"

@interface ViewController () <UITableViewDelegate>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) TableViewDataSource *dataSource;

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated {
    
    
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"Score Keeper";
    
    [self registerForNotifications];
    
    self.tableView = [[UITableView alloc]initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    [self.view addSubview:self.tableView];
    
    
    self.dataSource = [TableViewDataSource new];
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

- (void)registerForNotifications {
    
    [[NSNotificationCenter defaultCenter]addObserver:self selector:@selector(winTheGame) name:@"GameWonNotification" object:nil];
}

- (void)winTheGame {
    
    UIAlertController *alertController = [UIAlertController alertControllerWithTitle:@" Game Over! " message:@" Well Played! " preferredStyle:UIAlertControllerStyleActionSheet];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@" Play Again " style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        CellController *cellController = [CellController new];
//        [cellController clearFields];
//        [cellController reloadInputViews];
        
    }]];
    
    [alertController addAction:[UIAlertAction actionWithTitle:@" Save Game " style:UIAlertActionStyleDefault handler:^(UIAlertAction *action) {
        
        [self saveGame];
        
    }]];
    
    
    [self presentViewController:alertController animated:YES completion:nil];
    
}

- (void)addCell:(id)sender {
    
    for (Player *player in ([PlayerController sharedInstance].players)) {
       
    }
    
}

- (void)saveGame:(id)sender {
    
    
}

- (void)saveGame {
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
