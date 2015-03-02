//
//  ViewController.m
//  StoryBoardWelcome!
//
//  Created by Ethan Hess on 2/23/15.
//  Copyright (c) 2015 Ethan Hess. All rights reserved.
//

#import "ViewController.h"
#import "DetailViewController.h"

@interface ViewController () <UITextFieldDelegate>

@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UIButton *proceedButton;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)saveTextFieldText:(id)sender {
    
}

- (IBAction)proceedToDetailView:(id)sender {
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    DetailViewController *detailViewController = (DetailViewController *)[segue destinationViewController];
    
    detailViewController.textEntry = self.textField.text;
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
