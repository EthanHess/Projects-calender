//
//  FourthViewController.m
//  AppMap
//
//  Created by Ethan Hess on 2/24/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "FourthViewController.h"
#import "CollectionDataSource.h"

@interface FourthViewController ()

@property (nonatomic, strong) UICollectionView *collectionView;
@property (nonatomic, strong) CollectionDataSource *dataSource;

@end

@implementation FourthViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UICollectionViewFlowLayout *layout = [UICollectionViewFlowLayout new];
    
    self.collectionView = [[UICollectionView alloc] initWithFrame:self.view.frame collectionViewLayout:layout];
    
    self.dataSource = [CollectionDataSource new];
    self.collectionView.dataSource = self.dataSource;
    [self.dataSource registerCollectionView:self.collectionView];
    self.collectionView.delegate = self;
    
    [self.view addSubview:self.collectionView];}

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
