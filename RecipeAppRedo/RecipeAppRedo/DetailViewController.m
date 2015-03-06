//
//  DetailViewController.m
//  RecipeAppRedo
//
//  Created by Ethan Hess on 2/21/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "DetailViewController.h"
#import "InformationFile.h"
#import "TableViewDataSource.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    self.title = [InformationFile nameAtIndex:self.countryInfoIndex];
    
    UIScrollView *scrollView = [[UIScrollView alloc]initWithFrame:self.view.bounds];
    scrollView.contentSize = CGSizeMake(self.view.frame.size.width, self.view.frame.size.height + 800);
    
    [self.view addSubview:scrollView];
    
    UIImageView *imageView = [UIImageView new];
    imageView.frame = CGRectMake(0, 0, self.view.frame.size.width, 250);
    NSString *imageString = [NSString stringWithFormat:@"%@", [InformationFile imageAtIndex:self.countryInfoIndex]];
    imageView.image = [UIImage imageNamed:imageString];
    [scrollView addSubview:imageView];
    
    UILabel *countryFacts = [[UILabel alloc]initWithFrame:CGRectMake(15, 300, 200, 100)];
    countryFacts.backgroundColor = [UIColor grayColor];
    countryFacts.numberOfLines = 0;
    countryFacts.text = [InformationFile factsAtIndex:self.countryInfoIndex];
    [countryFacts sizeToFit];
    [scrollView addSubview:countryFacts];
    
    UILabel *cityName = [[UILabel alloc]initWithFrame:CGRectMake(15, countryFacts.frame.size.height + imageView.frame.size.height + 100, 80, 45)];
    cityName.backgroundColor = [UIColor grayColor];
    cityName.text = [InformationFile cityAtIndex:self.countryInfoIndex];
    [cityName sizeToFit];
    [scrollView addSubview:cityName];
    
    UIImageView *cityImage = [UIImageView new];
    cityImage.frame = CGRectMake(0, 475, self.view.frame.size.width, 250);
    NSString *cityImageString = [NSString stringWithFormat:@"%@", [InformationFile cityImageAtIndex:self.countryInfoIndex]];
    cityImage.image = [UIImage imageNamed:cityImageString];
    [scrollView addSubview:cityImage];
    
    
    
    
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
